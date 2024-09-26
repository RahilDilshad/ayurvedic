import 'package:ayurvedic/gridview/grid.dart';
import 'package:ayurvedic/main.dart';
import 'package:ayurvedic/pagetwo.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        actions: [Icon(Icons.notifications)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search for treatments",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8)))),
                ),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[900],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sort by :",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  height: 40,
                  width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Date",
                        suffixIcon: Icon(Icons.arrow_drop_down),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
              ],
            ),
            Divider(
              color: const Color.fromARGB(255, 37, 37, 37),
              height: 30,
              thickness: .5,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return MyGrid();
              },
            )),
            Container(width: MediaQuery.sizeOf(context).width,
            height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.green[900]),
             child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) =>PageTwo()  ));
                        },
                        child: Center(
                          child: Text(
                              "Register Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                        )),)
          ],
        ),
      ),
    );
  }
}
