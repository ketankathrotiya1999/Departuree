import 'package:departuree/Model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Model model;
   DetailScreen({required this.model});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
            Container(
                padding: EdgeInsets.only(left:150,top: 15),
                height: 50,
                  width: 350,
                  child: Text(
                      widget.model.chapterNumber.toString())),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left:80,top: 15),
                height: 50,
                width: 350,
                child: Text(
                    widget.model.nameMeaning)),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left:110,top: 15),
                height: 50,
                width: 350,
                child: Text(
                    widget.model.imageName)),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left:110,top: 15),
                height: 50,
                width: 350,
                child: Text(
                    widget.model.nameTranslation)),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left:10,top: 15),
                height: 300,
                width: 350,
                child: Text(
                    widget.model.chapterSummary)),
            SizedBox(height: 10),
            Container(
                padding: EdgeInsets.only(left:10,top: 15),
                height: 250,
                width: 350,
                child: Text(
                    widget.model.chapterSummaryHindi)),
            SizedBox(height: 10),



          ],
                    ),
        ),
      ),
    );
  }
}
