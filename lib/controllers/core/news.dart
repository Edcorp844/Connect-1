import 'package:connect/controllers/others/comment.dart';
import 'package:connect/controllers/others/news_search.dart';
import 'package:connect/controllers/others/newspage.dart';
import 'package:connect/modals/news.dart';
import 'package:connect/modals/story.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NewsBody(),
    );
  }
}

class NewsBody extends StatelessWidget {
  const NewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    double temp = 23.0;
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'News',
                style: Theme.of(context).textTheme.headline5?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 5, 14, 97),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    const Icon(
                      CupertinoIcons.cloud_snow,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    Text('$temp℃',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          CupertinoSearchTextField(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewsSearchPage()));
            },
            autocorrect: false,
            autofocus: false,
          ),
          const SizedBox(height: 10),
          const Text(
            'Stories',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Story(),
          const SizedBox(height: 10),
          const Text(
            'Categories',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Categories(),
          const SizedBox(height: 5),
          Expanded(
              child: ListView.builder(
                  itemCount: news.length,
                  itemBuilder: ((context, index) =>
                      NewsTile(news: news[index]))))
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
    'Social',
    'Events',
    'Political',
    "Business",
    "Entertainment",
    'Sports',
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
                  padding: const EdgeInsets.only(right: kDefaultPadding / 2),
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

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: stories.length,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    height: 144,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(stories[index].image),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Container()),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            stories[index].description,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}

class NewsTile extends StatefulWidget {
  final News news;
  const NewsTile({super.key, required this.news});

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VisitNews(news: widget.news),
              ));
        },
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
                widget.news.images['leading'],
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
                  Text(widget.news.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                  //const SizedBox(height: 5),
                  SizedBox(
                    width: 200,
                    height: 35,
                    child: Text(
                      widget.news.description,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CommentsPage(news: widget.news),
                              ));
                        },
                        child: Row(
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
}
