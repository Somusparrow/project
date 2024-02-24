import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class lemo extends StatefulWidget {
 final String number;
  const lemo({Key? key, required this.number}):super(key: key);

  @override
  State<lemo> createState() => _lemoState();
}

class _lemoState extends State<lemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back),),
      ),
      body: Center(
        child: Text(
          'NUMBER : ${widget.number}',style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold),
        ),
      ),
    ) ;
  }
}

