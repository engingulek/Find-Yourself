// ignore_for_file: library_private_types_in_public_api

import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:find_yourself/view/productDetail/mixin/mixin_product_info.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatefulWidget {
   const ProductInfo({ Key? key, 
  required this.productName, 
  required this.productPrice, 
  required this.productSize, required this.productKey, required this.productUrl }) : super(key: key);

final String productName;
  final int productPrice;
  final List<SizeList> productSize;
  final String productKey;
  final String productUrl;
 
  @override
 _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo>  with MixinProductInfo {
    String _selectedSize  = "";
  @override
  void initState() {
    super.initState();
    _selectedSize = widget.productSize[0].size;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        color: Colors.black87,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          productNameView(),
          if (widget.productSize.isNotEmpty)
            SizedBox(
              height: 60, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.productSize.length,
                itemBuilder: (context, index) {
                  return 
                Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: GestureDetector(
                      onTap: widget.productSize[index].piece == 0 ? null :() {
                        setState(() {
                          _selectedSize =  widget.productSize[index].size;
                        });
                      },
                      child: productSizeView(index),
                    ),
                  );
                },
              ),
            ),
          productPriceView(),
          productAddCartButton(),
        ],
      ),
    );
  }

  CircleAvatar productSizeView(int index) {
    return CircleAvatar( 
                      radius: 30,
                      backgroundColor: sizeColors(
                        widget.productSize, index, _selectedSize),
                      child: Text(
                        widget.productSize[index].size,
                        style:  TextStyle(color:
                        _selectedSize == widget.productSize[index].size 
                        ? Colors.white :
                         Colors.black,
                         fontWeight: FontWeight.bold
                        ),
                      ),
                    );
  }

  ElevatedButton productAddCartButton() {
    return ElevatedButton(
      onPressed: () {
        addProductToCart(
          context,
          widget.productName,
          widget.productPrice,
          _selectedSize,
          widget.productKey,
          widget.productUrl);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        child: Text(
          AppConstants.addCart.value,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Text productPriceView() {
    return Text(
      "\$${widget.productPrice}",
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }

  Text productNameView() {
    return Text(
      widget.productName,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }
}