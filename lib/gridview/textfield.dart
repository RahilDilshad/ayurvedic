import 'package:flutter/material.dart';

class TextType extends StatelessWidget {
  String? hintText;
  String? title;
  
   TextType({super.key,
  this.hintText,
  this.title,
  
  
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text("$title",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
          ),
          TextFormField(
                      decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8),borderSide: BorderSide.none),
                          hintText:hintText ,
                          fillColor: Color(0xffF1F1F1),
                          filled: true),
                    ),
        ],
      );
    
  }
}



//---------------------------------------------------

  