import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/customtextfield.dart';

import 'package:travel_app/secondpage.dart';

class SignIn extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  // LoginPage({super.key});

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  SignIn({Key? key}) : super(key: key);

  String name = "";

  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.asset(
              "images/bg.jpg",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.10),
              colorBlendMode: BlendMode.darken,
            )),
            Container(
              height: Get.size.height * 0.8,
              width: Get.size.width,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/logins.jpg"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70))),
              ),
            ),
            ListView(children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    // Image.asset(
                    //   "assets/images/logins.jpg",
                    //   height: 200,
                    //   width: 200,
                    // ),
                    // ClipRect(
                    //   child: Container(
                    //     height: 250,
                    //     width: 250,
                    //     decoration: BoxDecoration(color: Colors.pink),
                    //     child: Image.asset(
                    //       "assets/images/scissors.jpg",
                    //       fit: BoxFit.cover,
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: Get.size.height * 0.3,
                    ),
                    Text(
                      "Welcome Back" + name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 32.0),
                      child: Column(children: [
                        CustomTextField(
                            icon: Icons.email,
                            controller: emailController,
                            // decoration: InputDecoration(
                            //     hintText: "Enter Email", labelText: "Email"),
                            // onChanged: (value) {
                            //   name = value;
                            // },
                            validator: (value) {
                              if (!value!.contains('@')) {
                                return 'Please Enter valid email';
                              }
                              // if (value.contains("@") == false) {
                              //   return 'Please enter valid email';
                              // }
                              return null;
                            }),
                        CustomTextField(
                          icon: Icons.lock,
                          controller: passwordController,
                          // obscureText: true,
                          // decoration: InputDecoration(
                          //     hintText: "Enter Password", labelText: "Password"),
                          label: 'password',
                          isPassword: true,
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'Please enter valid password';
                            }
                            // if (value.length < 6) {
                            //   return 'Password should contain at least 6 charactere';
                            // }
                            return null;
                          },
                        ),
                        InkWell(
                          onTap: () {
                            print("Clicked");
                          },
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(SecondPage());
                          },
                          child: Container(
                              height: 50,
                              width: 500,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0xFF6A62B7)),
                              child: Center(
                                  child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ))),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                              onTap: () {
                                // Get.to(SignUp());
                              },
                              child: Text(
                                "Create Account",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                    fontSize: 20,
                                    color: Color(0xFF6A62B7)),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ])
          ],
        ));
  }
}
