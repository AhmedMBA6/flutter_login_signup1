import 'package:flutter/material.dart';
import 'package:flutter_login_signup1/src/common_widgets/fade_animation/fade_animation.dart';
import 'package:flutter_login_signup1/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_login_signup1/src/features/authentication/screens/signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  decoration:const InputDecoration(
                      labelText: "Email",
                      hintText: "UserName or E-mail",
                      prefixIcon:  Icon(
                        Icons.verified_user,
                        size: 18,
                      ),
              ),)),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                delay: 82,
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration:const InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      prefixIcon:  Icon(
                        Icons.key,
                        size: 18,
                      )),
                  obscureText: true,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeAnimation(
                    delay: 85,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              FadeAnimation(
                delay: 87,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  },
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FadeAnimation(
                delay: 89,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style:
                          TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupScreen()));
                        },
                        child: const Text(
                          "Register",
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
