import 'package:flutter/material.dart';

class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return[
              SliverAppBar(
                leading: Icon(Icons.lock),
                title: Text('Profile Name'),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Icon(Icons.menu),
                  ),
                ],
                expandedHeight: 500,
                flexibleSpace:FlexibleSpaceBar(

                  background: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/bike.webp'),
                                  fit: BoxFit.fill,
                                )
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('10',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                Text('posts',style: TextStyle(fontSize: 15),)
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('500',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                Text('followers')
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('100',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                Text('following',style: TextStyle(fontSize: 15),),
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Bikes',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Check Expert Reviews,Pic,Specs,Find Nearest',style: TextStyle(fontSize: 15),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                              ), child: Row(
                                children: [
                                  Text('Following')
                                ],
                              ),),
                              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                              ), child: Row(
                                children: [
                                  Text('Message'),
                                ],
                              ),),
                              ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                              ), child: Row(
                                children: [
                                  Icon(Icons.add)
                                ],
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            height: 120,
                            child: ListView.builder(
                              itemCount: 10,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,int index){
                              return Column(
                                children: [
                                  Container(
                                    height: 70,
                                    width: 70,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/bike.webp"),
                                        fit:  BoxFit.fill,
                                      )
                                    ),
                                  ),
                                  Text('Highlights')
                                ],
                              );
                            })
                          ),
                        )
                      ],
                    ),
                  ),
                  ),
                bottom: TabBar(
                  tabs: [
                    Icon(Icons.indeterminate_check_box),
                    Icon(Icons.movie_creation),
                    Icon(Icons.contact_page_rounded),
                  ],
                ),
                )

              ,

            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                itemCount: 18,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1
              ), itemBuilder: (context,index){
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bike.webp"),
                    fit:  BoxFit.fill,
                  )
                )
              );
              })
            ],
          )
        ),
      ),
    );
  }
}
