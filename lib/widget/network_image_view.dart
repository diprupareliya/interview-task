import 'package:flutter/material.dart';

Widget netWorkImageView({
  required String imagePath,
  double? imageSize
}){
  return CircleAvatar(
    radius: imageSize ?? 20,
    backgroundImage: NetworkImage(
        imagePath),
  );
}