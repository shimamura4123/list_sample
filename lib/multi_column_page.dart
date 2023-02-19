import 'package:flutter/material.dart';
import 'package:list_sample/widgets/test_tile.dart';

class MultiColumnPage extends StatelessWidget {
  const MultiColumnPage({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('List1'),
            ...list1,
            const Text('List2'),
            ...list2,
          ],
        ),
      ),
    );
  }
}
