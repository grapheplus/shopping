import 'package:flutter/material.dart';
import 'package:shopping_online/pages/details_product.dart';
import 'package:shopping_online/pages/produit_list.dart';

class ProduitPages extends StatefulWidget {
  const ProduitPages({super.key});

  @override
  State<ProduitPages> createState() => _ProduitPagesState();
}

class _ProduitPagesState extends State<ProduitPages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: double.infinity,
              // color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_rounded,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 100,
                width: double.infinity,
                // color: Colors.blue,
                child: const Text(
                  "Explore\nYour New Style",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 0.80,
                crossAxisSpacing: 10,
                // mainAxisSpacing: 10,
              ),
              itemCount: All.length,
              itemBuilder: (context, index) {
                // c'est apartit d'ici qu'on creer le container qui contient tout les dedails du produit
                // ignore: non_constant_identifier_names
                final Product = All[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsProduct(product: Product)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(All[index].image),
                                  fit: BoxFit.fill)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(All[index].title),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      )),
    );
  }
}
