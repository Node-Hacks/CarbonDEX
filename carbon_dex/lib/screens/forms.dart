import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'slider_widget.dart';

import 'form_data.dart';

class FormScreen extends StatelessWidget {
  var formData = FormData.getData;
  var wid = new SliderWidget();
  //var val = wid.val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CarbonDEX',
          style: TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.w300,
            letterSpacing: 2.0,
            color: Colors.amber[100],
            fontFamily: 'Rock',
          ),
        ),
        centerTitle: true,
        // backgroundColor: Colors.lightGreen[800],
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Container(
                  child: Column(children: <Widget>[
                IconButton(
                  icon: Icon(CupertinoIcons.dial_fill),
                  iconSize: 60,
                  color: Colors.deepPurple,
                ),
                SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Fuel Consumption',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        fontFamily: 'Sifonn',
                        color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              '\n\nFuel consumption is the amount of fuel used per unit distance.\n\nThe ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              fontFamily: 'Ariel')),
                      TextSpan(
                          text: 'lower',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Ariel')),
                      TextSpan(
                          text: ' the value, the ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              fontFamily: 'Ariel')),
                      TextSpan(
                          text: 'more',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Ariel')),
                      TextSpan(
                          text: ' economic a vehicle is.',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              fontFamily: 'Ariel')),
                      TextSpan(
                          text:
                              '\n\nENTER YOUR VEHICLE\'S FUEL CONSUMPTION BELOW:',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              fontFamily: 'Sifonn')),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ])),
            ),
            Expanded(
              child: ListView.builder(
// scrollDirection: Axis.horizontal,
                  itemCount: formData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 150,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: 2.0,
                                  color: formData[index]['iconColor']),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(7),
                            child: Stack(children: <Widget>[
                              Align(
                                alignment: Alignment.centerRight,
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5),
                                        child: Column(
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                cardTitle(formData[index]),
                                                //Spacer(),
                                                vehicleIcon(formData[index]),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              children: <Widget>[
                                                wid,
                                              ],
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),

        /*
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        height: 220,
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Card(child: Padding(
              padding: EdgeInsets.all(7),
              child: Stack(
                  children: <Widget>[
                   Align(
                      alignment: Alignment.centerRight,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 10, top: 5),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0),
                                        child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Icon(
                                              CupertinoIcons.flame_fill,
                                              color: Colors.amber,
                                              size: 40,
                                            )),
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ]),
            ),),
            Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Stack(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(left: 10, top: 5),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    cardTitle(),
                                    Spacer(),
                                    vehicleIcon(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    //Spacer(),
                                    //cryptoNameSymbol(),
                                    //Spacer(),
                                    //cryptoChange(),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    //changeIcon(),
                                    SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                                SizedBox(   //Use of SizedBox
                                  height: 30,
                                ),
                                Row(
                                  children: <Widget> [SliderWidget()],
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ]),
          ),
        ),]
        ),
      ),*/
      ),
      floatingActionButton: FlatButton.icon(
        onPressed: () {
          Navigator.pushNamed(context, '/map');
        },
        icon: Icon(Icons.edit_location),
        label: Text('Map'),
      ),
    );
  }

  Widget vehicleIcon(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerRight,
          child: Icon(
            data['icon'],
            color: data['iconColor'],
            size: 40,
          )),
    );
  }

  Widget cardTitle(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: '${data['title']}', //'Enter your car\'s fuel\nconsumption',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Sifonn'),
          children: <TextSpan>[
            TextSpan(
                text: '\n${data['subtitle']}', //'\n\nin L/100 km.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sifonn')),
          ],
        ),
      ),
    );
  }
}
