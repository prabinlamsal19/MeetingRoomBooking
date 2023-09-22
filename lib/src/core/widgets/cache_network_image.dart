/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheNetworkImage extends StatelessWidget {
  const CacheNetworkImage({
    super.key,
    required this.imageUrl,
    this.placeholderWidget,
    this.errorWidget,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.cacheKey,
  });

  //image url to load image
  final String imageUrl;

  //loading widget while image is loading
  final Widget? placeholderWidget;

  //error widget to show error when image loading failed or invalid image url
  final Widget? errorWidget;

  final double? width;
  final double? height;
  final BoxFit fit;
  final String? cacheKey;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      cacheKey: cacheKey,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) {
        return placeholderWidget ??
            Center(
              child: SizedBox(
                width: 20.r,
                height: 20.r,
                child: const CircularProgressIndicator(strokeWidth: 2),
              ),
            );
      },
      errorWidget: (_, __, error) {
        return errorWidget ??
            Center(
              child: SizedBox(
                width: 20.r,
                height: 20.r,
                child: Icon(
                  Icons.error_outline,
                  size: 18.r,
                ),
              ),
            );
      },
    );
  }
}
