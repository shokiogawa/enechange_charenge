import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ChargerCardImage extends StatelessWidget {
  const ChargerCardImage({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return images.isNotEmpty
        ? CachedNetworkImage(
            width: double.infinity,
            imageUrl: images[0],
            fit: BoxFit.fitWidth,
          )
        : Image.asset(
            'assets/images/noImage.png',
            fit: BoxFit.fill,
          );
  }
}
