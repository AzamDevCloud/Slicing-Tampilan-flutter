import 'package:flutter/material.dart';
import 'package:slicingtampilan/services/api.dart';
import '../main.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool sembunyikan = true;

  bool get formValid =>
      emailController.text.contains('@') &&
      passwordController.text.length >= 8;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  Future<void> login() async {
    try {
      final response = await ApiService.post("/auth/login", {
        "Email": emailController.text.trim(),
        "password": passwordController.text
      });

      print(response);
      
    }catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.arrow_back,
                  color: navy,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

              const SizedBox(height: 16),

              const Icon(
                Icons.eco,
                size: 40,
                color: navy,
              ),

              const SizedBox(height: 16),

              const Text(
                'Leafboard',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 24),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: passwordController,
                obscureText: sembunyikan,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  labelText: 'Kata sandi (min. 8 karakter)',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      sembunyikan
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    onPressed: () {
                      setState(() {
                        sembunyikan = !sembunyikan;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onLongPress: login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: lime,
                    foregroundColor: navy,
                  ),
                  onPressed: formValid
                      ? () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                          );
                        }
                      : null,
                  child: const Text('Lanjut'),
                ),
              ),

              const SizedBox(height: 16),

              const Center(
                child: Text('atau'),
              ),

              const SizedBox(height: 16),

              tombolSosial(
                Icons.g_mobiledata,
                'Daftar dengan Google',
              ),

              const SizedBox(height: 12),

              tombolSosial(
                Icons.apple,
                'Daftar dengan Apple',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tombolSosial(
    IconData ikon,
    String teks,
  ) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(
          ikon,
          color: navy,
        ),
        label: Text(
          teks,
          style: const TextStyle(
            color: navy,
          ),
        ),
      ),
    );
  }
}