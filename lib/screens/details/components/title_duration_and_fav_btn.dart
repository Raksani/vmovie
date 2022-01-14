import 'package:flutter/material.dart';
import 'package:vmovie_app/models/movie.dart';

import '../../../constants.dart';

class TitleDurationAndFabBtn extends StatelessWidget {
  const TitleDurationAndFabBtn({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: kDefaultPadding / 2),
                Row(
                  children: <Widget>[
                    Text(
                      movie.year,
                      style: const TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      movie.movieRatings,
                      style: const TextStyle(color: kTextLightColor),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      movie.duration,
                      style: const TextStyle(color: kTextLightColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
