import 'dart:convert';

import 'package:banking_management/my_app.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init('bank');
  await storeInitialData();
  runApp(const MyApp());
}

Future<void> storeInitialData() async {
  GetStorage store = GetStorage('bank');
  const List<Map<String, dynamic>> customers = [
    {
      'name': "Pratyush Tripathy",
      'accNo': "2105105032",
      'balance': 10000,
    },
    {
      'name': "Debasis Sahu",
      'accNo': "2105105014",
      'balance': 20000,
    },
    {
      'name': "Lopamudra Behera",
      'accNo': "2105105024",
      'balance': 22000,
    },
    {
      'name': "Mrutyunjaya Patra",
      'accNo': "2105105021",
      'balance': 18000,
    },
    {
      'name': "Amit Kumar Mohanty",
      'accNo': "2105105003",
      'balance': 8000,
    },
    {
      'name': "Abhishek Satapathi",
      'accNo': "2105105001",
      'balance': 20000,
    },
    {
      'name': "Jiban Krushna Sahu",
      'accNo': "2105105017",
      'balance': 10000,
    },
    {
      'name': "Udaya Bhanu Heich",
      'accNo': "2105105061",
      'balance': 25000,
    },
    {
      'name': "Chiraswati Mishra",
      'accNo': "2105105013",
      'balance': 15000,
    },
    {
      'name': "Madhuchanda Karan",
      'accNo': "2105105025",
      'balance': 21000,
    },
  ];
  final List<String> dataToStore =
      customers.map((user) => jsonEncode(user)).toList();
  int count = 0;
  for (String element in dataToStore) {
    await store.writeIfNull('c${count++}', element);
  }
}
