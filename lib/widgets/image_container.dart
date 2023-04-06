import 'package:flutter/material.dart';

class ImageContainer extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Image.asset('assets/images/img.png',fit: BoxFit.contain,);
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 200;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
