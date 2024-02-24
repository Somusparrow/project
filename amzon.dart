import 'package:abc/amzon1.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';


class amzon extends StatefulWidget {
  const amzon({super.key});

  @override
  State<amzon> createState() => _amzonState();
}

class _amzonState extends State<amzon> {
List a=[
  'assets/mobile1.webp',
  'assets/elctro.jpg',
  'assets/fashion.webp',
  'assets/home.jpg',
  'assets/mini.png',
  'assets/fresh.webp',
];
List b=[
      "Mobiles",
      "Electronics",
      "Fashion",
      "Home",
      "miniTv",
      'fresh',
];
List c=[
  "Mobiles",
  "Electronics",
  "Fashion",
  "Home",
  "miniTv",
  'fresh',
];
int currentN =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Container(
          height: 40,
          width: 400,
          child: TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.search),
              hintText: 'search Amazon.in',
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.qr_code_scanner),

            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xff85dae1),
                Color(0xff9be2d4)],
            )
          ),
        ),
      ),
body: SingleChildScrollView(
  child: Column(
  children: [
    Container(
      height: 50,
      width: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
            colors: [Color(0xffb8e9ed),
              Color(0xffc5efe3)],
        )
      ),
      child: Row(
        children: [
          Icon(Icons.location_pin),
          Text('Delivering to coimbatore 641024-update location'),
        ],
      ),
    ),


   
    Container(
      height: 100,
      width: 500,
      child: ListView.builder(
          scrollDirection:Axis.horizontal,
          itemCount: a.length,
          itemBuilder: ( context,int index)
          {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),
                      )
                  ),
                ),
                Text(b[index]),
              ],
            );
          }
      ),

    ),

    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 500,
        child: CarouselSlider.builder(
            options: CarouselOptions(
              height: 200,
              aspectRatio: 8/9,
              viewportFraction: 1,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,

              scrollDirection: Axis.horizontal,
            ),
            itemCount: a.length,
            itemBuilder: (BuildContext context, int index, int pageViewIndex)
            {
              return
                Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(a[index]),
                          fit: BoxFit.fill)),
                );
            }
        ),
      ),
    ), DotsIndicator(dotsCount: 6,
    position: currentN,
    decorator: DotsDecorator(
      color: Colors.black,activeColor: Colors.red
    ),
    ),

    Text('400 back on first 4 orders| amazon offers',style: TextStyle(
      fontSize: 24,fontWeight: FontWeight.bold
    ),),
    Container(
      height: 500,
      width: 400,
      child: GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(builder:(context) =>ama()));
        },
        child: GridView.builder(
            itemCount: a.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, index) {
              return Column(
                children: [
                  Container(

                    height: 150,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)

                    ),

                  ),
                  Text(c[index]),
                ],
              );

            }),
      ),
    )
  ],
  
        ),
),
    );
  }
}
