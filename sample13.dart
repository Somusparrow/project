import 'package:flutter/material.dart';

class tgb extends StatefulWidget {
  const tgb({super.key});

  @override
  State<tgb> createState() => _tgbState();
}

class _tgbState extends State<tgb> {
  final formKe=GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:   Form(
          key: formKe,
          child: Column(
            children: [
              TextFormField(

                  validator: (value){
                    if(value==null||value.isEmpty){
                      return 'enter name';
                    }
                    return null;
                  },
                  )
              ,
              ElevatedButton(onPressed: (){
                if(formKe.currentState!.validate())
                  {ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content:Text('ok')));}
              }, child: const Text('login'))
            ],
          ),),
      ),
    );


  }
}
