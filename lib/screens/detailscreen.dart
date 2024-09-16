import 'package:flutter/material.dart';

class Detailscreen extends StatelessWidget {
  final String imageUrl;
  final String fruitName;
  final String availableAmount;
  final String pricePerKilo;

  // Static cart to store added items
  static List<Map<String, String>> cart = [];

  Detailscreen({
    super.key,
    required this.imageUrl,
    required this.fruitName,
    required this.availableAmount,
    required this.pricePerKilo,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF060A16)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: screenWidth,
              height: screenHeight - 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        width: 300,
                        height: 300,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      fruitName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF060A16),
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Available Amount:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF060A16),
                          fontSize: 20),
                    ),
                    Text(
                      availableAmount,
                      style: TextStyle(
                          color: Color.fromRGBO(120, 124, 124, 0.847),
                          fontSize: 15),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'The Price for 1 kilo:',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF060A16),
                          fontSize: 20),
                    ),
                    Text(
                      pricePerKilo,
                      style: TextStyle(
                          color: Color.fromRGBO(120, 124, 124, 0.847),
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                // Check if the item is already in the cart
                bool isAlreadyInCart = cart.any((item) =>
                    item['fruitName'] == fruitName &&
                    item['imageUrl'] == imageUrl &&
                    item['availableAmount'] == availableAmount &&
                    item['pricePerKilo'] == pricePerKilo);

                if (!isAlreadyInCart) {
                  cart.add({
                    'imageUrl': imageUrl,
                    'fruitName': fruitName,
                    'availableAmount': availableAmount,
                    'pricePerKilo': pricePerKilo,
                  });

                  // Show Snackbar for successful addition
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$fruitName has been added to your cart.'),
                      duration: Duration(seconds: 2), // Duration for how long the SnackBar will be visible
                    ),
                  );
                } else {
                  // Show Snackbar for item already in cart
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$fruitName is already in your cart.'),
                      duration: Duration(seconds: 2), // Duration for how long the SnackBar will be visible
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Add To Cart',
                style: TextStyle(color: Color(0xFF060A16), fontSize: 18),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      backgroundColor: Color(0xFF060A16),
    );
  }
}
