import 'package:flutter/material.dart';
import 'package:pdf_app/ui/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Pdf App"),
      ),
      body: PdfApp(),
    ),
  ));
}

class PdfApp extends StatefulWidget {
  @override
  _PdfAppState createState() => _PdfAppState();
}

class _PdfAppState extends State<PdfApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfOffline()),
            );
          },
          child: Container(
            margin: EdgeInsets.all(10.0),
            height: 200,
            width: double.infinity,
            child: Card(
              color: Colors.greenAccent,
              child: Row(
                children: [
                  Icon(
                    Icons.picture_as_pdf,
                    size: 70,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Load PDF from Local Storage",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfOnline()),
            );
          },
          child: Container(
            margin: EdgeInsets.all(10.0),
            height: 200,
            width: double.infinity,
            child: Card(
              color: Colors.greenAccent,
              child: Row(
                children: [
                  Icon(
                    Icons.picture_as_pdf,
                    size: 70,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Load PDF from Internet",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
