import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ama extends StatefulWidget {
  const ama({super.key});

  @override
  State<ama> createState() => _amaState();
}

class _amaState extends State<ama> {
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("Canada"),value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    return menuItems;
  }

  String selectedValue = "USA";
  var items = [
    'one',
    'two',
    'three',
    'four',

  ];
List a=[
  'phone.jpeg',
  '2.jpeg',
  '3.jpeg',
  '4.jpeg',
  '5.jpeg',
  '6.jpeg',


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
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
              colors: [Color(0xff85dae1),Color(0xff9be2d4)],
            )
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Text('visit the apple store',style: TextStyle(fontSize: 15),),
            Text('Apple iphone 14 (512 GB)-midnight',style: TextStyle(fontSize: 15),),
          Container(
            height: 500,
            width: 500,
            child: CarouselSlider.builder(
                options: CarouselOptions(
                  height: 700,
                  aspectRatio: 8/9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 1),
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
          ),DotsIndicator(dotsCount: 6),
            Text('iphone 14 series',style: TextStyle(fontSize: 24,
            fontWeight: FontWeight.bold),),
            Text('4 options to choose from'),
            Text('-20% ₹ 90000',style: TextStyle(fontSize: 50,
                fontWeight:FontWeight.bold, ),),
            Text('M.R.P:₹4315.no cost EMI aviailable.EMI options',style: TextStyle(fontSize: 15),),
            Text('inclusive of all taxes',style: TextStyle(fontSize: 15),),
            Divider(
              height: 5,
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Total;₹90000',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('FREE delivery',style: TextStyle(fontSize: 15,color: Colors.cyan),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Thursday,8 February.order',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('within',style: TextStyle(fontSize: 15,),),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('9 hrs 59 mins',style:TextStyle(fontSize: 20,color: Colors.green) ,),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('Details',style: TextStyle(fontSize: 15,color: Colors.cyan),),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.location_pin),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Delivering to coimbatore 641021 - update location',style: TextStyle(fontSize: 15,color: Colors.cyan),),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('only 1 left in stock',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
              ],
            ),Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Container(
                height: 20,
                width: 100,
                child: DropdownButton(
                  isExpanded: true,
                    value: selectedValue,
                  items: dropdownItems,
                  onChanged: (String? newValue){
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },),
              ),
            ),
          
            Container(
              height: 70,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Text('Add to cart'),style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),),
                )),
            Container(
              height: 70,
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){}, child: Text('buy Now'),style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),),
                )),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.lock),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Secure transaction',style: TextStyle(fontSize: 15),),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Ships from'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text('Amazon'),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('sold by'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Text('Darshita Etel',style: TextStyle(color: Colors.cyan),),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Gift-wrap available.',style: TextStyle(fontSize: 15),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Add to wish List',style: TextStyle(fontSize: 15,color: Colors.cyan),),
                ),
              ],
            ),
            Divider(
              height: 5,
              thickness: 5,
            ),

          ],
        ),
      ),
    );
  }
}
