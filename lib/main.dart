import 'package:flutter/material.dart';
import 'package:rachman_mvp/ui/presenter/Presenter.dart';
import 'package:rachman_mvp/ui/views/CounterComponent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(BasicCounterPresenter(), title: 'Flutter Demo Home Page'),
    );
  }
}