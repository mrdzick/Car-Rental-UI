import 'package:flutter/material.dart';

class ContactUsCard extends StatelessWidget {
  const ContactUsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      width: 500,
      decoration: BoxDecoration(
        color: Color(0xff2E2E2E),
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
        border: Border.all(
          color: Color(0xff666666), // Set the border color
          width: 2, // Set the border width
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              width:70,
              child: Image.asset(
                "assets/contactCardImg.png",
              ),
            ),
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "For support Contact us",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    width: 210,
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing",
                      maxLines: 2,
                      softWrap: true,
                      style: TextStyle(
                        color: Color(0xffC8C8C8),
                        fontSize: 12,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
