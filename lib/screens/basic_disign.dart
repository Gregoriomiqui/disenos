import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          Image(image: AssetImage('assets/landscape.jpg')),

          // Titulo
          Title()

        ],
      )
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Oeschinen Lake Campground", style: TextStyle( fontWeight: FontWeight.bold)),
              Text("Kandersteg Switzerland", style: TextStyle( color: Colors.black45 )),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text("41")

        ],
      ),
    );
  }
}