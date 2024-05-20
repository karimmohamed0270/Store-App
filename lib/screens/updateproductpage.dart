import 'package:flutter/material.dart';
import 'package:store2/Models/Models/Products.dart';
import 'package:store2/services/updateproducr.dart';
import 'package:store2/widgets/Custom-Button.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/Custom_textfield.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = "UpdateProductPage";

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? name, desc, title, image, price;

  @override
  Widget build(BuildContext context) {
    // recieve argument from customcart
    var product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      child: Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text("Update"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CustomTextfield(
                TextHint: "Name",
                onchange: (data) {
                  name = data;
                  // data refer to the date will user send using textfield and store it in variable
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(
                TextHint: "Description",
                onchange: (data) {
                  desc = data;
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(
                TextHint: "Title",
                onchange: (data) {
                  title = data;
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(
                TextHint: "Price",
                inputType: TextInputType.number,
                onchange: (data) {
                  price = data;
                },
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextfield(
                TextHint: "Image",
                onchange: (data) {
                  image = data;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Custombutton(
                text: "Confirm",
                butcolor: Colors.orange,
                ontap: () async{
                  try {
                   await UpdateProductService().updateproduct(
                        title: title!,
                        price: price!,
                        description: desc!,
                        image: image!,
                        category: product.category);
                    // current categry as argument from home page using stack widget ans send argument
                    // category: product.title);
                  } catch (e) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
