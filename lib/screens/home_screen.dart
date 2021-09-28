import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:menuku/model/menu_data.dart';
import 'package:menuku/screens/components/menu_category.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.white),
          title: Text('Menuku'),
          actions: [
            Icon(Icons.search, color: Colors.white),
            Icon(Icons.filter_alt, color: Colors.white)
          ],
          backgroundColor: Colors.orange,
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return MenuGrid(2);
          } else if (constraints.maxWidth <= 1200) {
            return MenuGrid(4);
          } else {
            return MenuGrid(6);
          }
        }));
  }
}

class MenuGrid extends StatelessWidget {
  int jumlahGrid;
  MenuGrid(this.jumlahGrid);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 3;
    final double itemWidth = size.width / 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            'Category',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        MenuCategory(),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Text(
            'Menu Favorite',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        GridView.count(
          crossAxisCount: jumlahGrid,
          // childAspectRatio: (itemWidth / itemHeight),
          shrinkWrap: true,
          // scrollDirection: Axis.vertical,
          children: menuDataList.map((menu) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(menu: menu);
                }));
              },
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          menu.imageAsset,
                        ),
                        Text(menu.name,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold,
                            )),
                        // SizedBox(height: 4.0),
                        Text(
                          menu.description,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // SizedBox(height: 4.0),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.red),
                            Icon(Icons.star, color: Colors.red),
                            Icon(Icons.star, color: Colors.red),
                            Icon(Icons.star_half, color: Colors.red),
                            Icon(Icons.star_border, color: Colors.red),
                            Text(menu.rating)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
