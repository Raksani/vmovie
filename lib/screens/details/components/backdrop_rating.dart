import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vmovie_app/models/movie.dart';
import '../../../constants.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key? key,
    required this.size,
    required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 40% of total height
      height: size.height * 0.45,
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(movie.backdrop),
              ),
            ),
          ),
          // Rating Box
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              // cover 60% of total width
              width: size.width * 0.6,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 5),
                    blurRadius: 50,
                    color: const Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/icons/star_fill.svg"),
                        const SizedBox(height: kDefaultPadding / 4),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: [
                              TextSpan(
                                text: "${movie.rating}/",
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                              const TextSpan(text: "10\n"),
                              TextSpan(
                                text: movie.ratingCount,
                                style: const TextStyle(color: kTextLightColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF8F406),
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: Text(
                            movie.rating,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        const SizedBox(height: kDefaultPadding / 4),
                        const Text(
                          "IMDb",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          // Back Button
          const SafeArea(child: CloseButton()),
        ],
      ),
    );
  }
}
