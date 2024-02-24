import 'package:flutter/material.dart';

class lot extends StatefulWidget {
  const lot({super.key});

  @override
  State<lot> createState() => _lotState();
}


class _lotState extends State<lot> {
  final Key=GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: Key,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                  labelText: 'enter your mail'
                ),
                validator: (a) {
                  if (a == null || a.isEmpty) {
                    return 'pls enter vaild gmail';
                  }
                }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Enter your Name'
                ),
                validator:(b){
                  if (b==null||b.isEmpty) {
                    return 'pls enter vaild name';
                  }
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: 'pls enter valid number'
                ),
                validator: (c){
                  if(c==null||c.isEmpty){
                    return 'pls enter vaild number';
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(),
                  labelText: 'pls enter vaild password'
                ),
                validator: (d){
                  if(d==null||d.isEmpty){
                    return 'pls enter vaild password';
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(onPressed: (){
                if(Key.currentState!.validate());
                {ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar (content:Text('ok')));}
              }, child: Text("login")),
            )
          ],
        ),
      ),
    );
  }
}
