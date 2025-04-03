import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'instahome.dart';
import 'login.dart';

// Register user with email and password
createUserWithEmailAndPassword(
    String emailAddress, String password, BuildContext context) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    );

    User? user = credential.user;
    if (user != null) {
      // Navigating to the login page after successful registration
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Login()));

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Successfully Registered"),
        backgroundColor: Colors.green,
      ));
    }
  } on FirebaseAuthException catch (e) {
    // Handling weak password
    if (e.code == 'weak-password') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("The password provided is too weak"),
        backgroundColor: Colors.red,
      ));
    }
    // Handling email already in use
    else if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("The account already exists for that email."),
        backgroundColor: Colors.red,
      ));
    }
    // Other Firebase-related errors
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error: ${e.message}"),
        backgroundColor: Colors.red,
      ));
    }
  } catch (e) {
    // General error handling
    print(e);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("An unexpected error occurred"),
      backgroundColor: Colors.red,
    ));
  }
}

// Sign in user with email and password
signInWithEmailAndPassword(
    String emailAddress, String password, BuildContext context) async {
  try {
    final credential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailAddress, password: password);

    User? user = credential.user;
    if (user != null) {
      emailcontroller.clear();
      passwordcontroller.clear();
      // Navigating to the next page after successful login
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Insta_Home()));

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Login Successfully"),
        backgroundColor: Colors.blue,
      ));
    }
  } on FirebaseAuthException catch (e) {
    // Handling user not found
    if (e.code == 'user-not-found') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("No user found for that email."),
        backgroundColor: Colors.red,
      ));
    }
    // Handling wrong password
    else if (e.code == 'wrong-password') {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Wrong password provided for that user"),
        backgroundColor: Colors.red,
      ));
    }
    // Other Firebase-related errors
    else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error: ${e.message}"),
        backgroundColor: Colors.red,
      ));
    }
  } catch (e) {
    // General error handling
    print(e);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("An unexpected error occurred"),
      backgroundColor: Colors.red,
    ));
  }
}

// Logout function
signOut(BuildContext context) async {
  try {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
        (route) => false);

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Logged Out"),
      backgroundColor: Colors.red,
    ));
  } catch (e) {
    // Handle logout error
    print(e);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("An error occurred while logging out"),
      backgroundColor: Colors.red,
    ));
  }
}
