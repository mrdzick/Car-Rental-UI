import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/homePage.dart';
import 'package:vehicle_rental/pages/pickupDetailPage.dart';
import 'package:vehicle_rental/widget/carCard.dart';
import 'package:vehicle_rental/pages/carDetailPage.dart';
import 'package:vehicle_rental/widget/contactUsCard.dart';

class CarListScreen extends StatefulWidget {
  const CarListScreen({super.key});
  static const idScreen = "CarList Screen";
  @override
  State<CarListScreen> createState() => _CarListScreenState();
}

class _CarListScreenState extends State<CarListScreen> {
  int _selectedButtonIndex = 0;
  int _selectedButtonTypeIndex = 0;
  double _sliderValue = 50;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_sharp,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
                        backgroundColor: Color(0xff222222),
                        builder: (BuildContext context) {
                          return StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Container(
                              decoration: const BoxDecoration(
                                color: Color(0xff222222),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Add Filter",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Positioned(
                                          top: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.13,
                                          right: 30,
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Icon(
                                              Icons.cancel_rounded,
                                              color: Color.fromARGB(
                                                  255, 64, 64, 64),
                                              size: 35,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Choose Vehicle",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  _selectedButtonIndex = 0;
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    _selectedButtonIndex == 0
                                                        ? Color.fromARGB(
                                                            0,
                                                            255,
                                                            153,
                                                            0) // Active color
                                                        : Color.fromARGB(
                                                            255,
                                                            34,
                                                            34,
                                                            34), // Inactive color
                                                foregroundColor:
                                                    _selectedButtonIndex == 0
                                                        ? Color.fromARGB(
                                                            255,
                                                            251,
                                                            76,
                                                            37) // Active color
                                                        : Color.fromARGB(
                                                            255,
                                                            153,
                                                            153,
                                                            153), // Inactive color
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 40,
                                                    vertical: 15),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(36),
                                                  side: BorderSide(
                                                    width: 1.0,
                                                    color: _selectedButtonIndex ==
                                                            0
                                                        ? Color.fromARGB(
                                                            255,
                                                            251,
                                                            76,
                                                            37) // Active color
                                                        : Colors
                                                            .transparent, // Inactive color
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
                                            const SizedBox(width: 20),
                                            ElevatedButton(
                                              onPressed: () {
                                                setState(() {
                                                  _selectedButtonIndex = 1;
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    _selectedButtonIndex == 1
                                                        ? Color.fromARGB(
                                                            0,
                                                            255,
                                                            153,
                                                            0) // Active color
                                                        : Color.fromARGB(
                                                            255,
                                                            34,
                                                            34,
                                                            34), // Inactive color
                                                foregroundColor:
                                                    _selectedButtonIndex == 1
                                                        ? Color.fromARGB(
                                                            255,
                                                            251,
                                                            76,
                                                            37) // Active color
                                                        : Color.fromARGB(
                                                            255,
                                                            153,
                                                            153,
                                                            153), // Inactive color
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 40,
                                                    vertical: 15),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(36),
                                                  side: BorderSide(
                                                    width: 1.0,
                                                    color: _selectedButtonIndex ==
                                                            1
                                                        ? Color.fromARGB(
                                                            255,
                                                            251,
                                                            76,
                                                            37) // Active color
                                                        : Colors
                                                            .transparent, // Inactive color
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
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    const Text(
                                      "Transmission type",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _selectedButtonTypeIndex = 0;
                                                });
                                              },
                                              child: Container(
                                                width: 37,
                                                height: 37,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      _selectedButtonTypeIndex ==
                                                              0
                                                          ? Color.fromARGB(
                                                              255, 251, 76, 37)
                                                          : Color.fromARGB(
                                                              255, 0, 0, 0),
                                                ),
                                                child: Icon(
                                                  Icons.directions_car,
                                                  size: 23,
                                                  color:
                                                      _selectedButtonTypeIndex ==
                                                              0
                                                          ? Colors.white
                                                          : Color.fromARGB(
                                                              255, 251, 76, 37),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Automatic",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Column(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  _selectedButtonTypeIndex = 1;
                                                });
                                              },
                                              child: Container(
                                                width: 37,
                                                height: 37,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      _selectedButtonTypeIndex ==
                                                              1
                                                          ? Color.fromARGB(
                                                              255, 251, 76, 37)
                                                          : Color.fromARGB(
                                                              255, 0, 0, 0),
                                                ),
                                                child: Icon(
                                                  Icons.directions_car,
                                                  size: 23,
                                                  color:
                                                      _selectedButtonTypeIndex ==
                                                              1
                                                          ? Colors.white
                                                          : Color.fromARGB(
                                                              255, 251, 76, 37),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "Manual",
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 153, 153, 153),
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Price Range",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                        Text(
                                          "${_sliderValue.toInt()}/-",
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 251, 76, 37),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Slider(
                                      value: _sliderValue,
                                      min: 0,
                                      max: 100,
                                      onChanged: (double newValue) {
                                        setState(() {
                                          _sliderValue = newValue;
                                        });
                                      },
                                      activeColor:
                                          Color.fromARGB(255, 251, 76, 37),
                                      inactiveColor: Colors.black,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 180,
                                          height: 55,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    10.0), // Adjust the value as needed
                                              ),
                                              backgroundColor: Color.fromARGB(
                                                  255,
                                                  105,
                                                  105,
                                                  105), // Background color
                                            ),
                                            child: Text(
                                              "Reset",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 180,
                                          height: 55,
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    10.0), // Adjust the value as needed
                                              ),
                                              backgroundColor: Color(
                                                  0xffFB4E25), // Background color
                                            ),
                                            child: Text(
                                              "Apply",
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
                                  ],
                                ),
                              ),
                            );
                          });
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.filter_alt_sharp,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: const Color.fromARGB(153, 255, 255, 255),
                  ),
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Science city, Gota, Ahmedabad',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '07 Jan 2023',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.arrow_forward_outlined,
                              size: 18,
                              color: Colors.white70,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '12 Jan 2023',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(110, 42, 42, 42),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit_calendar_sharp,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const CarDetailPage()), // Replace NewScreen with the actual screen you want to navigate to
                  );
                },
                child: carCard(
                  carName: "BMW E-620",
                  carDesc: "Loreum impsum text you want add for car/bike",
                  carGear: "Automatic",
                  carFuel: "Petrol",
                  carSeat: "5 Seater",
                  carPrice: 2999,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
