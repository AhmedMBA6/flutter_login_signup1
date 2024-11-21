import 'package:flutter/material.dart';
import 'package:flutter_login_signup1/src/common_widgets/fade_animation/fade_animation.dart';
import 'package:flutter_login_signup1/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_login_signup1/src/features/authentication/screens/login/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const FormHeaderWidget(),
              const SizedBox(
                height: 40,
              ),
              FadeAnimation(
                  delay: 80,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                        labelText: "E-mail",
                        hintText: "admin21@example.com",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 18,
                        )),
                  )),
              const SizedBox(height: 20),
              FadeAnimation(
                  delay: 81,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Full Name",
                      hintText: "your full name",
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                        size: 18,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  delay: 82,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "user name",
                      hintText: "enter user name",
                      prefixIcon: Icon(
                        Icons.person_2_outlined,
                        size: 18,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  delay: 83,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Phone No",
                      hintText: "your Phone Number",
                      prefixIcon: Icon(
                        Icons.numbers_outlined,
                        size: 18,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  delay: 84,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "write strong password",
                      prefixIcon: Icon(
                        Icons.key_outlined,
                        size: 18,
                      ),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                  delay: 85,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "comfirm password",
                      hintText: "confirm your password",
                      prefixIcon: Icon(
                        Icons.key_sharp,
                        size: 18,
                      ),
                    ),
                  )),
              const SizedBox(height: 30),
              FadeAnimation(
                  delay: 86,
                  child: MaterialButton(
                    onPressed: () {},
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                        child: const Text("Sign up"),
                  )),
                  const SizedBox(
                height: 30,
              ),
              FadeAnimation(
                delay: 87,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
