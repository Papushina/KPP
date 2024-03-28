import 'package:flutter/material.dart';
import 'package:flutter_application_4/api_repository/currency_api.dart';
import 'conv_widgets/menu_widgets.dart';

class ConvertScreen extends StatefulWidget {
  const ConvertScreen({super.key});

  @override
  State<ConvertScreen> createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  ApiClient client = ApiClient();
  List<String> currencies = [];
  String from = "";
  String to = "";
  late double rate;
  String result = "";

  List<Widget> list = [
    // DropdownMenuWidget(
    //   option: "Select 1st currency",
    // ),
    // DropdownMenuWidget(
    //   option: "Select 2nd currency",
    // ),
  ];

  Future<List<String>> getCurrencyList() async {
    return await client.getCurrencies();
  }

  @override
  void initState() {
    super.initState();
    (() async {
      List<String> list = await client.getCurrencies();
      setState(() {
        currencies = list;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Let`s convert your money!'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200.0,
                child: const Text(
                  "Currency Converter",
                  style: TextStyle(
                      color: Color.fromARGB(255, 4, 23, 4),
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Center(
                      child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const TextField(
                    keyboardType:
                        TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 195, 255, 197),
                      labelText: 'Enter value',
                      labelStyle: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18.0),
                      border: OutlineInputBorder(),
                    ),
                    style: TextStyle(
                        color: Color.fromARGB(255, 6, 27, 13),
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customDropDown(currencies, from, (val) {
                        setState(() {
                          from = val;
                        });
                      }),
                      FloatingActionButton(
                        onPressed: () {},
                        elevation: 0.0,
                        backgroundColor: Colors.green,
                        child: const Icon(Icons.swap_horiz),
                      ),
                      customDropDown(currencies, to, (val) {
                        setState(() {
                          to = val;
                        });
                      }),
                    ],
                  )
                ],
              )))
            ],
          ),
        ),
      ),
    );
  }
}
