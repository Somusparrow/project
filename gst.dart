import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  TextEditingController Amount=TextEditingController();
  TextEditingController Gst=TextEditingController();
  double calgst=0;
  double sgst=0;
  double cgst=0;
  double actual=0;
  double total=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GST CALCULATOR'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: Amount,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Amount',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: Gst,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Gst',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              actual=double.parse(Amount.text)*100/
                  (double.parse(Gst.text)+100);
              calgst=double.parse(Amount.text)-actual;
              sgst=calgst/2;
              cgst=calgst/2;
              total=actual+calgst;
              showDialog(context: context, builder: (ctx)=>
              AlertDialog(
                title: Text('GST'),
                content: Text('CALCULATOR'),
                actions: [
                  TextButton(onPressed: (){},
                    child: Column(
                      children: [
                        Text('Actual: $actual'),
                        Text('Gst: $calgst'),
                        Text('sgst:$sgst'),
                        Text('cgst:$cgst'),
                        Text('Total:$total'),
                      ],
                    ),

                  )
                ],
              ));
            }, child: Text('Inculsive')),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              calgst = double.parse(Amount.text) * double.parse(Gst.text) / 100;
              sgst = calgst / 2;
              cgst = calgst / 2;
              total = double.parse(Amount.text) + calgst;

              showDialog(context: context, builder: (ctx)=>
                  AlertDialog(
                    title: Text('GST'),
                    content: Text('CALCULATOR'),
                    actions: [
                      TextButton(onPressed: (){},
                        child: Column(
                          children: [
                            Text('GST : $calgst'),
                            Text('sgst:$sgst'),
                            Text('cgst:$cgst'),
                            Text('Total :$total')
                          ],
                        ),

                      )
                    ],
                  ));
            }, child: Text('Exculsive')),
          )
        ],
      ),
    );
  }
}
