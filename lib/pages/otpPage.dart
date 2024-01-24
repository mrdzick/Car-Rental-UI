import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OtpPage extends StatefulWidget {
  static const String idScreen = "PickUp screen";

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/homeBg.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black,
                    Colors.black87,
                    Colors.transparent
                  ], // Gradient colors
                  begin: Alignment.bottomCenter, // Gradient start point
                  end: Alignment.topCenter, // Gradient end point
                ),
              ),
            ),
          ),
          // Content Overlay
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.47,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Image.asset(
                'assets/appLogo.png',
                width: 140,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.32,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify your mobile number \nwhile adding OTP',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 15, color: Colors.white),
                        children: [
                          TextSpan(
                              text:
                                  'We have shared the OTP on the given \nMobile number that is : '),
                          TextSpan(
                            text: '8740840142' + "  ",
                            style: TextStyle(color: Colors.red),
                          ),
                          TextSpan(
                            text: 'Edit',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color(0xff999999)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // Add your desired action here
                                print('Link clicked!');
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.18,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 70,
                      width: 80,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: "-",
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Colors
                                    .white24), // Border color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Border color when focused
                          ),
                          fillColor: Colors.transparent,
                          // Background color
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 80,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: "-",
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Colors
                                    .white24), // Border color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Border color when focused
                          ),
                          fillColor: Colors.transparent,
                          // Background color
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 80,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: "-",
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Colors
                                    .white24), // Border color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Border color when focused
                          ),
                          fillColor: Colors.transparent,
                          // Background color
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 70,
                      width: 80,
                      child: TextFormField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        onSaved: (pin1) {},
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: "-",
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color: Colors
                                    .white24), // Border color when not focused
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // Border color when focused
                          ),
                          fillColor: Colors.transparent,
                          // Background color
                          filled: true,
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      int count = 0;
                      Navigator.of(context).popUntil((_) => count++ >= 2);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the value as needed
                      ),
                      backgroundColor: Color(0xffFB4E25), // Background color
                    ),
                    child: Text(
                      "Verify",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
