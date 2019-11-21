import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/person.jpg", "Julio Noguera", "Software Developer", "Ruby on Rails, React, Flutter,  HTML5, CSS3"),
        Review("assets/img/person.jpg", "Juan Estigarribia", "DevOps", "Esto es un comentario"),
        Review("assets/img/person.jpg", "Luis Cardozo", "Product Manager", "Esto es un comentario")
      ],
    );
  }
}