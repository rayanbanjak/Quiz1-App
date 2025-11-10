import 'dart:math';

import 'package:flutter/material.dart';

class Teacoffee extends StatefulWidget {
  const Teacoffee({super.key});
  @override
  State<StatefulWidget> createState() {
    return _TeaCofeeState();
  }
}

class _TeaCofeeState extends State<Teacoffee> {
  
  String emoji = "❓";
  int tea = 0;
  int cofee = 0;

  void cofeeTea() {
    List<String> choices = ["tea", "cofee"];
    String result = choices[Random().nextInt(2)];
    setState(() {
      if (result == "tea") {
        emoji = "🍵";
        tea++;
      }else{
        emoji = "☕";
        cofee++;
      }
    });
  }
    void reset() {
      setState(() {
        emoji = "❓";
        tea = 0;
        cofee = 0;
      });
    }

    @override
    Widget build(BuildContext context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Text(emoji, 
          style: TextStyle(fontSize: 18),
            ),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
          
          
          SizedBox(height: 45),
          TextButton(
            onPressed: cofeeTea,
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.blueGrey,
            ),
            child: Text(
              "Vote Tea",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 45),
          TextButton(
            onPressed: cofeeTea,
            style: TextButton.styleFrom(
              backgroundColor: Colors.brown,
              foregroundColor: Colors.blueGrey,
            ),
            child: Text(
              "Vote cofee",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          ],
        ),
         
          SizedBox(height: 45),
          TextButton(
            onPressed: reset,
            style: TextButton.styleFrom(backgroundColor: Colors.white),
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 45),
          Text("Tea Votes :$tea", style: TextStyle(fontSize: 14)),
          SizedBox(height: 25),
          Text("Cofee Votes :$cofee", style: TextStyle(fontSize: 14)),
        ],
      );
    }
  }
