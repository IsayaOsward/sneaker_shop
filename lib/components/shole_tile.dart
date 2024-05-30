import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  Shoe shoe;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 25.0),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //image
            Image.asset(shoe.imagePath,height: 350,),

            //desc
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(shoe.description),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name, style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      const SizedBox(height: 10,),
                      Text(shoe.price, style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),)
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )
                        ),
                        child: const Icon(Icons.add, color: Colors.white,)),
                  )
                ],
              ),
            )
          ],
        ),
    );
  }
}
