import 'package:flutter/material.dart';

class ListviewUI extends StatelessWidget {
  List<String> a = [
    'Avengers',
    "Dora ",
    "UglyDolls",
    "Captain Marvel",
    "John Wick",
    'Us',
    'Triple Threat',
  ];
  List<String> yr = [
    "2019",
    "2019",
    "2019",
    "2021",
    "2022",
    '2018',
    '2012',
  ];
  List<String> sub = [
    "Action, Thriller",
    "Adventure, Fantasy",
    "Comedy, Historical",
    "Crime, Horror",
    "Romance, Comedy",
    'Horror, Thriller',
    'Action, Thriller',
  ];
  List img = [
    ("asscts/images/countries/clapboard.jpg"),
    ("asscts/images/countries/clapboard.jpg"),
    ("asscts/images/countries/clapboard.jpg"),
    ("asscts/images/countries/clapboard.jpg"),
    ("asscts/images/countries/clapboard.jpg"),
    ("asscts/images/countries/clapboard.jpg"),
    ("asscts/images/countries/clapboard.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text("Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 27),
        child: ListView.builder(
            itemCount: a.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 75,
                width: 20,
                child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: ListTile(
                      title: Padding(
                        padding: const EdgeInsets.only(),
                        child: Text(
                          a[index],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                      ),
                      leading:CircleAvatar(
                      backgroundImage: AssetImage(img[index])),
                      trailing: Text(
                        yr[index],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only( top: 6),
                        child: Text(
                          sub[index],
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    )),
              );
            }),
      ),
    );
  }
}
void main(){
  runApp(MaterialApp(home:(ListviewUI())));
}