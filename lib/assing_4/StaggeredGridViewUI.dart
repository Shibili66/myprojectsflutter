import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class StaggeredGridViewUI extends StatelessWidget {
  List<StaggeredTile> cardtile = [
    const StaggeredTile.count(2,3),
    const StaggeredTile.count(2,4),
    const StaggeredTile.count(2,3),
    const StaggeredTile.count(2,3),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered GridView"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StaggeredGridView.count(
            staggeredTiles: cardtile,
            crossAxisCount: 4,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              ),
              color: Colors.white54,
              child: Column(
                children: [
                  AspectRatio(aspectRatio: 1.1,
                  child: Image.asset("asscts/images/countries/canadafinal.jpeg",
                  fit: BoxFit.cover,
                  ),
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("CANADA",
                      style: TextStyle(
                        fontSize: 20,fontWeight: FontWeight.bold
                      ),),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Capital"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Ottawa",),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              color: Colors.white54,
              child: Column(
                children: [
                  AspectRatio(aspectRatio: 0.7,
                    child: Image.asset("asscts/images/countries/chinafinal.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("CHINA",
                        style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                        ),),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Capital"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Beijing",),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              color: Colors.white54,
              child: Column(
                children: [
                  AspectRatio(aspectRatio: 1.1,
                    child: Image.asset("asscts/images/countries/malysiafinal.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("MALAYISA",
                        style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                        ),),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Capital"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Kuala Lumpur",),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              color: Colors.white54,
              child: Column(
                children: [
                  AspectRatio(aspectRatio: 1.1,
                    child: Image.asset("asscts/images/countries/nethrlandfinal.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                    title: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("NETHERLAD",
                        style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.bold
                        ),),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Capital"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Amsterdam",),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

void main(){
  runApp(MaterialApp(home:(StaggeredGridViewUI())));
}