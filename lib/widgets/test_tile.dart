import 'package:flutter/material.dart';

class TestTile extends StatefulWidget {
  const TestTile({super.key, required this.listIndex, required this.tileIndex});

  final int listIndex;
  final int tileIndex;

  @override
  State<StatefulWidget> createState() => TestTileState();
}

class TestTileState extends State<TestTile> {
  @override
  void initState() {
    super.initState();

    print('initState List:${widget.listIndex} : Tile:${widget.tileIndex}');
  }

  @override
  void dispose() {
    super.dispose();

    print('dispose List:${widget.listIndex} : Tile:${widget.tileIndex}');
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('List:${widget.listIndex} : Tile:${widget.tileIndex}'),
    );
  }
}
