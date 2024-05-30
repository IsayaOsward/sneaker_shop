import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Padding(padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 50),
          child: Image.asset("lib/images/car.png")),

          //title
          Text("Klopp-Tigger",
          style: GoogleFonts.pacifico(
            textStyle: const TextStyle(
              fontSize: 50,
            )
          ),),

          //subtitle
          const SizedBox(height: 30,),
          Text("A Place Where You Can Find Your Dream Car In the Word",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),),
          const SizedBox(height: 150,),
          //start now
          GestureDetector(
            onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 140),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
              child: Text('Go Show Room Now',
              style: GoogleFonts.roboto(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                )
              ),),
            ),
          )
        ],
      ),
    );
  }
}
