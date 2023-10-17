import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'firebase_config.dart'; // Import the Firebase configuration

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: FirebaseConfig.apiKey,
      authDomain: FirebaseConfig.authDomain,
      databaseURL: FirebaseConfig.databaseURL,
      projectId: FirebaseConfig.projectId,
      storageBucket: FirebaseConfig.storageBucket,
      messagingSenderId: FirebaseConfig.messagingSenderId,
      appId: FirebaseConfig.appId,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LED Control',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final DatabaseReference _database = FirebaseDatabase.instance.reference().child('leds');
  bool _isLed1On = false;
  bool _isLed2On = false;
  double _temperature = 0.0; // Initialize temperature as 0.0

  @override
  void initState() {
    super.initState();

    // Listen for changes to the temperature data in Firebase
    _database.child('sensor_data').onValue.listen((event) {
      // Check if the value from Firebase is not null and can be converted to a double
      if (event.snapshot.value != null) {
        try {
          _temperature = double.tryParse(event.snapshot.value.toString()) ?? 0.0;
        } catch (e) {
          print("Error parsing temperature data: $e");
          // Handle the error as needed
        }
      } else {
        // Handle the case where the value is null
        _temperature = 0.0; // Set a default value
      }

      // Update the UI with the new temperature value
      setState(() {});
    });
  }

  // Function to toggle LED 1 state in Firebase
  void toggleLed1() {
    setState(() {
      _isLed1On = !_isLed1On;
    });

    // Update Firebase with the new LED 1 state ('on' or 'off')
    _database.update({'led1': _isLed1On ? 'on' : 'off'});
  }

  // Function to toggle LED 2 state in Firebase
  void toggleLed2() {
    setState(() {
      _isLed2On = !_isLed2On;
    });

    // Update Firebase with the new LED 2 state ('on' or 'off')
    _database.update({'led2': _isLed2On ? 'on' : 'off'});
  }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text('LED Control'),
//     ),
//     body: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             'Temperature: $_temperature °C', // Display temperature
//             style: const TextStyle(fontSize: 20),
//           ),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 child: ElevatedButton(
//                   onPressed: toggleLed1,
//                   child: Text(_isLed1On ? 'Turn Off LED 1' : 'Turn On LED 1'),
//                 ),
//                 // Add spacing between the button and the text
//                 //const SizedBox(width: 20),
//               ),
//               Container(
//                 child: ElevatedButton(
//                   onPressed: toggleLed2,
//                   child: Text(_isLed2On ? 'Turn Off LED 2' : 'Turn On LED 2'),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('LED Control'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(6.0), // Add margin
            padding: const EdgeInsets.all(16.0), // Add padding
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue, // Add a blue background
              borderRadius: BorderRadius.circular(10), // Add border radius
            ),
            child: Text(
              'Temperature: $_temperature °C',
              style: const TextStyle(
                fontSize: 20,
                
                color: Colors.white, // Set text color to white
              ),
            ),
          ),
          //const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(6.0), // Add margin
                padding: const EdgeInsets.all(16.0), // Add padding
                // width: 100,
                // height: 50,
                child: ElevatedButton(
                  onPressed: toggleLed1,
                  child: Image.asset(
                    'assets/water-pump.jpg', // Add the image for pumps icon
                    width: 150, // Set the width of the image
                    height: 70, // Set the height of the image
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _isLed1On ? Colors.green : Colors.red, // Change button color based on state
                  ),
                ),
                // Add spacing between the button and the text
               // const SizedBox(width: 20),
              ),
              Container(
                margin: const EdgeInsets.all(6.0), // Add margin
                padding: const EdgeInsets.all(16.0), // Add padding
                child: ElevatedButton(
                  onPressed: toggleLed2,
                  child: Image.asset(
                    'assets/water-pump.jpg', // Add the same image for the other button
                    width: 150,
                    height: 70,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: _isLed2On ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}


}
