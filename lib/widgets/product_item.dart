import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:icecreamlovers/models/ice_cream_data.dart';
import 'package:icecreamlovers/themes/styles.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

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
        "₹ ${icecream.price.toString()}",
        style: Styles.productRowPrice,
      ),
      trailing: IconButton(
          onPressed: () {
            Provider.of<AppStateModel>(context, listen: false)
                .addProductToCart(icecream.id!);
            VxToast.show(context,
                msg: "Added to cart", position: VxToastPosition.center);
          },
          icon: const Icon(Ionicons.add_circle_outline)),
    );
  }
}
