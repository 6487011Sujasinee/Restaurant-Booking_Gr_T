import 'package:flutter/material.dart';
import 'package:pj_gr_t/views/signin_screen.dart';
import 'package:pj_gr_t/views/signup_screen.dart';
import 'package:pj_gr_t/views/signup_create.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xff780000),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(1, 60, 10, 25),
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Column(
                children: [
                  Image.asset("assets/images/dqc.png", scale: 1.5),
                  //ปุ่ม signin
                  SizedBox(
                    height: 120,
                  ),
                  Container(
                      height: 55,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => SigninScreen()));
                        },
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff780000)),
                          ),
                        ),
                      )
                      //)
                      ),

                  //ปุ่ม signup
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 55,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 7,
                              offset: Offset(1, 1),
                              color: Colors.grey.withOpacity(0.2))
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => SignupScreen()));
                        },
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff780000)),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
