import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:icecreamlovers/themes/styles.dart';
import 'package:icecreamlovers/widgets/cart_item.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  String? name;
  String? email;
  String? address;
  String? phone;
  String? pin;
  DateTime? dateTime = DateTime.now();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer<AppStateModel>(
        builder: (context, value, child) {
          return ListView(
            children: [
              ExpansionTile(
                title: const Text("Address Details"),
                children: [
                  Form(
                    key: formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: _buildNameField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: _buildEmailField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: _buildAddressField(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: _buildPhoneField(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              if (value.productsInCart.isNotEmpty) ...[
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: value.productsInCart.length,
                  itemBuilder: (context, index) {
                    return CartItem(
                        product: value.getProductById(
                            value.productsInCart.keys.toList()[index]),
                        quantity: value.productsInCart.values.toList()[index]);
                  },
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Shipping + Tax",
                        style: Styles.productRowPrice,
                      ),
                      Text(
                        "₹ ${value.shippingCost} + ${value.tax}",
                        style: Styles.productRowPrice,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total",
                        style: Styles.productRowTotal,
                      ),
                      Text(
                        "₹ ${value.totalCost}",
                        style: Styles.productRowTotal,
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          value.clearCart();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Order Placed Sucessfully"),
                            ),
                          );
                        } else {}
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber.shade300),
                      child: const Padding(
                        padding: EdgeInsets.all(12),
                        child: Text("Place Order",
                            style: Styles.productRowItemName),
                      )),
                )
              ],
            ],
          );
        },
      ),
    );
  }

  Widget _buildAddressField() {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      initialValue: address,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Ionicons.location_outline),
        labelText: 'Address',
        hintText: 'Enter your address',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your address';
        }
        return null;
      },
      onSaved: (newValue) {
        address = newValue;
      },
      onChanged: (value) {
        address = value;
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      keyboardType: TextInputType.emailAddress,
      initialValue: email,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Ionicons.mail_open_outline),
        labelText: 'Email',
        hintText: 'Enter your email',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        } else if (!RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onSaved: (newValue) {
        email = newValue;
      },
      onChanged: (value) {
        email = value;
      },
    );
  }

  Widget _buildNameField() {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      initialValue: name,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Ionicons.person_outline),
        labelText: 'Name',
        hintText: 'Enter your name',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your name';
        }
        return null;
      },
      onSaved: (newValue) {
        name = newValue;
      },
      onChanged: (value) {
        name = value;
      },
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      keyboardType: TextInputType.number,
      initialValue: phone,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        prefixIcon: Icon(Ionicons.call_outline),
        labelText: 'Phone',
        hintText: 'Enter your phone number',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your phone number';
        } else if (value.length != 10) {
          return 'Please enter a valid phone number';
        }
        return null;
      },
      onSaved: (newValue) {
        phone = newValue;
      },
      onChanged: (value) {
        phone = value;
      },
    );
  }
}
