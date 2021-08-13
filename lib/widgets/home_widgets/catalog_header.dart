import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.color(Colors.black87).bold.make(),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: "Trending Products".text.xl2.make(),
        ),
      ],
    );
  }
}
