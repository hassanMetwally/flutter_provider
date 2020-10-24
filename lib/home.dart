import 'package:flutter/material.dart';
import 'package:flutter_provider/counter_provider.dart';
import 'package:provider/provider.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int c = 0;
//   int n = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     print("'build()' method has built '${n++}' time.");
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "$c",
//               style: TextStyle(color: Colors.amber, fontSize: 40),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () => setState(() {
//           c++;
//         }),
//         backgroundColor: Colors.amber,
//       ),
//     );
//   }
// }

//we can use PROVIDER instead of setState to avoid rebuilding all the tree that's inside 'build' function

class Home extends StatelessWidget {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context,listen: false);
    print("'build()' method has built '${n++}' time.");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {count.counter();},
        backgroundColor: Colors.amber,
      ),
    );
  }
}

class CounterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var count = Provider.of<CounterProvider>(context);
    return Text(
      "${count.c}",
      style: TextStyle(color: Colors.amber, fontSize: 40),
    );
  }
}

