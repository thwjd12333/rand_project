import 'package:flutter/material.dart';
import 'package:rand_project/common/wise_saying.dart';
import 'package:rand_project/views/card/page_card_result.dart';

class PageCardShuffle extends StatefulWidget {
  const PageCardShuffle({super.key});

  @override
  State<PageCardShuffle> createState() => _PageCardShuffleState();
}

class _PageCardShuffleState extends State<PageCardShuffle> {
  double itemWidth = 120.0;
  int itemCount = 100;
  int selected = 50;
  final FixedExtentScrollController _scrollController =
      FixedExtentScrollController(
    initialItem: 50,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            RotatedBox(
                quarterTurns: -1,
                child: ListWheelScrollView(
                  // useMagnifier: true,
                  // magnification: 0.1,
                  // overAndUnderCenterOpacity: 0.9,
                  //회전 너비
                  diameterRatio: 10.0,
                  // perspective: 0.004,
                  physics: const FixedExtentScrollPhysics(),
                  squeeze: 3,
                  onSelectedItemChanged: (x) {
                    setState(() {
                      selected = x;
                    });
                    print(selected);
                  },
                  controller: _scrollController,
                  itemExtent: itemWidth,
                  offAxisFraction: 0.6,
                  children: List.generate(
                    itemCount,
                    (x) => RotatedBox(
                      quarterTurns: 1,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        width: x == selected ? 80 : 50,
                        height: x == selected ? 120 : 100,
                        alignment: Alignment.center,
                        child: InkWell(
                          child: Container(
                            child: Image.asset(
                              'assets/card_01.jpg',
                              // width: 100,
                              // height: 200,
                            ),
                          ),
                          onTap: () {
                            print(x);
                            selected = x;
                          },
                        ),
                      ),
                    ),
                  ),
                )),
            Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 600,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PageCardResult(),
                            ));
                          },
                          child: const Text('SELECT')),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       body: Container(
  //         child: Column(children: [
  //           Text('eeeee'),
  //
  //
  //         ...wiseSayingList.map((e) =>  Image.asset(
  //       'assets/card_01.jpg',
  //       width: 100,
  //       height: 200,
  //     ),
  //
  //         ),]
  //       ),
  //     ),
  //   );
  // }
}
