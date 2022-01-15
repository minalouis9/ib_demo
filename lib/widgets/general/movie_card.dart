import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ib_demo/globals/globals_index.dart';

class MovieCard extends StatelessWidget {
  final String posterUrl;
  final bool isNetworkImage;

  const MovieCard({Key? key, required this.posterUrl, required this.isNetworkImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isNetworkImage) {
      return CachedNetworkImage(
        imageUrl: kBasePosterUrl + posterUrl,
        imageBuilder: (context, imageProvider) =>
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                    image: imageProvider, fit: BoxFit.cover),
              ),
            ),
        placeholder: (context, url) =>
        const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          image: DecorationImage(
              image: FileImage(File(posterUrl)), fit: BoxFit.cover),
        ),
      );
    }
  }
}
