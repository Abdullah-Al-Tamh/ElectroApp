import 'package:elctoapp/constant.dart';
import 'package:elctoapp/models/products.dart';
import 'package:elctoapp/widgets/details/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: DetalisAppBar(context),
      body: detailsBody(product: product,),
    );
  }

  AppBar DetalisAppBar(BuildContext context) {
    return DetailsAppbar(context);
  }

  AppBar DetailsAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(Icons.arrow_back),
        color: kPrimaryColor,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        "رجوع",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
