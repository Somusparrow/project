import 'package:flutter/material.dart';

class dfg extends StatelessWidget {
  const dfg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(),
          Container(
            height: 300,
            width: 300,
            decoration:BoxDecoration(
              color:Colors.cyan,
              border: Border.all(),
              borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage("assets/asd.jpg"),
                  fit: BoxFit.fill,
                )
            ) ,
            child: Column(
              children: [
                SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration:  InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Entername',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Entername',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){}, child: Text("login"))

            ],),

          ),

        ],
      ),
    );
  }
}
