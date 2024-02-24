import 'package:flutter/material.dart';

class vbn extends StatefulWidget {
  const vbn({super.key});

  @override
  State<vbn> createState() => _vbnState();
}

class _vbnState extends State<vbn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: 900,
            width: 500,
            decoration: BoxDecoration(
              border: Border.all(),
              image: DecorationImage(
                image: AssetImage("assets/asd.jpg"),
                fit: BoxFit.fill,
              )
            ),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
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
                SizedBox(height: 50,),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius:BorderRadius.circular(20)
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
                                    child: Text("abc"),

                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(20),
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
                                    child: Text("abc"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(children: [
                        Container(
                          height: 100,
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextFormField(

                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Entername',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,bottom: 45),
                          child: ElevatedButton(onPressed: (){}, child: Text('login',),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(20)
                          ),),
                        ),
                      ],)
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    border: Border.all(),
                  ),
                  child:Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 120,
                              width: 60,
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
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        image: DecorationImage(
                                          image: AssetImage("assets/asd.jpg"),
                                          fit: BoxFit.fill,
                                        )
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        image: DecorationImage(
                                          image: AssetImage("assets/asd.jpg"),
                                           fit: BoxFit.fill,
                                        )
                                      ),
                                    ),
                                  )
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
                                      border: Border.all(),
                                      image: DecorationImage(
                                        image: AssetImage("assets/asd.jpg"),
                                        fit: BoxFit.fill,
                                      )
                                  ),
                                                                ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        image: DecorationImage(
                                          image: AssetImage("assets/asd.jpg"),
                                          fit: BoxFit.fill,
                                        )
                                      ),
                                    ),
                                  )

                              ],)


                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 120,
                              width: 60,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                image: DecorationImage(
                                  image: AssetImage("assets/asd.jpg"),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],

      ) ,
    );
  }
}
