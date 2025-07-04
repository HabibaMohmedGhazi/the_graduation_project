import 'package:flutter/material.dart';

class PairingScreen extends StatefulWidget {
  static const String theRouteName = 'pairing';

  const PairingScreen({super.key});

  @override
  State<PairingScreen> createState() => _PairingScreenState();
}

class _PairingScreenState extends State<PairingScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pairing Gloves' ,style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Container(
            height: screenHeight * 0.8, // Ensures the content stays vertically centered
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centers content vertically
              crossAxisAlignment: CrossAxisAlignment.center, // Centers content horizontally
              children: [
                Text(
                  'Instructions',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  '1. Turn on Bluetooth on your device and your gloves.\n'
                      '2. Ensure your gloves are in pairing mode.\n'
                      '3. Press "Start Pairing" to begin the connection.',
                  textAlign: TextAlign.center, // Centers the instructions text
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                ElevatedButton(
                  onPressed: () {
                    // Todo : Handle Start Pairing button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: Size(screenWidth * 0.8, screenHeight * 0.06),
                  ),
                  child: Text(
                    'Start Pairing',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
