import 'package:connect/controllers/core/news.dart';
import 'package:connect/modals/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsSearchPage extends StatefulWidget {
  const NewsSearchPage({super.key});

  @override
  State<NewsSearchPage> createState() => _NewsSearchPageState();
}

class _NewsSearchPageState extends State<NewsSearchPage> {
  List<News> search = [];
  void searchItem(String value) {
    setState(() {
      search = news
          .where((element) =>
              element.title.toLowerCase().contains(value.toLowerCase()))
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
          itemBuilder: (context, index) => NewsTile(news: search[index]),
        ));
  }
}

Widget tile({required News news}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Image.asset(
              news.images['leading'],
              height: 100,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(news.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                //const SizedBox(height: 5),
                SizedBox(
                  width: 200,
                  height: 35,
                  child: Text(
                    news.description,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
                const SizedBox(height: 8),
                const Divider(
                  height: 0.5,
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Row(
                      children: const [
                        Icon(
                          CupertinoIcons.bookmark,
                          size: 15,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text('Save'),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Row(
                      children: const [
                        Icon(
                          CupertinoIcons.share,
                          size: 15,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text('share'),
                      ],
                    ),
                    const SizedBox(width: 15),
                    Row(
                      children: const [
                        Icon(
                          CupertinoIcons.chat_bubble,
                          color: Colors.orange,
                          size: 15,
                        ),
                        SizedBox(width: 5),
                        Text('Comments'),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    ),
  );
}
