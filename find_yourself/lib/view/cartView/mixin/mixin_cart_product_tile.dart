import 'package:find_yourself/entity/CartProduct.dart';

mixin MixinCartProductTile {
  int pieceCount(CartProduct cartProduct) {
    int totalPiece = 0;
    cartProduct.sizes.forEach((element) {
      totalPiece += element.piece;
    });
    return totalPiece;
  }
}