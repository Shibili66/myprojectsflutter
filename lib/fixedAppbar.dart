import 'package:flutter/material.dart';

class tab extends StatefulWidget {

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text("CustumAppBar"),
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),

              ],
              bottom: AppBar(
                title: Container(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'search for somethig',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildListDelegate([
              SizedBox(
                height: 400,
                child: Center(
                  child: Text("Hallo"),
                ),
              ),
              Container(
                height: 800,
                color: Colors.amberAccent,
              )
            ]))
          ],

      )

    );
  }
}
void main(){
  runApp(MaterialApp(home:(tab())));
}