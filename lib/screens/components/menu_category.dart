import 'package:flutter/material.dart';
import 'package:menuku/model/menu_data.dart';

class MenuCategory extends StatefulWidget {
  const MenuCategory({Key? key}) : super(key: key);

  @override
  _MenuCategoryState createState() => _MenuCategoryState();
}

class _MenuCategoryState extends State<MenuCategory> {
  int selectedCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuCategory.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ElevatedButton(
              child: Text(
                menuCategory[index],
                style: TextStyle(
                    color: index == selectedCategory
                        ? Colors.white
                        : Colors.black),
              ),
              onPressed: () {
                setState(() {
                  selectedCategory = index;
                });
              },
              style: ElevatedButton.styleFrom(
                  primary:
                      index == selectedCategory ? Colors.orange : Colors.white,
                  side: BorderSide(
                    width: 2.0,
                    color: Colors.orange,
                  )),
            ),
          );
        },
      ),
    );
  }
}
