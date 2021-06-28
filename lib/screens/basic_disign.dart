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
          Title(),

          //Button Section
          ButtonSection(),

          // Description
          Description(),

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


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: "CALL",),
          CustomButton(icon: Icons.room_outlined, text: "ROUTE"),
          CustomButton(icon: Icons.share, text:"SHARE"),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  
  final IconData icon;
  final String text;
   
  const CustomButton({
    Key? key, 
    required this.icon,
    required this.text,    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: 80.0,
      child: IconButton(
        onPressed: (){},
        icon: Column(
           children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Icon(this.icon, color: Colors.blue),
            ),
            Text(this.text, style: TextStyle(color: Colors.blue))
          ],
        ),
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"));
  }
}