import 'package:flutter/material.dart';
import './recipts.dart';


class ReciptsItems extends StatelessWidget {
  // const ReciptsItems({Key? key}) : super(key: key);
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexilty complexity;
  final Affordability affordability;

  ReciptsItems(
      {this.id,
        this.title,
        this.affordability,
        this.complexity,
        this.duration,
        this.imageUrl});

  void selectRecipts() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectRecipts,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 10,
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    height: 250,
                    width: double.infinity,
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child:  Container(
                width: 300,
                color:Colors.black,
                padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color:  Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child:Row(
                children: <Widget>[
                  Row(
                    children:<Widget>[
                      Icon(Icons.timelapse),
                      SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children:<Widget>[
                      Icon(Icons.work),
                      SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children:<Widget>[
                      Icon(Icons.account_circle_rounded),
                      SizedBox(width: 6),
                      Text('$duration min'),
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
