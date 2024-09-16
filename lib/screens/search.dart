import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/cart.dart';
import 'package:flutter_application_2/screens/detailscreen.dart';
import 'package:flutter_application_2/screens/register.dart';

class Search extends StatelessWidget {
  Search({super.key});

  final List<Map<String, String>> fruits = [
    {
      'imageUrl': 'https://img.freepik.com/premium-photo/watermelon_253984-4177.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid',
      'name': 'Watermelon',
      'amount': '100 kilograms',
      'price': '20 pounds',
    },
    {
      'imageUrl': 'https://img.freepik.com/free-photo/fresh-fruits-bunch-fresh-mellow-juicy-red-apples-isolated-white_179666-493.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid',
      'name': 'Apples',
      'amount': '200 kilograms',
      'price': '30 pounds',
    },
    {'imageUrl': 'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Banana ',
      'amount': '100 kilograms',
      'price': '25  pounds',
      },
    {'imageUrl': 'https://img.freepik.com/free-photo/ripe-sliced-mango-white-background_185193-161775.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Mango ',
      'amount': '300 kilograms',
      'price': '15  pounds',
      },
     {'imageUrl': 'https://img.freepik.com/free-photo/closeup-shot-fresh-ripe-strawberries-isolated-white-surface_181624-54939.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Strawberries ',
      'amount': '50 kilograms',
      'price': ' 50 pounds',
      },
     {'imageUrl': 'https://img.freepik.com/free-photo/front-view-fresh-juicy-grapes-mellow-fruits-white-desk_140725-26739.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Grapes ',
      'amount': '150 kilograms',
      'price': ' 15 pounds',
      },
     {'imageUrl': 'https://img.freepik.com/free-photo/fresh-kiwi-fruit-isolated_144627-30034.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Kiwi ',
      'amount': '100 kilograms',
      'price': ' 70 pounds',
      },
     {'imageUrl': 'https://img.freepik.com/free-photo/view-delicious-dragon-fruit-pitahaya_23-2151566386.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Dragon Fruit ',
      'amount': '50 kilograms',
      'price': '100  pounds',
      },
     {'imageUrl': 'https://img.freepik.com/premium-photo/close-up-berry-fruits-white-background_1048944-26009071.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Berry ',
      'amount': '30 kilograms',
      'price': '55  pounds',
      },
     {'imageUrl': 'https://img.freepik.com/free-vector/3d-realism-pineapple-juice-fresh-fruit-vector-illustration_433751-13.jpg?ga=GA1.1.119082994.1724718412&semt=ais_hybrid ',
      'name': 'Pineapple ',
      'amount': '150 kilograms',
      'price': '80  pounds',
      }      
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Register()),
              
            );
          },
        ),
        title: Text('Search', style: TextStyle(color: Colors.white, fontSize: 20)),
        centerTitle: true,
        actions: [IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cart()),);},
           icon: Icon(Icons.shopping_cart,color: Colors.white,size: 30,))],
        backgroundColor: Color(0xFF060A16),
        
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'fresh products',
                hintStyle: TextStyle(color: Color.fromRGBO(120, 124, 124, 0.847), fontSize: 13),
                prefixIcon: Icon(Icons.search, color: Color.fromRGBO(120, 124, 124, 0.847)),
                suffixIcon: Icon(Icons.menu, color: Color.fromRGBO(120, 124, 124, 0.847)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemCount: fruits.length,
                itemBuilder: (context, index) {
                  final fruit = fruits[index];
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Detailscreen(
                            imageUrl: fruit['imageUrl']!,
                            fruitName: fruit['name']!,
                            availableAmount: fruit['amount']!,
                            pricePerKilo: fruit['price']!,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(fruit['imageUrl']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF060A16),
    );
  }
}
