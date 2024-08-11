import 'package:flutter/material.dart';

class TeamMember {
  final String name;
  final String title;
  final String avatar;
  final String bio;

  TeamMember({required this.name, required this.title, required this.avatar, required this.bio});
}

class TeamPage extends StatelessWidget {
  final List<TeamMember> teamMembers = [
    TeamMember(
      name: 'Gargi Vitole',
      title: 'Project Leader',
      avatar: 'images/avatar1.png',
      bio: 'John is a visionary leader with over 20 years of experience in the tech industry. He has a passion for innovation and is dedicated to making a positive impact in the world.',
    ),
    TeamMember(
      name: 'Pranav Sherekar',
      title: 'Sub-Leader',
      avatar: 'images/pranav_s.jpg',
      bio: 'Jane is a seasoned technologist with expertise in software development, cloud computing, and cybersecurity. She is committed to building scalable and secure solutions that deliver real value to customers.',
    ),
    TeamMember(
      name: 'Aaditya Yerokar',
      title: 'Member',
      avatar: 'images/aaditya.jpg',
      bio: 'Bob is a seasoned executive with a proven track record of driving growth and delivering results. He is passionate about building high-performing teams and creating a culture of excellence.',
    ),
    TeamMember(
      name: 'Pratik Ghurde',
      title: 'Member',
      avatar: 'assets/images/avatar1.png',
      bio: 'xyz is a visionary leader with over 20 years of experience in the tech industry. He has a passion for innovation and is dedicated to making a positive impact in the world.',
    ),
    TeamMember(
      name: 'Pranav Nene',
      title: 'Member',
      avatar: 'assets/images/avatar1.png',
      bio: 'xyz is a visionary leader with over 20 years of experience in the tech industry. He has a passion for innovation and is dedicated to making a positive impact in the world.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.orange,

        elevation: 0,
        title: const Text(
          'About our team',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Colors.white
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: teamMembers.length,
          itemBuilder: (BuildContext context, int index) {
            return _buildTeamMemberCard(teamMembers[index]);
          },
        ),
      ),
    );
  }

  Widget _buildTeamMemberCard(TeamMember teamMember) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(teamMember.avatar),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        teamMember.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        teamMember.title,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        teamMember.bio,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
