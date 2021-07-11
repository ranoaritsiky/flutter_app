import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String name;
  final String image;
  final bool checked;

  final VoidCallback updateChecked;
  // final

  // const CityCard({Key? key}) : super(key: key);
  // constructeur avec parametre
  CityCard({required this.name, required this.image, required this.checked, required this.updateChecked});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
          height: 150,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Ink.image(
                image: AssetImage('assets/images/image1.jpg'),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: updateChecked,
                  // onTap: () {
                  //   print('test popota');

                  // },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Paris',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
