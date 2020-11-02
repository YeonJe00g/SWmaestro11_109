import 'dart:io';

import 'package:flutter/material.dart';
import 'package:app109/dataCenter.dart';
import 'package:app109/webView/webView.dart';

class selectUser extends StatefulWidget {
  selectUser({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _selectUserState createState() => _selectUserState();
}

class _selectUserState extends State<selectUser> {
  var namesList = new List<String>();
  var idsList = new List<String>();

  @override
  void initState() {
    super.initState();
    namesList = userNameList;
    idsList = userIdList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사용자 선택'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: namesList.length,
        itemBuilder: (BuildContext context, int index) {
          return RaisedButton(
            //height: 50,
            //color: Colors.amber,
            child: Center(
              child: Text(
                '${namesList[index]}',
                style: TextStyle(fontSize: 30)
              )
            ),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => webView(userId: idsList[index]),
                ),
              );
            },
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(50.0)
            ),
            color: Colors.blue,
          );
        }
      )
    );
  }
}