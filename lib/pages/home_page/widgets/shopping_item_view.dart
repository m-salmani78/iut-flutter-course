import 'package:flutter/material.dart';

class ShoppingItemView extends StatefulWidget {
  const ShoppingItemView({Key? key}) : super(key: key);

  @override
  State<ShoppingItemView> createState() => _ShoppingItemViewState();
}

class _ShoppingItemViewState extends State<ShoppingItemView> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(child: Image.asset("assets/images/shoes2.png")),
              const SizedBox(height: 8),
              const Text("Item Number 1"),
              const SizedBox(height: 8),
            ],
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isLiked = !_isLiked;
              });
            },
            icon: _isLiked
                ? Icon(Icons.favorite, color: Colors.red)
                : Icon(Icons.favorite_border),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
