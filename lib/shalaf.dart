import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Row(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 200),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 20, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'aja',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20),
                    maxLines: 3,
                    textWidthBasis: TextWidthBasis.parent,
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
                flex: 1,
              )
            ],
          ),
          Row(
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 200),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 20, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'aja',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20),
                    maxLines: 3,
                    textWidthBasis: TextWidthBasis.parent,
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
                flex: 1,
              )
            ],
          ),
          Row(
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 200),
                margin: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 20, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'ajaajbdajkbdkjbakdkajdbwkjb',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 20),
                    maxLines: 3,
                    textWidthBasis: TextWidthBasis.parent,
                  ),
                ),
              ),
              const Expanded(
                child: SizedBox(),
                flex: 1,
              )
            ],
          ),
        ],
      )),
    );
  }
}
