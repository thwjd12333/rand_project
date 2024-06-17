import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rand_project/views/card/page_card_shuffle.dart';

class PagePosition extends StatefulWidget {
  const PagePosition({super.key});

  @override
  State<PagePosition> createState() => _PagePositionState();
}

class _PagePositionState extends State<PagePosition> {
  late double longitude = 0;
  late double latitude = 0;

  Future<void> getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    longitude = position.longitude;
    latitude = position.latitude;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [Text(longitude.toString()), Text(latitude.toString())],
      )),
    );
  }
}
