import 'package:demo_app2/screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
      ),
      body: Center(
        child: FloatingActionButton.extended(
          onPressed: () {
            GoogleSignIn().signIn();
            Navigator.push(context, MaterialPageRoute(builder: (context) => screen1(),),);
          },
          label: const Text("sign in with google"),
        ),
      ),
    );
  }
}
