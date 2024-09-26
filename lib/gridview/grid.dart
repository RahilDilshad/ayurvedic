import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  const MyGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 166,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xffF1F1F1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vikram Singh",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Text(
                    "Couple Combo Package (Rejuven...",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color(0xff006837)),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        color: Colors.red,
                      ),
                      Text("31/01/2024"),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.red,
                      ),
                      Text("Jithesh"),
                    ],
                  ),
                ],
              ),
            ),

            Divider(color: Colors.black,),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("View Booking details",style:TextStyle(fontWeight: FontWeight.w400,fontSize: 16),),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
