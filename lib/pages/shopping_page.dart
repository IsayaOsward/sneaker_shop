import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shole_tile.dart';
import 'package:sneaker_shop/models/cart.dart';
import 'package:sneaker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add to cart
  void addShoeToCart(Shoe shoe)
  {
    Provider.of(context,listen: false).addToCart(shoe);

    //alert
    showDialog(context: context, builder: (context)=>AlertDialog(
     title: Text("Successfully Added to Cart"),
      content: Text("Check your cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child)=>Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row
              (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Search", style: TextStyle(color: Colors.grey),),
                Icon(Icons.search),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
            child: Text("Everyone flies...but others fly longer than others"),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hot Picks 🔥",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),),
                Text("See all",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.blue
                ),),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Expanded(child: ListView.builder(
              itemCount: value.getshoeList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                Shoe _shoe= value.getshoeList()[index];
                return ShoeTile(
                  shoe: _shoe,
                  onTap: ()=>addShoeToCart(_shoe),
                );
              })),
          Padding(padding: EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child:
            Divider(
              color: Colors.white,
            ),)
        ],
      ),
    );
  }
}
