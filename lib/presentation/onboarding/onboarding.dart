import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../home/home_screen.dart';

class ItemData {
  ItemData(
    this.color,
    this.image,
    this.text1,
    this.text2,
    this.text3,
  );
  final Color color;
  final String image;
  final String text1;
  final String text2;
  final String text3;
}

class WithBuilder extends StatefulWidget {
  @override
  _WithBuilder createState() => _WithBuilder();
}

class _WithBuilder extends State<WithBuilder> {
  int page = 0;
  LiquidController? liquidController;
  UpdateType? updateType;
  // final  liquidController = LiquidController();

  List<ItemData> data = <ItemData>[
    ItemData(Colors.blue, 'asset/image/icons8-rainbow-48.png', 'Hi', "It's Me",
        'Sahdeep'),
    ItemData(Colors.deepPurpleAccent, 'asset/image/icons8-rainbow-48.png',
        'Take a', 'Look At', 'Liquid Swipe'),
    ItemData(Colors.green, 'asset/image/icons8-rainbow-48.png', 'Liked?',
        'Fork!', 'Give Star!'),
    ItemData(Colors.yellow, 'asset/image/icons8-rainbow-48.png', 'Can be',
        'Used for', 'Onboarding design'),
    ItemData(Colors.red, 'asset/image/icons8-cloud-lightning-48.png', 'Do',
        'try it', 'Thank you'),
  ];

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  Widget _buildDot(int index) {
    final double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - (page - index).abs(),
      ),
    );
    final double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return SizedBox(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.white,
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LiquidSwipe.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                width: double.infinity,
                color: data[index].color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      data[index].image,
                      height: 200,
                      fit: BoxFit.contain,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          data[index].text1,
                          // style: WithPages.style,
                        ),
                        Text(
                          data[index].text2,
                          // style: WithPages.style,
                        ),
                        Text(
                          data[index].text3,
                          // style: WithPages.style,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            onPageChangeCallback: pageChangeCallback,
            liquidController: liquidController,
            fullTransitionValue: 880,
            enableSideReveal: true,
            ignoreUserGestureWhileAnimating: true,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                const Expanded(child: SizedBox()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(data.length, _buildDot),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: liquidController!.currentPage != 4
                  ? ElevatedButton(
                      onPressed: () {
                        print('${data.length} lenght in if condition');
                        liquidController!.animateToPage(
                            page: data.length - 1, duration: 700);
                      },
                      child: const Text('Skip to End'),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        print('${data.length} lenght in else condition');
                        Get.offAll(
                          () => const HomeScreen(),
                        );
                      },
                      child: const Text('Conutnine'),
                    ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: ElevatedButton(
                onPressed: () {
                  print('${liquidController!.currentPage} in next condition');
                  liquidController!.jumpToPage(
                      page: liquidController!.currentPage + 1 > data.length - 1
                          ? 0
                          : liquidController!.currentPage + 1);
                },
                child: const Text('Next'),
              ),
            ),
          )
        ],
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}
