import 'package:flutter/material.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        ),
                      );
                    },
                    child: const CircleAvatar(
                      radius: 24,
                      backgroundColor: Color(0xffEAF9E2),
                      child: Icon(
                        Icons.person,
                        color: Color(0xff172033),
                        size: 28,
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Azam',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff172033),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Welcome back!',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff667085),
                          ),
                        ),
                      ],
                    ),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: Color(0xff172033),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xff172033),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Work without limits',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Organize your work and get things done.',
                      style: TextStyle(
                        color: Color(0xffD0D5DD),
                        fontSize: 13,
                      ),
                    ),

                    SizedBox(height: 20),

                    Icon(
                      Icons.eco,
                      color: Color(0xff8CF25B),
                      size: 40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}