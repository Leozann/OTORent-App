import 'package:flutter/material.dart';
import 'package:car_rent/car_list_data.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DetailScreen extends StatelessWidget {
  final CarData isiDipassing;
  DetailScreen({required this.isiDipassing});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTORent',
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    isiDipassing.carImage,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            //bottom: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                isiDipassing.dailyPrice,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              FavoriteButton()
                            ],
                          ),
                        ),
//Rating Section
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                right: 15,
                                bottom: 10,
                              ),
                              child: Text(
                                isiDipassing.carName,
                                style: TextStyle(
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 15,
                            bottom: 15,
                          ),
                          child: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star_rate_rounded,
                                size: 28,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 28,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 28,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star_rate_rounded,
                                size: 28,
                                color: Colors.green,
                              ),
                              Icon(
                                Icons.star_half_rounded,
                                size: 28,
                                color: Colors.green,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: Theme.of(context).dividerColor,
                                        width: 1,
                                      ),
                                      color: Colors.green,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Text(
                                        //'5x Rented',
                                        isiDipassing.rentAmount,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
// End of Rating Section
//Price Section
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Daily Price (24 Hour)',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            isiDipassing.dailyPrice,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 3,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Weekly Price (7 Day)',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            isiDipassing.weeklyPrice,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
// End of Price Section
//Spec section
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 5,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Text.rich(
                              TextSpan(
                                text: 'Spesifikasi',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                                children: <InlineSpan>[
                                  TextSpan(
                                      text: '\n\nlorem ipsum dolor',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
//End of Spec section
//Photos Section
            Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'More Photos',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.only(bottom: 30.0),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).dividerColor,
                        width: 5,
                      ),
                    ),
                  ),
                  height: 400,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: isiDipassing.morePhoto.map((data) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: 10,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset(data),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//Element Style Function here..

class FavoriteButton extends StatefulWidget {
  @override
  _favoriteButtonState createState() => _favoriteButtonState();
}

class _favoriteButtonState extends State<FavoriteButton> {
  @override
  //menginisiasikan variabel favorite yang mengandung boolean
  bool isFavorite = false;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
    );
  }
}
