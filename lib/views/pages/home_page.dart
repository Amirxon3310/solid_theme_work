import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_theme_work/controller/product_controller.dart';
import 'package:solid_theme_work/views/widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ProductController>().getProducts("20000000");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("SOLID"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "15000000 dan arzon maxsulotlar",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                    onPressed: () {
                      context.read<ProductController>().getProducts("15000000");
                    },
                    icon: Icon(Icons.check_box))
              ],
            ),
            Consumer<ProductController>(
              builder: (context, value, child) => value.loading
                  ? SizedBox(
                      height: 200,
                      child:
                          Center(child: CircularProgressIndicator.adaptive()))
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.all(12),
                      itemCount: value.products.isEmpty
                          ? 0
                          : value.products.first.products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (context, index) {
                        final product = value.products.first.products[index];
                        return ProductCard(product: product);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
