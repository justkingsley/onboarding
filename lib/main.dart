import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:user_onboarding/card_planet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final data = const [
    CardPlanetData(
        title: 'Adopt a friend',
        subtitle: 'Your best friend is waiting, begin your journey',
        image: NetworkImage('https://ouch-cdn2.icons8.com/Vk0ZQFzYC1Amk9GL7WENH42pqYVv2t1zuDEUzyEl5nI/rs:fit:256:207/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjQz/Lzg2ZjYxMTEzLTE4/NzItNDQyMC05ZjJj/LWMyNWUxYTlkYWVl/Yi5wbmc.png'),
        backgroundColor: Color(0xFF90CCFF),
        titleColor: Color(0xFFFFFAF5),
        subtitleColor: Colors.white),

    CardPlanetData(
        title: 'Gift a pet to a friend',
        subtitle: 'Wide selection of pets in our stores',
        image: NetworkImage('https://ouch-cdn2.icons8.com/AQZIqbIDzjdmmjUBmODRV2Rq4semHPGF4oiR7GBHV2I/rs:fit:256:202/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTA5/LzY3YTI3ZDQ4LTg3/N2EtNGVlMy05ZDkz/LWQ3YzEyYWExYzVi/NS5wbmc.png'),

        backgroundColor: Color(0xFFFF5B2E),
        titleColor: Color(0xFFFFFAF5),
        subtitleColor: Colors.white), //#000958

    CardPlanetData(
        title: "Let's go",
        subtitle: 'We can start today',
        image: NetworkImage('https://ouch-cdn2.icons8.com/FLxcYK0EgIyTpjAaRqyplxvFuJ9hNa7xoR5jgVcczeY/rs:fit:256:250/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODgx/LzFhYWE2Y2ZiLTI4/ZmMtNDBjZS05NzM1/LTQzNmI1MmNjOTU1/ZS5wbmc.png'),
        backgroundColor: Color(0xFFFFFAF5),
        titleColor: Color(0xFF000958),
        subtitleColor: Colors.black38)

  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: ConcentricPageView(
        itemCount: 3,
        colors: data.map((e) => e.backgroundColor).toList(),
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      )
    );

  }
}
