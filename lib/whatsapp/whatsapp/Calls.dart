import 'package:flutter/material.dart';

class Call extends StatelessWidget{
  List prs = ["person1", "person2", "person3", "person4","person5",];
  List icn = <IconData>[
    Icons.call_made,
    Icons.call_received,
    Icons.call_received,
    Icons.call_made,
    Icons.call_received,
  ];
  List color = [
    Colors.green[900],
    Colors.red,
    Colors.red,
     Colors.green[900],
     Colors.red,
  ];
  List tim = [
    "(4)55 Minutes ago",
    "30 Minutes ago",
    "15 Minutes ago",
    "(3) Today,8:30 AM",
    "Today,1:40 pm"
  ];
  List icon = <IconData>[
    Icons.call,
    Icons.video_call,
    Icons.call,
    Icons.call,
    Icons.video_call
  ];
  List img = [ "asscts/images/london-g7f25463ca_1920.jpg",
               "asscts/images/images (2).jpg",
                "asscts/images/palace-g53cd61652_1920.jpg",
                "asscts/images/pexels-confinedriley-11259542.jpg",
                "asscts/images/barca.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.black38,
              width: double.infinity,
              height: 30,
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Recent Calls"),
              ),
            ),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: prs.length,
              itemBuilder: (BuildContext context, index){
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(prs[index]),
                ),
                leading:  CircleAvatar(
                  backgroundImage: AssetImage(img[index],),
                ),
                trailing: Icon(
                      icon[index],
                  color: Colors.green[900],
                ),
                subtitle: Wrap(
                  children:[ Icon(
                    icn[index],
                    color: (color[index]),
                  ),
                    Text(tim[index])
                ],
                ),

              );
              },
              separatorBuilder: (BuildContext context, index){
              return const Divider(
              thickness: 0.3,
              color: Colors.black26,
              );
          },
          ),
          ],
        ),
    );
  }
}
void main(){
  runApp(MaterialApp(home:(Call())));
}

