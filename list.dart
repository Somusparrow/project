import 'package:abc/lemo.dart';
import 'package:flutter/material.dart';

class listr extends StatefulWidget {
  const listr({super.key});

  @override
  State<listr> createState() => _listrState();
}

class _listrState extends State<listr> {
  TextEditingController cnt=TextEditingController();
List a=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: cnt,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
             a.add(cnt.text);
             cnt.clear();
            });
          }, child: Text('cilck')),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(),
            ),
            child: ListView.builder(
              itemCount:a.length,
              itemBuilder:(BuildContext Context,index){
                return ListTile(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>lemo(number: a[index],)));
                  },
                  title:Text(a[index]),
                  trailing: IconButton(
                    onPressed: (){
                    setState(() {
                      a.removeAt(index);
                    });
                    },icon: Icon(Icons.delete),
                  ),
                );
              }
            ),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  a.sort((a,b)=> int.parse(a).compareTo(int.parse(b)));
                });
                showDialog(context: context, builder: (ctx)=>
                AlertDialog(
                  content: Text('assign:${a}'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('ok'))
                  ],
                ));
              }, child: Text('assign')),
              ElevatedButton(onPressed: (){
                setState(() {
                  a.sort((b,a)=> int.parse(a).compareTo(int.parse(b)));
                });
                showDialog(context: context, builder: (ctx)=>
                AlertDialog(
                  content: Text('design:${a}'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('ok'))
                  ],
                ));
              }, child: Text('design')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  a.sort((a,b)=> int.parse(a).compareTo(int.parse(b)));
                });
                showDialog(context: context, builder: (ctx)=>
                AlertDialog(
                  content: Text('maximum:${a.last}'),
                  actions: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text('ok'))
                  ],
                ));
              }, child: Text('maximum')),
              ElevatedButton(onPressed: (){
                setState(() {
                  a.sort((a,b)=> int.parse(a).compareTo(int.parse(b)));
                });
                showDialog(context: context, builder: (ctx)=>
                    AlertDialog(
                      content: Text('minimum:${a.first}'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text('ok'))
                      ],
                    ));
              }, child: Text('minmum')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                List great=a.where((num) => int.parse(num as String) > 5).toList();
                showDialog(context: context, builder: (ctx)=>
                    AlertDialog(
                      content: Text('greaterthan:${great}'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text('ok'))
                      ],
                    ));
                }, child: Text('>5')),
              ElevatedButton(onPressed: (){
                List great=a.where((num) => int.parse(num as String) < 5).toList();
                showDialog(context: context, builder: (ctx)=>
                    AlertDialog(
                      content: Text('lessthen:${great}'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text('ok'))
                      ],
                    ));
              }, child: Text('<5')),
            ],
          ),
        ],

      ),
    );
  }
}

