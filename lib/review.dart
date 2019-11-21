import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pat;
  String name = "juulio";

  Review(this.pat, name);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text(
        name
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