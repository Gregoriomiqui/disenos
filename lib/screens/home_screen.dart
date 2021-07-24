import 'package:flutter/material.dart';
import 'package:disenos/widgets/background.dart';
import 'package:disenos/widgets/page_title.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [ 

          //background
          Background(),

          // Home Body
          _HomeBody(),

      ],)
   );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos
          PageTitle()
        ],
      ),
    );
  }
}