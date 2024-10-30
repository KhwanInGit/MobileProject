
import 'package:flutter/material.dart';
import 'package:flutter_application_1/proj/approver/forApprover.dart';
import 'package:flutter_application_1/proj/staff/forStaff.dart';
import 'package:flutter_application_1/proj/student/forStudent.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final Color bgColord = const Color(0XFF8EACCD);
  final Color primaryColor = const Color(0xFFFEF9D9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColord,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 60), // Adjusting top space

              // Logo
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/ProjectMbile_image_File/logo-bookingroom.png',
                  width: 180,  // Adjusted width for better alignment
                  height: 100, // Adjusted height
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 10),

              // Login Container
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),

                        // Username TextField
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            labelText: 'Username',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Password TextField
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),

                        // Register Text with Navigator to Register page
                        Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                            onTap: () {
                              // Navigate to Register page when tapped
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Register()), // Assuming RegisterPage exists
                              );
                            },
                            child: const Text(
                              "Don't have an account? Register",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),

                        // Login Button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () async {
                            await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  //move to browse forStaff
                                  //move to browse forStudent
                                  //move to browse forApprover
                                  // builder: (context) => const forStudent(),
                                  // builder: (context) => const forStaff(),
                                  builder: (context) => const forStudent(),
                                ));
                            setState(() {});
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              // Bottom Image
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    'assets/images/ProjectMbile_image_File/management.png',
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

