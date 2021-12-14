import 'package:emotion/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class MyResetPasswordPage extends StatefulWidget {
  MyResetPasswordPage({Key? key}) : super(key: key);

  @override
  _MyResetPasswordPageState createState() => _MyResetPasswordPageState();
}

class _MyResetPasswordPageState extends State<MyResetPasswordPage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          title: Text("Reset password", style: TextStyle(color: Colors.white)),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        body: Container(
            color: Colors.green[50],
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.green[100],
                  ),
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldEmail(),
                      buildButtonSignUp(context)
                    ],
                  )),
            )));
  }

  Widget buildButtonSignUp(BuildContext context) {
    return InkWell(
        child: Container(
            constraints: BoxConstraints.expand(height: 50),
            child: const Text("Reset password",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.white)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.green[200]),
            margin: EdgeInsets.only(top: 16),
            padding: EdgeInsets.all(12)),
        onTap: () => resetPassword());
  }

  Container buildTextFieldEmail() {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: Form(
          key: formKey,
          child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration.collapsed(hintText: "Email"),
              keyboardType: TextInputType.emailAddress,
              validator: (EmailValidator(errorText: "invalid email")),
              style: const TextStyle(fontSize: 18)),
        ));
  }

  resetPassword() async {
    String email = emailController.text.trim();
    _auth.sendPasswordResetEmail(email: email);
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("We send the detail to $email successfully.",
            style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.green[300],
      ));
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  }
}
