import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/ice_cream_data.dart';
import 'package:icecreamlovers/themes/styles.dart';

class CartItem extends StatelessWidget {
  final Icecreams product;
  final int quantity;
  const CartItem({super.key, required this.product, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(product.image!),
      ),
      title: Text(
        product.flavor!,
        style: Styles.productRowItemName,
      ),
      subtitle: Text(
        "${quantity > 1 ? '$quantity x ' : ''} ₹ ${product.price.toString()}",
        style: Styles.productRowPrice,
      ),
      trailing: Text(
        "₹ ${product.price! * quantity}",
        style: Styles.productRowPrice,
      ),
    );
  }
}
