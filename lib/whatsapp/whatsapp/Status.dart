import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  List per = ["person1", "person2", "person3", "person4","person5","person6","person7","person8",];
  List pro = ["asscts/images/palace-g53cd61652_1920.jpg",
                "asscts/images/palace-g53cd61652_1920.jpg",
                  "asscts/images/kbfc.jpg",
                  "asscts/images/moscow-g21abe3029_1920.jpg",
                   "asscts/images/pexels-confinedriley-11259542.jpg",
                    "asscts/images/images (2).jpg",
                    "asscts/images/money-bag.png",
  ];
  List tim = [
    "1 hour ago",
    "37minutes ago",
    "25minutes ago",
    "21minutes ago",
    "25 minutes ago",
    "18 minutes ago",
    "10 minutes ago",
    "today,17:53"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const ListTile(
              title: Text("My Status"),
              leading:CircleAvatar(
                backgroundImage: AssetImage(
                "asscts/images/london-g7f25463ca_1920.jpg",
              ),),
              subtitle: Text("Tap to add status update"),
            ),
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.black38,
              width: double.infinity,
              height: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Recent Updates"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: per.length,
                itemBuilder: (BuildContext context, index) {
                  return ListTile(
                    title: Text(per[index]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(pro[index],),
                    ),
                    subtitle: Text(tim[index]),
                  );
                },
                separatorBuilder: (BuildContext context, index) {
                  return const Divider(
                    thickness: 0.3,
                    color: Colors.black12,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home:(Status())));
}