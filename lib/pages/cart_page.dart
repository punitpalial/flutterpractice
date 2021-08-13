import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(-0, -1.5),
          colors: [
            Color.fromRGBO(56, 56, 56, 1),
            Color.fromRGBO(255, 255, 255, 1),
          ],
          radius: 3.5,
        ),
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: "Cart".text.make(),
          centerTitle: true,
        ),
      ),
    );
  }
}
