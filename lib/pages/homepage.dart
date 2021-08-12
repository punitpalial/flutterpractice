import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_codepur/models/catalog.dart';
import 'package:flutter_application_codepur/utils/routes.dart';
import 'package:flutter_application_codepur/widgets/drawer.dart';
import 'package:flutter_application_codepur/widgets/item_widget.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 31;

  final String name = "Codepur";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData[
        "products"]; //humein decodedData mein se sirf product key ka data chahiye
    CatalogModel
            .items = //yahan humein items ki list define kari Item ke naam se
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    //^yahan hum keh rahey hai ki list kajo data hai from iss jagah se aa raha hai,i.e, productData se
    //uskey baad """___.map___""" kar diya taki uss aney waley data ko map kar sakein
    //last mein """__.tolist___""" uss map se aney wale data ko finally list mein convert karney ke liye
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //ab dummy ke 50 iphone ki zarurat nahi:=> // final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(
        //   color: Colors.black,

        title: Text(
          "Feed",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: CatalogModel.items[index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
