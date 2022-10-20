import 'package:flutter/material.dart';
import 'package:steadycalendar/screens/intro/intro.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Steady Calendar',
      initialRoute: Intro.routeName,
      routes: {
        Intro.routeName: (context) => const Intro(),
        /* Splash.routeName: (context) => const Spash(),
        Intro.routeName: (context) => const Intro(),
        LoginOptions.routeName: (context) => const LoginOptions(),
        CalPager.routeName: (context) => const CalPager(), */
      },
    );
  }
}
