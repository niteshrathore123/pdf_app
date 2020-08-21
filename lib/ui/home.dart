import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';

PdfOffline() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: PDF.assets(
          "assests/python.pdf",
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    ),
  );
}

PdfOnline() {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: PDF.network(
            "https://github.com/niteshrathore123/songs/raw/master/SDE-PROBLEMS.pdf",
            height: double.infinity,
            width: double.infinity,
          ),
        ),
      ));
}
