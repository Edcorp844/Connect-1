import 'package:connect/controllers/others/item_page.dart';
import 'package:connect/controllers/others/item_search_page.dart';
import 'package:connect/modals/product.dart';
import 'package:connect/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlace();
}

class _MarketPlace extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 236, 233, 221),
        elevation: 0,
        title: const Text(
          'MarketPlace',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.orange,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ItemSearchPage()));
            },
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.cart,
              color: Colors.orange,
            ),
          ),
          const SizedBox(
            width: kDefaultPadding / 2,
          )
        ],
      ),
      body: const MarketPlaceBody(),
    );
  }
}

class MarketPlaceBody extends StatelessWidget {
  const MarketPlaceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 236, 233, 221),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 1.5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              'Category',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Categories(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 0.73,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: products.length,
              itemBuilder: (context, index) => ItemTile(
                product: products[index],
                press: () {},
              ),
            ),
          )),
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    'Recents',
    'Gadgets',
    'Home & Offie',
    "Men's Fashion",
    "Women's Fashion",
    'Furniture',
    'Gaming & Sports'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index
                              ? Colors.orange
                              : const Color.fromARGB(178, 97, 97, 96),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                        height: 2,
                        width: 30,
                        color: selectedIndex == index
                            ? Colors.orange
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}

class ItemTile extends StatefulWidget {
  final Product product;
  final Function press;
  const ItemTile({super.key, required this.product, required this.press});

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  late bool isFavourite;
  late bool isAdded;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemPage(product: widget.product)));
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(widget.product.image),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('UGX ${widget.product.price}'),
                const Icon(
                  CupertinoIcons.heart,
                  color: Colors.red,
                  size: 20,
                ),
                const Icon(
                  CupertinoIcons.add_circled,
                  color: Colors.orange,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
