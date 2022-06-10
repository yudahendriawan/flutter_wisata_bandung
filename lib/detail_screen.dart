import 'package:flutter/material.dart';
import 'package:wisata_bandung/model/tourism_place.dart';


class DetailScreen extends StatelessWidget {

  final TourismPlace place;


  DetailScreen({required this.place});

  var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Image.asset(place.imageAsset),
                  Container(
                      margin: const EdgeInsets.only(top: 16.0),
                      child: Text(
                        place.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30.0, fontFamily: 'Staatliches'),
                      )),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(place.openDays,
                                style: TextStyle(fontFamily: 'Oxygen')),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.access_time),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(place.openTime,
                                style: TextStyle(fontFamily: 'Oxygen')),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Icon(Icons.currency_bitcoin),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(place.ticketPrice,
                                style: TextStyle(fontFamily: 'Oxygen')),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                        place.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Oxygen')),
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: place.imageUrls.map((url) {
                        return Padding(
                          padding: EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(url),
                          ),
                        );
                      }
                      ).toList(),
                    ),
                  ),
                ])
        )
    );
  }
}
