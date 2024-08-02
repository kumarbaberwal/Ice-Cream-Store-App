import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:icecreamlovers/views/cart_view.dart';
import 'package:icecreamlovers/views/icecream_view.dart';
import 'package:icecreamlovers/views/search_view.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context, listen: true);
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.amber,
      //   title: const Text(
      //     "Ice Cream Lovers",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 24,
      //     ),
      //   ),
      // ),
      body: IndexedStack(
        index: model.currentIndex,
        children: const [
          IcecreamView(),
          SearchView(),
          CartView(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: model.currentIndex,
        onDestinationSelected: (value) => model.changeIndex(value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Ionicons.ice_cream_outline),
            label: "Icecreams",
          ),
          NavigationDestination(
            icon: Icon(Ionicons.search_outline),
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(Ionicons.cart_outline),
            label: "Cart",
          ),
        ],
      ),
    );
  }
}
