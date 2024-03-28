import 'package:flutter/material.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // @override
  // void initState() {
  //   CurrencyRepository().getCurrencyList();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your value in many of curencies'),
      ),
      body: Center(
          child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(
          color: Color.fromARGB(255, 16, 36, 5),
        ),
        itemCount: 10,
        itemBuilder: (context, i) => const ListTile(
          leading: Text(
            'currency',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          trailing: Text(
            '20,12',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
        ),
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     CurrencyRepository().getCurrencyList();
      //   },
      //   child: const Icon(Icons.download),
      // ),
    );
  }
}
