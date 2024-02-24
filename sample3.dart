import 'package:flutter/material.dart';

class xyz extends StatelessWidget {
  const xyz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child:
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/asd.jpg"),
                fit: BoxFit.fill,
              )

            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height:100,),
          Center(
            child: Container(
              height: 300,
              width: 300,
              //color: Colors.cyan,
               decoration: BoxDecoration(
                 color: Colors.cyan,
                   border: Border.all(),
                // borderRadius: BorderRadius.circular(35),
                 image: DecorationImage(
                   image: AssetImage("assets/asd.jpg"),
                   fit: BoxFit.fill
                 )
               ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Entername',
                      border: OutlineInputBorder(),
                    ),

                  ),


                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Entername',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
       Padding(
         padding: const EdgeInsets.all(50.0),
         child: ElevatedButton(onPressed: (){}, child: Text("login")),
       ), ],
      ),
    );
  }
}
