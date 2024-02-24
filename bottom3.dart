import 'package:flutter/material.dart';

class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(),
                image: DecorationImage(
                  image: AssetImage("assets/mt.png"),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/mt.png"),
                    fit: BoxFit.fill,
                  ),
                  border: Border.all(),
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
