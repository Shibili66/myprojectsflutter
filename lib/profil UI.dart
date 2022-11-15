import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor:CupertinoColors.white,
      leading: const Icon(
        Icons.arrow_back,color: Colors.black,
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.menu,color: Colors.black,
    ),
        ),
  ],
  ),
   body:
       Center(
         child: Column(
           children: [
             Container(
               height: 290,
               width: 500,
               color: Colors.white,
                child: Column(
                  children: [
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: CircleAvatar(
                            backgroundImage: (
                            AssetImage("asscts/images/countries/profil image.jpg")
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 180.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'asscts/svg/1233013_facebook_icon.svg',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'asscts/svg/1220323_g_plus_social_icon.svg',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  'asscts/svg/317749_social media_tweet_twitter_social_icon.svg',
                                  height: 30,
                                  width: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190.0,top: 10),
                      child: Row(
                        children: const [
                          Text("chromicle",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),),
                        ],
                      ),

                    ),
                    Padding(
                    padding: const EdgeInsets.only(left: 210.0,top: 5),
                    child: Row(
                      children: const [
                        Text("@dixghclk",style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 175.0,top: 10),
                      child: Row(
                        children: const [
                          Text("Mobile App Developer ",style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ),
                  ],

                ),
             ),
             SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Container(height: 200,width: 500,
                 child: Padding(
                   padding:  const EdgeInsets.all(8.0),
                   child: ListView(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListTile(
                           tileColor: Colors.black12,
                           leading: const Icon(Icons.privacy_tip_sharp),
                           title: Text("Privacy"),
                           trailing: Icon(Icons.arrow_forward_ios),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListTile(
                           tileColor: Colors.black12,
                           leading: const Icon(Icons.more_time),
                           title: const Text("Purchase History"),
                           trailing: const Icon(Icons.arrow_forward_ios),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListTile(
                           tileColor: Colors.black12,
                           leading: const Icon(Icons.help),
                           title: const Text("Help&Support"),
                           trailing: const Icon(Icons.arrow_forward_ios),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListTile(
                           tileColor: Colors.black12,
                           leading: const Icon(Icons.settings),
                           title: const Text("Settings"),
                           trailing: const Icon(Icons.arrow_forward_ios),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListTile(
                           tileColor: Colors.black12,
                           leading: const Icon(Icons.manage_accounts_rounded),
                           title: const Text("Invite a Friend"),
                           trailing: const Icon(Icons.arrow_forward_ios),
                           shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(30)
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ListTile(
                           tileColor: Colors.black12,
                           leading: const Icon(Icons.logout),
                           title: const Text("Logout"),
                           trailing: const Icon(Icons.arrow_forward_ios),
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
             )
           ],
         ),
       ),

  );
  }

}

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:profil(),
  ));

}