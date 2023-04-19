import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Welcome To UBazar',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Promotion Image
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                "assets/images/shop_basket.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            //Catagories

            Container(
              padding: EdgeInsets.all(2.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/images/icons/all.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/images/icons/friuts.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/images/icons/vegetables.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      child: Image.asset(
                        "assets/images/icons/fish.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('All'),
                    Text('  Fruits'),
                    Text(' Vegetables'),
                    Text('Fish'),
                  ],
                ),
              ),
            ),

            // List of Catagory

            Container(
              margin: EdgeInsets.all(7),
              color: Colors.white,
              height: 250,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/img/1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Fruits and vegetables",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "->",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/img/2.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Fishes and Sea-food",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "->",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/img/3.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Chicken and fry grill",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "->",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/img/4.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Vegetables and chills",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "->",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/img/5.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Text(
                              "Dry Nuts and almond",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            "->",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),

      // Bottom Navigation Bar

      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(Icons.search),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(Icons.shopping_cart),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
                label: 'Favourite',
                icon: Icon(Icons.favorite_border),
                backgroundColor: Colors.yellow),
            BottomNavigationBarItem(
              label: 'Account',
              icon: Icon(Icons.person),
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          //currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 25,
          //onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
