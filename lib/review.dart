import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pat;
  String name = "Julio";
  String details = "1 review 5 photos";
  String comment = "Este es un gran comentario";

  Review(this.pat, name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0
        ),
      ),
    );

    final UserDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[

      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),

      width: 90.0,
      height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(pat)
          )
        )
    );

    return Row(
      children: <Widget>[
        photo
      ],
    );
  }
}