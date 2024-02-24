import 'package:flutter/material.dart';


class nemo extends StatefulWidget {
  const nemo({super.key});

  @override
  State<nemo> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<nemo> {
  TextEditingController crl = TextEditingController();
  List<String> a = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: crl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    a.add(crl.text);
                    crl.clear();
                  });
                },
                child: Text('Insert')),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: ListView.builder(
                    itemCount: a.length,
                    itemBuilder: (BuildContext context, index) {
                      return Dismissible(
                        key: Key(a[index]),
                        onDismissed: (direction) {

                          setState(() {
                            a.removeAt(index);
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('${a[index]} dismissed')));
                        },
                        child: LongPressDraggable(
                          onDragStarted: () {
                            // Dragging started
                          },
                          onDraggableCanceled: (Velocity velocity, Offset offset) {
                            // Dragging canceled
                          },
                          onDragCompleted: () {
                            // Dragging completed
                          },
                          feedback: ListTile(
                            title: Text('List item ${a[index]}'),
                          ),
                          childWhenDragging: Container(),
                          data: index,
                          child: ListTile(
                            title: Text(a[index]),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      NumberDetailPage(number: a[index]),
                                ),
                              );
                            },
                            onLongPress: () {
                              // Handle long-press event
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  TextEditingController controller =
                                  TextEditingController(text: a[index]);
                                  return AlertDialog(
                                    title: Text('Edit Value'),
                                    content: TextField(
                                      controller: controller,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(labelText: 'New Value'),
                                    ),
                                    actions: <Widget>[
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Cancel'),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            // Update the value at the specified index
                                            a[index] = controller.text;
                                          });
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Save'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a.sort();
                      a.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
                    });
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Minimum Value'),
                          content: Text('The minimum value is: ${a.first}'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Minimum'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
                    });
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Maximum Number'),
                            content: Text('The maximum value is:${a.last}'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        });
                  },
                  child: Text('Maximum'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
                    });
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Ascending Order'),
                          content: Text('Numbers in ascending order: ${a}'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Ascending'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      a.sort((b, a) => int.parse(a).compareTo(int.parse(b)));
                    });
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Descending Order'),
                          content: Text('Numbers in descending order: ${a}'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Descending'),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    List greaterThan5 = [];
                    for (String numStr in a) {
                      int num = int.parse(numStr);
                      if (num != null && num > 5) {
                        greaterThan5.add(num);
                      }
                    }
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Numbers Greater Than 5'),
                          content:
                          Text('Numbers greater than 5: $greaterThan5'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('> 5'),
                ),
                ElevatedButton(
                  onPressed: () {
                    List lessThan = [];
                    for (String numStr in a) {
                      int num = int.parse(numStr);
                      if (num != null && num < 5) {
                        lessThan.add(num);
                      }
                    }
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Numbers Less Than 5'),
                          content: Text('Numbers less than 5: $lessThan'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('< 5'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumberDetailPage extends StatelessWidget {
  final String number;

  const NumberDetailPage({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade200,
        title: Text('Number Detail'),
        elevation: 10,
      ),
      body: Center(
        child: Text(
          'You selected number is: '
              '${number}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}