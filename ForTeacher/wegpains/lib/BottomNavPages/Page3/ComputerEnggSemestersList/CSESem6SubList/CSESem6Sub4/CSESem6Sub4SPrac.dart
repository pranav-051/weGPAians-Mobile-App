import 'dart:io';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

///To change the path of the file which u r storing at the database change it in
/// the below code  in different 4 places only so that at different places u can c
/// different files otherwise all files will be jumbled

class CSESem6Sub4SPrac extends StatefulWidget{
  const CSESem6Sub4SPrac({Key?key}) : super(key : key);
  @override
  _CSESem6Sub4SPrac createState() => _CSESem6Sub4SPrac();
}

class _CSESem6Sub4SPrac extends State<CSESem6Sub4SPrac>{
  //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

  String url = "";
  int? number;
  uploadDataToFirebase() async{
    //generate random number
    number = Random().nextInt(10);

    //pick pdf file
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    File pick = File(result!.files.single.path.toString());

    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    var CSESem6Sub4SPrac = pick.readAsBytesSync();
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    String name = DateTime.now().millisecondsSinceEpoch.toString();
    //uploading files
    var pdffile = FirebaseStorage.instance.ref().child(name).child("/.pdf");

    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    UploadTask task = pdffile.putData(CSESem6Sub4SPrac);
    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    TaskSnapshot snapshot = await task;
    url = await snapshot.ref.getDownloadURL();
    //upload url to cloud firebase

    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    await FirebaseFirestore.instance.collection("CSESem6Sub4SPrac").doc().set({
      //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

      'fileUrl': url,
      'num': "Curriculum#$number"
      //'num': "Curriculum#"+number.toString() //this is original
    });
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
            color: Colors.white),
        title: const Text("Curriculum", style: TextStyle(color: Colors.white),),
      ),
      body: StreamBuilder(

        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
        stream: FirebaseFirestore.instance.collection("CSESem6Sub4SPrac").snapshots(),
        //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

        builder: (context,AsyncSnapshot<QuerySnapshot> snapshot){
          if (snapshot.hasData){
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, i){
                  QueryDocumentSnapshot x = snapshot.data!.docs[i];
                  return InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>View(url: x['fileUrl'],)));
                    },
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: <Widget> [
                            const SizedBox(height: 5,),
                            // Text(x["num"]),
                            Card (
                              margin: const EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  side: const BorderSide(
                                    color: Colors.orange,)
                              ),

                              color: Colors.white,
                              shadowColor: Colors.black,
                              elevation:7,
                              child:  Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const SizedBox(height: 3,),
                                  ListTile(
                                    leading: const Icon (
                                        Icons.library_books_outlined,
                                        color: Colors.black87,
                                        size: 20
                                    ),
                                    title: const Text(
                                      "Curriculum",
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                                    ),
                                    subtitle: Text(x["num"],style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 11),),

                                  ),],),)],)),);});}

          return const Center(child: CircularProgressIndicator(),);
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: uploadDataToFirebase, child: const Icon(Icons.add)),
    );
  }
}

class View extends StatelessWidget {
  PdfViewerController? _pdfViewerController;
  final url;
  View({Key? key, this.url}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
            color: Colors.white),
        title: const Text("PDF view", style: TextStyle(color: Colors.white),),
      ),
      body:SfPdfViewer.network(
        url,
        controller: _pdfViewerController,
      ),
    );
  }
}

























