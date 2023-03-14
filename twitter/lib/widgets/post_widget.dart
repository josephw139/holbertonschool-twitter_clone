import 'package:flutter/material.dart';
import 'package:twitter/widgets/bottom_bar_menu.dart';
import 'package:twitter/widgets/side_bar_menu.dart';

class PostWidget extends StatelessWidget {
  final String name;
  final String username;
  final String imgUrl;
  final String postText;

  const PostWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.imgUrl,
    required this.postText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
          child: Center(
            heightFactor: 1,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 25,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(name,
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(fontWeight: FontWeight.bold)),
                        Text('  @$username  ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.grey[500])),
                        Text('2m',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(color: Colors.grey[500])),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: SizedBox(
                          width: 250,
                          child: Text(postText,
                              style: Theme.of(context).textTheme.bodyText2)),
                    )
                  ],
                ),
              ),
            ]),
          )),
      Container(
          padding: const EdgeInsets.fromLTRB(75, 0, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.chat_bubble_outline,
                      size: 20, color: Colors.grey[500]),
                  Text('  0',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey[500]))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.replay, size: 20, color: Colors.grey[500]),
                  Text('  0',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.grey[500]))
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite, size: 20, color: Colors.pink[600]),
                  Text('  2',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: Colors.pink[600]))
                ],
              ),
              Icon(Icons.share, color: Colors.grey[500]),
            ],
          ))
    ]);
  }
}
