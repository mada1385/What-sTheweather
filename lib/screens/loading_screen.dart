import 'dart:core';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double longtitude;
  double latitude;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    WeatherModel modal = WeatherModel();
    var data = await modal.getweatherdata();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(weather_data: data,);
    }));
  }

  // var lon = jsonDecode(resdata)["coord"]["lon"];
  // var lat = jsonDecode(resdata)["coord"]["lat"];
  // var temp = jsonDecode(resdata)["main"]["temp"];
  // var id = jsonDecode(resdata)["weather"][0]["id"];
  // var city = jsonDecode(resdata)["name"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
