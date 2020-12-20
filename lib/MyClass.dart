import 'package:flutter/material.dart';

class MyClass extends StatelessWidget {

  final transportationList = ['bike', 'boat', 'bus', 'car', 'railway', 'run', 'subway', 'walk'];
  final transportationIcons = [Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_walk];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('List App v3'),
            ),
            body: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
             // width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.width * 0.6,
              child: ListView.builder(

                  itemCount: transportationList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        child: ListTile(
                          leading: Icon(transportationIcons[index]),
                          title: Text(transportationList[index]),
                        ),
                      ),
                    );
                  },
              ),
            ),

        ),
      ),

    );
  }
}
