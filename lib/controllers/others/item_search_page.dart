import 'package:connect/modals/product.dart';
import 'package:connect/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_page.dart';

class ItemSearchPage extends StatefulWidget {
  const ItemSearchPage({super.key});

  @override
  State<ItemSearchPage> createState() => _ItemSearchPageState();
}

class _ItemSearchPageState extends State<ItemSearchPage> {
  List<Product> search = [];
  void searchItem(String value) {
    setState(() {
      search = products
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: CupertinoSearchTextField(
          onChanged: (value) => searchItem(value),
        ),
        trailing: TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      child: ListView.builder(
        itemCount: search.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ItemPage(product: search[index])));
          },
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(search[index].image),
                      width: 100,
                      height: 100,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          search[index].name,
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'UGX ${search[index].price}',
                          textAlign: TextAlign.justify,
                          style:
                              Theme.of(context).textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
