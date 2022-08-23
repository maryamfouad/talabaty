import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/cupertino.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int SelectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: SelectedIndex,
        selectedItemColor: Colors.pink,
        selectedIconTheme: IconThemeData(
          size: 30,
          color: Colors.pink,
            opacity: 1,
        ),
        unselectedIconTheme: IconThemeData(
          size: 20,
          color: Colors.grey,
          opacity: 0.9
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled ,),
           label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet ,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag ,),
              label: ""
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person ,),
              label: ""
          ),
        ],
        onTap: (index){
          setState(() {
            SelectedIndex=index;
          });
        },
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                color: Colors.pink,
                size: 30,
              ),
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.grey.shade800,
                    size: 30,
                  ),
                  Text(
                    "الجادرية",
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
              Icon(
                Icons.notifications_none_outlined,
                color: Colors.pink,
                size: 30,
              ),
            ],
          ),
        ),
        Container(
          height: 190,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              sections("images/sweets.jpg", "Sweets"),
              sections("images/restaurant.jpg", "Restaurants"),
              sections("images/market.jpg", "Market"),
              sections("images/dietFood.jpg", "Diet Food"),
              sections("images/cosmetics.jpg", "Cosmetics"),
              sections("images/butcherShop.jpg", "Butcher Shop"),
              sections("images/bread.jpg", "Bread"),
              sections("images/books.jpg", "Books"),
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(330, 15, 0, 5),
              child: Container(
                width: 170,
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(2),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 3.0),
                          blurRadius: 0.5,
                          spreadRadius: 0.1,
                          color: Colors.grey)
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(330, 5, 0, 15),
              child: Text("المحلات الاكثر شيوعا",
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),),
            )
          ],
        ),

            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  sections("images/88.PNG", "88 Juice and Deserts"),
                  sections("images/grinders.jpg", "THe Grinders"),
                  sections("images/house.JPG", "House OF Dough"),
                  sections("images/abu.png", "Abu Al-abed"),
                  sections("images/grafetti.jpg", "Graffiti Burger"),
                  sections("images/grape.JPG", "Grape Leaves"),
                  sections("images/west.jpg", "West Burger"),
                ],
              ),
            ),
             Container(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    choose("الكل"),
                    choose("خصم"),
                    choose("يدعم المحفظة"),
                    choose("توصيل طلباتي"),
                    choose("حصري"),
                    choose("جديد"),
                  ],
                ),
              ),
           /* Container(
              width: 800,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  cards("images/burgarat.jpg", "برجرات", "الحد الادنى للطلب : 5000",
                      "المنصور", "ممتاز", "سعر التوصيل : 2500"),
                  cards("images/chilli.jpg", "تشيللي هاوس", "الحد الادنى للطلب : 5000",
                      "الجادرية", "ممتاز", "سعر التوصيل : 2500"),
                  cards("images/hizen.jpg", "هايزن", "الحد الادنى للطلب : 5000",
                      "المنصور", "ممتاز", "سعر التوصيل : 2500"),
                  cards("images/khan.jpg", "خان مندي", "الحد الادنى للطلب : 5000",
                      "المنصور", "ممتاز", "سعر التوصيل : 2500"),
                  cards("images/abu.png", "ابو العبد", "الحد الادنى للطلب : 5000",
                      "المنصور", "ممتاز", "سعر التوصيل : 2500"),

                ],
              ),
            ), */


      ])),
    );
  }

  Column sections(String img, String type) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            margin: EdgeInsets.all(8),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("$img"), fit: BoxFit.cover)),
          ),
          onTap: () {
            print("print");
          },
        ),
        Text(
          "$type",
          style: TextStyle(fontWeight: FontWeight.bold , ),
        )
      ],
    );
  }
  Container choose (String type )
  {
    return Container(
      margin: EdgeInsets.all(12),
      height: 25,
      width: 85,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center
        (child: Text("$type" ,
        style: TextStyle( fontWeight: FontWeight.w500,color: Colors.white ),)
      ),

    );
  }
    Padding cards (String img
      , String restName
      , String minOrder
      , String location
      , String review
      , String deliveryPrice)
  {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 800,
            height: 600,
           // margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("$img"),
                fit: BoxFit.fill
              )
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 13)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("$minOrder", style: TextStyle(color: Colors.grey),),
              Text("$restName", style: TextStyle(
                  color: Colors.pink ,
                  fontWeight:FontWeight.bold ,
              fontSize: 15),),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 13)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("$deliveryPrice", style: TextStyle(color: Colors.grey),),
              Text("$review", style: TextStyle(color: Colors.grey),),
              Text("$location", style: TextStyle(color: Colors.grey),),

            ],
          ),
        ],
      ),
    );
  }
}
