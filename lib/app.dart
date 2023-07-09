import 'dart:convert';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' show get;
import 'image_model.dart';
import 'image_list.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> imagese = [];

  void fetchImage() async {
    counter++;
    Uri finalUrl = Uri.https("jsonplaceholder.typicode.com/photos/$counter");
    //"https://jsonplaceholder.typicode.com/photos/$counter";
    var response = await get(finalUrl);
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      imagese.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(imagese),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_a_photo),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: Text("Let's see some Images"),
        ),
      ),
    );
  }
}
