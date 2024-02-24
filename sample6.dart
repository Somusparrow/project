import 'package:flutter/material.dart';

class nmc extends StatelessWidget {
  const nmc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/asd.jpg"),
        title: Text('gt'),
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
                SizedBox(height: 100,),
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
                Column(
                  children: [
                    SizedBox(height: 70,),
                    Row(
                      children: [
                        SizedBox(height: 100,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
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
                        ),
                        SizedBox(height: 100,),
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
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(height: 100,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
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
                        )
                      ],
                    )

                  ],
                )
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                Expanded(child: Text('''Gjgviubk yviyviu khvkuvbk''')),
                Padding(
                  padding: const EdgeInsets.all(10.0),
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
