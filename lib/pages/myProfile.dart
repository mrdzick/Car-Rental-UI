import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/MorePage.dart';
import 'package:vehicle_rental/pages/homePage.dart';
import 'package:vehicle_rental/widget/profileCard.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  static const String idScreen = "MyProfile screen";

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  int _currentIndex = 2;

  int _selectedButtonIndex = 0;

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
                "My profile",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 170,
                        height: 170,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: [Color(0xffFB4E25), Colors.transparent],
                            radius: 0.9,
                            center: Alignment.center,
                          ),
                          border:
                              Border.all(color: Color(0xffFB4E25), width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage("assets/pfp.png"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Michal John",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              MyProfileCard(
                labelText: "Email address",
                labelValue: "Usian@gmail.com",
                editOption: true,
              ),
              SizedBox(
                height: 5,
              ),
              MyProfileCard(
                labelText: "Mobile number",
                labelValue: "+91 8740840142",
                editOption: true,
              ),
              SizedBox(
                height: 5,
              ),
              MyProfileCard(
                labelText: "Driving license number",
                labelValue: "14568413545456",
                editOption: true,
              ),
              SizedBox(
                height: 5,
              ),
              MyProfileCard(
                labelText: "Aadhar card",
                labelValue: "-",
                editOption: false,
              ),
              SizedBox(
                height: 5,
              ),
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
            _currentIndex = index;
          });

          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              break;

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
