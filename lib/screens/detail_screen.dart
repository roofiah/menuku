import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:menuku/model/menu_data.dart';

class DetailScreen extends StatelessWidget {
  final MenuData menu;

  DetailScreen({required this.menu});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(menu.imageAsset),
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Row(
                        children: [
                          SavedButton(),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert, color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    menu.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(menu.cookingtime),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    child: Text(menu.description,
                        style: TextStyle(
                          // fontSize: 10,
                          fontFamily: 'OpenSans',
                        )),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('BAHAN',
                          style: TextStyle(
                              // fontSize: 10,
                              fontFamily: 'OpenSans',
                              fontWeight: FontWeight.bold)),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: menu.ingredients.map((data) {
                            return Row(
                              children: [
                                Text(
                                  '\u2022 ',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(data)
                              ],
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text(' CARA MEMBUAT',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold))),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: menu.howtomake.map((url) {
                      return Container(
                        width: 150,
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.yellow[100],
                            border: Border.all(
                              color: Colors.orange,
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            children: [
                              Expanded(flex: 1, child: Image.asset(url)),
                              Expanded(
                                flex: 1,
                                child: Text(
                                    'Tahap: Lorem ipsum dolor sit amet, consectetur adipiscing elit. '),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SavedButton extends StatefulWidget {
  const SavedButton({Key? key}) : super(key: key);

  @override
  _SavedButtonState createState() => _SavedButtonState();
}

class _SavedButtonState extends State<SavedButton> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      icon: Icon(isSelected ? Icons.bookmark : Icons.bookmark_border,
          color: isSelected ? Colors.orange : Colors.white),
    );
  }
}
