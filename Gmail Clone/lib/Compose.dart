import 'package:flutter/material.dart';

class Compose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Compose"),
        centerTitle: false,
         backgroundColor: Colors.red,
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.attachment, color: Colors.white),
            tooltip: 'Attachment',
            onPressed: null,
  ),IconButton(
            icon: Icon(Icons.send, color: Colors.white),
            tooltip: 'Send',
            onPressed: null,
  ),IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            tooltip: 'More',
            onPressed: null,
  ),
        ]
      ),
    );
  }
  }