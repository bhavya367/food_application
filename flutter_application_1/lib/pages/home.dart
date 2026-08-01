import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Food Application',
          style: TextStyle(
            fontFamily: 'Times New Roman', // Native font family
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22, // Slightly larger font size
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false, // Remove back icon
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Title with normal font family
            Text(
              'Welcome to Eatery',
              style: TextStyle(
                fontFamily: 'Arial', // Set font family to Arial
                fontSize: 28, // Slightly larger text
                fontWeight: FontWeight.bold, // Bold font
                color: Colors.purple,
              ),
            ),
            const SizedBox(height: 10), // Space between titles
            Text(
              'To Order Food',
              style: TextStyle(
                fontFamily: 'Verdana', // Set font family to Verdana
                fontSize: 22, // Slightly larger text
                color: Colors.grey[700],
                fontWeight: FontWeight.w600, // Medium weight
              ),
            ),
            const SizedBox(height: 40), // Space between title and buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())
              );
            }, 
            child: const Text('Register'))
          ],
          
        ),
      ),
    );
  }
}
