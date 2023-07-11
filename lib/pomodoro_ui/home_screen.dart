import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const tenSeconds = 10;
  int totalSeconds = tenSeconds;
  bool isRunnig = false;
  int totalPomodoros = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 1) {
      setState(() {
        totalPomodoros++;
        isRunnig = false;
        totalSeconds = tenSeconds;
      });
      timer.cancel();
    } else {
      setState(() {
        totalSeconds = totalSeconds - 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      onTick,
    );
    setState(() {
      isRunnig = true;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunnig = false;
    });
  }

  void onResetPressed() {
    setState(() {
      totalSeconds = tenSeconds;
    });
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);

    return duration.toString().split('.').first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSeconds),
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(
                      icon: isRunnig
                          ? const Icon(Icons.pause_circle_outlined)
                          : const Icon(Icons.play_circle_outline),
                      color: Theme.of(context).cardColor,
                      iconSize: 120,
                      onPressed: isRunnig ? onPausePressed : onStartPressed),
                ),
                Center(
                  child: IconButton(
                    icon: const Icon(Icons.restart_alt_outlined),
                    color: Theme.of(context).cardColor,
                    iconSize: 120,
                    onPressed: onResetPressed,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration:
                        BoxDecoration(color: Theme.of(context).cardColor),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodoros',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color),
                        ),
                        Text(
                          '$totalPomodoros',
                          style: TextStyle(
                              fontSize: 58,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
