import 'package:barseem/util/Farm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        title: Text(
          widget.title,
          style:
              TextStyle(fontStyle: FontStyle.italic, color: Colors.green[800]),
        ),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Consumer<Farm>(
                builder: (context, value, child) {
                  value.addCubes(5);
                  return GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              // centerd title

                              const Center(
                                child: Text(
                                  'available cubes',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),

                              const SizedBox(
                                height: 40,
                              ),

                              // the number
                              Center(
                                child: Text(
                                  '${value.availableCubes.length}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              // centerd title

                              const Center(
                                child: Text(
                                  'All cubes',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),

                              const SizedBox(
                                height: 40,
                              ),

                              // the number
                              Center(
                                child: Text(
                                  '${value.cubes.length}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              // centerd title

                              const Center(
                                child: Text(
                                  'Watering date',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),

                              const SizedBox(
                                height: 40,
                              ),

                              // the number
                              Center(
                                child: Text(
                                  '${value.cubes[0].wateringDate}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              // centerd title

                              const Center(
                                child: Text(
                                  'Expected revnue',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),

                              const SizedBox(
                                height: 40,
                              ),

                              // the number
                              Center(
                                child: Text(
                                  '${value.expectedRevnue}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            barrierColor: const Color.fromARGB(87, 65, 170, 44),
            builder: (context) {
              return Container(
                width: double.infinity,
                color: Colors.greenAccent[100],
              );
            },
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

/**
                      
                      
                      
                      
                  
                  
                  
                
              */
