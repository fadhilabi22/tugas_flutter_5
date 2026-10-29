import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  final String userName = "Fadhil Abi Untoro";
  final String role = "Mobile Developer & Mahasiswa";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Pengguna"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(width: 16),
            ProfileInfo(userName: userName, role: role),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Statitem(count: "15", label: "proyek"),
                  const SizedBox(width: 24),
                  const Statitem(count: "1.2k", label: "Followers"),
                  const SizedBox(height: 24),
                  Statitem(count: "42", label: "following"),
                ],
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      child: Icon(Icons.person, size: 50, color: Colors.white),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final String userName;
  final String role;

  const ProfileInfo({super.key, required this.userName, required this.role});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          userName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          role,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class Statitem extends StatelessWidget {
  final String count;
  final String label;
  const Statitem({super.key, required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:Colors.blueAccent,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600]
          ),
        )
      ],
    );
  }
}
