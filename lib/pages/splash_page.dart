import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../main.dart';
import 'login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // tinggi layar, dipakai buat bagian navy di atas
    double tinggiLayar = MediaQuery.of(context).size.height;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      // biar ikon status bar (jam, baterai) warnanya putih
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // bagian atas: kotak navy melengkung + lingkaran logo
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: tinggiLayar * 0.45,
                  decoration: const BoxDecoration(
                    color: navy,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(130),
                      bottomRight: Radius.circular(130),
                    ),
                  ),
                ),

                // lingkaran putih di tengah garis batas navy
                Positioned(
                  bottom: -45,
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 16),
                      ],
                    ),
                    child: const Icon(Icons.eco, size: 44, color: navy),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 80),

            const Text(
              'Leafboard',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w600,
                color: navy,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'A platform built for a new way of working',
              style: TextStyle(fontSize: 13, color: Colors.black87),
            ),

            // Spacer dorong tombol ke bawah
            const Spacer(),

            // tombol mulai (kecil, bentuk pil)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: lime,
                foregroundColor: navy,
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // pakai push (bukan pushReplacement) biar bisa balik ke splash
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Get Started  ›'),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}