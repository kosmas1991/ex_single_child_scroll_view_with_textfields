import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Example'),                         /////     SOLUTION
        ),
        body: SingleChildScrollView(                  ///// just add a single child scroll view AND
          child: Container(                           ///// at the container
            height: MediaQuery.of(context).size.height,  ///// the height of the screen
            child: Center(
              child: Column(
                children: [
                  Flexible(
                      flex: 3,
                      child: Container(
                        color: Colors.deepOrange,
                      )),
                  Flexible(
                      flex: 4,
                      child: Container(
                        width: 250,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(decoration: InputDecoration(hintStyle: TextStyle(color: Colors.blue),hintText: 'email'),),
                            TextField(decoration: InputDecoration(hintStyle: TextStyle(color: Colors.blue),hintText: 'password'),),
                            TextField(decoration: InputDecoration(hintStyle: TextStyle(color: Colors.blue),hintText: 'confirm password'),),
                            TextField(decoration: InputDecoration(hintStyle: TextStyle(color: Colors.blue),hintText: 'full name'),),
                          ],
                        ),
                      )),
                  Flexible(
                      flex: 3,
                      child: Container(
                        color: Colors.deepPurple,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
