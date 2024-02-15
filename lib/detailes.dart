import 'package:flutter/material.dart';
class Details extends StatefulWidget{

  final data;
  const Details({super.key,this.data});
  @override
  State<Details> createState() => _DetailsState();
}


class _DetailsState extends State<Details> {

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
      endDrawer: const Drawer(),
      appBar: AppBar(
        title:
        const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.shop_outlined,color: Colors.black),
              Text("Ecommerce ",style: TextStyle(color:Colors.black)),
              Text("Site",style: TextStyle(color:Colors.orange)),
            ]),
        iconTheme: const IconThemeData(color: Colors.grey),
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Image.asset(widget.data['image']),
          Container(
              child: Text(
                widget.data['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              )),
          Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                widget.data['subtitle'],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              )),
          Container(
              margin: EdgeInsets.only(top:10,bottom: 25),
              child: Text(
                widget.data['price'],
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Color : ",style: TextStyle(color: Colors.grey)),
              SizedBox(width: 10),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange)
                ),
              ),
              Text(" Grey"),
              SizedBox(width: 20),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              Text(" Black"),
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Size:           34  35  40  41 ",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 60,vertical: 20),
            child: MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: Colors.black,
              textColor:Colors.white,
              onPressed: (){},
              child: Text("Add to Cart"),
            ),
          )
        ],
      ),
    );

  }
}