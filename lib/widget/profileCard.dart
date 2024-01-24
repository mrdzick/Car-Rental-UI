import 'package:flutter/material.dart';

class MyProfileCard extends StatelessWidget {
  final String labelText, labelValue;
  final bool editOption;

  MyProfileCard(
      {this.labelText = "-", this.labelValue = "-", this.editOption = false});

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
              Text(
                labelText,
                style: TextStyle(
                  color: Color(0xffC8C8C8),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    labelValue,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("button clicked");
                    },
                    child: editOption
                        ? Text(
                            "Edit",
                            style: TextStyle(
                              color: Color(0xffC8C8C8),
                              fontSize: 12,
                            ),
                          )
                        : Text(
                            "Upload now",
                            style: TextStyle(
                              color: Color(0xffFB4E25),
                              fontSize: 12,
                            ),
                          ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
