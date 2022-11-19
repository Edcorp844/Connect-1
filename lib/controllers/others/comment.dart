import 'package:connect/modals/news.dart';
import 'package:connect/utilities/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentsPage extends StatefulWidget {
  final News news;
  const CommentsPage({super.key, required this.news});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: widget.news.comments.length,
              itemBuilder: (context, index) =>
                  CommentTile(comment: widget.news.comments[index]),
            )),
            CupertinoTextField(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              placeholder: 'Write a Comment...',
              suffix: IconButton(
                icon: const Icon(
                  CupertinoIcons.paperplane_fill,
                  color: Colors.blue,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommentTile extends StatelessWidget {
  final Comment comment;
  const CommentTile({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
        child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(comment.image),
                            radius: 25.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comment.from,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                comment.content,
                              )
                            ],
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 1.0,
                      ),
                      const Divider(height: 1),
                    ]))));
  }
}
