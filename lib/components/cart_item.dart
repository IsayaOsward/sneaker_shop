import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class CartItem extends StatelessWidget {
  Shoe shoe;
  void Function()? onPressed;
  CartItem({super.key, required this.shoe, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(shoe.imagePath),
      title: Text(shoe.name),
      subtitle: Text(shoe.price),
      trailing: IconButton(onPressed: onPressed, icon: Icon(Icons.delete),),
    );
  }
}
