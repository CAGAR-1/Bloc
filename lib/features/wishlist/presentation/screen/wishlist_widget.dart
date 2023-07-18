import 'package:flutter/material.dart';
import 'package:flutter_bloc_project/data/wishlist_items.dart';
import 'package:flutter_bloc_project/features/home/bloc/home_bloc.dart';
import 'package:flutter_bloc_project/features/home/data/models/home_product_data_model.dart';
import 'package:flutter_bloc_project/features/wishlist/bloc/wishlist_bloc.dart';

class WishlistTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final WishlistBloc wishlistBloc;
  const WishlistTileWidget(
      {super.key, required this.productDataModel, required this.wishlistBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(productDataModel.imageUrl))),
          ),
          Text(productDataModel.name),
          Text(productDataModel.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    wishlistBloc.add(
                        RemoveWishlistEvent(removeProduct: productDataModel));
                    // homeBloc.add(
                    //     HomeProductCartButtonClickedEvent(productDataModel));
                    // homeBloc.add(HomeWishListButtonNavigateEvent());
                  },
                  icon: const Icon(Icons.favorite_border)),
              IconButton(
                  onPressed: () {
                    print(productDataModel.id);
                    // homeBloc.add(HomeProductWishListButtonClickedEvent(
                    //     productDataModel));
                  },
                  icon: const Icon(Icons.shopping_bag_outlined))
            ],
          ),
          Divider(
            thickness: 5,
          )
        ],
      ),
    );
  }
}
