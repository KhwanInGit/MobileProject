import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8EACCD),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/ProjectMbile_image_File/logo-bookingroom.png',
                  width: 180,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 20),

              // Register form
              Text(
                'Register',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              // Username field
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 10),

              // Email field
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 10),

              // Password field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 10),

              // Confirm Password fiel
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  labelText: 'Confirm password',
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(
                      context,
                    );
                  },
                  child: Center(
                    child: const Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              // Register button
              ElevatedButton(
                onPressed: () async {
                  Navigator.pop(
                    context,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFFFF00),
                  foregroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Text('Register'),
              ),
              // SizedBox(height: 20),

              // Image.asset(
              //   'assets/images/ProjectMbile_image_File/management.png',
              //   width: 100,
              //   fit: BoxFit.contain,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
