
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pj_gr_t/main.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pj_gr_t/views/select_restaurant.dart';
import 'package:pj_gr_t/views/signup_create.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  SigninScreenState createState() => SigninScreenState();
}

class SigninScreenState extends State<SigninScreen> {
  final _formKey1 = GlobalKey<FormBuilderState>();
  final _formKey2 = GlobalKey<FormBuilderState>();


  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
            ),
            Container(
              margin: const EdgeInsets.only(left: 19, right: 19),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: const TextStyle(
                        fontSize: 50, fontWeight: FontWeight.bold),
                  ),
      
                  //1
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: FormBuilder(
                      key: _formKey1,
                      initialValue: {'USERNAME': ''},
                      child: Column(
                        children: [
                          FormBuilderTextField(
                            name: 'USERNAME',
                            decoration: InputDecoration(
                              labelText: "USERNAME",
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Color(0xff780000),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: Color(0xff780000)),
                              ),
                            ),
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(context,
                                    errorText: 'please enter a valid username'),
                              ],
                            ),
                            keyboardType: TextInputType.name,
                          ),
      
                          //// 2
                          SizedBox(
                            height: 20,
                          ),
      
                          Container(
                            child: FormBuilder(
                              key: _formKey2,
                              initialValue: {'PASSWORD': ''},
                              child: Column(children: [
                                FormBuilderTextField(
                                  name: 'PASSWORD',
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    labelText: "PASSWORD",
                                    prefixIcon: Icon(
                                      Icons.password,
                                      color: Color(0xff780000),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide:
                                          BorderSide(color: Color(0xff780000)),
                                    ),
                                  ),
                                  validator: FormBuilderValidators.compose(
                                    [
                                      FormBuilderValidators.required(context,
                                          errorText: 'please enter a valid password'),
                                    ],
                                  ),
                                  keyboardType: TextInputType.name,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: 65, left: 219)),
                                            
                                    Text(
                                      "Forgot password ?",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff780000),
                                        
                                        //color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
      
      
                  // ปุ่มกด sign up
                  SizedBox(
                    height: 88,
                  ),
                  Container(
                    height: 55,
                    width: w * 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xff780000),
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
                        if (_formKey1.currentState!.validate()) {}
                        ;
      
                        if (_formKey2.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Singin Complete!')));
                          //change
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => DataSelectionRestaurants(),
                                  ));

                        }
                      },
                      child: Center(
                        child: Text(
                          "Login",
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
