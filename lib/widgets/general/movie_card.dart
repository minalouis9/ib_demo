import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ib_demo/globals/globals_index.dart';

class MovieCard extends StatelessWidget {
  final String? posterUrl;
  final bool isNetworkImage;

  const MovieCard({Key? key, required this.posterUrl, required this.isNetworkImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(posterUrl != null){
      if (isNetworkImage) {
        return CachedNetworkImage(
          imageUrl: kBasePosterUrl + posterUrl!,
          imageBuilder: (context, imageProvider) =>
              Container(
                constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height * 0.6),
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
          constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height * 0.6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
                image: FileImage(File(posterUrl!)), fit: BoxFit.cover),
          ),
        );
      }
    }else{
      return Container(
        constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height * 0.6),
         decoration: BoxDecoration(
           border: Border.all(),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: const Center(child: Icon(Icons.movie_filter_outlined, size: 100.0,)),
      );
    }
  }
}
