import 'dart:ui';

import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(),
                child: Container(
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
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              // image: DecorationImage(
              //   image: AssetImage("assets/asd.jpg"),
              //   fit: BoxFit.fill,
              // ),
            ),
            child: ClipRRect(
              borderRadius:BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,sigmaY: 20
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50,top: 40),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("assets/asd.jpg"),
                                      fit: BoxFit.fill,
                                    )


                                  ),
                                ),
                                Container(
                                  height: 20,
                                  child: Text('abc'),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100,top: 40),
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage("assets/asd.jpg"),
                                    )
                                  ),
              
                                ),
                                Container(
                                  height: 20,
                                  child: Text('abc'),
                                )
                              ],
                            ),
                          ),
                        ),
              
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/asd.jpg"),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/asd.jpg"),
                                      fit: BoxFit.fill,
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/asd.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/asd.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    border: Border.all(),
                                    image: DecorationImage(
                                      image: AssetImage("assets/asd.jpg"),
                                      fit: BoxFit.fill,
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text('fsdfsdgdgdgcvbfghdggdgfgdfhdgdrfgsdfgdfdgdgdgdgdgdgdgfggddffdss'),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/asd.jpg"),
                        fit: BoxFit.fill,
                      )
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: 'password',
                              border: OutlineInputBorder(),
                            )
                        ),
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ElevatedButton(onPressed: (){}, child: Text("login",),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                      ),),
                    ),

                  ],
                ),

              ],
            ),
          )
        ],
      ),


    );
  }
}

