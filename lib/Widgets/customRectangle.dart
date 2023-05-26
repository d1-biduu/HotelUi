import 'package:flutter/material.dart';
class Rectangle extends StatelessWidget {
  IconData icon;
  String? text;
   Rectangle({super.key, required this.icon,  this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                          height:52,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffeeeeff),
                          ),
                          child: Center(
                            child: Icon(icon, size: 30,color:Color(0xff5b58e2) ,)
                          )),
                         const SizedBox(height: 10,),
                         Text(text!, textAlign: TextAlign.center, style: const TextStyle(  

    fontSize:  12,
    fontWeight:  FontWeight.w400,
    height:  1.25,
    letterSpacing:  0.3,
    color:  Color(0xff4f4f4f),
  ),
),
      ],
    );
  }
}