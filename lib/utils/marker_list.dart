import 'package:uuid/uuid.dart';


const uuid = Uuid();

class MarkerList {
  MarkerList(
      {required this.title,
      required this.longitude,
      required this.latitude,
      required this.address,
      required this.linkCamera,
      String? id})
      : id = id ?? uuid.v4();
  final String title;
  final double latitude;
  final double longitude;
  final String id;
  final String address;
  final String linkCamera;
}