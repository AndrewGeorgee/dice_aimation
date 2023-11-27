import 'dart:math';

import 'package:dice_animation/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late CurvedAnimation _curveAnimation;
  int rotationAngle = 80;
  late Object firstDice, secondDice;
  bool rollingDiceButton = false;
  Vector3 valueOfFirstDice = Vector3(0, 0, 0);
  Vector3 valueOfSecondDice = Vector3(0, 0, 0);
  int total = 50;
  bool showIndex = true;
  bool isSee = false;
  int currentRollIndex = 0;
  int numberOfCirele = 3;
  List<int> result = [11, 4, 10, 5, 3];
  final String lastResuilt = '25';

  late List<int> generatedList;
  int currentIndex = -1;
  List<int> generateList(int total, int parts) {
    Random random = Random();
    List<int> resultList = List.filled(parts, 0);

    while (true) {
      for (int i = 0; i < parts; i++) {
        int randomValue = random.nextInt(11) +
            2; // Generates a random number between 2 and 12 (inclusive)
        resultList[i] = randomValue;
      }

      if (resultList.reduce((a, b) => a + b) == total) {
        break;
      }
    }

    return resultList;
  }

  int totalResult = 0;
  int rollIndex = 0;
  void rollDice() {
    if (rollIndex < result.length) {
      int value1 = Random().nextInt(6) + 1;
      int value2 = result[rollIndex] - value1;

      for (int v1 = 1; v1 <= 6; v1++) {
        for (int v2 = 1; v2 <= 6; v2++) {
          if (v1 + v2 == result[rollIndex]) {
            value1 = v1;
            value2 = v2;
          }
        }
      }

      // Update the state with the dice values
      setState(() {
        valueOfFirstDice.setFrom(setValueDies(value1));
        valueOfSecondDice.setFrom(setValueDies(value2));
        rollIndex++;
      });

      // Set a delay before rolling the next time (adjust the duration as needed)
      Future.delayed(const Duration(microseconds: 300), () {
        // Trigger a rebuild after the delay if needed
        setState(() {
          // Additional updates after the delay
        });
      });
    }
  }

  @override //180 45 30
  void initState() {
    // Ensure the list contains unique numbers
//! this
    generatedList = generateList(25, numberOfCirele);

    firstDice = Object(
      fileName: 'assets/dice2/dice.obj',
      lighting: true,
    );
    secondDice = Object(
      fileName: 'assets/dice2/dice.obj',
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    );

    _curveAnimation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
        reverseCurve: Curves.easeOut)
      ..addListener(() {
        Future.delayed(const Duration(microseconds: 100), () {
          //! when dice go up  change the position her

          setState(() {
            firstDice.scene!.camera.position.setValues(60, 30, 60);
            firstDice.scene!.camera.zoom = 65;
            secondDice.scene!.camera.position.setValues(60, 30, -60);
            secondDice.scene!.camera.zoom = 65;
          });
        });

        _updateDiceRotation();
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          changePsition();
        }
        setState(() {
          rotationAngle = 80;
        });
      });

    super.initState();
  }

  void changePsition() {
    Future.delayed(const Duration(milliseconds: 420), () {
      setState(() {
        rotationAngle = 76;
        firstDice.scene!.camera.position.setValues(60, 40, 60);
        firstDice.scene!.camera.zoom = 69;
        secondDice.scene!.camera.position.setValues(60, 40, -60);
        secondDice.scene!.camera.zoom = 69;
      });
    });
    Future.delayed(const Duration(milliseconds: 450), () {
      setState(() {
        rotationAngle = 74;
        firstDice.scene!.camera.position.setValues(60, 60, 60);
        firstDice.scene!.camera.zoom = 77;
        secondDice.scene!.camera.position.setValues(60, 60, -60);
        secondDice.scene!.camera.zoom = 77;
      });
    });
    Future.delayed(const Duration(milliseconds: 480), () {
      setState(() {
        rotationAngle = 72;
        firstDice.scene!.camera.position.setValues(60, 80, 60);
        firstDice.scene!.camera.zoom = 87;
        secondDice.scene!.camera.position.setValues(60, 80, -60);
        secondDice.scene!.camera.zoom = 87;
      });
    });
    Future.delayed(const Duration(milliseconds: 510), () {
      setState(() {
        rotationAngle = 70;
        firstDice.scene!.camera.position.setValues(60, 100, 60);
        firstDice.scene!.camera.zoom = 99;
        secondDice.scene!.camera.position.setValues(60, 100, -60);
        secondDice.scene!.camera.zoom = 99;
      });
    });
    Future.delayed(const Duration(milliseconds: 540), () {
      setState(() {
        rotationAngle = 68;
        firstDice.scene!.camera.position.setValues(60, 120, 60);
        firstDice.scene!.camera.zoom = 111;
        secondDice.scene!.camera.position.setValues(60, 120, -60);
        secondDice.scene!.camera.zoom = 111;
      });
    });

    Future.delayed(const Duration(milliseconds: 570), () {
      setState(() {
        rotationAngle = 66;
        firstDice.scene!.camera.position.setValues(60, 140, 60);
        firstDice.scene!.camera.zoom = 126;
        secondDice.scene!.camera.position.setValues(60, 140, -60);
        secondDice.scene!.camera.zoom = 126;
      });
    });
    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        rotationAngle = 64;
        firstDice.scene!.camera.position.setValues(60, 160, 60);
        firstDice.scene!.camera.zoom = 139;
        secondDice.scene!.camera.position.setValues(60, 160, -60);
        secondDice.scene!.camera.zoom = 139;
      });
    });
    Future.delayed(const Duration(milliseconds: 630), () {
      setState(() {
        rotationAngle = 62;
        firstDice.scene!.camera.position.setValues(60, 180, 60);
        firstDice.scene!.camera.zoom = 154;
        secondDice.scene!.camera.position.setValues(60, 180, -60);
        secondDice.scene!.camera.zoom = 154;
      });
    });
    Future.delayed(const Duration(milliseconds: 660), () {
      setState(() {
        rotationAngle = 60;
        firstDice.scene!.camera.position.setValues(60, 200, 60);
        firstDice.scene!.camera.zoom = 169;
        secondDice.scene!.camera.position.setValues(60, 200, -60);
        secondDice.scene!.camera.zoom = 169;
      });
    });
    Future.delayed(const Duration(milliseconds: 690), () {
      setState(() {
        rotationAngle = 58;
        firstDice.scene!.camera.position.setValues(60, 220, 60);
        firstDice.scene!.camera.zoom = 183;
        secondDice.scene!.camera.position.setValues(60, 220, -60);
        secondDice.scene!.camera.zoom = 183;
      });
    });
    Future.delayed(const Duration(milliseconds: 720), () {
      setState(() {
        rotationAngle = 56;
        firstDice.scene!.camera.position.setValues(60, 240, 60);
        firstDice.scene!.camera.zoom = 198;
        secondDice.scene!.camera.position.setValues(60, 240, -60);
        secondDice.scene!.camera.zoom = 198;
      });
    });
    Future.delayed(const Duration(milliseconds: 750), () {
      setState(() {
        rotationAngle = 54;
        firstDice.scene!.camera.position.setValues(60, 260, 60);
        firstDice.scene!.camera.zoom = 215;
        secondDice.scene!.camera.position.setValues(60, 260, -60);
        secondDice.scene!.camera.zoom = 215;
      });
    });
    Future.delayed(const Duration(milliseconds: 780), () {
      setState(() {
        rotationAngle = 52;
        firstDice.scene!.camera.position.setValues(60, 280, 60);
        firstDice.scene!.camera.zoom = 229;
        secondDice.scene!.camera.position.setValues(60, 280, -60);
        secondDice.scene!.camera.zoom = 229;
      });
    });
    Future.delayed(const Duration(milliseconds: 810), () {
      setState(() {
        rotationAngle = 50;
        firstDice.scene!.camera.position.setValues(60, 300, 60);
        firstDice.scene!.camera.zoom = 244;
        secondDice.scene!.camera.position.setValues(60, 300, -60);
        secondDice.scene!.camera.zoom = 244;
      });
    });

    Future.delayed(const Duration(milliseconds: 840), () {
      setState(() {
        rotationAngle = 50;
        firstDice.scene!.camera.position.setValues(50, 320, 50);
        firstDice.scene!.camera.zoom = 260;
        secondDice.scene!.camera.position.setValues(60, 320, -60);
        secondDice.scene!.camera.zoom = 260;
      });
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        isSee = true;
        rollingDiceButton = false;
        currentIndex = (currentIndex + 1) % result.length;
        isInitialResultDisplayed = true;
      });
    });
  }

  Widget isHow() {
    if (currentIndex + 1 == numberOfCirele) {
      return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 1)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Visibility(
              visible: currentIndex + 1 == numberOfCirele,
              child: const Text(
                'All Results 5',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            );
          } else {
            return Container();
          }
        },
      );
    }
    return Container();
  }

  bool isTextVisible = false;
  bool isInitialResultDisplayed = false;
  bool isFirstCircleClicked = false;
  bool isSecondCircleClicked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/background.webp'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                isHow(),
                const Spacer(),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Transform(
                      origin: const Offset(30, 130),
                      alignment: AlignmentDirectional.topCenter,
                      transform: Matrix4.identity()
                        ..setEntry(1, 2, -0.002)
                        ..rotateX(rotationAngle * 3.1415927 / 180),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            width: 290,
                            height: 180,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                'assets/background/dryLand.jpg',
                              ),
                              fit: BoxFit.cover,
                            ))),
                      ),
                    ),
                    Align(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // dice 1
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: AnimatedBuilder(
                                animation: _curveAnimation,
                                builder: (context, child) => Cube(
                                      interactive: false,
                                      onSceneCreated: (scene) {
                                        scene.world.add(firstDice);
                                        scene.camera.position
                                            .setValues(180, 45, -10);
                                        scene.camera.zoom = 145;
                                      },
                                    )
                                        .animate(
                                          controller: _animationController,
                                          autoPlay: false,
                                          onPlay: (controller) {},
                                        )
                                        .moveY(
                                            begin: 50,
                                            end: -250,
                                            duration: 1000.ms,
                                            curve: Curves.easeInOut)
                                        .then()
                                        .moveY(
                                            begin: -50,
                                            end: 250,
                                            duration: 1000.ms,
                                            curve: Curves.easeInOut)),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          // dice 2
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: AnimatedBuilder(
                                animation: _curveAnimation,
                                builder: (context, child) => Cube(
                                      interactive: false,
                                      onSceneCreated: (scene) {
                                        scene.world.add(secondDice);

                                        scene.camera.position
                                            .setValues(180, 45, 10);
                                        scene.camera.zoom = 145;
                                      },
                                    )
                                        .animate(
                                          controller: _animationController,
                                          autoPlay: false,
                                          onPlay: (controller) {},
                                        )
                                        .moveY(
                                            begin: 50,
                                            end: -250,
                                            duration: 1000.ms,
                                            curve: Curves.easeInOut)
                                        .then()
                                        .moveY(
                                            begin: -50,
                                            end: 250,
                                            duration: 1000.ms,
                                            curve: Curves.easeInOut)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: Center(
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 5),
                        scrollDirection: Axis.horizontal,
                        itemCount: numberOfCirele,
                        itemBuilder: (context, index) {
                          int number;

                          if (index <= currentIndex &&
                              isInitialResultDisplayed) {
                            number = result[index];
                          } else {
                            number = 0;
                          }

                          String valueToShow = isSee ? '$number' : '0';
                          print('number$number');
                          print('currentIndex$currentIndex');
                          return Colorcircle(
                            number: '${index + 1}',
                            value: valueToShow,
                          );
                        }),
                  ),
                ),
                DiceGameButtom(
                    text: 'New Roll of dice',
                    ontap: rollingDiceButton
                        ? null
                        : () {
                            if (_animationController.isDismissed) {
                              _animationController.reset();

                              _animationController.forward();
                            } else {
                              _animationController.reset();
                              _animationController.forward();
                            }
                            rollDice();
                            setState(() {
                              rollingDiceButton = true;
                            });
                            //! her to change the  value to show on screen {1,2,3,4,5,6}

                            // valueOfSecondDice.setFrom(setValueDies(3));
                            // valueOfFirstDice.setFrom(setValueDies(5));
                          }),
                DiceGameButtom(
                    text: 'Replace the Previouse outComes',
                    ontap: () {
                      setState(() {
                        isSee = false;
                      });
                    }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }

  void _updateDiceRotation() {
    firstDice.rotation.setValues(
      valueOfSecondDice.x * _curveAnimation.value,
      valueOfSecondDice.y * _curveAnimation.value,
      valueOfSecondDice.z * _curveAnimation.value,
    );
    secondDice.rotation.setValues(
      valueOfFirstDice.x * _curveAnimation.value,
      valueOfFirstDice.y * _curveAnimation.value,
      valueOfFirstDice.z * _curveAnimation.value,
    );
    secondDice.updateTransform();
    firstDice.updateTransform();
  }

  Vector3 setValueDies(int number) {
    late Vector3 diceValue;

    switch (number) {
      case 1:
        diceValue = Vector3(0, 180, 180);
        break;

      case 2:
        diceValue = Vector3(360, 180, 270);
        break;

      case 3:
        diceValue = Vector3(90, 90, 90);
        break;

      case 4:
        diceValue = Vector3(270, 90, 180);
        break;

      case 5:
        diceValue = Vector3(360, 270, 90);
        break;

      case 6:
        diceValue = Vector3(180, 180, 180);
        break;
      default:
        diceValue = Vector3(0, 0, 0);
        break;
    }
    return diceValue;
  }
}

class Colorcircle extends StatelessWidget {
  final String number;
  final String value;
  const Colorcircle({
    super.key,
    required this.number,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(radius: 39, backgroundColor: HexColor('#d57f41')),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: HexColor('#42303c'),
                spreadRadius: 22,
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              'Dice Roll $number',
              style: const TextStyle(color: Colors.white, fontSize: 10.5),
            ),
            Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 31,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
