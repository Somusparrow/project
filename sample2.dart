import 'package:flutter/material.dart';

class tyu extends StatelessWidget {
  const tyu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 35,color: Colors.black,),
        title: Text("ok", style: TextStyle(color: Colors.black, fontSize: 35, fontWeight: FontWeight.bold),
        ),
        actions: [Image.asset("assets/asd.jpg"),],
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [

          SizedBox(height: 100,),


        Container(
          height: 100,
          width: 100,
          //color: Colors.cyan,
          decoration: BoxDecoration(
            color: Colors.cyan,
            border: Border.all(),
            //borderRadius: BorderRadius.circular(35),
            image: DecorationImage(
                image: AssetImage("assets/asd.jpg"),
              fit: BoxFit.fill
            ),
            shape: BoxShape.circle
          ),
          child: Center(child: Text("ok")),
        ),




        TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Enter name',
            border: OutlineInputBorder(),
          ),
        ),
        TextFormField(),
          ElevatedButton(onPressed: () {}, child: Text("login")),],
      ),
    );
  }
}
