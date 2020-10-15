import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kinputdecoration =  InputDecoration(
                    
                    icon: Icon(Icons.location_city
                    ,color: Colors.white,)   ,
                    hintText: "enter city name",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true ,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)) ,
                      borderSide: BorderSide.none ,

                      )
                    
                    
                  );
const apikey = "ca0c4733e4a4d0e1343844151d267758";