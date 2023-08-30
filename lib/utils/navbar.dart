import 'package:flutter/material.dart';

class Anjay extends StatefulWidget {
  const Anjay({super.key});

  @override
  State<Anjay> createState() => _SliverBarState();
}

class _SliverBarState extends State<Anjay> {
  final List<String> _tabs = <String>[
    "Featured",
    "Popular",
    "Latest",
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: DefaultTabController(
          length: _tabs.length,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverOverlapAbsorber(
                  handle:
                      NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverSafeArea(
                    top: false,
                    sliver: SliverAppBar(
                      title: Text('Tab Demo'),
                      elevation: 0.0,
                      floating: true,
                      pinned: true,
                      snap: true,
                      forceElevated: innerBoxIsScrolled,
                      bottom: TabBar(
                        tabs: _tabs
                            .map((String name) => Tab(text: name))
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Icon(Icons.directions_car),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
