import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_project/data/wishlist_items.dart';
import 'package:meta/meta.dart';

import '../../home/data/models/home_product_data_model.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<RemoveWishlistEvent>(removeWishlistEvent);
  }

  FutureOr<void> removeWishlistEvent(
      RemoveWishlistEvent event, Emitter<WishlistState> emit) {
    wishlist.remove(event.removeProduct);
  }
}
