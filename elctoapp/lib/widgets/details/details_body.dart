import 'package:elctoapp/constant.dart';
import 'package:elctoapp/models/products.dart';
import 'package:elctoapp/widgets/details/color_dot.dart';
import 'package:elctoapp/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

class detailsBody extends StatelessWidget {
  const detailsBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: ProdactImage(
                size: size,
                image: product.image,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ColorDot(
                    fillColor: kTextLightColor,
                    isSelected: true,
                  ),
                  ColorDot(
                    fillColor: Colors.blue,
                    isSelected: false,
                  ),
                  ColorDot(
                    fillColor: Colors.red,
                    isSelected: false,
                  )
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                product.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Text(
              'السعر: \$${product.price}',
              style: const TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor),
            ),
            const SizedBox(
              height: kDefaultPadding * 2,
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            product.description,
            style: const TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        )
      ],
    );
  }
}
