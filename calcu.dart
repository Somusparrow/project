import 'package:flutter/material.dart';
class calcu extends StatefulWidget {
  const calcu({super.key});

  @override
  State<calcu> createState() => _calcuState();
}

class _calcuState extends State<calcu> {
  TextEditingController abc=TextEditingController();
  String num1="";
  String num2="";
  String opr="";
  bool click=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: abc,
          ),
          ElevatedButton(onPressed: (){
            if(click == true
            ){
              num2 = "1";
              abc.text = num2;
            }
            else{
              num1="1";
              abc.text=num1;
            }
          }, child: Text("1")),
          ElevatedButton(onPressed: (){
            if(click == true
            ){
              num2 = "10";
              abc.text = num2;
            }
            else{
              num1="10";
              abc.text=num1;
            }
          }, child: Text("10")),
          ElevatedButton(onPressed: (){
            if(click == true){
              num2 = "2";
              abc.text = num2;
              }
            else{
              num1 ="2";
              abc.text = num1;
            }
          }, child: Text("2")),
          ElevatedButton(onPressed: (){
            setState(() {
              click = true;
              opr = "+";
              abc.text = "+";
            });

          }, child: Text("+")),
          ElevatedButton(onPressed: (){
            setState(() {

              click =true;
              opr="-";
              abc.text="-";
            });
          }, child: Text("-")),
          ElevatedButton(onPressed: (){

            double a = double.parse(num1);
            double b = double.parse(num2);

            double c = 0;

            if(opr == "+"){

              c = a+b;

            }
            else if(opr == "-"){
              c=a-b;
            }
            abc.text=c.toString();
            num1=abc.text;
            click=false;
            num2="";
          }, child: Text("=")),
        ],
      ),
    );
  }
}
