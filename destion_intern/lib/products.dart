import 'package:destion_intern/product_details_page.dart';
import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220), // Adjust height of the AppBar
        child: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          automaticallyImplyLeading: false, // Remove back button
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0), // Space at the top
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hello, sharathjayan',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Icon(Icons.shopping_cart_outlined, color: Colors.white),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search For Items',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  // Categories inside AppBar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: SizedBox(
                      height: 80, // Height for categories
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(width: 20),
                          _buildCategoryItem(
                              'All', Icons.shopping_bag_outlined),
                          SizedBox(width: 20),
                          _buildCategoryItem('Fruits', Icons.apple),
                          SizedBox(width: 20),
                          _buildCategoryItem(
                              'Grocery', Icons.local_grocery_store),
                          SizedBox(width: 20),
                          _buildCategoryItem('Vegetables', Icons.grass),
                          SizedBox(width: 20),
                          _buildCategoryItem('Meat', Icons.restaurant),
                          SizedBox(width: 20),
                          _buildCategoryItem('Dairy', Icons.icecream),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner Section with Horizontal Scroll
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150,
                  child: PageView(
                    children: [
                      _buildBanner(
                          'Enjoy Dussehra Specials at Namaste Indian Supermarket!',
                          Colors.amber),
                      _buildBanner('Big Festive Sale! Discounts Up To 50%',
                          Colors.orange),
                      _buildBanner(
                          'Exclusive Offers On Groceries!', Colors.green),
                    ],
                  ),
                ),
              ),

              // Special Deals
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Special Deals',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('View All'),
                  ],
                ),
              ),
              SizedBox(
                height: 250, // Height for Special Deals
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildSpecialDeal('White Pomfret fish', '\$15.99',
                        'lib/assets/fish.jpeg'),
                    _buildSpecialDeal(
                        'Pressure Cooker', '10% OFF', 'lib/assets/cooker.jpeg'),
                    _buildSpecialDeal(
                        'All Dals | 2lb', '\$2.99', 'lib/assets/dal.jpeg'),
                  ],
                ),
              ),

              // Latest Products
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest products',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('View All'),
                  ],
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return _buildLatestProduct(
                      'Product $index', '\$20.00', 'lib/assets/product.jpeg');
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20, // Adjusted radius to fit better
          child: Icon(icon, size: 25),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _buildSpecialDeal(String name, String price, String asset) {
    return Card(
      color: Colors.blueAccent,
      // Set background color for the card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            asset,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Text(name, style: TextStyle(color: Colors.white)), // Text color
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(price,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white)), // Text color
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.white, // Background color for the button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // Rectangular shape
                ),
              ),
              onPressed: () {},
              child: Text('ADD',
                  style: TextStyle(color: Colors.teal)), // Text color
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLatestProduct(String name, String price, String asset) {
    return GestureDetector(
      child: Card(
        child: Column(
          children: [
            Image.asset(asset, height: 100),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(name),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner(String text, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
