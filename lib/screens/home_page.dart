import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/models/catalogue.dart';
import 'package:practice/widgets/drawer.dart';
import 'package:practice/widgets/item_widget.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogue App"),
        // leading: Text("Catalogue App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          // itemCount: CatalogueModel.items.length,
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
