import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/views/user_list_view.dart';
import 'package:reminder_app/viewmodels/user_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewModel(),
      child: const MaterialApp(
        title: 'User Details',
        home: UserListView(),
      ),
    );
  }
}
