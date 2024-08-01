import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:provider/provider.dart';

class IcecreamView extends StatelessWidget {
  const IcecreamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Icecream",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer<AppStateModel>(
        builder: (context, value, child) {
          final products = value.getProducts();
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(products[index].flavor!),
                subtitle: Text(products[index].price.toString()),
                trailing: IconButton(
                  onPressed: () {
                    value.addProductToCart(products[index].id!);
                  },
                  icon: const Icon(Icons.add_shopping_cart),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
