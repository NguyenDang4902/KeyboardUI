import 'package:flutter/material.dart';
import 'package:flutter_keyboard_ui/homebutton.dart';
import 'package:flutter_keyboard_ui/functionbutton.dart';
import 'package:flutter_keyboard_ui/tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: Container(
        height: height,
        width: width,
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              height: height / 2,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    height: height,
                    width: width / 4,
                    child: OptionsWidget()
                  ),
                  Container(
                    height: height,
                    width: width - width / 4,
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(200),
                        )
                    ),
                    child: FunctionButton()
                  )
                ],
              ),
            ),
            Container(
              height: height / 2,
              child: TabbarDesign(),
            )
          ],
        ),
      ),
    );
  }
}
