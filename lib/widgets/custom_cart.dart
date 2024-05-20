import 'package:flutter/material.dart';
import 'package:store2/Models/Models/Products.dart';
import 'package:store2/screens/updateproductpage.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key,required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
         Navigator.pushNamed(context, UpdateProductPage.id,arguments: product);
        //  i will send argument of product that contain the current info of the product
        // if i want to show it before update in update page
      },
       

      child: Stack(
          // to make image folat outside the container
          clipBehavior: Clip.none,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                // width: 180,
                // height: 120,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        blurRadius: 50,
                        // shadow in all derections
                        offset: Offset(10, 10))
                  ],
                ),
                child: Card(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 32),
                          child: Text(
                            product.title.substring(0,6),
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 22,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 8,
                              ),
                              child: Text(
                               r' ${product.price.toString()}',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 75,
              left: 130,
              child: Image.network(
                product.image,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
    );
  }
}