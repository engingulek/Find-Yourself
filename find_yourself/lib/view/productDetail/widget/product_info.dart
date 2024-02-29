import 'package:find_yourself/core/constants/app_constants.dart';
import 'package:find_yourself/entity/Product.dart';
import 'package:flutter/material.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    Key? key, 
    required this.productName, 
    required this.productPrice, 
    required this.productSize,
  }) : super(key: key);

  final String productName;
  final int productPrice;
  final List<SizeList> productSize;

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
          if (productSize.isNotEmpty)
            SizedBox(
              height: 60, 
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productSize.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: CircleAvatar( 
                      radius: 30,
                      backgroundColor: productSize[index].piece == 0 
                      ? Colors.grey :
                       Colors.white,
                      child: Text(
                        productSize[index].size,
                        style: const TextStyle(
                          color: Colors.black,fontWeight: FontWeight.bold
                        ),
                      ),
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

  ElevatedButton productAddCartButton() {
    return ElevatedButton(
      onPressed: () {},
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
      "\$$productPrice",
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }

  Text productNameView() {
    return Text(
      productName,
      style: const TextStyle(
        fontSize: 30,
        color: Colors.white,
        decoration: TextDecoration.none,
      ),
    );
  }
}

