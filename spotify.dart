import 'package:flutter/material.dart';

class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
        {
          return [SliverAppBar(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            pinned:true,
            expandedHeight: 300,
            titleSpacing: 10,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text('tamil songs'),
              background: Image.asset("assets/leo.jpg",
              fit: BoxFit.fill,),

            ),
          ),
          ];
          

        }, body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Tune into the hottest tracks of kollywood',style: TextStyle(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  Text('cover:leo',style: TextStyle(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/leo.jpg'),
                        fit: BoxFit.fill,
                      )
                  ),
                ),
                  SizedBox(width: 10,),
                  Text('spotify',style: TextStyle(color: Colors.white),)
                ],
              ),
              Row(
                children: [
                  Text('773,834 saves.3h 8min',style: TextStyle(color: Colors.white),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Container(
                    height: 50,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/leo.jpg'),
                        fit: BoxFit.fill,
                      )
                    ),
                  ),
                  SizedBox(width: 30,),
                  Icon(Icons.add_circle_outline_outlined,size: 30,color: Colors.white,),
                  SizedBox(width: 30,),
                  Icon(Icons.download_for_offline_outlined,size: 30,color: Colors.white,),
                  SizedBox(width: 30,),
                  Icon(Icons.more_vert_outlined,size: 30,color: Colors.white,),
                  SizedBox(width: 70,),
                  Icon(Icons.shuffle,size: 30,color: Colors.white,),
                  SizedBox(width: 30,),
                  Container(
                    height: 50,
                    width: 50,
                    child: CircleAvatar(
                      child: Icon(Icons.play_arrow,size: 30,color: Colors.green,),
                    ),
                  )
                ],
              ),
              Container(
                //color: Colors.black,
                child: ListView.builder(
                  itemCount: 20,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=>
                Card(
                  child: Container(
                    color: Colors.black,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/leo.jpg'),
                      ),
                      title: Text('badass ma',style: TextStyle(color: Colors.white),),
                      subtitle: Text('Anirudh ravichandar',style: TextStyle(color: Colors.white),),
                      trailing: Icon(Icons.more_vert_outlined,color: Colors.white,),
                    ),
                  ),
                )
                ),
              )
            ],
          ),
        ),
      )
      ,),
    );
  }
}
