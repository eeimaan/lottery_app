import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

/*class MyApp extends StatefulWidget {

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My frist app'),
        ),
        body: SafeArea(
          child: Center(
              child: Text(
            x.toString(),
            style: const TextStyle(fontSize: 20),
          )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x++;
            setState(() {
              
            });
            print('tap');
            print(
              x.toString(),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
*/

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lottery app')),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
          Center(child: Text('Lottery wining number is 4',style: const TextStyle(fontSize: 20),)),
          //Text(x > 5 ? 'x is greater than 5': x.toString()),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
           decoration:  BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
            ),
           
            child: Padding(
            padding: const EdgeInsets.all(10.0),


            child: x==5 ? 
            
            Column(children: [
            const Icon(Icons.done_all, color: Colors.green,size: 35,), 
            const SizedBox(
              height: 10,
            ), 
            Text('Congratulations ypu won lottery $x  \n hurrry', textAlign: TextAlign.center,),
            ],):
            
            Column(children: [
            const Icon(Icons.error, color: Colors.red,size: 35,), 
            const SizedBox(
              height: 10,
            ), 
            Text('Better luck next time your number is $x  \n TRY AGAIN', textAlign: TextAlign.center,),
            ],),
          ),
          
          
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          //print(random.nextInt(10).toString());
          x= random.nextInt(10);
          print(x);
          setState(() {
            
          });


          },
          backgroundColor: Colors.grey,
          child: const Icon(
            Icons.refresh,
          ),
        ),
      ),
    );
  }
}
