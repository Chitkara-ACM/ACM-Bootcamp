import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;
class NetworkHelper{
  NetworkHelper(this.url);
  final String url;
  Future getData() async{
    http.Response response= await http.get(Uri.parse(url));
    print("its working");
    if(response.statusCode==200){
      String data=response.body;
      print(data);
      var decodeData=jsonDecode(data);
      return decodeData;
    }else{
      print(response.statusCode);
    }
  }
}