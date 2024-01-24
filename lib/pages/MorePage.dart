import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/myProfile.dart';
import 'package:vehicle_rental/widget/faqTileWidget.dart';

import 'homePage.dart';

class MorePage extends StatefulWidget {
  const MorePage({super.key});
  static const String idScreen = "MorePage screen";

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  int _currentIndex = 3;
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
                "More",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.black,
                        builder: (context) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios_sharp,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Contact us',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Pretendard',
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.95,
                                decoration: BoxDecoration(
                                  color: Color(0xff222222),
                                  borderRadius: BorderRadius.circular(
                                      20.0), // Adjust the radius as needed
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 12.0, left: 10.0, right: 10),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(
                                              20.0), // Adjust the radius as needed
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Rental Support",
                                                style: TextStyle(
                                                  color: Color(0xffFB4E25),
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "+91 5584698521",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Supportrentalo@gmail.com",
                                                style: TextStyle(
                                                    color: Color(0xffC8C8C8),
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0,
                                          bottom: 12.0,
                                          left: 10.0,
                                          right: 10),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.circular(
                                              20.0), // Adjust the radius as needed
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Service support",
                                                style: TextStyle(
                                                  color: Color(0xffFB4E25),
                                                  fontSize: 14,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "+91 5584698521",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "supportrentalo@gmail.com",
                                                style: TextStyle(
                                                    color: Color(0xffC8C8C8),
                                                    fontSize: 12),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                    backgroundColor: Color(0xff222222), // Background color
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Contact us",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.black,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios_sharp,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Terms of Service',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Pretendard',
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15, bottom: 15),
                                  child: Text(
                                    textAlign: TextAlign.justify,
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    style: TextStyle(
                                        height: 1.5,
                                        fontFamily: 'Pretendard',
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                    backgroundColor: Color(0xff222222), // Background color
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Terms & conditions",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.black,
                        builder: (context) {
                          return SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(
                                        Icons.arrow_back_ios_sharp,
                                        size: 24,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Privacy Policy',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Pretendard',
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15, bottom: 15),
                                  child: Text(
                                    textAlign: TextAlign.justify,
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                    style: TextStyle(
                                        height: 1.5,
                                        fontFamily: 'Pretendard',
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                    backgroundColor: Color(0xff222222), // Background color
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Privacy Policy",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.black,
                        builder: (context) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios_sharp,
                                      size: 24,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "FAQ's",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Pretendard',
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Column(
                                  children: [
                                    FAQTileWidget(
                                      title: 'The point of using Lorem Ipsum?',
                                      subtitle:
                                          'Flutter is an open-source UI software development kit created by Google.',
                                      content:
                                          'It is used to build natively compiled applications for mobile, web, and desktop from a single codebase.',
                                    ),
                                    FAQTileWidget(
                                      title: 'The point of using Lorem Ipsum??',
                                      subtitle:
                                          'To get started with Flutter, you need to install the Flutter SDK and an IDE (such as Android Studio or Visual Studio Code).',
                                      content:
                                          'Then, you can create a new Flutter project and start coding your app using Dart programming language.',
                                    ),
                                    FAQTileWidget(
                                      title: 'The point of using Lorem Ipsum?',
                                      subtitle:
                                          'Yes, Flutter is suitable for both Android and iOS app development.',
                                      content:
                                          'It allows you to build apps with a single codebase that can run on multiple platforms.',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                    backgroundColor: Color(0xff222222), // Background color
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "FAQ's",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: ElevatedButton(
                  onPressed: (){
           {
             showModalBottomSheet(
                 context: context,
                 shape: const RoundedRectangleBorder(
                   borderRadius: BorderRadius.vertical(
                     top: Radius.circular(25.0),
                   ),
                 ),
                 backgroundColor: Color(0xff222222),
                 builder: (context) {
                   return SingleChildScrollView(
                     child: Column(
                       children: [
                         Align(
                           alignment: Alignment.topRight,
                           child: Padding(
                             padding: const EdgeInsets.only(right: 30.0,top: 20),
                             child: GestureDetector(
                               onTap: () {
                                 Navigator.pop(context);
                               },
                               child: Icon(
                                 Icons.cancel,
                                 color: Colors.white,
                                 size: 40,
                               ),
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(18.0),
                           child: Container(
                             child: Column(
                               children: [
                                 Center(
                                   child: Container(
                                     width: 120,
                                     height: 120,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       color: Colors.black
                                     ),
                                     child: Padding(
                                       padding: const EdgeInsets.all(8.0),
                                       child: CircleAvatar(
                                         backgroundColor: Colors.transparent,
                                         child: Transform(
                                          alignment: Alignment.center,
                                          transform: Matrix4.identity()..scale(-1.0,1.0,1.0),
                                          child: Icon(Icons.logout_rounded,size: 50,color: Color(0xffFB4E25),)),
                                       ),
                                     ),
                                   ),
                                 ),
                                 SizedBox(
                                   height: 15,
                                 ),
                                 const Text(
                                   "Are you sure you want to logout from \nthe application",maxLines: 2,
                                   textAlign: TextAlign.center,
                                   style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.white),
                                 ),
                               ],
                             ),
                           ),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 8.0,bottom: 24),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 width: MediaQuery.of(context).size.width * 0.45,
                                 height: 55,
                                 child: ElevatedButton(
                                   onPressed: () { Navigator.pop(context);},
                                   style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(
                                           10.0), // Adjust the value as needed
                                     ),
                                     backgroundColor: Color(0xff666666), // Background color
                                   ),
                                   child: Text(
                                     "Cancel",
                                     style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.w600,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                               ),
                               Container(
                                 width: MediaQuery.of(context).size.width * 0.45,
                                 height: 55,
                                 child: ElevatedButton(
                                   onPressed: () {},
                                   style: ElevatedButton.styleFrom(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(
                                           10.0), // Adjust the value as needed
                                     ),
                                     backgroundColor: Color(0xffFB4E25), // Background color
                                   ),
                                   child: Text(
                                     "Logout",
                                     style: TextStyle(
                                       fontSize: 18,
                                       fontWeight: FontWeight.w600,
                                       color: Colors.white,
                                     ),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         )
                       ],
                     ),
                   );
                 });
           }},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the value as needed
                    ),
                    backgroundColor: Color(0xff222222), // Background color
                  ),
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffFB4E25),
                    ),
                  ),
                ),
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
