import 'dart:ui';

import 'package:flutter/material.dart';

class you extends StatefulWidget {
  const you({super.key});

  @override
  State<you> createState() => _youState();
}

class _youState extends State<you> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 900,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/asd.jpg"),
                fit:  BoxFit.fill,
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage("assets/asd.jpg"),
                      fit: BoxFit.fill,
                    )
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/asd.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 20,sigmaY: 20
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 100,
                            width: 300,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Entername',
                                border: OutlineInputBorder(),
                              )
                                                      ),
                            ),
                      ),
                      Container(
                        height: 100,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'password',
                                border: OutlineInputBorder(),
                              )
                          ),
                        ),
                      ),
                      ElevatedButton(onPressed: (){}, child: Text('login'))
                                            ],
                                      ),
                    ),
                  ),
                                  ),
                SizedBox(height: 50,),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.cyan,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(
                              image: AssetImage("assets/asd.jpg"),
                              fit: BoxFit.fill,
                            )
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('awwerghtredtrdfhfgtteyujuyjhtrgrgdrtgdhhbnnhfhb'),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){}, child: Text("login")),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){}, child: Text("ok")),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
