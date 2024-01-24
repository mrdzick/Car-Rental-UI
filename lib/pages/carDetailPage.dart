import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_rental/pages/loginPage.dart';
import 'package:vehicle_rental/widget/contactUsCard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widget/bookingDetailCard.dart';

class CarDetailPage extends StatefulWidget {
  const CarDetailPage({super.key});

  static const String idScreen = "PickUp screen";

  @override
  State<CarDetailPage> createState() => _CarDetailPageState();
}

class _CarDetailPageState extends State<CarDetailPage> {
  List imageList = [
    {"id": 1, "image_path": "assets/largeCarImg.png"},
    {"id": 2, "image_path": "assets/carImg.png"},
    {"id": 3, "image_path": "assets/largeCarImg.png"}
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  PlatformFile? pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            size: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20),
                height: MediaQuery.of(context).size.height * 0.22,
                width: double.infinity,
                child: Stack(
                  children: [
                    CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 3,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: currentIndex == entry.key
                                      ? Colors.red
                                      : Colors.teal),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff222222),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 20, bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BMW E-620",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Loreum impsum text you want add for car/bike",
                                style: TextStyle(
                                    color: Color(0xff999999), fontSize: 14),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        child: Icon(
                                          Icons.directions_car,
                                          size: 30,
                                          color: Colors.white,
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
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        child: Icon(
                                          Icons.local_gas_station_outlined,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Petrol",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 153, 153, 153),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 60,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        child: Icon(
                                          Icons.airline_seat_recline_normal,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "5 Person",
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 153, 153, 153),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Specification",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    size: 26,
                                    color: Color(0xffFB4E25),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    size: 26,
                                    color: Color(0xffFB4E25),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    size: 26,
                                    color: Color(0xffFB4E25),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outline_rounded,
                                    size: 26,
                                    color: Color(0xffFB4E25),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Lorem Ipsum is simply dummy text of the printing",
                                      maxLines: 2,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              ContactUsCard(),
                              SizedBox(
                                height: 45,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      padding: EdgeInsets.only(left: 20, top: 15),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xffFB4E25),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "07 Jan 2023 12:45 PM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_outlined,
                            size: 26,
                            color: Colors.white,
                          ),
                          Text(
                            "12 Jan 2023 12:45 PM",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.14,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\₹2000/-",
                                style: TextStyle(
                                    color: Color(0xffFB4E25),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900),
                              ),
                              Text(
                                "per day",
                                style: TextStyle(
                                    color: Color(0xff999999),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 55,
                            child: ElevatedButton(
                              onPressed: () {
                                showModalBottomSheet(
                                  isScrollControlled: true,
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0),
                                    ),
                                  ),
                                  backgroundColor: Color(0xff222222),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setState) {
                                        return Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.65,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  height: 15,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 26.0,
                                                              top: 20),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          "Confirm booking",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 22,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 30.0,
                                                              top: 20),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Icon(
                                                          Icons.cancel,
                                                          color: Colors.white,
                                                          size: 40,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 26.0),
                                                  child: Text(
                                                    "Upload driving Lic.",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                GestureDetector(
                                                  onTap: () async {
                                                    // Implement the logic to open the document picker or camera here
                                                    // You can use packages like 'image_picker' for this purpose
                                                    final result =
                                                        await FilePicker
                                                            .platform
                                                            .pickFiles();
                                                    if (result == null) {
                                                      return;
                                                    }
                                                    setState(() {
                                                      pickedFile =
                                                          result.files.first;
                                                    });
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 26.0,
                                                            right: 26,
                                                            top: 10),
                                                    child: DottedBorder(
                                                      borderType:
                                                          BorderType.RRect,
                                                      color: Color(0xff999999),
                                                      radius:
                                                          Radius.circular(100),
                                                      dashPattern: [8, 4],
                                                      strokeWidth: 1,
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            color:
                                                                Colors.black),
                                                        child: Center(
                                                          child: Text(
                                                            pickedFile != null
                                                                ? pickedFile!
                                                                    .name
                                                                : 'Choose File/Take Picture',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              color: Color(
                                                                  0xff999999),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 26.0),
                                                  child: Text(
                                                    "Upload Aadhar card",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // Implement the logic to open the document picker or camera here
                                                    // You can use packages like 'image_picker' for this purpose
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 26.0,
                                                            right: 26,
                                                            top: 10),
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      100),
                                                          color: Colors.black),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 14.0,
                                                                right: 14),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'JiteshAadhar.jpeg',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 14,
                                                                color: Color(
                                                                    0xffFB4E25),
                                                              ),
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {},
                                                              child: Text(
                                                                'Edit',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 14,
                                                                  color: Color(
                                                                      0xff999999),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 26.0),
                                                  child: Text(
                                                    "Confirm mobile number",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 12,
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    // Implement the logic to open the document picker or camera here
                                                    // You can use packages like 'image_picker' for this purpose
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 20.0,
                                                            right: 20,
                                                            top: 10),
                                                    child: SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.42,
                                                      child: TextField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 16),
                                                        decoration:
                                                            InputDecoration(
                                                          // Label color
                                                          labelText:
                                                              'Mobile number',
                                                          // Label text
                                                          labelStyle: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                          // Label color
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0),
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .white24), // Border color when not focused
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors
                                                                    .white), // Border color when focused
                                                          ),
                                                          fillColor: Colors
                                                              .transparent,
                                                          // Background color
                                                          filled: true,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 25,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 8.0, bottom: 24),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.45,
                                                        height: 55,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Adjust the value as needed
                                                            ),
                                                            backgroundColor: Color(
                                                                0xff666666), // Background color
                                                          ),
                                                          child: Text(
                                                            "Cancel",
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.45,
                                                        height: 55,
                                                        child: ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          BookingDetailCard()),
                                                            );
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Adjust the value as needed
                                                            ),
                                                            backgroundColor: Color(
                                                                0xffFB4E25), // Background color
                                                          ),
                                                          child: Text(
                                                            "Pay now",
                                                            style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Adjust the value as needed
                                ),
                                backgroundColor:
                                    Color(0xffFB4E25), // Background color
                              ),
                              child: Text(
                                "Book now",
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
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
