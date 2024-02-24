import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {

  double _currentSliderValue = 20;
  double height=170.0;
  double weight=60;
  int bmi=0;
  String conddition='select Data';
  @override
  Widget build(BuildContext context) {
    var size;
    return Scaffold(

      body:
      SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
            onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          
          title:  Text('$bmi'),
          content:  Text('okk'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    ),
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('BMI',style:TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.white) ,),
                  Text('calculator',style: TextStyle(fontSize: 40,color: Colors.white),),
                  SizedBox(
                    width:double.infinity,
                    child: Container(
                      child: Text('$bmi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),textAlign: TextAlign.right,),
                    ),
                  ),
                  RichText(
                      text: TextSpan(
                        text: 'condition :',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '$conddition :',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ]
                      ))
                ],
              ),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
            width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('choose Data',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 20,),
                  RichText(
                      text: TextSpan(
                          text: 'Hight :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '$height cm ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]
                      )),
                  Slider(
                    value: height,
                    min:10,
                    max: 250,
                    onChanged: (value){
                      setState(() {
                        height=value;
                      });
                  },
                    divisions: 5,
                  label: "$height",
                    activeColor: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  RichText(
                      text: TextSpan(
                          text: 'weight :',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '$weight kg ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]
                      )),
                  Slider(
                    value: weight,
                    min:0,
                    max: 250,
                    onChanged: (value){
                      setState(() {
                       weight=value;
                      });
                    },
                    divisions: 250,
                    label: "$weight",
                    activeColor: Colors.black,
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      bmi=(weight/((height/100)*(height/100))).round().toInt();
                      if(bmi>=18.5 && bmi<=25){conddition="Normal";}
                      else if(bmi>=25 && bmi<=30){conddition='overweight';}
                      else if(bmi>=30){conddition="Obesity";}
                      else if(bmi>35) {conddition="underweight";}
                    });
                  }, child: Text('calculate',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),))
                ],
              ),
          ),

          ],
        ),
      ),
    );
  }
}
