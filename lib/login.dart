import 'package:emotion/launcher.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'account.dart';
import 'presign.dart';
import 'launcher.dart';
import 'resetpassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  Account profile = Account(
    email: '',
    password: '',
  );
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  get errorText => null;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
                appBar: AppBar(
                  title: const Text(
                    "Login",
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Colors.yellow[100],
                ),
                body: Container(
                  color: Colors.yellow[50],
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Form(
                        key: formKey,
                        child: SingleChildScrollView(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.yellow[100]!,
                                    Colors.green[100]!
                                  ],
                                )),
                            margin: const EdgeInsets.all(32),
                            padding: const EdgeInsets.all(24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[50],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: 'Email',
                                            fillColor: Colors.purple[50],
                                            focusColor: Colors.purple[50]),
                                        validator: (EmailValidator(
                                            errorText: "invalid email")),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        onSaved: (String? email) {
                                          profile.email = email!;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[50],
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 15, top: 0),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          fillColor: Colors.white70,
                                        ),
                                        validator: (value) {
                                          if (value!.isNotEmpty) {
                                            return null;
                                          } else {
                                            return 'please enter your password';
                                          }
                                        },
                                        obscureText: true,
                                        onSaved: (String? password) {
                                          profile.password = password!;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.green[200],
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12))),
                                        child: const Text("Sign in",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontSize: 16)),
                                        onPressed: () async {
                                          if (formKey.currentState!
                                              .validate()) {
                                            formKey.currentState?.save();
                                            try {
                                              await FirebaseAuth.instance
                                                  .signInWithEmailAndPassword(
                                                      email: profile.email,
                                                      password:
                                                          profile.password)
                                                  .then((value) {
                                                formKey.currentState?.reset();
                                                Navigator.pushReplacement(
                                                    context, MaterialPageRoute(
                                                        builder: (context) {
                                                  return const Launcher();
                                                }));
                                              });
                                            } on FirebaseAuthException catch (e) {
                                              Fluttertoast.showToast(
                                                  msg: e.message!,
                                                  gravity: ToastGravity.CENTER);
                                            }
                                          }
                                        },
                                      ),
                                    ),
                                    ElevatedButton(
                                      child: const Text("Cancel",
                                          style: TextStyle(
                                            fontSize: 16,
                                          )),
                                      onPressed: () {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const PreSign();
                                        }));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.green[200],
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12))),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () => Navigator.of(context)
                                          .push(MaterialPageRoute(
                                              builder: (context) =>
                                                  MyResetPasswordPage())),
                                      child: const Text(
                                        "Forgot Password?",
                                        style: TextStyle(color: Colors.black87),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ));
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
