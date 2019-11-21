import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pat;
  String name;
  String details;
  String comment;

  Review(this.pat, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    //BLANK START
    final start_border = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),

      ),
    );

    // HALF START
    final start_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),

      ),
    );

    // COMPLETE START
    final start = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );



    // USER INFORMATION
    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    // USER COMMENT
    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
          fontWeight: FontWeight.w900
        ),
      ),
    );

    // USER NAME
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

    // DETAILS OF USER REVIEW
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    // PHOTO OF THE USER
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
        photo,
        userDetails,
      ],
    );
  }
}