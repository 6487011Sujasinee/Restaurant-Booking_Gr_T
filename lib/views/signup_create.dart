import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';
// import 'package:pj_gr_t/signin_screen.dart';
// import 'package:pj_gr_t/signup_screen.dart';
// import 'package:pj_gr_t/signup_create.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:pj_gr_t/views/signin_screen.dart';

class SignupCreate extends StatefulWidget {
  const SignupCreate({super.key});

  @override
  SignupCreateState createState() => SignupCreateState();
}

class SignupCreateState extends State<SignupCreate> {
  TextEditingController _password = TextEditingController();
  TextEditingController _confirmpassword = TextEditingController();

  final _formKey1 = GlobalKey<FormBuilderState>();
  final _formKey2 = GlobalKey<FormBuilderState>();
  final _formKey3 = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: w,
              height: h * 0.3,
            ),
            Container(
              margin: EdgeInsets.only(left: 19, right: 19),
              width: w,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sign Up",
                      style: const TextStyle(
                          fontSize: 50, fontWeight: FontWeight.bold),
                    ),

                    // USERNAME
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
                                  borderSide:
                                      BorderSide(color: Color(0xff780000)),
                                ),
                              ),
                              validator: FormBuilderValidators.compose(
                                [
                                  FormBuilderValidators.required(context,
                                      errorText:
                                          'please enter a valid username'),
                                ],
                              ),
                              keyboardType: TextInputType.name,
                            ),

                            // PASSWORD
                            SizedBox(
                              height: 20,
                            ),

                            Container(
                              child: FormBuilder(
                                key: _formKey2,
                                initialValue: {'PASSWORD': ''},
                                child: Column(
                                  children: [
                                    FormBuilderTextField(
                                      // controller: _password,
                                      name: 'PASSWORD',
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: "PASSWORD",
                                        prefixIcon: Icon(
                                          Icons.lock,
                                          color: Color(0xff780000),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide(
                                              color: Color(0xff780000)),
                                        ),
                                      ),
                                      validator: FormBuilderValidators.compose(
                                        [
                                          FormBuilderValidators.required(
                                              context,
                                              errorText:
                                                  'please enter a valid password'),
                                          FormBuilderValidators.minLength(
                                              context, 8,
                                              errorText:
                                                  "min length 8 character"),
                                          FormBuilderValidators.maxLength(
                                            context,
                                            8,
                                          )
                                        ],
                                      ),
                                      keyboardType: TextInputType.name,
                                    ),

                                    //CONFIRM PASSWORD
                                    SizedBox(
                                      height: 20,
                                    ),

                                    Container(
                                      child: FormBuilder(
                                        key: _formKey3,
                                        initialValue: {'CONFIRM PASSWORD': ''},
                                        child: Column(children: [
                                          FormBuilderTextField(
                                            // controller: _confirmpassword,
                                            name: 'CONFIRM PASSWORD',
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              labelText: "CONFIRM PASSWORD",
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Color(0xff780000),
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide(
                                                    color: Color(0xff780000)),
                                              ),
                                            ),
                                            validator:
                                                FormBuilderValidators.compose(
                                              [
                                                FormBuilderValidators.required(
                                                    context,
                                                    errorText:
                                                        'please enter a valid password'),
                                                FormBuilderValidators.minLength(
                                                    context, 8,
                                                    errorText:
                                                        "min length 8 character"),
                                                FormBuilderValidators.maxLength(
                                                  context,
                                                  8,
                                                )
                                              ],
                                            ),
                                            keyboardType: TextInputType.name,
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
                                  if (_formKey2.currentState!.validate()) {}
                                  ;
                                  if (_formKey3.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text('Singin Complete!')));
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (_) => SigninScreen()));
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    "Create",
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
                    )
                  ]),
            ),
          ]),
        ));
  }
}
