import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  const TextBox({Key? key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // Wrap with SingleChildScrollView
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                buildRow(['One', 'Two'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                buildRow(['Three', 'Four'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                // Add more rows as needed
                buildRow(['Five', 'Six'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                // Add more rows as needed
                buildRow(['Seven', 'Eight'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                // Add more rows as needed
                buildRow(['Nine', 'Ten'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                // Add more rows as needed
                buildRow(['Eleven', 'Twelve'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                // Add more rows as needed
                buildRow(['Thirteen', 'Fourteen'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
                // Add more rows as needed
                buildRow(['Fifteen', 'Sixteen'],
                    deviceWidth), // Use buildRow method to build row
                SizedBox(height: 5.0), // Add some space between rows
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBox(String text, double deviceWidth) {
    return Container(
      width: deviceWidth * 0.45,
      height: 75.0,
      color: Colors.green,
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget buildRow(List<String> texts, double deviceWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildBox(texts[0], deviceWidth),
        SizedBox(width: 10.0), // Add space between boxes
        buildBox(texts[1], deviceWidth),
      ],
    );
  }
}
