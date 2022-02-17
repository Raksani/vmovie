import 'package:flutter/material.dart';
import 'package:vmovie_app/constants.dart';
import 'package:vmovie_app/models/casts.dart';

class CastCard extends StatelessWidget {
  final Casts cast;

  const CastCard({Key? key, required this.cast}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: kDefaultPadding),
      width: 100,
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://freepikpsd.com/file/2019/10/person-logo-png-3.png")),
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          Text(
            cast.originalName,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
            maxLines: 2,
          ),
          const SizedBox(height: kDefaultPadding / 4),
          Text(
            cast.movieName,
            maxLines: 1,
            textAlign: TextAlign.center,
            style: const TextStyle(color: kTextLightColor),
          ),
        ],
      ),
    );
  }
}
