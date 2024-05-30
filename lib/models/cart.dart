import 'package:flutter/foundation.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of items
  // List<Shoe> shoeShop=[
  //   Shoe(name: "AirForce", price: "45,000", description: "This is a nice shoe from Nike which is affordable to both male and females", imagePath: "lib/images/airforce.jpg"),
  //   Shoe(name: "Hats", price: "15,000", description: "These are nice hats which are affordable to both male and females", imagePath: "lib/images/hats.jpg"),
  //   Shoe(name: "Jeans", price: "19,000", description: "We have quality and original Jeans from best manufactures in the world at lowest price ever", imagePath: "lib/images/jeans.png"),
  //   Shoe(name: "T-Shirts", price: "15,000", description: "The are great T-Shirts that can be worn by both mens and Women, Available for different sizes", imagePath: "lib/images/shirts.jpg"),
  //   Shoe(name: "Vans", price: "45,000", description: "This is a nice shoe from Vans which is worn by both male and females", imagePath: "lib/images/vans.jpg"),
  // ];

  List<Shoe> shoeShop = [
    Shoe(
      name: "Range Rover Velar",
      price: "Starting at \$87,000", // Adjust based on actual pricing
      description:
      "The Range Rover Velar seamlessly blends sophisticated design with exceptional off-road capability. ",
      imagePath: "lib/images/range.jpg", // Replace with actual image path
    ),
    Shoe(
      name: "Land Rover Discovery",
      price: "Starting at \$50,000", // Adjust based on actual pricing
      description:
      "The Land Rover Discovery is an iconic off-road legend, renowned for its ruggedness and capability.",
      imagePath: "lib/images/discovery.jpg", // Replace with actual image path
    ),
    Shoe(
      name: "Porsche Macan",
      price: "Starting at \$54,000", // Adjust based on actual pricing
      description:
      "The Porsche Macan is a compact luxury SUV that offers exhilarating performance and a refined driving experience.",
      imagePath: "lib/images/porsche.jpg", // Replace with actual image path
    ),
    Shoe(
      name: "BMW X5",
      price: "Starting at \$60,000", // Adjust based on actual pricing
      description:
      "The BMW X5 is a popular luxury SUV that offers a blend of performance, comfort, and technology. ",
      imagePath: "lib/images/bmw.jpg", // Replace with actual image path
    ),
    Shoe(
      name: "Mercedes-Benz GLE",
      price: "Starting at \$63,000", // Adjust based on actual pricing
      description:
      "The Mercedes-Benz GLE is a mid-size luxury SUV that offers a combination of luxury, performance, and technology. ",
      imagePath: "lib/images/mercedes.jpg", // Replace with actual image path
    ),
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