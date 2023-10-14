import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PhoneCallScreen(),
    );
  }
}

class PhoneCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Call Details - Name, Number, etc.
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 16),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    Text(
                      "F",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  "Calling...",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                Text(
                  "Flutter",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text("Mobile 123 456 7890", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),


          Spacer(),

          // Action Buttons (Mute, Volume Up, Keyboard)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.mic_off_rounded),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.volume_up),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.keyboard_rounded),
                onPressed: () {},
              ),
            ],
          ),

          SizedBox(height: 8),

          // Call End Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(color: Colors.red, width: 2.0),
                ),
                child: IconButton(
                  icon: Icon(Icons.call_end),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
