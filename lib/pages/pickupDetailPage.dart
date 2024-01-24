import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/homePage.dart';
import 'package:intl/intl.dart';

class PickupDetailPage extends StatefulWidget {
  const PickupDetailPage({super.key});
  static const String idScreen = "PickUp screen";

  @override
  State<PickupDetailPage> createState() => _PickupDetailPageState();
}

class _PickupDetailPageState extends State<PickupDetailPage> {
  DateTime date = DateTime(2023, 12, 1);
  TextEditingController _dateController1 = TextEditingController();
  TextEditingController _dateController2 = TextEditingController();

  @override
  void dispose() {
    _dateController1.dispose();
    _dateController2.dispose();
    super.dispose();
  }

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
              height: MediaQuery.of(context).size.height * 1.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
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
                borderRadius: BorderRadius.circular(10), // Border radius
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.13,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: Icon(
                Icons.cancel_rounded,
                color: Color.fromARGB(255, 64, 64, 64),
                size: 35,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.height * 0.42,
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.gps_fixed,
                      color: Colors.white70,
                    ), // Label color
                    labelText: 'Enter Pickup', // Label text
                    labelStyle: TextStyle(color: Colors.white70), // Label color
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                          color:
                              Colors.white24), // Border color when not focused
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
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.20,
                    child: GestureDetector(
                      onTap: () async {
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                          builder: (context, child) => Theme(
                            data: ThemeData().copyWith(
                              colorScheme: const ColorScheme.dark(
                                primary: Color.fromRGBO(251, 78, 37, 1),
                                background: Color.fromRGBO(255, 255, 255, 1),
                                surface: Color.fromRGBO(251, 78, 37, 1),
                                onSurface: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              textTheme: const TextTheme(
                                subtitle1: TextStyle(
                                  color: Colors.white,
                                ),
                                subtitle2: TextStyle(
                                  color: Color.fromRGBO(251, 78, 37, 1),
                                ),
                              ),
                              dialogBackgroundColor:
                                  Color.fromRGBO(34, 34, 34, 1),
                            ),
                            child: child!,
                          ),
                        );

                        if (selectedDate != null) {
                          final selectedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            builder: (context, child) => Theme(
                              data: ThemeData.dark().copyWith(
                                colorScheme: const ColorScheme.dark(
                                  primary: Color.fromRGBO(251, 78, 37, 1),
                                  onPrimary: Colors.white,
                                  surface: Color.fromRGBO(34, 34, 34, 1),
                                  onSurface: Color.fromRGBO(251, 78, 37, 1),
                                ),
                              ),
                              child: child!,
                            ),
                          );

                          if (selectedTime != null) {
                            final selectedDateTime = DateTime(
                              selectedDate.year,
                              selectedDate.month,
                              selectedDate.day,
                              selectedTime.hour,
                              selectedTime.minute,
                            );

                            final formattedDateTime1 = DateFormat('yyyy-MM-dd')
                                .format(selectedDateTime);

                            _dateController1.text = formattedDateTime1;
                          }
                        }
                      },
                      child: AbsorbPointer(
                        absorbing: true,
                        child: TextField(
                          controller: _dateController1,
                          readOnly: true,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_month_outlined,
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
                      onTap: () async {
                        final selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100),
                          builder: (context, child) => Theme(
                            data: ThemeData().copyWith(
                              colorScheme: const ColorScheme.dark(
                                primary: Color.fromRGBO(251, 78, 37, 1),
                                background: Color.fromRGBO(255, 255, 255, 1),
                                surface: Color.fromRGBO(251, 78, 37, 1),
                                onSurface: Color.fromRGBO(255, 255, 255, 1),
                              ),
                              textTheme: const TextTheme(
                                subtitle1: TextStyle(
                                  color: Colors.white,
                                ),
                                subtitle2: TextStyle(
                                  color: Color.fromRGBO(251, 78, 37, 1),
                                ),
                              ),
                              dialogBackgroundColor:
                                  Color.fromRGBO(34, 34, 34, 1),
                            ),
                            child: child!,
                          ),
                        );

                        if (selectedDate != null) {
                          final selectedTime = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                            builder: (context, child) => Theme(
                              data: ThemeData.dark().copyWith(
                                colorScheme: const ColorScheme.dark(
                                  primary: Color.fromRGBO(251, 78, 37, 1),
                                  onPrimary: Colors.white,
                                  surface: Color.fromRGBO(34, 34, 34, 1),
                                  onSurface: Color.fromRGBO(251, 78, 37, 1),
                                ),
                              ),
                              child: child!,
                            ),
                          );

                          if (selectedTime != null) {
                            final selectedDateTime = DateTime(
                              selectedDate.year,
                              selectedDate.month,
                              selectedDate.day,
                              selectedTime.hour,
                              selectedTime.minute,
                            );
                            final formattedDateTime2 = DateFormat('yyyy-MM-dd')
                                .format(selectedDateTime);

                            _dateController2.text = formattedDateTime2;
                          }
                        }
                      },
                      child: AbsorbPointer(
                        absorbing: true,
                        child: TextField(
                          controller: _dateController2,
                          readOnly: true,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white70,
                            ), // Label color
                            labelText: 'Return date', // Label text
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: BorderSide(
                                  color: Colors
                                      .white24), // Border color when not focused
                            ),
                            focusedBorder: OutlineInputBorder(
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
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Adjust the value as needed
                      ),
                      backgroundColor:
                          Color.fromARGB(255, 251, 76, 37), // Background color
                    ),
                    child: Text(
                      "Search cars",
                      style: TextStyle(
                        fontSize: 22,
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
