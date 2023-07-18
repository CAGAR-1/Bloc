part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class RemoveWishlistEvent extends WishlistEvent {
  final ProductDataModel removeProduct;

  RemoveWishlistEvent({required this.removeProduct});
}
