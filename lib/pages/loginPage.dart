import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/otpPage.dart';

class LoginPage extends StatefulWidget {
  static const String idScreen = "PickUp screen";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login to continue \nyour booking',
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.height * 0.42,
                child: GestureDetector(
                  onTap: () {
                  },
                  child: TextField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    decoration: InputDecoration(// Label color
                      labelText: 'Mobile number', // Label text
                      labelStyle:
                      TextStyle(color: Color(0xff777777)), // Label color
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide(
                            color: Colors
                                .white24), // Border color when not focused
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Border color when focused
                      ),
                      fillColor: Colors.transparent, // Background color
                      filled: true,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.13,
            left: MediaQuery.of(context).size.width*0.28,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Text("Login with TrueCaller",style: TextStyle(color: Colors.white,fontSize: 14),)
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.05,
            child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 10),
                child:Container(
                  width:  MediaQuery.of(context).size.width* 0.9,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                       Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OtpPage()),
          );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                      ),
                      backgroundColor: Color(0xffFB4E25),// Background color
                    ),
                    child: Text("Send OTP",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}



