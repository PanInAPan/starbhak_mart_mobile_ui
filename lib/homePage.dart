import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      splashRadius: 20),
                ),
                Material(
                  borderRadius: BorderRadius.circular(30),
                  elevation: 15,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_2_outlined),
                      splashRadius: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildMyItemList("assets/burger.png", "All"),
              _buildMyItemList("assets/burger.png", "Foods"),
              _buildMyItemList("assets/soda.png", "Drinks")
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 5, right: 250),
            child: Text(
              "All Menu",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView(children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildMyItem("assets/burger.png", "Small Burger", "Rp. 22.500,00"),
                      SizedBox(width: 20,),
                      _buildMyItem("assets/soda.png", "S Cup Soda", "Rp. 6000,00")
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildMyItem("assets/burger.png", "Medium Burger", "Rp. 35.500,00"),
                      SizedBox(width: 20,),
                      _buildMyItem("assets/soda.png", "M Cup Soda", "Rp. 8000,00")
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildMyItem("assets/burger.png", "Large Burger", "Rp. 40.000,00"),
                      SizedBox(width: 20,),
                      _buildMyItem("assets/soda.png", "L Cup Soda", "Rp. 10.000,00")
                    ],
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }

  Widget _buildMyItemList(String imagePath, String label
  ) {
    return Column(
      children: [
        Material(
          elevation: 15,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(
                imagePath,
                width: 75,
                height: 75,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildMyItem(String imagePath, String title, String price) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 10,
          child: Container(
            width: 150,
            height: 170,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    imagePath,
                    width: 100,
                    height: 100,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(price),
                          InkWell(
                            onTap: (){},
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  Icons.add,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
