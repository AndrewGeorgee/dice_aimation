import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_cube/flutter_cube.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late CurvedAnimation _curveAnimation;
  int _rotationAngle = 80;
  late Object dice1, dice2;
  Vector3 valueOfDice2 = Vector3(0, 0, 0);
  Vector3 valueOfDice1 = Vector3(0, 0, 0);

  @override //180 45 30
  void initState() {
    dice1 = Object(
      fileName: 'assets/dice2/dice.obj',
    );
    dice2 = Object(
      fileName: 'assets/dice2/dice.obj',
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1900),
    );

    _curveAnimation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.ease,
        reverseCurve: Curves.easeInOut)
      ..addListener(() {
        Future.delayed(const Duration(microseconds: 100), () {
          //! when dice go up  change the position her

          setState(() {
            dice1.scene!.camera.position.setValues(180, 60, 180);
            dice1.scene!.camera.zoom = 190;
            dice2.scene!.camera.position.setValues(180, 60, -170);
            dice2.scene!.camera.zoom = 190;
          });
        });

        _updateDiceRotation();
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          changePsition();
        }
        setState(() {
          _rotationAngle = 80;
        });
      });

    super.initState();
  }

  void changePsition() {
    Future.delayed(const Duration(milliseconds: 400), () {
      //180 45 30
      setState(() {
        _rotationAngle = 78;
        dice1.scene!.camera.position.setValues(180, 60, 180);
        dice1.scene!.camera.zoom = 192;
        dice2.scene!.camera.position.setValues(180, 60, -170);
        dice2.scene!.camera.zoom = 192;
      });
    });

    Future.delayed(const Duration(milliseconds: 420), () {
      setState(() {
        _rotationAngle = 76;
        dice1.scene!.camera.position.setValues(180, 70, 180);
        dice1.scene!.camera.zoom = 194;
        dice2.scene!.camera.position.setValues(180, 70, -170);
        dice2.scene!.camera.zoom = 194;
      });
    });
    Future.delayed(const Duration(milliseconds: 440), () {
      setState(() {
        _rotationAngle = 74;
        dice1.scene!.camera.position.setValues(180, 80, 180);
        dice1.scene!.camera.zoom = 196;
        dice2.scene!.camera.position.setValues(175, 80, -170);
        dice2.scene!.camera.zoom = 196;
      });
    });
    Future.delayed(const Duration(milliseconds: 460), () {
      setState(() {
        _rotationAngle = 72;
        dice1.scene!.camera.position.setValues(180, 90, 180);
        dice1.scene!.camera.zoom = 198;
        dice2.scene!.camera.position.setValues(175, 90, -170);
        dice2.scene!.camera.zoom = 198;
      });
    });
    Future.delayed(const Duration(milliseconds: 480), () {
      setState(() {
        _rotationAngle = 70;
        dice1.scene!.camera.position.setValues(180, 100, 180);
        dice1.scene!.camera.zoom = 200;
        dice2.scene!.camera.position.setValues(175, 100, -170);
        dice2.scene!.camera.zoom = 200;
      });
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _rotationAngle = 68;
        dice1.scene!.camera.position.setValues(180, 110, 180);
        dice1.scene!.camera.zoom = 204;
        dice2.scene!.camera.position.setValues(175, 110, -170);
        dice2.scene!.camera.zoom = 204;
      });
    });

    Future.delayed(const Duration(milliseconds: 520), () {
      setState(() {
        _rotationAngle = 66;
        dice1.scene!.camera.position.setValues(180, 120, 180);
        dice1.scene!.camera.zoom = 208;
        dice2.scene!.camera.position.setValues(175, 120, -170);
        dice2.scene!.camera.zoom = 208;
      });
    });
    Future.delayed(const Duration(milliseconds: 540), () {
      setState(() {
        _rotationAngle = 64;
        dice1.scene!.camera.position.setValues(180, 130, 180);
        dice1.scene!.camera.zoom = 212;
        dice2.scene!.camera.position.setValues(175, 130, -170);
        dice2.scene!.camera.zoom = 212;
      });
    });
    Future.delayed(const Duration(milliseconds: 560), () {
      setState(() {
        _rotationAngle = 62;
        dice1.scene!.camera.position.setValues(180, 140, 180);
        dice1.scene!.camera.zoom = 216;
        dice2.scene!.camera.position.setValues(175, 140, -170);
        dice2.scene!.camera.zoom = 216;
      });
    });
    Future.delayed(const Duration(milliseconds: 580), () {
      setState(() {
        _rotationAngle = 60;
        dice1.scene!.camera.position.setValues(175, 150, 180);
        dice1.scene!.camera.zoom = 219;
        dice2.scene!.camera.position.setValues(175, 150, -170);
        dice2.scene!.camera.zoom = 219;
      });
    });
    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        _rotationAngle = 58;
        dice1.scene!.camera.position.setValues(175, 160, 180);
        dice1.scene!.camera.zoom = 222;
        dice2.scene!.camera.position.setValues(175, 160, -170);
        dice2.scene!.camera.zoom = 222;
      });
    });
    Future.delayed(const Duration(milliseconds: 620), () {
      setState(() {
        _rotationAngle = 56;
        dice1.scene!.camera.position.setValues(175, 170, 180);
        dice1.scene!.camera.zoom = 225;
        dice2.scene!.camera.position.setValues(175, 170, -170);
        dice2.scene!.camera.zoom = 225;
      });
    });
    Future.delayed(const Duration(milliseconds: 640), () {
      setState(() {
        _rotationAngle = 54;
        dice1.scene!.camera.position.setValues(175, 180, 180);
        dice1.scene!.camera.zoom = 229;
        dice2.scene!.camera.position.setValues(175, 180, -170);
        dice2.scene!.camera.zoom = 229;
      });
    });
    Future.delayed(const Duration(milliseconds: 660), () {
      setState(() {
        _rotationAngle = 52;
        dice1.scene!.camera.position.setValues(175, 190, 180);
        dice1.scene!.camera.zoom = 235;
        dice2.scene!.camera.position.setValues(175, 190, -170);
        dice2.scene!.camera.zoom = 235;
      });
    });
    Future.delayed(const Duration(milliseconds: 680), () {
      setState(() {
        _rotationAngle = 50;
        dice1.scene!.camera.position.setValues(175, 200, 180);
        dice1.scene!.camera.zoom = 240;
        dice2.scene!.camera.position.setValues(175, 200, -170);
        dice2.scene!.camera.zoom = 240;
      });
    });
    Future.delayed(const Duration(milliseconds: 700), () {
      setState(() {
        _rotationAngle = 50;
        dice1.scene!.camera.position.setValues(175, 220, 180);
        dice1.scene!.camera.zoom = 249;
        dice2.scene!.camera.position.setValues(175, 220, -170);
        dice2.scene!.camera.zoom = 249;
      });
    });
    Future.delayed(const Duration(milliseconds: 720), () {
      setState(() {
        _rotationAngle = 48;
        dice1.scene!.camera.position.setValues(175, 240, 180);
        dice1.scene!.camera.zoom = 259;
        dice2.scene!.camera.position.setValues(175, 240, -170);
        dice2.scene!.camera.zoom = 259;
      });
    });
    Future.delayed(const Duration(milliseconds: 740), () {
      setState(() {
        _rotationAngle = 48;
        dice1.scene!.camera.position.setValues(175, 260, 180);
        dice1.scene!.camera.zoom = 269;
        dice2.scene!.camera.position.setValues(175, 260, -170);
        dice2.scene!.camera.zoom = 269;
      });
    });
    Future.delayed(const Duration(milliseconds: 760), () {
      setState(() {
        _rotationAngle = 47;
        dice1.scene!.camera.position.setValues(175, 280, 180);
        dice1.scene!.camera.zoom = 280;
        dice2.scene!.camera.position.setValues(175, 280, -170);
        dice2.scene!.camera.zoom = 280;
      });
    });
    Future.delayed(const Duration(milliseconds: 780), () {
      setState(() {
        _rotationAngle = 45;
        dice1.scene!.camera.position.setValues(175, 300, 180);
        dice1.scene!.camera.zoom = 292;
        dice2.scene!.camera.position.setValues(175, 300, -170);
        dice2.scene!.camera.zoom = 292;
      });
    });
    Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        _rotationAngle = 43;
        dice1.scene!.camera.position.setValues(175, 320, 180);
        dice1.scene!.camera.zoom = 301;
        dice2.scene!.camera.position.setValues(175, 320, -170);
        dice2.scene!.camera.zoom = 301;
      });
    });
    Future.delayed(const Duration(milliseconds: 820), () {
      setState(() {
        _rotationAngle = 41;
        dice1.scene!.camera.position.setValues(175, 340, 180);
        dice1.scene!.camera.zoom = 311;
        dice2.scene!.camera.position.setValues(175, 340, -170);
        dice2.scene!.camera.zoom = 311;
      });
    });
    Future.delayed(const Duration(milliseconds: 840), () {
      setState(() {
        _rotationAngle = 39;
        dice1.scene!.camera.position.setValues(175, 360, 180);
        dice1.scene!.camera.zoom = 325;
        dice2.scene!.camera.position.setValues(175, 360, -170);
        dice2.scene!.camera.zoom = 325;
      });
    });
    Future.delayed(const Duration(milliseconds: 860), () {
      setState(() {
        _rotationAngle = 35;
        dice1.scene!.camera.position.setValues(175, 370, 180);
        dice1.scene!.camera.zoom = 336;
        dice2.scene!.camera.position.setValues(175, 370, -170);
        dice2.scene!.camera.zoom = 336;
      });
    });
    Future.delayed(const Duration(milliseconds: 880), () {
      setState(() {
        _rotationAngle = 32;
        dice1.scene!.camera.position.setValues(175, 390, 180);
        dice1.scene!.camera.zoom = 345;
        dice2.scene!.camera.position.setValues(175, 390, -170);
        dice2.scene!.camera.zoom = 345;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background/background.webp'),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              Stack(
                children: [
                  Transform(
                    origin: const Offset(-15, 14),
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(1, 2, -0.002)
                      ..rotateX(_rotationAngle * 3.1415927 / 180),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          width: 290,
                          height: 146,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('assets/background/dryLand.jpg'),
                            fit: BoxFit.cover,
                          ))),
                    ),
                  ),
                  Align(
                    //alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                                      scene.world.add(dice1);
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
                                      scene.world.add(dice2);

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
              const SizedBox(
                height: 100,
              ),
              TextButton(
                onPressed: () {
                  if (_animationController.isDismissed) {
                    _animationController.reset();

                    _animationController.forward();
                  } else {
                    _animationController.reset();
                    _animationController.forward();
                  }
                  //! her to change the  value to show on screen {1,2,3,4,5,6}
                  valueOfDice1.setFrom(setValueDies(1));
                  valueOfDice2.setFrom(setValueDies(6));
                },
                child: Center(
                  child: Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        border: Border.all(color: Colors.white, width: 5)),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.orange.shade400,
                          borderRadius: BorderRadius.circular(20)),
                      width: 300,
                      height: 65,
                      child: const Center(
                        child: Text(
                          'New Roll Of Dice',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

  void _updateDiceRotation() {
    dice1.rotation.setValues(
      valueOfDice1.x * _curveAnimation.value,
      valueOfDice1.y * _curveAnimation.value,
      valueOfDice1.z * _curveAnimation.value,
    );
    dice2.rotation.setValues(
      valueOfDice2.x * _curveAnimation.value,
      valueOfDice2.y * _curveAnimation.value,
      valueOfDice2.z * _curveAnimation.value,
    );
    dice2.updateTransform();
    dice1.updateTransform();
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
