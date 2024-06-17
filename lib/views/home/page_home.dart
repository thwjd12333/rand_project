import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:rand_project/views/card/page_card_shuffle.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  Future<void> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Text('홈'),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PageCardShuffle(),
                ));
              },
              child: Text('IN'))
        ],
      )),
    );
  }
}
