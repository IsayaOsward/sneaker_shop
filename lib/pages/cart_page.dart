import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/shoe.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override

  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void showOrderSubmissionDialog() async {
    showDialog(context: context, builder: (context)=>
        AlertDialog(
          title: Text("Order Confirmation"),
          content: Text("Your Order has been submitted Successfully!"),
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child)=>Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: [
          Text("My Cart", style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          ),
          Expanded(child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context,index){
            Shoe individualShoe = value.getUserCart()[index];

            return CartItem(shoe: individualShoe,
            onPressed: null,);
          })),
          GestureDetector(
            onTap: ()=>showOrderSubmissionDialog(),
            child: Container(
              padding: EdgeInsets.only(left: 90, right: 90, top: 15, bottom: 15),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text("Pay Now", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
            ),
          ),
        ],
      ),
    ),);
  }
}
