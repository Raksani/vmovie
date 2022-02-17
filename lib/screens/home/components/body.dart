import 'package:flutter/material.dart';
import 'package:vmovie_app/constants.dart';
import 'categories.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          Categorylist(),
          SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
