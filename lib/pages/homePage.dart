import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/carListPage.dart';

import 'package:vehicle_rental/pages/myBookingScreen.dart';
import 'package:vehicle_rental/pages/myProfile.dart';
import 'package:vehicle_rental/pages/pickupDetailPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const String idScreen = "HomePage screen";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _selectedButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
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
            top: MediaQuery.of(context).size.height * 0.30,
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
            top: MediaQuery.of(context).size.height * 0.37,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Column(
                  children: [
                    Text(
                      'We are here for your travel and short rides! ',
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
            top: MediaQuery.of(context).size.height * 0.54,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButtonIndex = 0;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedButtonIndex == 0
                          ? Color.fromARGB(0, 255, 153, 0) // Active color
                          : Color.fromARGB(255, 34, 34, 34), // Inactive color
                      foregroundColor: _selectedButtonIndex == 0
                          ? Color.fromARGB(255, 251, 76, 37) // Active color
                          : Color.fromARGB(
                              255, 153, 153, 153), // Inactive color
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                        side: BorderSide(
                          width: 1.0,
                          color: _selectedButtonIndex == 0
                              ? Color.fromARGB(255, 251, 76, 37) // Active color
                              : Colors.transparent, // Inactive color
                        ),
                      ),
                    ),
                    child: Text(
                      'Cars',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedButtonIndex = 1;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedButtonIndex == 1
                          ? Color.fromARGB(0, 255, 153, 0) // Active color
                          : Color.fromARGB(255, 34, 34, 34), // Inactive color
                      foregroundColor: _selectedButtonIndex == 1
                          ? Color.fromARGB(255, 251, 76, 37) // Active color
                          : Color.fromARGB(
                              255, 153, 153, 153), // Inactive color
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(36),
                        side: BorderSide(
                          width: 1.0,
                          color: _selectedButtonIndex == 1
                              ? Color.fromARGB(255, 251, 76, 37) // Active color
                              : Colors.transparent, // Inactive color
                        ),
                      ),
                    ),
                    child: Text(
                      'Bikes',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.24,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.height * 0.42,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PickupDetailPage()),
                    );
                  },
                  child: AbsorbPointer(
                    absorbing: true,
                    child: TextField(
                      readOnly: true,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.gps_fixed,
                          color: Colors.white70,
                        ),
                        labelText: 'Enter Pickup',
                        labelStyle: TextStyle(color: Colors.white70),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.white24,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PickupDetailPage()),
                        );
                      },
                      child: AbsorbPointer(
                        absorbing: true,
                        child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.white70,
                            ), // Label color
                            labelText: 'Pickup date', // Label text
                            labelStyle:
                                TextStyle(color: Colors.white70), // Label color
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors
                                      .white24), // Border color when not focused
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when focused
                            ),
                            fillColor: Colors.transparent, // Background color
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PickupDetailPage()),
                        );
                      },
                      child: AbsorbPointer(
                        absorbing: true,
                        child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_today_outlined,
                              color: Colors.white70,
                            ), // Label color
                            labelText: 'Return date', // Label text
                            labelStyle: TextStyle(
                              color: Colors.white70,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors
                                      .white24), // Border color when not focused
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors
                                      .white), // Border color when focused
                            ),
                            fillColor: Colors.transparent, // Background color
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CarListScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the value as needed
                      ),
                      backgroundColor: Color(0xffFB4E25), // Background color
                    ),
                    child: Text(
                      "Search cars",
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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 251, 76, 37),
        unselectedItemColor: Color.fromARGB(255, 76, 76, 76),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.drive_eta_outlined),
            label: 'Book now',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_rtl),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'More',
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;

            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyBookingPage()),
              );

            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfilePage()),
              );

            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfilePage()),
              );
              break;

            default:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;
          }
        },
      ),
    );
  }
}
