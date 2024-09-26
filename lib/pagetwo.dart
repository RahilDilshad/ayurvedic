import 'package:ayurvedic/gridview/alertbox.dart';
import 'package:ayurvedic/gridview/minit.dart';
import 'package:ayurvedic/gridview/textfield.dart';
import 'package:ayurvedic/gridview/time.dart';
import 'package:ayurvedic/pagethree.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [Icon(Icons.notifications)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Divider(
                color: Colors.black,
                // height: 80,
              ),
              SizedBox(
                height: 10,
              ),
              TextType(
                title: "Name",
                hintText: "Enter your full name",
              ),
              TextType(
                title: "Whatsapp Number",
                hintText: " Enter your Whatsapp number",
              ),
              TextType(
                title: "Address",
                hintText: "Enter your full address",
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    fillColor: Color(0xffF1F1F1),
                    filled: true,
                    hintText: "Choose your location",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  items: <String>['Kozhikkod', 'kannur', 'Kuttiady']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Branch",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    fillColor: Color(0xffF1F1F1),
                    filled: true,
                    hintText: "Select the branch ",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  items: <String>['Kozhikkod', 'kannur', 'Kuttiady']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Treatments",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffF1F1F1)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1. Couple Combo package i..",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 18),
                            ),
                            Icon(
                              Icons.close_sharp,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Male  :",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.green),
                          ),
                          Container(
                            height: 26,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 79, 80, 79))),
                          ),
                          Text(
                            "Female  :",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.green),
                          ),
                          Container(
                            height: 26,
                            width: 48,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 79, 80, 79))),
                          ),
                          Image.asset("assets/material-symbols_edit-outline.png")
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context, builder: (context) => MyDiloge());
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width,
                    child: Center(
                      child: Text(
                        "+ Add Treatments",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff389A484D),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              TextType(
                title: "Total Amount",
              ),
              SizedBox(
                height: 10,
              ),
              TextType(
                title: 'Discount Amount',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Payment Option",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              TextType(
                title: " Advance Amount",
              ),
              SizedBox(
                height: 10,
              ),
              TextType(
                title: 'Balance Amount',
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Treatment Date",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_month),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none),
                    fillColor: Color(0xffF1F1F1),
                    filled: true),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Treatment Time",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF1F1F1),
                    ),
                    child: Center(
                      child: HourDropdown(
                        onHourSelected: (value) {},
                      ),
                    ),
                  ),
                  Container( height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF1F1F1),
                    ),
                    child: Center(
                      child: MinuteDropdown(
                        onMinuteSelected: (value) => context,
                      ),
                    ),
                  )
                ],
              ),SizedBox(height: 40,),
               Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green[900]),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PageThree(),));
                      },
                      child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      )),
                )
            ],
          ),
        ),
      ),
    );
  }
}
