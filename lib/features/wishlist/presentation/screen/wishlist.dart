import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/data/wishlist_items.dart';
import 'package:flutter_bloc_project/features/home/data/models/home_product_data_model.dart';
import 'package:flutter_bloc_project/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:flutter_bloc_project/features/wishlist/presentation/screen/wishlist_widget.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({
    super.key,
  });

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  final WishlistBloc wishlistBloc = WishlistBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: wishlist.length,
            itemBuilder: (context, index) {
              return WishlistTileWidget(
                productDataModel: wishlist[index],
                wishlistBloc: wishlistBloc,
              );
              //  Column(
              //   children: [
              //     Text(wishlist[index].name),
              //     IconButton(
              //         onPressed: () {

              //         },
              //         icon: Icon(Icons.remove))
              //   ],
              // );
            }));
  }
}
