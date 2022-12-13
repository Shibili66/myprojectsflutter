import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'condiner.dart';
import 'list.dart';

class YouTube extends StatefulWidget {
  @override
  State<YouTube> createState() => _YouTubeState();
}
List<String> catogories = [
  'All',
  'Live',
  'Movies',
  'Web series',
  'Gaming',
];

class _YouTubeState extends State<YouTube> {
  String selectedcatogory = ' All';

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Image.network("https://play-lh.googleusercontent.com/lMoItBgdPPVDJsNOVtP26EKHePkwBg-PkuY9NOrc-fumRtTFP4XhpUNk_22syN4Datc",height: 15,width: 60,),
      title: Padding(
        padding: const EdgeInsets.only(left:0),
        child: Text("YouTube",style: TextStyle(color: Colors.black),),
      ),
      backgroundColor: Colors.white,
      actions: [
        Wrap(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.cast,color: Colors.black,)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined,color: Colors.black,)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search,color: Colors.black,)),
            const Padding(
              padding: EdgeInsets.only(right: 9.0,top: 10),
              child: CircleAvatar(
                radius: 13.5,
                backgroundImage: AssetImage(
                  'asscts/images/kbfc.jpg',
                ),
              ),
            )
          ],
        ),
      ],
        bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
        child: Row(
        children: [
        TextButton(
        style: TextButton.styleFrom(
        backgroundColor: Colors.grey[300],
        ),
        onPressed: () {},
        child: Row(
        children: const [
        Icon(
    Icons.explore_outlined,
    color: Colors.black,
    ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 5.0),
    child: Text(
    'Explore',
    style: TextStyle(color: Colors.black),
    ),
    ),
    ],
    )),
          SizedBox(
              height: 35,
              width: 25,
              child: VerticalDivider(
                thickness: 1,
                color: Colors.grey,
              )),
          Wrap(
              spacing: 7,
              children: catogories
                  .map((e) => FilterChip(
                selected: selectedcatogory == e,
                showCheckmark: false,
                selectedColor: Colors.grey[700],
                label: Text(
                  e,
                  style: TextStyle(
                      color: selectedcatogory == e
                          ? Colors.white
                          : Colors.black),
                ),
                onSelected: (bool value) {
                  setState(() {
                    selectedcatogory = e;
                  });
                },
              ))
                  .toList()),
    ],
    ),
    ),
    ),
    ),
    bottomNavigationBar: DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: TabBar(
        labelColor: Colors.black,
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.black54,
        labelStyle: TextStyle(fontSize: 9),
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.slow_motion_video_outlined),
            text: 'Shorts',
          ),
          Tab(
            icon: Icon(Icons.add_circle_outline_outlined,
              size: 45,
            ),
          ),
          Tab(
            icon: Icon(Icons.subscriptions),
            text: 'Subscription',
          ),
          Tab(
            icon: Icon(Icons.video_library_rounded),
            text: 'Library',
          ),
        ],
      ),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: [
          videocard(items[0]),
          videocard(items[1]),
          videocard(items[2]),
          videocard(items[3]),
        ],
      ),
    ),
  );
  }
}
void main(){
  runApp(MaterialApp
    (debugShowCheckedModeBanner: false,
      home:(YouTube())));
}