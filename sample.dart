import 'package:flutter/material.dart';

class abc extends StatelessWidget {
  const abc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ok"),
        actions: [
          Icon(Icons.search),
          Icon(Icons.camera),
        ],
        backgroundColor: Colors.cyan,
      ),


      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(onPressed: (){}, child: Text("login")),

          Image.asset("assets/asd.jpg"),
        ],
      ),
    );
  }
}
