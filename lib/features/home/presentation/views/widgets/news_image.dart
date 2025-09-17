import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  const NewsImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 345 / 220,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          width: double.infinity,
          "https://www.fcbarcelona.com/photo-resources/2021/08/09/d4236e65-4502-4cca-816d-a97c441abdac/Camp-nou-1.jpg?width=1200&height=750",
        ),
      ),
    );
  }
}
