import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CustomAppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: "            This is mod 5 Assignment\n\n",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "My",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.red,
                      ),
                    ),
                    TextSpan(
                      text: " phone",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: " name",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                    TextSpan(
                      text: " Your phone name",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: EdgeInsets.only(top: 35), // Adjust top padding as needed
        child: Text(
          "Home",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.green,
      elevation: 70,
      leading: Container(
        padding: EdgeInsets.only(top: 25, left: 10),
        child: IconButton(
          icon: Icon(Icons.add_home_work),
          onPressed: () {
            // Define the action for the left icon here
          },
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(top: 25, right: 10),
          child: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Define the action for the right icon here
            },
          ),
        ),
      ],
    );
  }
}
