import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  var target = 0.0;
  final Map<double, String> data = {
    0.25: "north",
    0.50: "west",
    0.75: "south",
    1.00: 'east'
  };
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    showResult(double target) {
      final snak = SnackBar(
        content: Text(
          "Pen is pointed to ${data[target]}",
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.green),
        ),
        duration: const Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snak);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 80,
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: const Text(
                      "North",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ))),
            Positioned(
                top: size.height * 0.48,
                left: -15,
                child: Transform.rotate(
                  angle: 190.1,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      child: const Text(
                        "East",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                )),
            Positioned(
                top: size.height * 0.48,
                right: -15,
                child: Transform.rotate(
                  angle: -190.1,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                      child: const Text(
                        "West",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                )),
            Positioned(
                bottom: 80,
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                    child: const Text(
                      "North",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ))),
            AnimatedBuilder(
              animation: controller,
              child: Container(
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        controller.repeat();
                      });
                      Future.delayed(const Duration(seconds: 10), () {
                        setState(() {
                          target += 0.25;
                          controller.animateTo(target,
                              duration: const Duration(seconds: 1));
                          showResult(target);
                          if (target == 1.00) {
                            target = 0.0;
                          }
                        });
                      });
                    },
                    child: Image.asset(
                      'assets/images/penimg2.png',
                      width: size.width * 0.5,
                    )),
              ),
              builder: (context, Widget? widget) {
                return Transform.rotate(
                  angle: controller.value * 2 * 3.14,
                  child: widget,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
