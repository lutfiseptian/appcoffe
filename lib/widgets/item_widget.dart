import 'package:appcoffe/screens/single_item_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List img = [
      "Black Coffee",
      "Cold Coffee",
      "Espresso",
      "Latte",
    ];

    return GridView.count(
      crossAxisCount: 2,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xFF212325),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SingleItemScreen(img [i])));
                    },
                    child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/${img[i]}.png",
                          width: 120,
                          height: 120,
                          fit: BoxFit.contain,
                        ))),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          img[i],
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Best Coffee",
                          style: TextStyle(fontSize: 16, color: Colors.white60),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$30",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE57734),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
