import 'package:flutter/material.dart';

class mnc extends StatelessWidget {
  const mnc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/asd.jpg"),
        title: Text("gt"),
        actions: [Icon(Icons.menu),],
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Center(),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
              borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/asd.jpg"),
                  fit: BoxFit.fill,
                )

            ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                          ),
                        ),


                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                          ),
                        ),


                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Container(
            height: 300,
            width: 300,
              decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage("assets/asd.jpg"),
                  fit: BoxFit.fill,
                )
              ),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('gt'),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.cyan
                  ),
                )
              ],) ,
          ),

        ],),
    );
  }
}
