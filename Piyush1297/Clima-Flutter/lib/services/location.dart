import 'package:geolocator/geolocator.dart';
class Location{
  double lattitude;
  double longitude;
  void getCurrentLocation() async{
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      lattitude=position.latitude;
      longitude=position.longitude;
      print(position);
    }catch(e){
      print(e);
    }
  }

}















void getLocation() async{
  try{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print(position);
  }catch(e){
    print(e);
  }
}
