import 'package:flutter/material.dart';

import 'widgets/test_tile.dart';

class SliverMultiListPage extends StatelessWidget {
  const SliverMultiListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final list1 = List.generate(
      30,
      (int index) => TestTile(listIndex: 0, tileIndex: index),
    );
    final list2 = List.generate(
      30,
      (int index) => TestTile(listIndex: 1, tileIndex: index),
    );

    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              const Text('List1'),
              ...list1,
            ]),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Text('List2'),
              ...list2,
            ]),
          ),
        ],
      ),
    );
  }
}
