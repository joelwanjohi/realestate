import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/login_page.dart';
import 'package:firebaseauth/pages/Welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print('login page');
      Get.offAll(() => LoginPage());
    } else {
      Get.offAll(() =>  WelcomePage(email:user.email!));
    }
  }

  void register(String email, password) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About user", "User massage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.TOP,
          titleText: const Text(
            'Account creation failed',
            style: TextStyle(color: Colors.white),
          ));
    }
  }
   void login(String email, password) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("About Login", "Login massage",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.TOP,
          titleText: const Text(
            'Login failed',
            style: TextStyle(color: Colors.white),
          ));
    }
  }
  Future<void> logOut() async {
    await auth.signOut();
  }
}