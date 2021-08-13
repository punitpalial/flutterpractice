import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    )
        .box
        .p4
        .rounded
        .alignCenter
        .color(MyTheme.creamColor)
        .make()
        .p8()
        .w40(context);
  }
}
