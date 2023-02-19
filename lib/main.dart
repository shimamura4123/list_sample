import 'package:flutter/material.dart';

import './multi_column_page.dart';
import './multi_listview_page.dart';
import './sliver_multi_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildTransitionButtons(),
        ),
      ),
    );
  }

  List<Widget> _buildTransitionButtons() {
    return [
      TextButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const MultiColumnPage()),
        ),
        child: const Text('Multi Column Page'),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const MultiListViewPage()),
        ),
        child: const Text('Multi Listview Page'),
      ),
      TextButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => const SliverMultiListPage()),
        ),
        child: const Text('Sliver Multi List Page'),
      ),
    ];
  }
}
