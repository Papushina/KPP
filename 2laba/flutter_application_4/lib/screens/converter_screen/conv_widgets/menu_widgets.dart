import 'package:flutter/material.dart';

Widget customDropDown(
    List<String> items, String value, void Function(String) onChange) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: DropdownButton<String>(
      value: value,
      onChanged: (val) {
        if (val != null) {
          onChange(val);
        }
      },
      items: items.map<DropdownMenuItem<String>>((String val) {
        return DropdownMenuItem(
          value: val,
          child: Text(val),
        );
      }).toList(),
    ),
  );
}
