import 'package:anboba/main.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anboboa"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 64, 169, 255),
      ),
      body: backGround(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.arrow_forward),
        label: Text('Lets Start'),
      ),
    );
  }

  Container backGround() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/gas.jpg'),
          fit: BoxFit.cover,
          repeat: ImageRepeat.noRepeat,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "WELCOME You",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 248, 248, 248)),
              ),
              Text(
                "To ANBOBA",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Color.fromARGB(255, 23, 101, 121)),
              )
            ],
          ),
        ],
      ),
    );
  }
}


/*
*ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [Colors.blue, Colors.black87],
        begin: Alignment.center,
        end: Alignment.bottomCenter,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      */


      