import 'package:e_learning/model/course.dart';
import 'package:flutter/material.dart';

class MateriScreen extends StatefulWidget {
  String img;

  MateriScreen(this.img, ); //{required Course course}

  @override
  State<MateriScreen> createState() => _MateriScreen();
}

class _MateriScreen extends State<MateriScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 238, 236, 236),
                image: DecorationImage(
                    image: AssetImage("assets/images/${widget.img}.png")),
              ),
            ),
            SizedBox(height: 15,),
            Text("${widget.img} ")
          ],
        ),
      ),
    );
  }
}
