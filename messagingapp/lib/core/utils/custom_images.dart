import 'package:flutter/material.dart';

class CustomImages {
  static const ImageProvider flatLogo =
      AssetImage('assets/images/flat_logo.png');
  static const ImageProvider textLogo =
      AssetImage('assets/images/text_logo.png');
  static const ImageProvider textLogoBig =
      AssetImage('assets/images/text_logo_big.png');
  static const ImageProvider topBackground =
      AssetImage('assets/images/backgrounds/top_background.png');

  static const List<ImageProvider> banners = [
    AssetImage("assets/images/banners/banner1.png"),
    AssetImage("assets/images/banners/banner2.png"),
    AssetImage("assets/images/banners/banner3.png"),
    AssetImage("assets/images/banners/banner4.png"),
    AssetImage("assets/images/banners/banner5.png"),
  ];

  static const List<ImageProvider> collections = [
    AssetImage("assets/images/collections/collection1.png"),
    AssetImage("assets/images/collections/collection2.jpg"),
    AssetImage("assets/images/collections/collection3.jpg"),
    AssetImage("assets/images/collections/collection4.jpg"),
  ];
}
