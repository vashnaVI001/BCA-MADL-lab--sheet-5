import 'package:flutter/material.dart';
import 'programs.dart';

void main() => runApp(const LabSheetApp());

class LabSheetApp extends StatelessWidget {
  const LabSheetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BCA303P Lab Sheet 5',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.indigo, useMaterial3: true),
      home: const ProgramMenu(),
    );
  }
}

class ProgramMenu extends StatelessWidget {
  const ProgramMenu({super.key});

  static final List<Widget Function()> programs = [
    () => const Program1(), () => const Program2(), () => const Program3(),
    () => const Program4(), () => const Program5(), () => const Program6(),
    () => const Program7(), () => const Program8(), () => const Program9(),
    () => const Program10(), () => const Program11(), () => const Program12(),
    () => const Program13(), () => const Program14(), () => const Program15(),
    () => const Program16(), () => const Program17(),
  ];

  static const titles = [
    'ListView: Five items', 'ListTile: Icon, title and subtitle',
    'ListView.builder: Numbers 1–100', 'ListView.builder: Names from a Dart List',
    'ListView.separated: Dividers', 'Horizontal scrolling list',
    'GridView.count: Icon grid', 'GridView.builder: Colored boxes',
    'Product list with model class', 'StatelessWidget vs StatefulWidget',
    'Counter using setState()', 'Increment, decrement and reset',
    'Add item with TextField', 'Delete item with delete icon',
    'Dismissible: Swipe to remove', 'Search/filter names',
    'Student record management application',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('BCA303P • Lab Sheet 5')),
    body: ListView.separated(
      itemCount: titles.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(child: Text('${index + 1}')),
        title: Text(titles[index]),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => programs[index](),
        )),
      ),
    ),
  );
}
