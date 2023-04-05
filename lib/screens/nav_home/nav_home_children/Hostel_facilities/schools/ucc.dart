import 'package:flutter/material.dart';

class UCC extends StatelessWidget {
  const UCC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400, //height of TabBarView
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
        ),
        child: const TabBarView(children: <Widget>[
          Center(
            child: Text('UCC', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
        ],
        )
    );
  }
}
