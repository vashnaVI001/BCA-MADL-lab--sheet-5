import 'package:flutter/material.dart';

// 1. Display five items using ListView.
class Program1 extends StatelessWidget {
  const Program1({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 1: ListView')),
    body: ListView(children: const [
      ListTile(title: Text('Apple')), ListTile(title: Text('Banana')),
      ListTile(title: Text('Mango')), ListTile(title: Text('Orange')),
      ListTile(title: Text('Grapes')),
    ]),
  );
}

// 2. ListTile with leading icon, title and subtitle.
class Program2 extends StatelessWidget {
  const Program2({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 2: ListTile')),
    body: ListView(children: const [
      ListTile(leading: Icon(Icons.school), title: Text('College'), subtitle: Text('Education')),
      ListTile(leading: Icon(Icons.book), title: Text('Books'), subtitle: Text('Study material')),
      ListTile(leading: Icon(Icons.computer), title: Text('Computer'), subtitle: Text('Technology')),
    ]),
  );
}

// 3. Numbers 1–100 using ListView.builder.
class Program3 extends StatelessWidget {
  const Program3({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 3: Numbers 1–100')),
    body: ListView.builder(
      itemCount: 100,
      itemBuilder: (_, index) => ListTile(title: Text('Number ${index + 1}')),
    ),
  );
}

// 4. Names from a Dart List using ListView.builder.
class Program4 extends StatelessWidget {
  const Program4({super.key});
  static const names = ['Aarav', 'Ananya', 'Rahul', 'Priya', 'Rohan', 'Neha'];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 4: Names')),
    body: ListView.builder(
      itemCount: names.length,
      itemBuilder: (_, index) => ListTile(title: Text(names[index])),
    ),
  );
}

// 5. ListView.separated.
class Program5 extends StatelessWidget {
  const Program5({super.key});
  static const items = ['Home', 'Profile', 'Settings', 'Help', 'About'];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 5: Separated list')),
    body: ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const Divider(thickness: 1),
      itemBuilder: (_, index) => ListTile(title: Text(items[index])),
    ),
  );
}

// 6. Horizontal list using scrollDirection.
class Program6 extends StatelessWidget {
  const Program6({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 6: Horizontal list')),
    body: SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(10, (i) => Container(
          width: 120, margin: const EdgeInsets.all(8),
          alignment: Alignment.center, color: Colors.indigo.shade100,
          child: Text('Item ${i + 1}', style: const TextStyle(fontSize: 18)),
        )),
      ),
    ),
  );
}

// 7. Grid of icons using GridView.count.
class Program7 extends StatelessWidget {
  const Program7({super.key});
  static const icons = [Icons.home, Icons.star, Icons.favorite, Icons.person,
    Icons.phone, Icons.email, Icons.map, Icons.settings, Icons.camera];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 7: Icon grid')),
    body: GridView.count(
      crossAxisCount: 3,
      children: icons.map((icon) => Card(
        child: Center(child: Icon(icon, size: 42, color: Colors.indigo)),
      )).toList(),
    ),
  );
}

// 8. Colored boxes using GridView.builder.
class Program8 extends StatelessWidget {
  const Program8({super.key});
  static const colors = [Colors.red, Colors.blue, Colors.green, Colors.orange,
    Colors.purple, Colors.teal, Colors.pink, Colors.amber, Colors.cyan];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 8: Colored grid')),
    body: GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
      itemCount: colors.length,
      itemBuilder: (_, index) => Container(
        color: colors[index],
        child: Center(child: Text('Box ${index + 1}',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
      ),
    ),
  );
}

// 9. Product list with Dart model class.
class Product {
  final String name;
  final double price;
  const Product(this.name, this.price);
}
class Program9 extends StatelessWidget {
  const Program9({super.key});
  static const products = [
    Product('Notebook', 60), Product('Pen', 15),
    Product('Backpack', 850), Product('Water bottle', 220),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 9: Products')),
    body: ListView.builder(
      itemCount: products.length,
      itemBuilder: (_, index) {
        final product = products[index];
        return ListTile(
          leading: const Icon(Icons.shopping_bag_outlined),
          title: Text(product.name),
          trailing: Text('₹${product.price.toStringAsFixed(2)}'),
        );
      },
    ),
  );
}

// 10. StatelessWidget vs StatefulWidget.
class Program10 extends StatefulWidget {
  const Program10({super.key});
  @override
  State<Program10> createState() => _Program10State();
}
class _Program10State extends State<Program10> {
  int count = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 10: Widget types')),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      const Text('StatelessWidget: fixed text example'),
      const Text('This text does not change.'),
      const SizedBox(height: 20),
      const Text('StatefulWidget: changing counter'),
      Text('$count', style: Theme.of(context).textTheme.headlineLarge),
      ElevatedButton(onPressed: () => setState(() => count++),
        child: const Text('Change state')),
    ])),
  );
}

// 11. Counter that increases using setState().
class Program11 extends StatefulWidget {
  const Program11({super.key});
  @override
  State<Program11> createState() => _Program11State();
}
class _Program11State extends State<Program11> {
  int count = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 11: Counter')),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      Text('$count', style: Theme.of(context).textTheme.displayLarge),
      ElevatedButton(onPressed: () => setState(() => count++),
        child: const Text('Increment')),
    ])),
  );
}

// 12. Increment, decrement and reset.
class Program12 extends StatefulWidget {
  const Program12({super.key});
  @override
  State<Program12> createState() => _Program12State();
}
class _Program12State extends State<Program12> {
  int count = 0;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 12: Counter controls')),
    body: Center(child: Column(mainAxisSize: MainAxisSize.min, children: [
      Text('$count', style: Theme.of(context).textTheme.displayLarge),
      Wrap(spacing: 8, children: [
        ElevatedButton(onPressed: () => setState(() => count++), child: const Text('Increment')),
        ElevatedButton(onPressed: () => setState(() => count--), child: const Text('Decrement')),
        OutlinedButton(onPressed: () => setState(() => count = 0), child: const Text('Reset')),
      ]),
    ])),
  );
}

// 13. Add list items with TextField and button.
class Program13 extends StatefulWidget {
  const Program13({super.key});
  @override
  State<Program13> createState() => _Program13State();
}
class _Program13State extends State<Program13> {
  final controller = TextEditingController();
  final items = <String>['First item', 'Second item'];
  void addItem() {
    final value = controller.text.trim();
    if (value.isEmpty) return;
    setState(() { items.add(value); controller.clear(); });
  }
  @override
  void dispose() { controller.dispose(); super.dispose(); }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 13: Add item')),
    body: Column(children: [
      Padding(padding: const EdgeInsets.all(12), child: Row(children: [
        Expanded(child: TextField(controller: controller,
          decoration: const InputDecoration(labelText: 'New item', border: OutlineInputBorder()),
          onSubmitted: (_) => addItem())),
        const SizedBox(width: 8), ElevatedButton(onPressed: addItem, child: const Text('Add')),
      ])),
      Expanded(child: ListView.builder(itemCount: items.length,
        itemBuilder: (_, i) => ListTile(title: Text(items[i])))),
    ]),
  );
}

// 14. Delete an item by tapping delete icon.
class Program14 extends StatefulWidget {
  const Program14({super.key});
  @override
  State<Program14> createState() => _Program14State();
}
class _Program14State extends State<Program14> {
  final items = <String>['Apple', 'Banana', 'Mango', 'Orange'];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 14: Delete item')),
    body: ListView.builder(itemCount: items.length, itemBuilder: (_, i) => ListTile(
      title: Text(items[i]),
      trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.red),
        onPressed: () => setState(() => items.removeAt(i))),
    )),
  );
}

// 15. Remove items with Dismissible.
class Program15 extends StatefulWidget {
  const Program15({super.key});
  @override
  State<Program15> createState() => _Program15State();
}
class _Program15State extends State<Program15> {
  final items = <String>['Swipe this item', 'Another item', 'One more item'];
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Program 15: Swipe to remove')),
    body: ListView.builder(itemCount: items.length, itemBuilder: (context, i) {
      final item = items[i];
      return Dismissible(
        key: ValueKey(item),
        background: Container(color: Colors.red, alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 20),
          child: const Icon(Icons.delete, color: Colors.white)),
        secondaryBackground: Container(color: Colors.red, alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(Icons.delete, color: Colors.white)),
        onDismissed: (_) => setState(() => items.remove(item)),
        child: ListTile(title: Text(item)),
      );
    }),
  );
}

// 16. Search/filter a list of names.
class Program16 extends StatefulWidget {
  const Program16({super.key});
  @override
  State<Program16> createState() => _Program16State();
}
class _Program16State extends State<Program16> {
  static const names = ['Aarav', 'Ananya', 'Rahul', 'Priya', 'Rohan', 'Neha', 'Prashant'];
  String query = '';
  @override
  Widget build(BuildContext context) {
    final filtered = names.where((name) => name.toLowerCase().contains(query.toLowerCase())).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Program 16: Search names')),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(12), child: TextField(
          decoration: const InputDecoration(prefixIcon: Icon(Icons.search),
            labelText: 'Search names', border: OutlineInputBorder()),
          onChanged: (value) => setState(() => query = value),
        )),
        Expanded(child: filtered.isEmpty
          ? const Center(child: Text('No matching names'))
          : ListView.builder(itemCount: filtered.length,
              itemBuilder: (_, i) => ListTile(title: Text(filtered[i])))),
      ]),
    );
  }
}

// 17. Student record app: add, search by name, list and delete.
class Student {
  final String name;
  final String rollNumber;
  final String course;
  const Student({required this.name, required this.rollNumber, required this.course});
}
class Program17 extends StatefulWidget {
  const Program17({super.key});
  @override
  State<Program17> createState() => _Program17State();
}
class _Program17State extends State<Program17> {
  final nameController = TextEditingController();
  final rollController = TextEditingController();
  final courseController = TextEditingController();
  final searchController = TextEditingController();
  final students = <Student>[];
  String query = '';

  void addStudent() {
    final name = nameController.text.trim();
    final roll = rollController.text.trim();
    final course = courseController.text.trim();
    if (name.isEmpty || roll.isEmpty || course.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter name, roll number and course.')));
      return;
    }
    if (students.any((s) => s.rollNumber.toLowerCase() == roll.toLowerCase())) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Roll number already exists.')));
      return;
    }
    setState(() {
      students.add(Student(name: name, rollNumber: roll, course: course));
      nameController.clear(); rollController.clear(); courseController.clear();
    });
  }

  @override
  void dispose() {
    nameController.dispose(); rollController.dispose();
    courseController.dispose(); searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final visible = students.where((s) => s.name.toLowerCase().contains(query.toLowerCase())).toList();
    return Scaffold(
      appBar: AppBar(title: const Text('Program 17: Student records')),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(12), child: Column(children: [
          TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Student name', border: OutlineInputBorder())),
          const SizedBox(height: 8),
          TextField(controller: rollController, decoration: const InputDecoration(labelText: 'Roll number', border: OutlineInputBorder())),
          const SizedBox(height: 8),
          TextField(controller: courseController, decoration: const InputDecoration(labelText: 'Course', border: OutlineInputBorder())),
          const SizedBox(height: 8),
          SizedBox(width: double.infinity, child: ElevatedButton.icon(
            onPressed: addStudent, icon: const Icon(Icons.person_add), label: const Text('Add student'))),
          TextField(controller: searchController,
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search), labelText: 'Search by name', border: OutlineInputBorder()),
            onChanged: (value) => setState(() => query = value)),
        ])),
        Expanded(child: visible.isEmpty
          ? const Center(child: Text('No student records found'))
          : ListView.builder(itemCount: visible.length, itemBuilder: (_, i) {
              final student = visible[i];
              return Card(margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.school)),
                  title: Text(student.name),
                  subtitle: Text('Roll No: ${student.rollNumber}\nCourse: ${student.course}'),
                  isThreeLine: true,
                  trailing: IconButton(icon: const Icon(Icons.delete, color: Colors.red),
                    tooltip: 'Delete student',
                    onPressed: () => setState(() => students.remove(student))),
                ));
            })),
      ]),
    );
  }
}
