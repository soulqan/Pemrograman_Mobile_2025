import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  @override
    void initState() {
      super.initState();
      _loadPosition();
    }

    void _loadPosition() async {
      Position myPos = await getPosition();

      setState(() {
        myPosition =
            'Latitude: ${myPos.latitude} - Longitude: ${myPos.longitude}';
      });
    }


  @override
Widget build(BuildContext context) {
  final myWidget = myPosition == ''
      ? const CircularProgressIndicator()
      : Text(myPosition);

  return Scaffold(
    appBar: AppBar(title: Text('Current Location Soultan')),
    body: Center(child: myWidget),
  );
}

  Future<Position> getPosition() async {
    await Geolocator.requestPermission();
    await Geolocator.isLocationServiceEnabled();
    Position? position = await Geolocator.getCurrentPosition();
    return position;
  }
}