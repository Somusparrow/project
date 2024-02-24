import 'package:flutter/material.dart';

class zxc extends StatelessWidget {
  const zxc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 900,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.cyan,
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
                    color: Colors.cyan,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(30),
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
                    color: Colors.cyan,
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
                                color: Colors.cyan,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/asd.jpg"),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30),
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
                            child: TextFormField(
                                decoration:  InputDecoration(
                                  icon: Icon(Icons.person),
                                  hintText: 'Entername',
                                  border: OutlineInputBorder(),
                                )
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(onPressed: (){}, child: Text("login")),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(height: 20,),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/asd.jpg"),
                                  fit: BoxFit.fill,
                                )
                            )
                          ),
                         Column(
                           children: [
                             Row(
                               children: [
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       color: Colors.cyan,
                                       border: Border.all(),
                                       borderRadius: BorderRadius.circular(10),
                                       image: DecorationImage(
                                         image: AssetImage("assets/asd.jpg"),
                                         fit: BoxFit.fill,
                                       )
                                   ),
                                 ),
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       color: Colors.cyan,
                                       border: Border.all(),
                                       borderRadius: BorderRadius.circular(10),
                                       image: DecorationImage(
                                         image: AssetImage("assets/asd.jpg"),
                                         fit: BoxFit.fill,
                                       )
                                   ),
                                 ),
                               ],
                             ),
                             Row(
                               children: [
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       color: Colors.cyan,
                                       border: Border.all(),
                                       borderRadius: BorderRadius.circular(10),
                                       image: DecorationImage(
                                         image: AssetImage("assets/asd.jpg"),
                                         fit: BoxFit.fill,
                                       )
                                   ),
                                 ),
                                 Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       color: Colors.cyan,
                                       border: Border.all(),
                                       borderRadius: BorderRadius.circular(10),
                                       image: DecorationImage(
                                         image: AssetImage("assets/asd.jpg"),
                                         fit: BoxFit.fill,
                                       )
                                   ),
                                 ),
                               ],
                             ),
                           ],
                         ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.cyan,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                  image: AssetImage("assets/asd.jpg"),
                                  fit: BoxFit.fill,
                                )
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
      ),
    );
  }
}
