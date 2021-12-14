import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: const Text("Reset password",
              style: TextStyle(color: Colors.white)),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: const Color(0xff7471F7),
        ),
        body: Container(
            color: const Color(0xffCECDFC),
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff9C9AFA),
                  ),
                  margin: const EdgeInsets.all(32),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldPassword(),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: buildTextFieldComfirm(),
                      ),
                      buildButtonSignUp(context),
                    ],
                  )),
            )));
  }

  Container buildTextFieldPassword() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: const Color(0xffE4EDFE),
          borderRadius: BorderRadius.circular(16)),
      child: Form(
        key: formKey,
        child: TextField(
          controller: passwordController,
          obscureText: true,
          decoration: const InputDecoration.collapsed(hintText: "New Password"),
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Container buildTextFieldComfirm() {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: const Color(0xffE4EDFE),
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
            controller: confirmController,
            obscureText: true,
            decoration: const InputDecoration.collapsed(
                hintText: "Re-enter New Password"),
            style: const TextStyle(fontSize: 18)));
  }

  Widget buildButtonSignUp(BuildContext context) {
    return InkWell(
        child: Container(
            constraints: const BoxConstraints.expand(height: 50),
            child: const Text("Reset password",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff6764FF)),
            margin: const EdgeInsets.only(top: 16),
            padding: const EdgeInsets.all(12)),
        onTap: () => Newpassword());
  }

  void Newpassword() async {
    String password = passwordController.text.trim();
    String confirmPassword = confirmController.text.trim();
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    User? currentUser = firebaseAuth.currentUser;

    if (password == confirmPassword && password.length >= 6) {
      _auth.currentUser!.updatePassword(password).then((user) {
        // ignore: avoid_print
        print("Successfully update password");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Profile()),
        );
      }).catchError((error) {
        // ignore: avoid_print
        print(error.message);
      });
    } else {
      // ignore: avoid_print
      print("Password and Confirm-password is not match.");
    }
  }
}
