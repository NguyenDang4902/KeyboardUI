import 'package:flutter/material.dart';
import 'package:flutter_keyboard_ui/keyboard.dart';
import 'package:flutter_keyboard_ui/remote_service.dart';

class TabbarDesign extends StatefulWidget {
  const TabbarDesign({Key? key}) : super(key: key);

  @override
  State<TabbarDesign> createState() => _TabbarDesignState();
}

class _TabbarDesignState extends State<TabbarDesign>
    with TickerProviderStateMixin {

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

  Widget allProductsList() => Visibility(
    visible: isLoaded,
    child: GridView.builder(
        itemCount: keyboardsList?.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          final prd = keyboardsList![index];
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                  '${prd.image}'
                )
              )
            ),
          );
        }),
  );

  Widget tabBarTitles(String title) => Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(40),
              right: Radius.circular(40),
            )),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category',
          style: TextStyle(
              color: Colors.indigo, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        TabBar(
          labelPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 7.5),
          controller: tabController,
          indicatorColor: Colors.transparent,
          tabs: [
            tabBarTitles('All'),
            tabBarTitles('Classic'),
            tabBarTitles('Analog'),
            tabBarTitles('Digital'),
          ],
        ),
        SingleChildScrollView(
          child: Container(
            height: 250,
            child: TabBarView(
              controller: tabController,
              children: [
                Center(child: allProductsList()),
                const Center(child: Text('Classic')),
                const Center(child: Text('Analog')),
                const Center(child: Text('Digital')),
              ],
            ),
          ),
        )
      ],
    );
  }
}
