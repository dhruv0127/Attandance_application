import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/PAGES/login_page.dart';
import 'package:flutter_application_1/Utilities/routess.dart';
import 'package:lottie/lottie.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool loginButtonAnimation = false;
  final _formKey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        loginButtonAnimation = true;
      });

      await Future.delayed(const Duration(milliseconds: 5));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, MyRoute.homeRoute);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 70.0,
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: Lottie.asset(
                  'assets/lottie_animation/1606-profile.json',
                  fit: BoxFit.cover,
                  repeat: false,
                  animate: true,
                ),
              ),
              const Text(
                "Create New Account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(147, 3, 0, 26),
                      blurRadius: 10.0, // soften the shadow
                      spreadRadius: 1, //extend the shadow
                    )
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 37,
                        width: 265,
                        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromARGB(255, 230, 230, 230),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              splashColor:
                                  const Color.fromARGB(255, 114, 145, 247),
                              onTap: () => Navigator.of(context).pop(
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage())),
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                height: 35,
                                width: 110,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(142, 63, 63, 63),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "Exsiting",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 245, 237, 255),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            InkWell(
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                height: 35,
                                width: 110,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 63, 63, 63),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: const Text(
                                  "NEW",
                                  style: TextStyle(
                                      color: Colors.cyanAccent,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(
                            CupertinoIcons.mail,
                            color: Colors.black,
                          ),
                          hintText: "Enter Email Address",
                          labelText: "Email :",
                        ),
                        validator: (value) {
                          if (value != null && value.length < 3) {
                            return "Enter your name ";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          icon: Icon(
                            Icons.fingerprint_sharp,
                            color: Colors.black,
                          ),
                          hintText: "Enter Password",
                          labelText: "Password :",
                        ),
                        validator: (value) {
                          if (value != null && value.length < 3) {
                            return "Enter Password";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          icon: Icon(
                            CupertinoIcons.phone,
                            color: Colors.black,
                          ),
                          hintText: "Enter phone number",
                          labelText: "Phone number :",
                        ),
                        validator: (value) {
                          if (value != null && value.length < 3) {
                            return "Phone number is mandatory";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(
                            color: Colors.black,
                            CupertinoIcons.location,
                            size: 20,
                          ),
                          hintText: "Name, city, state",
                          labelText: "Location :",
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.lightBlue,
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(42, 3, 0, 26),
                                blurRadius: 5.0, // soften the shadow
                                spreadRadius: 1, //extend the shadow
                              )
                            ],
                          ),
                          duration: const Duration(seconds: 1),
                          height: 40,
                          width: 90,
                          alignment: Alignment.center,
                          child: loginButtonAnimation
                              ? const Icon(
                                  Icons.home_sharp,
                                  color: Colors.white,
                                )
                              : const Text(
                                  "REGISTER",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
