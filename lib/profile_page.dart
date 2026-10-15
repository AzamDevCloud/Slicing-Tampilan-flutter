import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff172033),
          ),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Color(0xff172033),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 25),

            const CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffEAF9E2),
              child: Icon(
                Icons.person,
                size: 60,
                color: Color(0xff172033),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Azam',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xff172033),
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              '@azam',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff667085),
              ),
            ),

            const SizedBox(height: 40),

            profileInfo(
              Icons.person_outline,
              'Nama',
              'Azam',
            ),

            const SizedBox(height: 14),

            profileInfo(
              Icons.email_outlined,
              'Email',
              'azam@gmail.com',
            ),

            const SizedBox(height: 14),

            profileInfo(
              Icons.phone_outlined,
              'Nomor HP',
              '081234567890',
            ),

            const SizedBox(height: 14),

            profileInfo(
              Icons.alternate_email,
              'Username',
              '@azam',
            ),
          ],
        ),
      ),
    );
  }

  static Widget profileInfo(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: const Color(0xffF5F7F5),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: const BoxDecoration(
              color: Color(0xffEAF9E2),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Color(0xff172033),
              size: 21,
            ),
          ),

          const SizedBox(width: 14),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 11,
                  color: Color(0xff667085),
                ),
              ),

              const SizedBox(height: 4),

              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff172033),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}