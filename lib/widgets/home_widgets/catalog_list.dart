import 'package:flutter/material.dart';
import 'package:flutter_application_codepur/models/catalog.dart';
import 'package:flutter_application_codepur/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.getByPosition(index);
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: CatalogModel.getById(2),
                key: Key("null"),
              ),
            ),
          ),
          child: CatalogItem(
            catalog: catalog,
            key: Key("null"),
          ),
        );
      },
      itemCount: CatalogModel.items.length,
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required Key key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: catalog.name.text.xl.bold.make(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 9),
                child: Divider(
                  thickness: 0.3,
                  color: Colors.black87,
                ),
              ),
              catalog.desc.text.textStyle(context.captionStyle).sm.make(),
              //1.heightBox,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}".text.xl3.bold.make(),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                            StadiumBorder(),
                          ),
                        ),
                        onPressed: () {},
                        child: "Buy".text.size(0.01).white.make(),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    )).white.rounded.square(150).make().py16();
  }
}
