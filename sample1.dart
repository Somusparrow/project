import 'package:flutter/material.dart';

class qwer extends StatelessWidget {
  const qwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ok"),
        actions: [Icon(Icons.camera)],
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: () {}, child: Text("login")),
          Container(
            height: 100,
              width: 100,
              child: Image.asset("assets/asd.jpg"),
          ),
        ],
      ),
    );
  }
}

