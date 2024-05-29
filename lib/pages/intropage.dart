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
          child: Image.asset("lib/images/hanger.png")),

          //title
          Text("E-Pambakali",
          style: GoogleFonts.pacifico(
            textStyle: const TextStyle(
              fontSize: 50,
            )
          ),),

          //subtitle
          const SizedBox(height: 30,),
          Text("A Brand New Collection of All Your Favourite Clothes in the World. i.e Shirts, Jeans, Hats, Shoes",
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
              child: Text('Start Shopping Now',
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
