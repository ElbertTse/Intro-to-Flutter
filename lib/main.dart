// Elbert Tse
// Knight Hacks Mobile Development Team App Demo
// February 2021

// This line imports material design widgets to the app.
import 'package:flutter/material.dart';

// Main function, this is where execution starts.
void main() {
  
  // This is how we run an app from main.
  // The widget itself is a stateless widget class.
  // To run it, we call the class as a method, which calls it's build method.
  runApp(Demo());
}

class Demo extends StatelessWidget {

  // When a Class is called as a method, their build method is called.
  // The build method will always return a widget.

  @override
  Widget build(BuildContext context) {
    /*

      All Flutter apps will follow this format:
      MaterialApp()
        SafeArea()
          Scaffold()
            ...

    */
    return MaterialApp(
        
        // This is the wrapper for our entire app.
        debugShowCheckedModeBanner: false, // This disables the debug banner in the top right corner.
        theme: ThemeData.dark(), // Since we like darkmode on everything.
        title: "Demo App", // Need a title for our app
        home: SafeArea(
          
          // This is a wrapper for the content in our app. It keeps the widgets from being drawn off the display.
          // We can also declare some padding or margins for the app, but we won't be need that
          // All apps have some form of a child widget attribute. Most of them are called child. For MaterialApp its home, for Scaffold its body
          child: Scaffold(

            // Here we can add widgets like a AppBar or NavBar
            appBar: AppBar(
              title: Text("Business Card Demo"),
              // There is an actions property that takes an array of widgets. These should be buttons if used.
            ),
            body: Center(

              // Just using this widget to center our elements.
              child: Column(

                // Column has a children property and will display them vertically.
              ),
            ),
          ), 
        ),
    );
  }
}