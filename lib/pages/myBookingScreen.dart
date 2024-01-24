import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/myProfile.dart';
import 'package:vehicle_rental/widget/bookingDetailCard.dart';
import 'package:vehicle_rental/widget/myBookingCard.dart';

import 'MorePage.dart';
import 'homePage.dart';


class MyBookingPage extends StatefulWidget {
  static const String idScreen = "MorePage screen";

  @override
  State<MyBookingPage> createState() => _MyBookingPageState();
}

class _MyBookingPageState extends State<MyBookingPage> {
  int _selectedButtonIndex = 0;
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My bookings",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedButtonIndex = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 0
                            ? const Color.fromARGB(
                                0, 255, 153, 0) // Active color
                            : const Color.fromARGB(
                                255, 34, 34, 34), // Inactive color
                        foregroundColor: _selectedButtonIndex == 0
                            ? const Color.fromARGB(
                                255, 251, 76, 37) // Active color
                            : const Color.fromARGB(
                                255, 153, 153, 153), // Inactive color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                          side: BorderSide(
                            width: 1.0,
                            color: _selectedButtonIndex == 0
                                ? const Color.fromARGB(
                                    255, 251, 76, 37) // Active color
                                : const Color.fromARGB(
                                    249, 0, 0, 0), // Inactive color
                          ),
                        ),
                      ),
                      child: const Text(
                        'Upcomming',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedButtonIndex = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 1
                            ? const Color.fromARGB(
                                0, 255, 153, 0) // Active color
                            : const Color.fromARGB(
                                255, 34, 34, 34), // Inactive color
                        foregroundColor: _selectedButtonIndex == 1
                            ? const Color.fromARGB(
                                255, 251, 76, 37) // Active color
                            : const Color.fromARGB(
                                255, 153, 153, 153), // Inactive color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                          side: BorderSide(
                            width: 1.0,
                            color: _selectedButtonIndex == 1
                                ? const Color.fromARGB(
                                    255, 251, 76, 37) // Active color
                                : Colors.transparent, // Inactive color
                          ),
                        ),
                      ),
                      child: const Text(
                        'Active',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),

                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedButtonIndex = 2;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 2
                            ? const Color.fromARGB(
                                0, 255, 153, 0) // Active color
                            : const Color.fromARGB(
                                255, 34, 34, 34), // Inactive color
                        foregroundColor: _selectedButtonIndex == 2
                            ? const Color.fromARGB(
                                255, 251, 76, 37) // Active color
                            : const Color.fromARGB(
                                255, 153, 153, 153), // Inactive color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                          side: BorderSide(
                            width: 1.0,
                            color: _selectedButtonIndex == 2
                                ? const Color.fromARGB(
                                    255, 251, 76, 37) // Active color
                                : Colors.transparent, // Inactive color
                          ),
                        ),
                      ),
                      child: const Text(
                        'Completed',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _selectedButtonIndex = 3;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 3
                            ? const Color.fromARGB(
                                0, 255, 153, 0) // Active color
                            : const Color.fromARGB(
                                255, 34, 34, 34), // Inactive color
                        foregroundColor: _selectedButtonIndex == 3
                            ? const Color.fromARGB(
                                255, 251, 76, 37) // Active color
                            : const Color.fromARGB(
                                255, 153, 153, 153), // Inactive color
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(36),
                          side: BorderSide(
                            width: 1.0,
                            color: _selectedButtonIndex == 3
                                ? const Color.fromARGB(
                                    255, 251, 76, 37) // Active color
                                : Colors.transparent, // Inactive color
                          ),
                        ),
                      ),
                      child: const Text(
                        'Cancelled',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BookingDetailCard()),
                  );
                },
                child: myBookingCard(),
              ),
              myBookingCard(),
            ],
          ),
        ),
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
            var _currentIndex = index;
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
                MaterialPageRoute(builder: (context) => const HomePage()),
              );

            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyProfilePage()),
              );

            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MorePage()),
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
