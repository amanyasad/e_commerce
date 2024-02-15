
import 'package:flutter/material.dart';

import 'detailes.dart';
class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {

  List categories = [
    {
      "iconname":Icons.laptop,
      "title":"Laptop"
    },
    {
      "iconname":Icons.phone_android_outlined,
      "title":"Mobile"
    },
    {
      "iconname":Icons.electric_bike,
      "title":"Bike"
    },
    {
      "iconname":Icons.card_giftcard_outlined,
      "title":"Gift"
    },
    {
      "iconname":Icons.electric_car,
      "title":"Car"
    }

  ];

  List items =[
    {
      "image":"images/1.jpg",
      "title":"Camera",
      "subtitle":"Good",
      "price":"200\$"
    },
    {
      "image":"images/2.jpg",
      "title":"Skine care",
      "subtitle":"Very Good",
      "price":"150\$"
    },
    {
      "image":"images/1.jpg",
      "title":"Camera",
      "subtitle":"Good",
      "price":"200\$"
    },
    {
      "image":"images/2.jpg",
      "title":"Skine care",
      "subtitle":"Very Good",
      "price":"150\$"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
          BottomNavigationBarItem(icon:Icon( Icons.home_outlined),label: "*"),
          BottomNavigationBarItem(icon:Icon( Icons.shopping_bag_outlined),label: "*"),
          BottomNavigationBarItem(icon:Icon( Icons.person_2_outlined),label: "*"),

        ],
      ),

      body: Container(
        padding:  EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                      border: InputBorder.none,
                      fillColor: Colors.grey[200],
                      filled: true
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(Icons.menu,size: 40),
                )
              ],
            ),
            Container(height: 30),
            Text("Categories" , style: TextStyle(fontWeight:FontWeight.bold , fontSize: 20)),

            Container(height: 20),
            Container(
              height:100,
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,i){
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(categories[i]['iconname'],size: 40),
                          padding: EdgeInsets.all(15),
                        ),
                        Text(categories[i]['title'],style: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey[800]))
                      ],
                    ) ,
                  );
                },
                // children: [
                //
                //
                //
                // ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child:Text("Best Selling" , style: TextStyle(fontWeight:FontWeight.bold , fontSize: 20)),
            ),
            GridView.builder(
                itemCount: items.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder:  (context , i) {
                  return InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Details(data:items[i]))
                        );
                      },
                      child:  Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              width: 300,
                              color: Colors.grey[200],
                              child: Image.asset(items[i]["image"], height: 77,
                                  fit: BoxFit.fill),
                            ),
                            Text(items[i]["title"], style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold)),
                            // Container(height: 2),

                            Text(items[i]["subtitle"], style: TextStyle(fontSize: 14,
                                color: Colors.grey)),
                            // Container(height: 6),

                            Text(items[i]["price"], style: TextStyle(fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange)),

                          ],
                        ),
                      )

                  );
                }
            ),

          ],
        ),
      ),

    );

  }
}
