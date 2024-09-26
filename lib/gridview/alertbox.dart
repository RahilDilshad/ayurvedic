















import 'package:flutter/material.dart';

class MyDiloge extends StatefulWidget {
  const MyDiloge({super.key});

  @override
  State<MyDiloge> createState() => _MyDilogeState();
}

class _MyDilogeState extends State<MyDiloge> {
  int count = 0;
  int num=0;
  void increas() {
    setState(() {
      count++;
    });
  }

  void decres() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }
  void femail(){
    setState(() {
      num++;
    });
  }
  void femaildecrease(){
    setState(() {
      if(num>0){
        num--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 350,top: 50),
      child: AlertDialog(
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Choose Treatment",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),SizedBox(height: 10,),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    fillColor: Color(0xffF1F1F1),
                    filled: true,
                    hintText: "Choose prefered treatment",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  items: <String>['op1', 'op2', 'op3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {},
                ),
              ),SizedBox(height: 10,),
              Text(
                "Add Patients",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF1F1F1)),
                    child: Center(
                      child: Text(
                        "Male  :",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.green),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[900]),
                    child: TextButton(
                      onPressed: increas,
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('$count')),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green[900]),
                      child: TextButton(
                        onPressed: decres,
                        child: Icon(Icons.remove,color: Colors.white,),
                      ))
                ],
              ),SizedBox(height: 10,),
              SizedBox(
                height: 10,
              ),
          
          
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffF1F1F1)),
                    child: Center(
                      child: Text(
                        "Female :",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.green),
                      ),
                    ),
                  ),
                   Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[900]),
                    child: TextButton(
                      onPressed: femail,
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                    ),
                  ),
                  Container(
                    child: Center(child: Text('$num')),
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green[900]),
                       child: TextButton(
                        onPressed: femaildecrease,
                        child: Icon(Icons.remove,color: Colors.white,),
                      ))
                ],
              ),SizedBox(height: 20,),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.green[900]),
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
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
