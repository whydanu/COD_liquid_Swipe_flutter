import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Call Of Duty Modern Warfare II 2023'),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: LiquidSwipe(
          enableSideReveal: false,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.9,
          slideIconWidget: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: 30,
            width: 40,
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 28,
            ),
          ),
          pages: [
            Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/mw2/home/reveal/task-force-141/MW2_SECONDARY_SOAP_BLEED_051722.png"),
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/mw2/home/reveal/task-force-141/MW2_SECONDARY_GAZ_BLEED_051722.png"),
                    fit: BoxFit.cover,
                  ),
                )),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://pbs.twimg.com/media/FTiYD4fUYAAIhaz?format=jpg&name=900x900"),
                  fit: BoxFit.cover,
                ),
              )),
            Container(
                decoration: const BoxDecoration(
                image: DecorationImage(
                image: NetworkImage(
                "https://www.callofduty.com/content/dam/atvi/callofduty/cod-touchui/mw2/home/reveal/task-force-141/MW2_SECONDARY_PRICE_BLEED_051722.png"),
            fit: BoxFit.cover,
    ),
    )),
          ]),
    );
  }
}

