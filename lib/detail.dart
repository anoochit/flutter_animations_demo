import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int item;
  final String title;
  DetailPage({Key? key, required this.item, required this.title}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState(this.item, this.title);
}

class _DetailPageState extends State<DetailPage> {
  final int item;
  final String title;

  _DetailPageState(this.item, this.title);

  bool _largePhoto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail $title"),
      ),
      body: PageTransitionSwitcher(
        reverse: !_largePhoto,
        transitionBuilder: (
          Widget child,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
        ) {
          return SharedAxisTransition(
            child: child,
            animation: animation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.scaled,
          );
        },
        child: _largePhoto
            ? GestureDetector(
                onTap: () => setState(() => _largePhoto = !_largePhoto),
                child: Image.network(
                  "https://momentum.photos/img/617bcdf2-dba9-4731-9392-93a079f3d52c.jpg?momo_cache_bg_uuid=8c5ded06-f76f-4cba-94d3-d8b292991a7a",
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              )
            : Scrollbar(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(16),
                        child: GestureDetector(
                          onTap: () => setState(() => _largePhoto = !_largePhoto),
                          child: Image.network(
                            "https://momentum.photos/img/617bcdf2-dba9-4731-9392-93a079f3d52c.jpg?momo_cache_bg_uuid=8c5ded06-f76f-4cba-94d3-d8b292991a7a",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            "In eiusmod sint reprehenderit ut enim eiusmod reprehenderit sit laborum exercitation. Dolor cupidatat laboris laborum ut commodo. Et eu do ullamco duis sit labore adipisicing ea exercitation aliquip reprehenderit ipsum cupidatat. Qui in est minim mollit ipsum veniam fugiat amet dolore. Fugiat veniam eiusmod officia minim. Reprehenderit deserunt ipsum officia labore non cillum proident id magna."),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            "In eiusmod sint reprehenderit ut enim eiusmod reprehenderit sit laborum exercitation. Dolor cupidatat laboris laborum ut commodo. Et eu do ullamco duis sit labore adipisicing ea exercitation aliquip reprehenderit ipsum cupidatat. Qui in est minim mollit ipsum veniam fugiat amet dolore. Fugiat veniam eiusmod officia minim. Reprehenderit deserunt ipsum officia labore non cillum proident id magna."),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            "In eiusmod sint reprehenderit ut enim eiusmod reprehenderit sit laborum exercitation. Dolor cupidatat laboris laborum ut commodo. Et eu do ullamco duis sit labore adipisicing ea exercitation aliquip reprehenderit ipsum cupidatat. Qui in est minim mollit ipsum veniam fugiat amet dolore. Fugiat veniam eiusmod officia minim. Reprehenderit deserunt ipsum officia labore non cillum proident id magna."),
                      ),
                      Container(
                        padding: EdgeInsets.all(16),
                        child: Text(
                            "In eiusmod sint reprehenderit ut enim eiusmod reprehenderit sit laborum exercitation. Dolor cupidatat laboris laborum ut commodo. Et eu do ullamco duis sit labore adipisicing ea exercitation aliquip reprehenderit ipsum cupidatat. Qui in est minim mollit ipsum veniam fugiat amet dolore. Fugiat veniam eiusmod officia minim. Reprehenderit deserunt ipsum officia labore non cillum proident id magna."),
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
