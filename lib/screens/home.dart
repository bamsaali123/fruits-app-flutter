import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_application_2/screens/register.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 + 100,
            child: PageView(
              controller: _pageController, // التحكم في الصفحات
              children: [
                buildImage(
                    'https://img.freepik.com/free-photo/strawberry-berry-levitating-white-background_485709-57.jpg?semt=ais_hybrid',
                    context),
                buildImage(
                    'https://img.freepik.com/free-photo/orange-juicy-ripe-circle-citrus_1172-203.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid',
                    context),
                buildImage(
                    'https://img.freepik.com/premium-photo/watermelon_253984-4177.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid',
                    context),
              ],
            ),
          ),
          // إضافة شريط النقاط هنا
          SizedBox(height: 10),
          SmoothPageIndicator(
            controller: _pageController, // نفس المتحكم بالـ PageView
            count: 3, // عدد الصور
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Colors.white,
              dotColor: Colors.grey,
            ),
          ),
          SizedBox(height: 50),
          Text('Welcome to Grocery Shop',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25)),
          SizedBox(height: 20),
          Text(
            'Discover the taste of fresh, high-quality fruits at our shop',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Text('where exceptional flavor meets',
              style: TextStyle(color: Colors.white, fontSize: 10)),
          Text('unparalleled variety',
              style: TextStyle(color: Colors.white, fontSize: 10)),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              width: double.infinity,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Register(),
                    ),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Color(0xFF060A16),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF060A16),
    );
  }

  Widget buildImage(String url, BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
