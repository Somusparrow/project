import 'package:flutter/material.dart';

class tre extends StatefulWidget {
  const tre({super.key});

  @override
  State<tre> createState() => _treState();
}

class _treState extends State<tre> {
  TextEditingController cnt=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          TextFormField(
            controller: cnt,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            height: 50,
            width: 100,
            child: ElevatedButton(onPressed: (){
              setState(() {
                cnt.text='10';
              });
            }, child: Text('10')),
          )
        ],
      ),
    );
  }
}
