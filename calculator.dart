import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController cnt=TextEditingController();
  String num1="";
  String num2="";
  String opr="";
  bool click=false;
  void cleartext(){cnt.clear();}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 200,),
          TextFormField(
            controller: cnt,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  click = false;
                  opr = '^';
                  cnt.text = '^';
                }, child: Text('^',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder()
                  ),
                )
            ),
            Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: ()
                {click = true;
                opr = '√';
                cnt.text = '√';

                }, child: Text('√',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder()
                  ),
                )
            ),
            Container(
                height: 70,
                width: 170,
                child: ElevatedButton(onPressed: (){}, child: Text('back space',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),

                )
            ),

          ],),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  click = false;
                  setState(() {
                    num1='';
                    num2='';
                    cnt.text='0';
                  });
                }, child: Text('AC',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  click = true;
                  opr = '%';
                  cnt.text = '%';
                }, child: Text('%',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  click = true;
                  opr = '+/-';
                  cnt.text = '+/-';
                }, child: Text('+/-',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  click = true;
                  opr = '/';
                  cnt.text = '/';
                }, child: Text('/',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '7';
                    cnt.text=num2;
                  }else{
                    num1 += '7';
                    cnt.text=num1;
                  }
                }, child: Text('7',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '8';
                    cnt.text=num2;
                  }else{
                    num1 += '8';
                    cnt.text=num1;
                  }
                }, child: Text('8',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '9';
                    cnt.text=num2;
                  }else{
                    num1 += '9';
                    cnt.text=num1;
                  }
                }, child: Text('9',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  click = true;
                  opr = '*';
                  cnt.text = '*';
                }, child: Text('*',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '4';
                    cnt.text=num2;
                  }else{
                    num1 += '4';
                    cnt.text=num1;
                  }
                }, child: Text('4',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '5';
                    cnt.text=num2;
                  }else{
                    num1 += '5';
                    cnt.text=num1;
                  }
                }, child: Text('5',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '6';
                    cnt.text=num2;
                  }else{
                    num1 += '6';
                    cnt.text=num1;
                  }
                }, child: Text('6',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                 click = true;
                 opr = '-';
                 cnt.text = '-';
                }, child: Text('-',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '1';
                    cnt.text=num2;
                  }
                  else{
                    num1 +="1";
                    cnt.text=num1;
                  }
                }, child: Text('1',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '2';
                    cnt.text=num2;
                  }else{
                    num1 += '2';
                    cnt.text=num1;
                  }
                }, child: Text('2',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '3';
                    cnt.text=num2;
                  }else{
                    num1 += '3';
                    cnt.text=num1;
                  }

                }, child: Text('3',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  setState(() {
                    click = true;
                    opr = '+';
                    cnt.text = '+';
                  });
                }, child: Text('+',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '00';
                    cnt.text=num2;
                  }else{
                    num1 += '00';
                    cnt.text=num1;
                  }
                }, child: Text('00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == false){
                    num2 += '0';
                    cnt.text=num2;
                  }else{
                    num1 += '0';
                    cnt.text=num1;
                  }
                }, child: Text('0',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  if(click == true){
                    num2 += '.';
                    cnt.text=num2;
                  }else{
                    num1 += '.';
                    cnt.text=num1;
                  }
                }, child: Text('.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
              Container(
                height: 70,
                width: 70,
                child: ElevatedButton(onPressed: (){
                  double a = double.parse(num1);
                  double b = double.parse(num2);

                  double c = 0;

                  if(opr == "+"){

                    c = a+b;

                  }
                  else if(opr == "-"){
                    c=b-a;
                  }

                 else if(opr == "*"){
                    c=a*b;
                  }
                 else if (opr == "/"){
                   c=a/b;
                  }

                 else if (opr == "%"){
                   c=a*b/100;
                  }
                 else if (opr == "+/-"){
                   c=a+-b;
                  }
                  else if (opr == "^"){
                    double val=double.parse(cnt.text);
                    c=val*val;
                    cnt.text=c.toString();
                  }

                  cnt.text=c.toString();
                  num1=cnt.text;
                  click=false;
                  num2="";
                }, child: Text('=',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
