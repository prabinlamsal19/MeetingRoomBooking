/*
 * Copyright (c) 2022
 * Author: Kishor Mainali
 * Company: EB Pearls
 */

import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  SvgImage(
    String url, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
  }) : child = SvgPicture.asset(
          url,
          width: width,
          height: height,
          fit: fit,
          color: color,
        );

  SvgImage.network(
    String url, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
  }) : child = SvgPicture.network(
          url,
          width: width,
          height: height,
          fit: fit,
          color: color,
        );

  SvgImage.file(
    File file, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
  }) : child = SvgPicture.file(
          file,
          width: width,
          height: height,
          fit: fit,
          color: color,
        );

  SvgImage.memory(
    Uint8List bytes, {
    super.key,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.color,
  }) : child = SvgPicture.memory(
          bytes,
          width: width,
          height: height,
          fit: fit,
          color: color,
        );
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
