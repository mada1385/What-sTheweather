import 'package:http/http.dart' as http;
import 'dart:convert';


class Network {
  final String url;
  Network({this.url});

  Future  getdata() async {
  http.Response res = await http.get(url);
     String resdata ;
    if (res.statusCode == 200) {
      // print(res.body) ;
      // print(res.statusCode);
       resdata = res.body;
      return jsonDecode(resdata) ;


      // var lon = jsonDecode(resdata)["coord"]["lon"];
      // var lat = jsonDecode(resdata)["coord"]["lat"];
      
      // print(lon);
      // print(lat);
      // print(temp);
      // print(id);
      // print(city);
    }
    else 
    {
      print(res.statusCode);
    }
    
    
  }
}
