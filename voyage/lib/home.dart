import 'package:flutter/material.dart';

import 'city_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {
      'name': 'Paris',
      'image': 'assets/images/image1.jpg',
      'checked': false,
    },
    {
      'name': 'Lyon',
      'image': 'assets/images/image2.jpg',
      'checked': false,
    },
    {
      'name': 'Nice',
      'image': 'assets/images/image3.jpg',
      'checked': false,
    },
  ];

  // get city => null;

  void switchChecked(city) {
    int index = cities.indexOf(city);
    setState(() {
      cities[index]['checked'] = !cities[index]['checked'];
    });
  }

  @override
  Widget build(BuildContext context) {
    cities.map((city) => print(city));
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('Dyma Trip'),
        actions: <Widget>[Icon(Icons.more_vert)],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
                for (var val in cities)
                  CityCard(
                    name: val['name'],
                    image: val['image'],
                    checked: val['checked'],
                    // updateChecked: () => switchChecked(city),
                  )
        ]),
      ),
    );
  }
}
