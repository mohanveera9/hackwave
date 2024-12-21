import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedRole = 'User';
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAFBF1),
      body: Stack(
        children: [
          // Login Form
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // App Icon
                    Image.asset(
                      'assets/recycle.png', // Replace with the actual path to your image asset
                      height: 100,
                      width: 100,
                    ),
                    const SizedBox(height: 20),
                    // Title
                    const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4CAF50),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Dropdown for Role Selection
                    DropdownButtonFormField<String>(
                      value: selectedRole,
                      onChanged: (value) {
                        setState(() {
                          selectedRole = value!;
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Select Role',
                        labelStyle: const TextStyle(
                            color: Colors.green, fontSize: 16), // Label styling
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            color: Colors.green, // Border color
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: const BorderSide(
                            color:Colors.greenAccent, // Border color when focused
                            width: 2.0,
                          ),
                        ),
                      ),
                      dropdownColor: Colors
                          .lightGreen[100], // Background color for dropdown
                      icon:const  Icon(Icons.arrow_drop_down,
                          color: Colors.green), // Dropdown arrow icon
                      items: ['User', 'Supervisor', 'Admin']
                          .map((role) => DropdownMenuItem(
                                value: role,
                                child: Text(
                                  role,
                                  style: TextStyle(
                                    color: Colors.green[800], // Text color
                                    fontSize: 16, // Font size
                                    fontWeight: FontWeight.bold, // Bold text
                                  ),
                                ),
                              ))
                          .toList(),
                      style: TextStyle(
                        color: Colors
                            .green[900], // Text style of the selected item
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 20),
                    // Username Field
                    TextFormField(
                      controller: usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Password Field
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Login Button
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4CAF50),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Register Link
                    GestureDetector(
                      onTap: () {
                        // print('Register as New User tapped');
                      },
                      child: const Text(
                        'Register as New User',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4CAF50),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
