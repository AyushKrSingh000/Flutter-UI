import 'package:flutter/material.dart';
import 'package:ui/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isVisible = false;
  void updateStatus() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 400,
              left: -100,
              child: Transform.rotate(
                angle: 14.9,
                child: Container(
                  height: 600,
                  width: 600,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                ),
                const Image(
                  image: AssetImage('assets/images/ui images/home.png'),
                  height: 150,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Find ",
                      style: TextStyle(
                          color: Color.fromARGB(255, 9, 51, 82),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 140,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Transform.scale(
                    scale: 0.95,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email ID',
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 18,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: TextFormField(
                            onChanged: (value) {},
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Email ID',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 18,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: TextFormField(
                            onChanged: (value) {},
                            cursorColor: Colors.black,
                            obscureText: _isVisible ? false : true,
                            decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  onPressed: () => updateStatus(),
                                  icon: Icon(_isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Password',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.grey.shade300),
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                minimumSize:
                                    Size(MediaQuery.of(context).size.width, 45),
                                backgroundColor:
                                    const Color.fromARGB(255, 24, 71, 123)),
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 18,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Forgot Password ?",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "Create New Account ?",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
