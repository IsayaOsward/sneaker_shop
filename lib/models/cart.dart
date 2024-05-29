import 'package:flutter/foundation.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of items
  List<Shoe> shoeShop=[
    Shoe(name: "AirForce", price: "45,000", description: "This is a nice shoe from Nike which is affordable to both male and females", imagePath: "lib/images/airforce.jpg"),
    Shoe(name: "Hats", price: "15,000", description: "These are nice hats which are affordable to both male and females", imagePath: "lib/images/hats.jpg"),
    Shoe(name: "Jeans", price: "19,000", description: "We have quality and original Jeans from best manufactures in the world at lowest price ever", imagePath: "lib/images/jeans.png"),
    Shoe(name: "T-Shirts", price: "15,000", description: "The are great T-Shirts that can be worn by both mens and Women, Available for different sizes", imagePath: "lib/images/shirts.jpg"),
    Shoe(name: "Vans", price: "45,000", description: "This is a nice shoe from Vans which is worn by both male and females", imagePath: "lib/images/vans.jpg"),
  ];


  //user cart
  List<Shoe> userCart = [];

  //get list of shoe for sale
  List<Shoe> getshoeList(){
    return shoeShop;
  }

  //get user cart
  List<Shoe> getUserCart()
  {
    return userCart;
  }
  //add item to cart
  void AddToCart(Shoe shoe)
  {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}