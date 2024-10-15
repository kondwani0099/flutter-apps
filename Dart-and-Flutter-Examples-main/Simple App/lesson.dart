import 'package:flutter/material.dart'; //contains all the widgets used in this code and more

void main() { //main entry point for the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //constructor

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),//calls the main home class
    );
  }

}
//main app class
class HomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
       title: Text('Home Screen'), 
      ),
        body: Center(
             child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
               children: [
                   Text('Welcome to My App!', 
                   style: TextStyle(fontSize: 24), 
                   ),
                 SizedBox(height: 20), //provides spaces between the codes
                 ElevatedButton(
                    onPressed: () {
                      print('Hello, World!');//prints hello world in console
                    }, child: Text('Say Hello'), 
                 ), 
              ], 
            ),
         ), 
      );
    }
}
