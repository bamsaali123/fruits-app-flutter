import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/yourinformation.dart';
import 'detailscreen.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState(); 
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Color(0xFF060A16),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: Detailscreen.cart.length, 
              itemBuilder: (context, index) {
                final item = Detailscreen.cart[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 5), 
                  child: ListTile(
                    tileColor: Colors.white, 
                    leading: SizedBox(
                      width: 100, 
                      height: 100, 
                      child: Image.network(
                        item['imageUrl']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      item['fruitName']!,
                      style: TextStyle(color: Color(0xFF060A16)),
                    ),
                    subtitle: Text(
                      'Amount: 1 Kilogram - Price: ${item['pricePerKilo']}',
                      style: TextStyle(color: Color(0xFF060A16)), 
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle, color: Color(0xFF060A16), size: 25), 
                      onPressed: () {
                        setState(() {
                          Detailscreen.cart.removeAt(index); 
                        });
                      },
                    ),   
                  ),
                );
              },
            ),
          ),
          if (Detailscreen.cart.isNotEmpty) 
          Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Custumer()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 100,vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  
                ),
              ),
              child: Text(
                'Continue', 
                style: TextStyle(fontSize: 25,color: Color(0xFF060A16)),
              ),
              
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF060A16),
    );
  }
}
