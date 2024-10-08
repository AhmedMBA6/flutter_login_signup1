import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:flutter_login_signup1/animation/fade_animation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeIndex = 0;
  final List<String> _images = [
    "assets/images/240_F.png",
    "assets/images/god-krishna-png-images.png",
    "assets/images/moon-light-photo.png",
    "assets/images/pexels-photo-414612.png"
  ];
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    Timer.periodic(const Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;
        if (activeIndex == 4) activeIndex = 0;
      });
    });
  }

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
              SizedBox(
                height: 350,
                child: Stack(
                  children: _images.asMap().entries.map((e) {
                    return Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedOpacity(
                          opacity: activeIndex == e.key ? 1 : 0,
                          duration: const Duration(seconds: 1),
                          child: Image.asset(
                            e.value,
                            height: 400,
                          ),
                        ));
                  }).toList(),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              FadeAnimation(
                delay: 80,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "UserName or E-mail",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 14),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: const Icon(
                        Iconsax.user,
                        color: Colors.black,
                        size: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(color: Colors.grey.shade200, width: 2)),
                      floatingLabelStyle:
                          const TextStyle(color: Colors.black, fontSize: 18),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              FadeAnimation(
                delay: 82,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      labelStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      prefixIcon: const Icon(
                        Iconsax.key,
                        color: Colors.black,
                        size: 18,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Colors.grey.shade200, width: 2),
                      ),
                      floatingLabelStyle:
                          const TextStyle(color: Colors.black, fontSize: 18),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1.5))),
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
                  onPressed: () {Navigator.of(context).pushReplacementNamed('/');},
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
                delay: 890,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                    ),
                    TextButton(
                        onPressed: () {},
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
