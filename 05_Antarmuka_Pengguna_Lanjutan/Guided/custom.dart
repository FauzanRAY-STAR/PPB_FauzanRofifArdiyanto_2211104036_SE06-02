import 'package:flutter/material.dart';

class Custom extends StatelessWidget {
  const Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Custom Demo'),
            ),
          ),
          //sliver grid -> tampilan grid
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.red[100 * (index % 9)],
                  child: Column(
                    children: [
                      // Icon(Icons.access_alarm, size: 15),
                      Text('Grid Item $index'),
                    ],
                  ),
                );
              },
              childCount: 21,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4,
            ),
          )
        ],
      ),
    );
  }
}
