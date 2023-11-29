import 'package:flutter/material.dart';
import 'package:flutter_keyboard_ui/keyboard.dart';
import 'package:flutter_keyboard_ui/remote_service.dart';

class FunctionButton extends StatefulWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  State<FunctionButton> createState() => _FunctionButtonState();
}

class _FunctionButtonState extends State<FunctionButton> {
  List<Keyboard>? keyboardsList;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    keyboardsList = await RemoteService().getKeyboard();
    if (keyboardsList != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Text(
          'Grand Sale, Starts Now',
          style: TextStyle(
              fontSize: 25,
              color: Colors.white
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '15%',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
            const SizedBox(width: 10),
            Text(
              'Off',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ],
        ),
        Container(
          height: 160,
          width: 250,
          child: Visibility(
            visible: isLoaded,
            child: Image.network(
              keyboardsList![1].image,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
