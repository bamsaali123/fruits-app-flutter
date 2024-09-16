import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/delivery.dart';

class Custumer extends StatelessWidget {
  Custumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF060A16),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: <Widget>[
            Text(
              'Your Name Please',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 15), 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30), 
            Text(
              'Delivery Address',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 15), 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Number for Call',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 15), 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Card Number',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 15), 
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: ElevatedButton(
                onPressed: () 
                {Navigator.of(context).push
                (MaterialPageRoute(builder: (context)=>Delivery()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Finish',
                  style: TextStyle(color: Color(0xFF060A16), fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 30), 
          ],
        ),
      ),
      backgroundColor: Color(0xFF060A16),
    );
  }
}
