import 'package:flutter/material.dart';
import 'package:list_sample/widgets/test_tile.dart';

class MultiListViewPage extends StatelessWidget {
  const MultiListViewPage({super.key});

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

    final listView1 = ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          index == 0 ? const Text('List1') : list1[index - 1],
      itemCount: list1.length + 1,
    );
    final listView2 = ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          index == 0 ? const Text('List2') : list2[index - 1],
      itemCount: list2.length + 1,
    );

    final listItems = [
      listView1,
      listView2,
    ];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: ((context, index) => listItems[index]),
        itemCount: listItems.length,
      ),
    );
  }
}
