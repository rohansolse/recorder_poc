import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bottom Sheet with Checklist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> items = List.generate(5, (index) => Item('Item $index', false));
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Bottom Sheet with Checklist')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: () => _showBottomSheet(context),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter state) {
            var filteredItems = items.where((item) => item.title.toLowerCase().contains(_searchController.text.toLowerCase())).toList();
            return Container(
              decoration: const BoxDecoration(
                color: Colors.white, // The background color of your bottom sheet
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(0, 102, 78, 1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Filter',
                          style: TextStyle(
                            color: Color.fromRGBO(250, 250, 250, 1),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Archivo',
                            fontSize: 22,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Color.fromRGBO(250, 250, 250, 1),
                          ),
                          onPressed: () => Navigator.pop(context),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          'Patient Name',
                          style: TextStyle(
                            color: Color.fromRGBO(86, 89, 91, 1),
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 6),
                        TextField(
                          controller: _searchController,
                          decoration: const InputDecoration(
                            labelText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(210, 210, 210, 1), width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(210, 210, 210, 1), width: 1.0),
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                          ),
                          onChanged: (value) {
                            state(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                          title: Text(filteredItems[index].title),
                          value: filteredItems[index].checked,
                          onChanged: (bool? value) {
                            state(() {
                              filteredItems[index].checked = value!;
                            });
                          },
                          activeColor: const Color.fromRGBO(0, 152, 116, 1),
                          controlAffinity: ListTileControlAffinity.leading,
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        child: const Text('Reset'),
                        onPressed: () {
                          state(() {
                            for (var item in items) {
                              item.checked = false;
                            }
                          });
                        },
                      ),
                      ElevatedButton(
                        child: const Text('Submit'),
                        onPressed: () {
                          Navigator.pop(context);
                          // Handle your logic on submit here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class Item {
  String title;
  bool checked;

  Item(this.title, this.checked);
}
