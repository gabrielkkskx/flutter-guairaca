import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String role;
  final IconData icon;
  final String imagePath;

  const ProfileCard({
    super.key,
    required this.name,
    required this.role,
    this.icon = Icons.school,
    this.imagePath = "../../assets/images/logo.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [BoxShadow(color: Colors.black26)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(radius: 32, backgroundImage: AssetImage(imagePath),),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
              const SizedBox(height: 4),
              Row(
                children: [
                  Icon(icon, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(role),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}