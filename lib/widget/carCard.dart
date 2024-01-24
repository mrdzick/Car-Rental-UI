import 'package:flutter/material.dart';

class carCard extends StatelessWidget {
  final String carName, carDesc, carGear, carFuel, carSeat;
  final int carPrice;
  carCard({
    this.carName = "-",
    this.carDesc = "-",
    this.carGear = "-",
    this.carFuel = "-",
    this.carSeat = "-",
    this.carPrice = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Container(
          decoration: BoxDecoration(
            color: Color(0xff222222),
            borderRadius:
                BorderRadius.circular(10.0), // Adjust the radius as needed
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
                    borderRadius: BorderRadius.circular(
                        12), 
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
                  carName,
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  carDesc,
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 37,
                          height: 37,
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
                          carGear,
                          style: TextStyle(
                            color: Color.fromARGB(255, 153, 153, 153),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 37,
                          height: 37,
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
                          carFuel,
                          style: TextStyle(
                            color: Color.fromARGB(255, 153, 153, 153),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 37,
                          height: 37,
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
                          carSeat,
                          style: TextStyle(
                            color: Color.fromARGB(255, 153, 153, 153),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '\₹ $carPrice/-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 77, 37),
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
