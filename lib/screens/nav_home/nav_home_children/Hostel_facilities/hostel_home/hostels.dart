import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../schools/knust.dart';
import '../schools/ucc.dart';
import '../schools/uenr.dart';
import '../schools/ug_legon.dart';

class Hostels extends StatefulWidget {
  const Hostels({Key? key}) : super(key: key);

  @override
  State<Hostels> createState() => _HostelsState();
}

class _HostelsState extends State<Hostels> {

  static const List<Tab> _tabs = [
    Tab(icon: Text('UENR')),
    Tab(icon: Text('KNUST')),
    Tab(icon: Text('UG')),
    Tab(icon: Text('UCC')),
  ];

  static const List<Widget> _views = [
    Center(child: Text('content for tab one'),),
    Center(child: Text('content for tab 2'),),
    Center(child: Text('content for tab 3'),),
    Center(child: Text('content for tab 4'),),
  ];


  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return  SafeArea(
        child: Scaffold(
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: deviceSize.width * 0.05,
                  vertical: deviceSize.height * 0.05),
              child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text('HELLO Titus',style: GoogleFonts.lato(
                              textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5),
                            ),),
                            Text('WELCOME to your Number one Hostel App',style: GoogleFonts.lato(
                              textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5),
                            ),),
                          ],
                        ),
                        Expanded(child: Container()),
                        const CircleAvatar(
                          radius: 20,
                          child: Icon(Icons.person_off_outlined),
                        ),
                      ],
                    ),
                    DefaultTabController(
                      length: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          TabBar(
                            labelColor: Colors.green,
                            unselectedLabelColor: Colors.black,
                            tabs: _tabs,

                            // [
                            //   Tab(text: 'UENR'),
                            //   // Tab(text: 'KNUST'),
                            //   // Tab(text: 'UG'),
                            //   // Tab(text: 'UCC'),
                            // ],
                          ),
                          TabBarView(children: _views),
                          //TabBar views

                          // UENR(),
                          // KNUST(),
                          // UniversityOfGhana(),
                          // UCC(),
                        ],
                      ),
                    ),
                  ]
              )
          ),
        )
    );
  }
}
