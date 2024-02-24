import 'package:flutter/material.dart';

class gkl extends StatefulWidget {
  const gkl({super.key});

  @override
  State<gkl> createState() => _gklState();
}

class _gklState extends State<gkl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('menu'),
        actions: [Icon(Icons.camera)],
        backgroundColor: Colors.cyan,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text("report")
            ],
          ),
          ListTile(
           leading: Icon(Icons.menu),
            title: Center(child: Text('report 1')),
            trailing: Icon(Icons.navigate_next),
            textColor: Colors.white,
            tileColor: Colors.blue,
          ),
          ListTile(
            leading: Icon(Icons.menu),
            title: Center(child: Text('report 2')),
            trailing: Icon(Icons.navigate_next),
            textColor: Colors.white,
            tileColor: Colors.blue,
          ),
          Row(
            children: [
              Text("help")
            ],
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
        
      ),
      
    );
  }
}
