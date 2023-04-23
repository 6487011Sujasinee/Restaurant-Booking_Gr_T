import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:pj_gr_t/views/validate_book.dart';

class ReservationDetails extends StatefulWidget {
  const ReservationDetails({super.key});

  @override
  ReservationDetailsState createState() => ReservationDetailsState();
}

class ReservationDetailsState extends State<ReservationDetails> {
  TextEditingController _partysize = new TextEditingController();
  TextEditingController _date = new TextEditingController();
  TextEditingController _time = new TextEditingController();
  TextEditingController _name = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _comment = new TextEditingController();

  final _formKey1 = GlobalKey<FormBuilderState>();
  final _formKey2 = GlobalKey<FormBuilderState>();
  final _formKey3 = GlobalKey<FormBuilderState>();
  final _formKey4 = GlobalKey<FormBuilderState>();
  final _formKey5 = GlobalKey<FormBuilderState>();
  final _formKey6 = GlobalKey<FormBuilderState>();
  final _formKey7 = GlobalKey<FormBuilderState>();

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
              height: 69,
            ),
            Container(
              margin: const EdgeInsets.only(left: 19, right: 19),
              width: w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reservation Details",
                    style: const TextStyle(
                        fontSize: 35, fontWeight: FontWeight.bold),
                  ),

                  // PARTY SIZE
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: FormBuilder(
                      key: _formKey1,
                      initialValue: {'PARTY SIZE': ''},
                      child: Column(
                        children: [
                          FormBuilderTextField(
                            name: 'PARTY SIZE',
                            decoration: InputDecoration(
                              labelText: "PARTY SIZE",
                              prefixIcon: Icon(
                                Icons.family_restroom,
                                color: Color(0xff780000),
                              ),
                            ),

                            // controller: partysizeFieldController,
                            controller: _partysize,
                            validator: FormBuilderValidators.compose(
                              [
                                FormBuilderValidators.required(context,
                                    errorText:
                                        'please enter a valid party size'),
                                FormBuilderValidators.numeric(context,
                                    errorText: "please enter a number"),
                              ],
                            ),
                            keyboardType: TextInputType.number,
                          ),

                          // DATE
                          SizedBox(
                            height: 5,
                          ),

                          Container(
                            child: FormBuilder(
                              key: _formKey2,
                              initialValue: {'DATE': ''},
                              child: Column(
                                children: [
                                  FormBuilderTextField(
                                    name: 'DATE',
                                    decoration: InputDecoration(
                                      labelText: "DATE (eg. DD/MM/YY)",
                                      prefixIcon: Icon(
                                        Icons.calendar_month,
                                        color: Color(0xff780000),
                                      ),
                                    ),
                                    controller: _date,
                                    validator: FormBuilderValidators.compose(
                                      [
                                        FormBuilderValidators.required(context,
                                            errorText:
                                                'please enter a valid date'),
                                        FormBuilderValidators.numeric(context,
                                            errorText:
                                                "please enter a valid date"),
                                      ],
                                    ),
                                    keyboardType: TextInputType.datetime,
                                  ),

                                  // TIME
                                  SizedBox(
                                    height: 5,
                                  ),

                                  Container(
                                    child: FormBuilder(
                                      key: _formKey3,
                                      initialValue: {'TIME': ''},
                                      child: Column(
                                        children: [
                                          FormBuilderTextField(
                                            name: 'TIME',
                                            decoration: InputDecoration(
                                              labelText: "TIME (eg. 12.12 PM.)",
                                              prefixIcon: Icon(
                                                Icons.lock_clock,
                                                color: Color(0xff780000),
                                              ),
                                            ),
                                            controller: _time,
                                            validator:
                                                FormBuilderValidators.compose(
                                              [
                                                FormBuilderValidators.required(
                                                    context,
                                                    errorText:
                                                        'please enter a valid time'),
                                              ],
                                            ),
                                            keyboardType: TextInputType.text,
                                          ),

                                          // NAME
                                          SizedBox(
                                            height: 5,
                                          ),

                                          Container(
                                              child: FormBuilder(
                                            key: _formKey4,
                                            initialValue: {'NAME': ''},
                                            child: Column(
                                              children: [
                                                FormBuilderTextField(
                                                  name: 'NAME',
                                                  decoration: InputDecoration(
                                                    labelText: "NAME",
                                                    prefixIcon: Icon(
                                                      Icons.accessibility,
                                                      color: Color(0xff780000),
                                                    ),
                                                  ),
                                                  controller: _name,
                                                  validator:
                                                      FormBuilderValidators
                                                          .compose(
                                                    [
                                                      FormBuilderValidators
                                                          .required(context,
                                                              errorText:
                                                                  'please enter a valid name'),
                                                    ],
                                                  ),
                                                  keyboardType:
                                                      TextInputType.name,
                                                ),

                                                // PHONE
                                                SizedBox(
                                                  height: 5,
                                                ),

                                                Container(
                                                    child: FormBuilder(
                                                  key: _formKey5,
                                                  initialValue: {'PHONE': ''},
                                                  child: Column(
                                                    children: [
                                                      FormBuilderTextField(
                                                        name: 'PHONE',
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: "PHONE",
                                                          prefixIcon: Icon(
                                                            Icons.phone,
                                                            color: Color(
                                                                0xff780000),
                                                          ),
                                                        ),
                                                        controller: _phone,
                                                        validator:
                                                            FormBuilderValidators
                                                                .compose(
                                                          [
                                                            FormBuilderValidators
                                                                .required(
                                                                    context,
                                                                    errorText:
                                                                        'please enter a valid phone'),
                                                            FormBuilderValidators
                                                                .minLength(
                                                                    context, 10,
                                                                    errorText:
                                                                        "min length 10 character"),
                                                            FormBuilderValidators
                                                                .maxLength(
                                                              context,
                                                              10,
                                                            )
                                                          ],
                                                        ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                      ),

                                                      // EMAIL
                                                      SizedBox(
                                                        height: 5,
                                                      ),

                                                      Container(
                                                        child: FormBuilder(
                                                          key: _formKey6,
                                                          initialValue: {
                                                            'EMAIL': ''
                                                          },
                                                          child: Column(
                                                            children: [
                                                              FormBuilderTextField(
                                                                name: 'EMAIL',
                                                                decoration:
                                                                    InputDecoration(
                                                                  labelText:
                                                                      "EMAIL",
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons.email,
                                                                    color: Color(
                                                                        0xff780000),
                                                                  ),
                                                                ),
                                                                controller:
                                                                    _email,
                                                                validator:
                                                                    FormBuilderValidators
                                                                        .compose(
                                                                  [
                                                                    FormBuilderValidators.required(
                                                                        context,
                                                                        errorText:
                                                                            'please enter a valid email'),
                                                                    FormBuilderValidators.email(
                                                                        context,
                                                                        errorText:
                                                                            "please enter a valid email address"),
                                                                  ],
                                                                ),
                                                                keyboardType:
                                                                    TextInputType
                                                                        .emailAddress,
                                                              ),

                                                              // COMMENT
                                                              SizedBox(
                                                                height: 5,
                                                              ),

                                                              Container(
                                                                child:
                                                                    FormBuilder(
                                                                  key:
                                                                      _formKey7,
                                                                  initialValue: {
                                                                    'COMMENT':
                                                                        ''
                                                                  },
                                                                  child: Column(
                                                                      children: [
                                                                        FormBuilderTextField(
                                                                          name:
                                                                              'COMMENT',
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                "COMMENT",
                                                                            prefixIcon:
                                                                                Icon(
                                                                              Icons.comment,
                                                                              color: Color(0xff780000),
                                                                            ),
                                                                          ),
                                                                          controller:
                                                                              _comment,
                                                                          validator:
                                                                              FormBuilderValidators.compose(
                                                                            [
                                                                              FormBuilderValidators.required(context, errorText: 'please enter a valid comment'),
                                                                            ],
                                                                          ),
                                                                          keyboardType:
                                                                              TextInputType.text,
                                                                        ),

                                                                        // ปุ่มกด
                                                                        SizedBox(
                                                                          height:
                                                                              50,
                                                                        ),
                                                                        Container(
                                                                            height:
                                                                                65,
                                                                            width: w *
                                                                                0.9,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xff780000),
                                                                              borderRadius: BorderRadius.circular(30),
                                                                              boxShadow: [
                                                                                BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
                                                                              ],
                                                                            ),
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                if (_formKey1.currentState!.validate()) {}
                                                                                ;
                                                                                if (_formKey2.currentState!.validate()) {}
                                                                                ;
                                                                                if (_formKey3.currentState!.validate()) {}
                                                                                ;
                                                                                if (_formKey4.currentState!.validate()) {}
                                                                                ;
                                                                                if (_formKey5.currentState!.validate()) {}
                                                                                ;
                                                                                if (_formKey6.currentState!.validate()) {}
                                                                                ;
                                                                                if (_formKey7.currentState!.validate()) {
                                                                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('booking sucessful!')));
                                                                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ValidateBooking(partysize: _partysize.text, date: _date.text, time: _time.text, name: _name.text, phone: _phone.text, email: _email.text, comment: _comment.text)));
                                                                                }
                                                                              },
                                                                              child: Center(
                                                                                child: Text(
                                                                                  "Review Reservation",
                                                                                  style: const TextStyle(
                                                                                    fontSize: 25,
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            )),
                                                                      ]),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                )),
                                              ],
                                            ),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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




/////////////////////////////////////////////////////////////////////
///import 'package:daiq/screens/signin_screen.dart';
// import 'package:daiq/screens/signup_create.dart';
// import 'package:daiq/screens/signup_screen.dart';
// import 'package:daiq/screens/validate_book.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// // import 'package:pj_gr_t/validate_book.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';

// class ReservationDetails extends StatefulWidget {
//   const ReservationDetails({super.key});

//   @override
//   ReservationDetailsState createState() => ReservationDetailsState();
// }

// class ReservationDetailsState extends State<ReservationDetails> {
//   TextEditingController _partysize = new TextEditingController();
//   TextEditingController _date = new TextEditingController();
//   TextEditingController _time = new TextEditingController();
//   TextEditingController _name = new TextEditingController();
//   TextEditingController _phone = new TextEditingController();
//   TextEditingController _email = new TextEditingController();
//   TextEditingController _comment = new TextEditingController();
//   //final TextController = TextEditingController();
//   //var _dataText;

//   final _formKey1 = GlobalKey<FormBuilderState>();
//   final _formKey2 = GlobalKey<FormBuilderState>();
//   final _formKey3 = GlobalKey<FormBuilderState>();
//   final _formKey4 = GlobalKey<FormBuilderState>();
//   final _formKey5 = GlobalKey<FormBuilderState>();
//   final _formKey6 = GlobalKey<FormBuilderState>();
//   final _formKey7 = GlobalKey<FormBuilderState>();

//   // void initstate() {
//   //   super.initState();
//   //   TextController.addListener(updateText);
//   // }

//   // void updateText() {
//   //   setState(() {
//   //     _dataText = TextController.text;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: 0,
//               height: 69,
//               decoration: BoxDecoration(),
//             ),
//             Container(
//               margin: const EdgeInsets.only(left: 19, right: 19),
//               width: w,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Reservation Details",
//                     style: const TextStyle(
//                         fontSize: 35, fontWeight: FontWeight.bold),
//                   ),

//                   // PARTY SIZE
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Container(
//                     child: FormBuilder(
//                       key: _formKey1,
//                       initialValue: {'PARTY SIZE': ''},
//                       child: Column(
//                         children: [
//                           FormBuilderTextField(
//                             name: 'PARTY SIZE',
//                             decoration: InputDecoration(
//                               labelText: "PARTY SIZE",
//                               prefixIcon: Icon(
//                                 Icons.family_restroom,
//                                 color: Color(0xff780000),
//                               ),
//                             ),

//                             // controller: partysizeFieldController,
//                             controller: _partysize,
//                             validator: FormBuilderValidators.compose(
//                               [
//                                 FormBuilderValidators.required(context,
//                                     errorText:
//                                         'please enter a valid party size'),
//                               ],
//                             ),
//                             keyboardType: TextInputType.number,
//                           ),

//                           // DATE
//                           SizedBox(
//                             height: 5,
//                           ),

//                           Container(
//                             child: FormBuilder(
//                               key: _formKey2,
//                               initialValue: {'DATE': ''},
//                               child: Column(
//                                 children: [
//                                   FormBuilderTextField(
//                                     name: 'DATE',
//                                     decoration: InputDecoration(
//                                       labelText: "DATE (eg. DD/MM/YY)",
//                                       prefixIcon: Icon(
//                                         Icons.calendar_month,
//                                         color: Color(0xff780000),
//                                       ),
//                                     ),
//                                     controller: _date,
//                                     validator: FormBuilderValidators.compose(
//                                       [
//                                         FormBuilderValidators.required(context,
//                                             errorText:
//                                                 'please enter a valid date'),
//                                       ],
//                                     ),
//                                     keyboardType: TextInputType.datetime,
//                                   ),

//                                   // TIME
//                                   SizedBox(
//                                     height: 5,
//                                   ),

//                                   Container(
//                                     child: FormBuilder(
//                                       key: _formKey3,
//                                       initialValue: {'TIME': ''},
//                                       child: Column(
//                                         children: [
//                                           FormBuilderTextField(
//                                             name: 'TIME',
//                                             decoration: InputDecoration(
//                                               labelText: "TIME (eg. 12.12 PM.)",
//                                               prefixIcon: Icon(
//                                                 Icons.lock_clock,
//                                                 color: Color(0xff780000),
//                                               ),
//                                             ),
//                                             controller: _time,
//                                             validator:
//                                                 FormBuilderValidators.compose(
//                                               [
//                                                 FormBuilderValidators.required(
//                                                     context,
//                                                     errorText:
//                                                         'please enter a valid time'),
//                                               ],
//                                             ),
//                                             keyboardType: TextInputType
//                                                 .numberWithOptions(),
//                                           ),

//                                           // NAME
//                                           SizedBox(
//                                             height: 5,
//                                           ),

//                                           Container(
//                                               child: FormBuilder(
//                                             key: _formKey4,
//                                             initialValue: {'NAME': ''},
//                                             child: Column(
//                                               children: [
//                                                 FormBuilderTextField(
//                                                   name: 'NAME',
//                                                   decoration: InputDecoration(
//                                                     labelText: "NAME",
//                                                     prefixIcon: Icon(
//                                                       Icons.accessibility,
//                                                       color: Color(0xff780000),
//                                                     ),
//                                                   ),
//                                                   controller: _name,
//                                                   validator:
//                                                       FormBuilderValidators
//                                                           .compose(
//                                                     [
//                                                       FormBuilderValidators
//                                                           .required(context,
//                                                               errorText:
//                                                                   'please enter a valid name'),
//                                                     ],
//                                                   ),
//                                                   keyboardType:
//                                                       TextInputType.name,
//                                                 ),

//                                                 // PHONE
//                                                 SizedBox(
//                                                   height: 5,
//                                                 ),

//                                                 Container(
//                                                     child: FormBuilder(
//                                                   key: _formKey5,
//                                                   initialValue: {'PHONE': ''},
//                                                   child: Column(
//                                                     children: [
//                                                       FormBuilderTextField(
//                                                         name: 'PHONE',
//                                                         decoration:
//                                                             InputDecoration(
//                                                           labelText: "PHONE",
//                                                           prefixIcon: Icon(
//                                                             Icons.phone,
//                                                             color: Color(
//                                                                 0xff780000),
//                                                           ),
//                                                         ),
//                                                         controller: _phone,
//                                                         validator:
//                                                             FormBuilderValidators
//                                                                 .compose(
//                                                           [
//                                                             FormBuilderValidators
//                                                                 .required(
//                                                                     context,
//                                                                     errorText:
//                                                                         'please enter a valid phone'),
//                                                             FormBuilderValidators
//                                                                 .minLength(
//                                                                     context, 10,
//                                                                     errorText:
//                                                                         "min length 10 character"),
//                                                             FormBuilderValidators
//                                                                 .maxLength(
//                                                               context,
//                                                               10,
//                                                             )
//                                                           ],
//                                                         ),
//                                                         keyboardType:
//                                                             TextInputType
//                                                                 .number,
//                                                       ),

//                                                       // EMAIL
//                                                       SizedBox(
//                                                         height: 5,
//                                                       ),

//                                                       Container(
//                                                         child: FormBuilder(
//                                                           key: _formKey6,
//                                                           initialValue: {
//                                                             'EMAIL': ''
//                                                           },
//                                                           child: Column(
//                                                             children: [
//                                                               FormBuilderTextField(
//                                                                 name: 'EMAIL',
//                                                                 decoration:
//                                                                     InputDecoration(
//                                                                   labelText:
//                                                                       "EMAIL",
//                                                                   prefixIcon:
//                                                                       Icon(
//                                                                     Icons.email,
//                                                                     color: Color(
//                                                                         0xff780000),
//                                                                   ),
//                                                                 ),
//                                                                 controller: _email,
//                                                                 validator:
//                                                                     FormBuilderValidators
//                                                                         .compose(
//                                                                   [
//                                                                     FormBuilderValidators.required(
//                                                                         context,
//                                                                         errorText:
//                                                                             'please enter a valid email'),
//                                                                   ],
//                                                                 ),
//                                                                 keyboardType:
//                                                                     TextInputType
//                                                                         .emailAddress,
//                                                               ),

//                                                               // COMMENT
//                                                               SizedBox(
//                                                                 height: 5,
//                                                               ),

//                                                               Container(
//                                                                 child:
//                                                                     FormBuilder(
//                                                                   key:
//                                                                       _formKey7,
//                                                                   initialValue: {
//                                                                     'COMMENT':
//                                                                         ''
//                                                                   },
//                                                                   child: Column(
//                                                                       children: [
//                                                                         FormBuilderTextField(
//                                                                           name:
//                                                                               'COMMENT',
//                                                                           decoration:
//                                                                               InputDecoration(
//                                                                             labelText:
//                                                                                 "COMMENT",
//                                                                             prefixIcon:
//                                                                                 Icon(
//                                                                               Icons.comment,
//                                                                               color: Color(0xff780000),
//                                                                             ),
//                                                                           ),
//                                                                           controller: _comment,
//                                                                           validator:
//                                                                               FormBuilderValidators.compose(
//                                                                             [
//                                                                               FormBuilderValidators.required(context, errorText: 'please enter a valid comment'),
//                                                                             ],
//                                                                           ),
//                                                                           keyboardType:
//                                                                               TextInputType.text,
//                                                                         ),

//                                                                         // ปุ่มกด
//                                                                         SizedBox(
//                                                                           height:
//                                                                               50,
//                                                                         ),
//                                                                         Container(
//                                                                             height:
//                                                                                 65,
//                                                                             width: w *
//                                                                                 0.9,
//                                                                             decoration:
//                                                                                 BoxDecoration(
//                                                                               color: Color(0xff780000),
//                                                                               borderRadius: BorderRadius.circular(30),
//                                                                               boxShadow: [
//                                                                                 BoxShadow(blurRadius: 10, spreadRadius: 7, offset: Offset(1, 1), color: Colors.grey.withOpacity(0.2))
//                                                                               ],
//                                                                             ),
//                                                                             child:
//                                                                                 GestureDetector(
//                                                                               onTap: () {
//                                                                                 // setState(() {
//                                                                                 //   _input = TextController.text;
//                                                                                 // });
//                                                                                 if (_formKey1.currentState!.validate()) {}
//                                                                                 ;
//                                                                                 if (_formKey2.currentState!.validate()) {}
//                                                                                 ;
//                                                                                 if (_formKey3.currentState!.validate()) {}
//                                                                                 ;
//                                                                                 if (_formKey4.currentState!.validate()) {}
//                                                                                 ;
//                                                                                 if (_formKey5.currentState!.validate()) {}
//                                                                                 ;
//                                                                                 if (_formKey6.currentState!.validate()) {}
//                                                                                 ;
//                                                                                 if (_formKey7.currentState!.validate()) {
//                                                                                   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('booking sucessful!')));
//                                                                                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ValidateBooking()));
//                                                                                   //Navigator.pushNamed(
//                                                                                   //context,'/va',
//                                                                                   //arguments: partysizeFieldController.text,
//                                                                                   //);
//                                                                                   //Navigator.of(context).push(MaterialPageRoute(builder: (context) => ValidateBooking(data: partysizeFieldController.text,)));
//                                                                                 }
//                                                                               },
//                                                                               child: Center(
//                                                                                 child: Text(
//                                                                                   "Review Reservation",
//                                                                                   style: const TextStyle(
//                                                                                     fontSize: 25,
//                                                                                     fontWeight: FontWeight.bold,
//                                                                                     color: Colors.white,
//                                                                                   ),
//                                                                                 ),
//                                                                               ),

                                                                              
//                                                                             )),


//                                                                         //Text('$_input')
//                                                                       ]),
//                                                                 ),
//                                                               )
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       )
//                                                     ],
//                                                   ),
//                                                 )),
//                                               ],
//                                             ),
//                                           ))
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
