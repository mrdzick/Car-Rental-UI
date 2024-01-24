import 'package:flutter/material.dart';
import 'package:vehicle_rental/widget/contactUsCard.dart';

class BookingDetailCard extends StatelessWidget {
  const BookingDetailCard({super.key});
  static const String idScreen = "PickUp screen";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back_ios_sharp,
          size: 20,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
          child: Column(
            children: [
              CongratulationIcon(),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff222222),
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 356,
                          height: 125,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              image: AssetImage("assets/carImg.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "BMW E-620",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Loreum impsum text you want add for car/bike",
                          style: TextStyle(
                            color: Color.fromARGB(255, 153, 153, 153),
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 15,
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
                                    color: Color.fromARGB(255, 153, 153, 153),
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
                                    color: Color.fromARGB(255, 153, 153, 153),
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
                                    color: Color.fromARGB(255, 153, 153, 153),
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
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pickup location",
                                      style: TextStyle(
                                        color: Color(0xffFB4E25),
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Science city, Gota, Ahmedabad",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "07 Jan 2023, 12:56 PM",
                                      style: TextStyle(
                                        color: Color(0xffC8C8C8),
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff222222),
                                ),
                                child: Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the radius as needed
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pickup location",
                                      style: TextStyle(
                                        color: Color(0xffFB4E25),
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Science city, Gota, Ahmedabad",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "07 Jan 2023, 12:56 PM",
                                      style: TextStyle(
                                        color: Color(0xffC8C8C8),
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff222222),
                                ),
                                child: Icon(
                                  Icons.location_on_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              YourDetailWidget(),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff222222),
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the radius as needed
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Instructions",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
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
                          height: 5,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12),
                child: ContactUsCard(),
              ),
              SizedBox(
                height: 15,
              ),
              UpdateBookingButton(),
            ],
          ),
        ),
      ),
    );;
  }
}

class UpdateBookingButton extends StatelessWidget {
  const UpdateBookingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10,bottom: 20),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
                backgroundColor:  Color.fromARGB(
                    0, 255, 153, 0),// Inactive color
                foregroundColor: const Color.fromARGB(
                    255, 251, 76, 37),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10.0), // Adjust the value as needed
              ),
              side: BorderSide(
                  width: 1.0,
                  color: Color(0xffFB4E25),),
              // Background color
            ),
            child: Text(
              "Update booking",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xffFB4E25),
              ),
            ),
          ),
        ));
  }
}

class YourDetailWidget extends StatelessWidget {
  const YourDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff222222),
          borderRadius: BorderRadius.circular(
              10.0), // Adjust the radius as needed
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your detail",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Color(0xffFB4E25),
                            size: 22,
                          ),
                          SizedBox(width: 4,),
                          Text(
                            "Name",
                            style: TextStyle(
                              color: Color(0xffFB4E25),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Radhakrishnan Swami",
                        style: TextStyle(
                          color: Color(0xffC8C8C8),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.text_snippet_outlined,
                            color: Color(0xffFB4E25),
                            size: 22,
                          ),
                          SizedBox(width: 4,),
                          Text(
                            "Aadhar number",
                            style: TextStyle(
                              color: Color(0xffFB4E25),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "444564568784485",
                        style: TextStyle(
                          color: Color(0xffC8C8C8),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust the radius as needed
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.text_snippet_outlined,
                            color: Color(0xffFB4E25),
                            size: 22,
                          ),
                          SizedBox(width: 4,),
                          Text(
                            "Driving Lic. number",
                            style: TextStyle(
                              color: Color(0xffFB4E25),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "548451586451545",
                        style: TextStyle(
                          color: Color(0xffC8C8C8),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CongratulationIcon extends StatelessWidget {
  const CongratulationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
            Icons.check_circle_outline_rounded,
            size: 125,
            color: Color(0xffFB4E25),
          ),
          Text(
            "Congratulations!",
            style: TextStyle(
                color: Color(0xffFB4E25),
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Your booking is confirmed",
            style: TextStyle(
              color: Color(0xffDBDBDB),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
