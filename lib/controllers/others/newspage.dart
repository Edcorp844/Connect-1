import 'package:connect/controllers/others/comment.dart';
import 'package:connect/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../modals/news.dart';

class VisitNews extends StatefulWidget {
  final News news;
  const VisitNews({super.key, required this.news});

  @override
  State<VisitNews> createState() => _VisitNewsState();
}

class _VisitNewsState extends State<VisitNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.4,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(widget.news.images['leading']),
                fit: BoxFit.cover,
              )),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(width: 8.0),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(209, 255, 255, 255),
                        ),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              CupertinoIcons.back,
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.6,
            child: Padding(
              padding: const EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.bookmark,
                            size: 20,
                            color: Colors.blue,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.share,
                            size: 20,
                            color: Colors.blue,
                          )),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CommentsPage(news: widget.news)));
                              },
                              icon: const Icon(
                                CupertinoIcons.chat_bubble,
                                size: 20,
                                color: Colors.blue,
                              )),
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue,
                            ),
                            child: Text(
                              '${widget.news.comments.length} comments',
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Text(
                    widget.news.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: kDefaultPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.news.content,
                            style: const TextStyle(
                              fontFamily: 'Verdana',
                            ),
                            //textAlign: TextAlign.justify,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Photos',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Image.asset(widget.news.images['content1']),
                          if (widget.news.images['content2'] != null)
                            Image.asset(widget.news.images['content2'])
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
