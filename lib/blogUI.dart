import 'package:flutter/material.dart';
final List<Map> itmes = [
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "Does Dry is January Actually Improve Your Health?",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "You do hire a designer to make something. You hire them.",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
  {
    "title": "How to Seem Like You Always Have Your Shot Together",
    "author": "Jonhy Vino",
    "time": "4 min read",
  },
];

class blog extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(backgroundColor: Colors.white70,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Categories',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.category,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
            ],
            bottom: const TabBar(
                labelColor: Colors.pink,
                unselectedLabelColor: Colors.black54,
                isScrollable: true,
                indicatorColor: Colors.pink,
                tabs: [
                  Tab(
                    text: 'For You',
                  ),
                  Tab(
                    text: 'Design',
                  ),
                  Tab(
                    text: 'Beauty',
                  ),
                  Tab(text: 'Education'),
                  Tab(
                    text: 'Entertainment',
                  ),
                ]),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10.0,left: 7,right: 7),
            child: TabBarView(
              children: <Widget>[
                ListView.separated(itemBuilder: (context, index) {
                  return blogcontainer(index);
                },
                    separatorBuilder: (context, index) => SizedBox(height: 10,),
                    itemCount: itmes.length),
                const Text('tab2'),
                const Text('tab3'),
                const Text('tab4'),
                const Text('tab5'),

              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black54,
            currentIndex: 1,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.folder_copy_outlined),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "",
              ),
            ],
          ),
        ));
  } }

Widget blogcontainer(int index) {
  Map xy=itmes[index];
  return   Container(
    color: Colors.grey[100],
    height: 160,
    width: 400,
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 20),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green[200],
          ),
        ),
        Positioned(
          top: 36,
          left: 33,
          child: Container(
            width: 120,
            height: 120,
            color: Colors.white,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_MC1wJVPYw490VhrNimhIAUbrJSLOPxrdnruJyNE2sg-MS0szIoYhn2057nRvTn6onRY&usqp=CAU",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(left: 170.0, top: 50),
              child: Text(xy['title'],
                style: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 185.0, top: 4),
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(xy['author']),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(xy['time']),
                )
              ],
            )
          ],
        )
      ],
    ),
  );

}


void main() {
  runApp(
    MaterialApp(
      home: blog(),
      debugShowCheckedModeBanner: false,
    ),
  );
}