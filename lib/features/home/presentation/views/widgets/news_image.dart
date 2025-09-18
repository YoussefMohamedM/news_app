import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  final String image;

  const NewsImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 345 / 220,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        // child: Image.network(image, fit: BoxFit.cover),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
          errorWidget: (context, url, error) => Text(error.toString()),
        ),
      ),
    );
  }
}
