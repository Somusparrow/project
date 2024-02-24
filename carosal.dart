import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class example extends StatefulWidget {
  const example({super.key});

  @override
  State<example> createState() => _exampleState();
}

class _exampleState extends State<example> {
  List a=[
   "assets/mt.png",
   "assets/asd.jpg",
    "assets/a.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            width: 350,
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

                      height: 150,
                      width: 200,

                      decoration: BoxDecoration(

                          image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill)),

                    );

                }

            ),

          ),
          Container(
            height: 150,
            width: 400,
            child: ListView.builder(
                scrollDirection:Axis.horizontal,
                itemCount: a.length,
                itemBuilder: (BuildContext context,int index)

                {
                  return Container(

                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                    ),

                  );
                }
            ),

          ),
          Container(
            height: 400,
            width: 400,
            child: GridView.builder(
                itemCount: a.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext ctx, index) {
                  return Container(

                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),

                    ),

                  );
                }),
          )

        ],
      ),
    );
  }
}