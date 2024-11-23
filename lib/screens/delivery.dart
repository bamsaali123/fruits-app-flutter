import 'package:flutter/material.dart';

class Delivery extends StatelessWidget {
  Delivery({super.key});

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
        title: Text(
          'Delivery',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.edit, color: Colors.white),
              title: Text('Order Taken', style: TextStyle(fontSize: 20,color: Colors.white)),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.list_alt_rounded, color: Colors.white),
              title: Text('Order is Being Prepared', style: TextStyle(fontSize: 20,color: Colors.white)),
              trailing: Icon(Icons.check_circle, color: Colors.green),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.delivery_dining_sharp, color: Colors.white),
              title: Text('Order is Being Delivered', style: TextStyle(fontSize: 20,color: Colors.white)),
              trailing: Icon(Icons.phone_in_talk_rounded, color: Colors.orange),
            ),
            SizedBox(height: 20),
            // استخدام Expanded لحل مشكلة الـ overflow
            Expanded(
              child: Container(
                width: double.infinity, // تأكد من أن الصورة ستأخذ عرض الشاشة بالكامل
                child: Image.network(
                  'https://img.freepik.com/premium-photo/map-gps-road-route-direction-navigation-city-street-landmark-app-website-online-guide-location-digital-journey-info-travel-tourist-trip-icon_590464-334055.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid',
                  fit: BoxFit.cover,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    } else {
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Text(
                        'Image failed to load',
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green, size: 40),
              title: Text('Order Received', style: TextStyle(fontSize: 20, color: Colors.white)),
              trailing: Icon(Icons.more_horiz, color: Colors.white),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF060A16),
    );
  }
}
