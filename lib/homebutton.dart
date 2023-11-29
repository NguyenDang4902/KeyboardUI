import 'package:flutter/material.dart';

class OptionsWidget extends StatefulWidget {
  const OptionsWidget({Key? key}) : super(key: key);

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'E',
                style: TextStyle(
                    color: Colors.orangeAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 2),
              Text(
                'BUY',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          height: 80,
          width: width / 4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/wireless.png',
                height: 30,
                width: 30,
              ),
              Text(
                'Keyboard',
                style: TextStyle(
                    fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          height: 80,
          width: width / 4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/switches.png',
                height: 30,
                width: 30,
              ),
              Text(
                'Switches',
                style: TextStyle(
                    fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
        Container(
          height: 80,
          width: width / 4,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/keycaps.png',
                height: 30,
                width: 30,
              ),
              Text(
                'Keycaps',
                style: TextStyle(
                    fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
      ],
    );
  }
}
