import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 60));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String get countText {
    Duration count = controller.duration! * controller.value;
    return '${count.inSeconds}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              '$countText',
              style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Icon(Icons.play_arrow)),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Icon(Icons.stop)),
            ],
          ),
        )
      ],
    ));
  }
}
