import 'package:flutter/material.dart';
import 'package:icecreamlovers/models/app_state_model.dart';
import 'package:icecreamlovers/themes/styles.dart';
import 'package:icecreamlovers/widgets/product_item.dart';
import 'package:provider/provider.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateModel>(context);
    final filteredProducts = model.search(
      _searchQuery,
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber.shade300,
        title: const Text(
          "Search",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          _buildSearchBox(),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return ProductItem(icecream: filteredProducts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = TextEditingController(text: _searchQuery)
      ..addListener(_onQueryChanged);
    _focusNode = FocusNode();
    super.initState();
  }

  Widget _buildSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          // color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                onTapOutside: (_) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                controller: _controller,
                focusNode: _focusNode,
                style: Styles.searchText,
                decoration: const InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                _controller.clear();
              },
              icon: const Icon(Icons.clear_all),
            ),
          ],
        ),
      ),
    );
  }

  void _onQueryChanged() {
    setState(() {
      _searchQuery = _controller.text;
    });
  }
}
