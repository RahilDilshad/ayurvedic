import 'package:ayurvedic/pageone.dart';
import 'package:flutter/material.dart';

final formkey = GlobalKey<FormState>();

class MyLoggin extends StatelessWidget {
  const MyLoggin({super.key});
  String? validateEmail(String ? Email){
    RegExp emailRegex = RegExp('@\+.');
    final isEmailValid = emailRegex.hasMatch(Email ?? '');
    if(!isEmailValid){
      return 'Please enter a vlid email';
     
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 217,
            child:
                Center(child: Image(image: AssetImage("assets/Asset 1 2.png"))),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/Frame 176.png"))),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(autovalidateMode: AutovalidateMode.always,

              child: Form(key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login Or Register To Book \nYour Appointments",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(validator: validateEmail,autovalidateMode: AutovalidateMode.always,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none),
                        hintText: "Enter Your Email",
                        fillColor: const Color.fromARGB(255, 160, 159, 156),
                        filled: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none),
                          hintText: "password",
                          fillColor: const Color.fromARGB(255, 160, 159, 156),
                          filled: true),
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.green[900]),
                      child: TextButton(
                          onPressed: () {
                          
                           
                          },
                          child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text:
                                "By creating or logging into an account you are agreeing \n   with our ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                            children: [
                              TextSpan(
                                text: " Terms and Conditions",
                                style: TextStyle(color: Colors.blue),
                              ),
                              TextSpan(
                                  text: ' and ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: 'Privacy Policy.',
                                style: TextStyle(color: Colors.blue),
                              )
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
