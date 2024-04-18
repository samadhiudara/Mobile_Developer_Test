import 'package:flutter/material.dart';
import 'alert_dialog.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome to My App',
          style: TextStyle(
            fontSize: 20.0, // Adjust app bar title font size
            fontWeight: FontWeight.bold,
            color: Colors.white, // Change app bar title color
          ),
        ),
        backgroundColor: Colors.blue, // Change app bar background color
        elevation: 0, // Remove app bar elevation
      ),
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to my Flutter App!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87, // Change text color
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _showAlert(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Change button background color
                textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(
                    fontSize: 16.0, // Adjust button text font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Adjust button padding
                ),
              ),
              child: Text('Show Alert'),
            ),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertDialog(
          title: 'Alert',
          content: 'Button tapped!',
          buttonText: 'OK',
        );
      },
    );
  }
}





