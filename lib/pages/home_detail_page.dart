import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/models/catalog.dart';
import 'package:flutter_application_codepur/widgets/themes.dart';
import 'package:matcher/matcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:marquee/marquee.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({required Key key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0, -1.5),
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(56, 56, 56, 1),
          ],
          radius: 2.7,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("${catalog.name}"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: Container(
          color: Colors.transparent,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.xl5.color(Colors.white).bold.make(),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  ),
                ),
                onPressed: () {},
                child: "Buy".text.xl2.white.make(),
              ).wh(150, 50),
            ],
          ).px(32).py(10),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Center(
                child: Container(
                        height: 400,
                        //width: 300,
                        //width: context.screenWidth,
                        child: Hero(
                            tag: Key(catalog.id.toString()),
                            child: Image.network(catalog.image)))
                    .box
                    .roundedFull
                    .color(Colors.white)
                    .make(),
                //.px64(),
              ).px16(),
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
              //   child: Divider(
              //     color: Colors.black45,
              //     thickness: 3,
              //   ),
              // ),
              Expanded(
                child: VxArc(
                  height: 35.0,
                  edge: VxEdge.TOP,
                  arcType: VxArcType.CONVEY,
                  child: Container(
                    color: Colors.black87,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.color(Colors.white).xl5.bold.make(),
                        catalog.desc.text
                            .color(Colors.white)
                            .textStyle(context.captionStyle)
                            .lg
                            .make(),
                      ],
                    ).py(40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
