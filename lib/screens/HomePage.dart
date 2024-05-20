import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store2/Models/Models/Products.dart';
import 'package:store2/services/getallproduct.dart';

import '../widgets/custom_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                  color: Colors.black,
                ))
          ],
          centerTitle: true,
          title: Text(
            "New Trend",
          ),
          backgroundColor: Colors.orange,
          elevation: 0,
        ),
        body: FutureBuilder<List<ProductModel>>(
          // class then fun FUURE>>>>
          future: get_allproduct().getallproduct(),
          builder: (context,snapshot) {
            if (snapshot.hasData) {
              List<ProductModel> products=snapshot.data!;
              return Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
              child: GridView.builder(
                itemCount: products.length,
                  // to make image float into appbar
                  clipBehavior: Clip.none,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    // to give the cat hieght and width
                    childAspectRatio: 1.6,
                    mainAxisSpacing: 27,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return CustomCart(product: products[index],);
                  }),
            );
              
            }
            else{
              return Center(child: CircularProgressIndicator());
              
            }
            
          }
        ));
  }
}
