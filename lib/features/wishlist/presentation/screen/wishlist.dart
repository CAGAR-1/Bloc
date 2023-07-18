import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/data/wishlist_items.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: wishlist.length,
            itemBuilder: (context, index) {
              return Text(wishlist[index].name);
            }));
  }
}
