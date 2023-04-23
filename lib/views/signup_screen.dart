import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pj_gr_t/views/signin_screen.dart';
import 'package:pj_gr_t/views/signup_create.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  final _formKey1 = GlobalKey<FormBuilderState>();
  final _formKey2 = GlobalKey<FormBuilderState>();
  final _formKey3 = GlobalKey<FormBuilderState>();
  final _formKey4 = GlobalKey<FormBuilderState>();
  final _formKey5 = GlobalKey<FormBuilderState>();
  final _formKey6 = GlobalKey<FormBuilderState>();

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
              width: 0,
              height: 75,
            ),
            Container(
              margin: const EdgeInsets.only(left: 19, right: 19),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Sign Up",
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
                      initialValue: {'FULLNAME': ''},
                      child: Column(
                        children: [
                          FormBuilderTextField(
                            name: 'FULLNAME',
                            decoration: InputDecoration(
                              labelText: "FULLNAME",
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
                                    errorText: 'please enter a valid name'),
                                // FormBuilderValidators.match(
                                //     context,"25/01/25"),
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
                              initialValue: {'BIRTH': ''},
                              child: Column(
                                children: [
                                  FormBuilderTextField(
                                    name: 'BIRTH',
                                    decoration: InputDecoration(
                                      labelText: "DATE OF BIRTH (eg. DD/MM/YY)",
                                      prefixIcon: Icon(
                                        Icons.calendar_month,
                                        color: Color(0xff780000),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(
                                            color: Color(0xff780000)),
                                      ),
                                    ),
                                    validator: FormBuilderValidators.compose(
                                      [
                                        FormBuilderValidators.required(context,
                                            errorText:
                                                'please enter a valid date'),
                                        // FormBuilderValidators.match(
                                        //     context,"25/01/25"),
                                      ],
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),

                                  // ***
                                  //// 3
                                  SizedBox(
                                    height: 20,
                                  ),

                                  Container(
                                    child: FormBuilder(
                                      key: _formKey3,
                                      initialValue: {'SEX': ''},
                                      child: Column(
                                        children: [
                                          FormBuilderTextField(
                                            name: 'SEX',
                                            decoration: InputDecoration(
                                              labelText:
                                                  "SEX (eg. F = Female , M = Male)",
                                              prefixIcon: Icon(
                                                Icons.female_sharp,
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
                                                        'please enter a valid sex'),
                                                FormBuilderValidators.maxLength(
                                                    context, 1,
                                                    errorText:
                                                        "min length 1 character"),
                                                FormBuilderValidators.minLength(
                                                  context,
                                                  1,
                                                ),
                                              ],
                                            ),
                                            keyboardType: TextInputType.name,
                                          ),

                                          // ***
                                          //// 4
                                          SizedBox(
                                            height: 20,
                                          ),

                                          Container(
                                            child: FormBuilder(
                                              key: _formKey4,
                                              initialValue: {'AGE': ''},
                                              child: Column(children: [
                                                FormBuilderTextField(
                                                  name: 'AGE',
                                                  decoration: InputDecoration(
                                                    labelText: "AGE",
                                                    prefixIcon: Icon(
                                                      Icons.accessibility,
                                                      color: Color(0xff780000),
                                                    ),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0xff780000)),
                                                    ),
                                                  ),
                                                  validator:
                                                      FormBuilderValidators
                                                          .compose(
                                                    [
                                                      FormBuilderValidators
                                                          .required(context,
                                                              errorText:
                                                                  'please enter a valid age'),
                                                      FormBuilderValidators
                                                          .maxLength(context, 2,
                                                              errorText:
                                                                  "min length 2 character"),
                                                    ],
                                                  ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                ),

                                                // ***
                                                //// 5
                                                SizedBox(
                                                  height: 20,
                                                ),

                                                Container(
                                                  child: FormBuilder(
                                                    key: _formKey5,
                                                    initialValue: {'EMAIL': ''},
                                                    child: Column(
                                                      children: [
                                                        FormBuilderTextField(
                                                          name: 'EMAIL',
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: "EMAIL",
                                                            prefixIcon: Icon(
                                                              Icons.email,
                                                              color: Color(
                                                                  0xff780000),
                                                            ),
                                                            border:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide: BorderSide(
                                                                  color: Color(
                                                                      0xff780000)),
                                                            ),
                                                          ),
                                                          validator:
                                                              FormBuilderValidators
                                                                  .compose(
                                                            [
                                                              FormBuilderValidators
                                                                  .required(
                                                                      context,
                                                                      errorText:
                                                                          'please enter a valid email address'),
                                                              FormBuilderValidators
                                                                  .email(
                                                                      context,
                                                                      errorText:
                                                                          "please enter a valid email address"),
                                                            ],
                                                          ),
                                                          keyboardType:
                                                              TextInputType
                                                                  .emailAddress,
                                                        ),

                                                        // ***
                                                        //// 6
                                                        SizedBox(
                                                          height: 20,
                                                        ),

                                                        Container(
                                                          child: FormBuilder(
                                                            key: _formKey6,
                                                            initialValue: {
                                                              'PHONE': ''
                                                            },
                                                            child: Column(
                                                              children: [
                                                                FormBuilderTextField(
                                                                  name: 'PHONE',
                                                                  decoration:
                                                                      InputDecoration(
                                                                    labelText:
                                                                        "PHONE",
                                                                    prefixIcon:
                                                                        Icon(
                                                                      Icons
                                                                          .phone,
                                                                      color: Color(
                                                                          0xff780000),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              30),
                                                                      borderSide:
                                                                          BorderSide(
                                                                              color: Color(0xff780000)),
                                                                    ),
                                                                  ),
                                                                  validator:
                                                                      FormBuilderValidators
                                                                          .compose(
                                                                    [
                                                                      FormBuilderValidators.required(
                                                                          context,
                                                                          errorText:
                                                                              'please enter a valid phone'),
                                                                      FormBuilderValidators.minLength(
                                                                          context,
                                                                          10,
                                                                          errorText:
                                                                              "min length 10 character"),
                                                                      FormBuilderValidators
                                                                          .maxLength(
                                                                        context,
                                                                        10,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .phone,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                // ปุ่มกด
                                                SizedBox(
                                                  height: 40,
                                                ),
                                                Container(
                                                    height: 55,
                                                    width: w * 0.5,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xff780000),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            blurRadius: 10,
                                                            spreadRadius: 7,
                                                            offset:
                                                                Offset(1, 1),
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.2))
                                                      ],
                                                    ),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        if (_formKey1
                                                            .currentState!
                                                            .validate()) {}
                                                        ;
                                                        if (_formKey2
                                                            .currentState!
                                                            .validate()) {}
                                                        ;
                                                        if (_formKey3
                                                            .currentState!
                                                            .validate()) {}
                                                        ;
                                                        if (_formKey4
                                                            .currentState!
                                                            .validate()) {}
                                                        ;
                                                        if (_formKey5
                                                            .currentState!
                                                            .validate()) {}
                                                        ;
                                                        if (_formKey6
                                                            .currentState!
                                                            .validate()) {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                                  const SnackBar(
                                                                      content: Text(
                                                                          'Singup Complete Please fill your Username & Password')));

                                                          Navigator.of(context).push(
                                                              MaterialPageRoute(
                                                                  builder: (_) =>
                                                                      SignupCreate()));
                                                        }
                                                      },
                                                      child: Center(
                                                        child: Text(
                                                          "Next",
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 30,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    )),

                                                SizedBox(height: w * 0.2),
                                              ]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
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
