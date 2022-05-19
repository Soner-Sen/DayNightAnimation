import 'package:flutter/material.dart';
import 'package:playground/application/theme_service.dart';
import 'package:provider/provider.dart';

import '../widgets/moon.dart';
import '../widgets/star.dart';
import '../widgets/sun.dart';

// ignore: must_be_immutable
class ThemeAnimation extends StatelessWidget {
  ThemeAnimation({Key? key}) : super(key: key);

  var time = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title:
              const Text('Day & Night', style: TextStyle(color: Colors.white)),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 20,
              borderRadius: BorderRadius.circular(10),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 500,
                  minHeight: 500,
                ),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: themeService.isDarkModeOn
                                ? [
                                    const Color.fromARGB(255, 49, 24, 29),
                                    const Color.fromARGB(255, 61, 40, 179),
                                    const Color.fromARGB(255, 195, 103, 207),
                                  ]
                                : [
                                    const Color.fromARGB(255, 100, 17, 17),
                                    const Color.fromARGB(255, 206, 90, 96),
                                    const Color(0xFFF3CB80),
                                  ])),
                    height: 500,
                    width: 500,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 70,
                          right: 50,
                          child: AnimatedOpacity(
                            child: const Star(),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 200),
                          ),
                        ),
                        Positioned(
                          top: 150,
                          right: 50,
                          child: AnimatedOpacity(
                            child: const Star(),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 200),
                          ),
                        ),
                        Positioned(
                          top: 40,
                          left: 50,
                          child: AnimatedOpacity(
                            child: const Star(),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 200),
                          ),
                        ),
                        Positioned(
                          top: 170,
                          left: 30,
                          child: AnimatedOpacity(
                            child: const Star(),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 200),
                          ),
                        ),
                        Positioned(
                          top: 100,
                          right: 200,
                          child: AnimatedOpacity(
                            child: const Star(),
                            opacity: themeService.isDarkModeOn ? 1 : 0,
                            duration: const Duration(milliseconds: 200),
                          ),
                        ),
                        AnimatedPositioned(
                            duration: const Duration(milliseconds: 400),
                            top: themeService.isDarkModeOn ? 120 : 170,
                            right: themeService.isDarkModeOn ? 100 : -40,
                            child: AnimatedOpacity(
                                duration: const Duration(milliseconds: 300),
                                opacity: themeService.isDarkModeOn ? 1 : 0,
                                child: const Moon())),
                        AnimatedPadding(
                          duration: const Duration(milliseconds: 200),
                          padding: EdgeInsets.only(
                              top: themeService.isDarkModeOn ? 110 : 50),
                          child: const Center(child: Sun()),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 225,
                            decoration: BoxDecoration(
                              color: themeService.isDarkModeOn
                                  ? Theme.of(context)
                                      .appBarTheme
                                      .backgroundColor
                                  : Theme.of(context).scaffoldBackgroundColor,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  time.substring(11, 16),
                                  style: ThemeData.dark()
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: themeService.isDarkModeOn
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                ),
                                const Divider(),
                                Text(
                                  time.substring(0, 10),
                                  style: ThemeData.dark()
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: themeService.isDarkModeOn
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    themeService.isDarkModeOn
                                        ? const Text(
                                            'Night Time 🌙',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        : const Text(
                                            'Day Time 🌞',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                    const SizedBox(width: 15),
                                    Switch(
                                      onChanged: (bool value) {
                                        Provider.of<ThemeService>(context,
                                                listen: false)
                                            .toggleTheme();
                                      },
                                      value: themeService.isDarkModeOn,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      );
    });
  }
}
