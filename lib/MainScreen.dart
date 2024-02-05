import 'dart:convert';

import 'package:departuree/DetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'Model.dart';
import 'main.dart';

class MainScreen extends StatefulWidget {

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ThemeController themeController = Get.put(ThemeController());

  Model model = Model(chapterNumber: 0, chapterSummary: '', chapterSummaryHindi: '', id:0, imageName: '', name: '', nameMeaning: '', nameTranslation: '', nameTransliterated: '', versesCount: 0);
  List<Model> modelList = [];
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bhagvat Geeta"),
        actions: [
          IconButton(
              onPressed: () {
                themeController.toggleTheme();
              },
              icon: Obx(() {
                return themeController.isDark.value
                    ? Icon(Icons.dark_mode_outlined)
                    : Icon(Icons.light_mode_outlined);
              })),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Stack(
        children: [
          ListView.builder(
            padding: EdgeInsets.all(30),
            itemCount: modelList.length,
            itemBuilder: (context, index) {
              Model model = modelList[index];
              return
                InkWell(
                onTap: () {
                  print('Tapped on ${model.name}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(model: model),
                    ),
                  );
                },
                child:
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.50),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 40,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(modelList[index].id.toString(),
                      style: TextStyle(fontSize: 20),)
                      ,
                      SizedBox(width:10),
                      Text(modelList[index].name.toString(),
                        style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
  Future<void> getData() async {
    String dataString = await rootBundle.loadString('assets/Bhagvatgeeta.json');
    List jsonData = jsonDecode(dataString);
    print(modelList);
    setState(() {
      modelList = Model.parseList(jsonData);
    });
  }

}