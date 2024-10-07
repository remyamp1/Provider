import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/count.dart';
class CounterDemo extends StatefulWidget{
  @override
  State <CounterDemo> createState()=> _counterDemoState();
}
class _counterDemoState extends State<CounterDemo>{
  @override
  Widget build(BuildContext context){
    final counterprovider=Provider.of<CounterProviver>(context);
    return Scaffold(
      appBar: AppBar(title: 
      Text("Counter App With Provider"),),
      body: Center(
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your have pushed the button this many times:"),
            Text("${counterprovider.count}"),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: counterprovider.incement,child: Icon(Icons.add),),
          SizedBox(width: 10),
          FloatingActionButton(onPressed: counterprovider.decrement,child: Icon(Icons.remove),),
        ],
      ),
    );
  }

}
