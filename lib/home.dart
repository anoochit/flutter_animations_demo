import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation/detail.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Container(
        child: Scrollbar(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return OpenContainer(
                transitionType: ContainerTransitionType.fadeThrough,
                closedBuilder: (context, action) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('${index + 1}'),
                    ),
                    title: Text("Item ${index + 1}"),
                    onTap: action,
                  );
                },
                openBuilder: (context, action) {
                  return DetailPage(item: index, title: "Item ${index + 1}");
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
