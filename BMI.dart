import 'package:flutter/material.dart';

class bmical extends StatefulWidget {
  const bmical({super.key});

  @override
  State<bmical> createState() => _bmicalState();
}

class _bmicalState extends State<bmical> {
  TextEditingController height=TextEditingController();
  TextEditingController weight=TextEditingController();
  String bmi = "";
  Color color = Colors.transparent;

  String conddition='select Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: weight,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "weight"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: height,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "height"
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              var res = double.parse(weight.text)/
                  ((double.parse(height.text)/100)*
                      (double.parse(height.text)/100));
              if(res<18.5){
                bmi="Underweight";
                color =Colors.blueAccent;
              }else if(res>=18.5 && res<24.9){
                bmi="Normalweight";
                color =Colors.green;
              }else if(res>=24.9 && res<29.9){
                bmi="Over Weight";
                color =Colors.amber;
              }else { bmi="Obesity";color =Colors.red;
              }
              showDialog(context: context, builder: (ctx)=>
              AlertDialog(
                title: Text("BMI"),
                content:  Text("calculator"),
                actions: [
                  TextButton(onPressed: (){},
                    child: Column(
                      children: [
                        Text('BMI:$res'),
                        Text('weight:$bmi')
                      ],
                    ),

                  )
                ],
              ));





            }, child: Text("calculate",style: TextStyle(fontSize: 20),),),
          ),
        ],
      ),
    );
  }
}
