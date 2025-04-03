// ignore_for_file: sized_box_for_whitespace, unused_element, unused_field

import 'package:flutter/material.dart';
import 'firebase_functions.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  Future<void> _register() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        await createUserWithEmailAndPassword(
            emailcontroller.text, passwordcontroller.text, context);
        // Clear inputs on success
        emailcontroller.clear();
        passwordcontroller.clear();

      } catch (e) {
        setState(() {
          _errorMessage = e.toString();
        });
      }
    }
  }

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     ),
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(8, 214, 36, 158), // Light Purple/Pink
            Color.fromARGB(25, 40, 89, 235), // Light Blue
            Color.fromARGB(25, 40, 89, 235), // Light Blue
            Color.fromARGB(25, 40, 89, 235), // Light Blue
            Color.fromARGB(62, 225, 227, 231), // Light Blue
            // Color(0xFFfdf497), // Light Yellow
            // Color(0xFFfd5949), // Light Red/Pink
          ],
          stops: [0.1, 0.4, 0.6, 0.8, 1],
        ),
      ),
      child: Center(
        child: Container(
          width: 340,
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Center(child: Text("English (US)")),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/logoinsta.png"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 80,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailcontroller,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }
                        final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                        if (!emailRegex.hasMatch(value)) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Username,email or mobile number",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(200, 158, 158, 158),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(200, 158, 158, 158),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            }),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(200, 158, 158, 158),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _register();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 4, 117, 209),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(400, 45)),
                child: const Text("Create new account"),
              ),

//
//
//
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 80,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 5, 127, 228)),
                        borderRadius: BorderRadius.circular(50)),
                    shadowColor: Colors.transparent,
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    foregroundColor: const Color.fromARGB(255, 4, 117, 209),
                    minimumSize: const Size(400, 45),
                    overlayColor: Colors.transparent),
                child: const Text(
                  "Login",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              const Image(
                image: AssetImage("assets/images/metaai.png"),
                width: 50,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
