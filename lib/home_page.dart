import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testflutterapp/controller/apiDataCollection.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider<ApiDataCollection>(
        create: (_)=> ApiDataCollection(),
        builder: (context,_){
          return CustomScrollView(
            slivers: [],
          );
        },
      ),
    );
  }
}