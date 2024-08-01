import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:icecreamlovers/models/ice_cream_data.dart';
import 'package:icecreamlovers/themes/styles.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  final Icecreams icecream;
  const ProductItem({super.key, required this.icecream});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(icecream.image!),
      ),
      title: Text(
        icecream.flavor!,
        style: Styles.productRowItemName,
      ),
      subtitle: Text(
        icecream.price.toString(),
        style: Styles.productRowPrice,
      ),
      trailing: IconButton(
        onPressed: () {
          Provider.of<AppStateModel>(context, listen: false)
              .addProductToCart(icecream.id!);
        },
        icon: const Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
