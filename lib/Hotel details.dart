
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hoteldetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
     body: SingleChildScrollView(
        child: Column(
          children: [
        Stack(
            children: [
       Container(
      width: double.infinity,
      color: Colors.green,
      height: MediaQuery.of(context).size.height * 0.40,
      child: Image.network("https://image-tc.galaxy.tf/wijpeg-2x169zuo8tfg1jn11pd9tky4g/1j9a9404-edit_standard.jpg?crop=112%2C0%2C1777%2C1333",fit: BoxFit.cover,),
    ),
     const Padding(
       padding: EdgeInsets.only(top: 8.0,left: 230),
       child: Text("DETAIL",style: TextStyle(color: Colors.white),),
     ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 130.0,left: 14),
                    child: Text("Crowne Plaza",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                    fontSize: 25,),),
                  )
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 160.0,left: 14),
                    child: Text("Kochi,Kerala",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
                fontSize: 25,),),
                  )
                ],
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 210,left: 450),
                    child: Icon(Icons.favorite,color: Colors.white,),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0,left: 16),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.brown[300],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(child: Text("8.4/85 reviews.",style: TextStyle(color: Colors.white),
                          )),
                        ),
                        
                      ],
                    ),
                  ),
                  
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:270.0,left: 40),
                child: Column(
                  children: [
                    Wrap(
                      direction: Axis.horizontal,
                      spacing: 1,
                      children: const [
                        Icon(Icons.star,color: Colors.purple,),
                        Icon(Icons.star,color: Colors.purple,),
                        Icon(Icons.star,color: Colors.purple,),
                        Icon(Icons.star_half_outlined,color: Colors.purple,),
                        Icon(Icons.star_outline_outlined,color: Colors.purple,),
                        Padding(
                          padding: EdgeInsets.only(left: 270.0),
                          child: Positioned(
                            child: Text("\$ 200",style: TextStyle(color: Colors.purple,fontSize: 16),),),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 300.0),
                      child: Wrap(
                        children: const [
                          Icon(Icons.location_on_outlined,size: 20,),
                          Padding(
                            padding: EdgeInsets.all(2.0),
                            child: Text("8 km to LuluMall"),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: 370,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(child: Text("Book Now",style: TextStyle(color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 350,top: 25),
                      child: Text("DESCRIPTION",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 18,top: 13),
                      child: Text(
                        'The luxurious Crowne Plaza Kochi offers elegant and modern rooms with views of the backwaters and city. Located on the NH 47 Bypass, it features 4 food and beverage option. Crowne Plaza Kochi is 1.6 mi from Marine Drive and 4.3 mi from Ernakulam Railway Junction. Fort Kochin is 7.5 mi and Bolghatty Island is 9.3 mi from the hotel. Cochin International Airport is 14 mi away. The property is 4.3 mi from Kakkanad Info Park and 0.9 mi from Lake Shore Hospital. The Vyttila Mobility Hub Bus Station is 3.1 mi. All rooms are equipped with an ergonomic work area, flat-screen satellite TV, iPod dock and mini-bar. They also include tea/coffee making facilities and a safe. Private bathroom comes with a bathtub, shower and bathrobes.',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
                ),

      ]
     )
         ],
    ),

     ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black38,
      backgroundColor: Colors.white70,
      items:  const [
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search',backgroundColor: Colors.blueAccent),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
      ],
    ),
  );
  }

}
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Hoteldetails(),));
}