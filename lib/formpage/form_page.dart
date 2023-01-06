import 'package:flutter/material.dart';

import '../constants.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  bool isPositioned = true;

  @override
  Widget build(BuildContext context) {
    final AnimationController controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 30));
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 350,
          width: 400,
          child: Card(
            elevation: 10,
            child: Transform.scale(
              scale: 0.8,
              child: Stack(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                                letterSpacing: 1,
                                color: kBlackColor,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Username";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                username = value.toString();
                              });
                            },
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(Icons.person),
                                hintText: 'username',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Password',
                            style: TextStyle(
                                letterSpacing: 1,
                                color: kBlackColor,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Password";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                password = value.toString();
                              });
                            },
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                filled: true,
                                prefixIcon: const Icon(Icons.email),
                                hintText: 'password',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(5),
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ]),
                  ),
                  AnimatedPositioned(
                    top: 240,
                    left: isPositioned ? 0 : 295,
                    duration: const Duration(milliseconds: 3),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(60, 60)),
                        onHover: (value) async {
                          if (password == 'ayush' && username == "ayush") {
                          } else {
                            if (isPositioned && value == true) {
                              isPositioned = false;
                            } else if (!isPositioned && value == true) {
                              isPositioned = true;
                            }
                            setState(() {});
                          }
                        },
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  backgroundColor: Colors.blue,
                                  content: Text(
                                    'You got it right. Enjoy :)',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            );
                          }
                        },
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
