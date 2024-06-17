import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rand_project/common/wise_saying.dart';
import 'package:rand_project/views/card/page_card_shuffle.dart';

class PageCardResult extends StatefulWidget {
  const PageCardResult({super.key});

  @override
  State<PageCardResult> createState() => _PageCardResultState();
}

class _PageCardResultState extends State<PageCardResult> {
  String word = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    word = wiseSayingList?[Random().nextInt(wiseSayingList!.length)].desc ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        color: Colors.blue,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            children: [
              Text(word),
            ],
          ),
        ),
      )),
    );
  }
}
