import 'package:flutter/material.dart';
import 'home.dart';
import 'Items.dart'; // Add this import to include the ItemsPage widget
import 'user_profile.dart'; // Replace with your actual UserProfile widget
import 'favorite_restaurants.dart'; // Replace with your actual FavoriteRestaurants widget
import 'order_history.dart'; // Replace with your actual OrderHistory widget
import 'faqs.dart'; // Replace with your actual FAQs widget

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white, // Set the background color to white
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'EATERY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Items'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ItemsPage()), // Replace with your actual ItemsPage widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('User Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfilePage()), // Replace with your actual UserProfile widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Favorite Food'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoriteRestaurantsPage()), // Replace with your actual FavoriteRestaurants widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Order History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderHistoryPage()), // Replace with your actual OrderHistory widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              title: Text('Frequently Asked Questions (FAQs)'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FAQsPage()), // Replace with your actual FAQs widget
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}