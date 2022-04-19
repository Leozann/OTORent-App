//import lib and data session
import 'package:car_rent/detail_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:car_rent/car_list_data.dart';

final List<String> imgList = [
  'https://www.hyundai.com/content/dam/hyundai/id/id/images/local/creta/hyundai-creta-galeri-1.jpg',
  'https://editorial.pxcrush.net/carsales/general/editorial/toyota-land-cruiser-300-new-front2-mini.jpg?width=1024&height=682',
  'https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/387b34bf1df54506964817e920bfc6ea.jpg',
  'https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/a6d12c5ab99e4faa84f1308cc4ccaef2.jpg',
  'https://otodriver.com/image/load/749/421/gallery/toyota-rush-20183714.jpeg',
];

class HomePage extends StatelessWidget {
  //menginisiasikan variabel fungsi
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        item,
                        fit: BoxFit.fitHeight,
                        //width: 1000.0,
                        height: 200,
                      ),
                      //Image.asset(('assets/images/cars-01-primary.png'),
                      if (item ==
                          'https://www.hyundai.com/content/dam/hyundai/id/id/images/local/creta/hyundai-creta-galeri-1.jpg')
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 35.0, horizontal: 20.0),
                            child: Text(
                              'Rental Mobil Terlengkap!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      if (item ==
                          'https://editorial.pxcrush.net/carsales/general/editorial/toyota-land-cruiser-300-new-front2-mini.jpg?width=1024&height=682')
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 120.0, horizontal: 20.0),
                            child: Text(
                              'Pilih Mobil Apa Aja Sesuka Hatimu!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      if (item ==
                          'https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/387b34bf1df54506964817e920bfc6ea.jpg')
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 50.0, horizontal: 20.0),
                            child: Text(
                              'Interior Selalu Fresh',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      if (item ==
                          'https://carnetwork.s3.ap-southeast-1.amazonaws.com/file/a6d12c5ab99e4faa84f1308cc4ccaef2.jpg')
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20.0),
                            child: Text(
                              'Our Car Your Style',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      if (item ==
                          'https://otodriver.com/image/load/749/421/gallery/toyota-rush-20183714.jpeg')
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 40.0, horizontal: 10.0),
                            child: Text(
                              'Service Rutin Demi Kenyamanan Kamu',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  )),
            ),
          ))
      .toList();

  //END
  //========================//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OTORent'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: imageSliders,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Welcome!',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.green,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          debugPrint('card rent tapped!');
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30.0),
                              child: Icon(
                                Icons.search_rounded,
                                size: 80,
                                color: Colors.green.shade800,
                              ),
                            ),
                            Text(
                              'Rent Now',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          debugPrint('card plan tapped!');
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30.0),
                              child: Icon(
                                Icons.auto_graph_rounded,
                                size: 80,
                                color: Colors.green.shade800,
                              ),
                            ),
                            Text(
                              'OTO Plan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          debugPrint('card toll tapped!');
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30.0),
                              child: Icon(
                                Icons.add_road,
                                size: 80,
                                color: Colors.green.shade800,
                              ),
                            ),
                            Text(
                              'Toll Safety+',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          debugPrint('card shopping tapped!');
                        },
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 30.0),
                              child: Icon(
                                Icons.shopping_cart,
                                size: 80,
                                color: Colors.green.shade800,
                              ),
                            ),
                            Text(
                              'More Products',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 20.0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      'Best Deal! Car in Your Location',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.green,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Location: Jakarta',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // terapkan ini apabila tidak bisa discroll dalam parent singlechildscrollview
              shrinkWrap:
                  true, //terapkan metode ini sat menggunakan listview.builder sebagai child
              itemBuilder: (context, index) {
                final CarData isi = carDataList[index];

                return InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailScreen(
                        isiDipassing: isi,
                      );
                    }));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.asset(
                                isi.carImage,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 10.0, top: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    isi.carName,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      isi.carYear,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      isi.carCapacity,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    isi.dailyPrice,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: carDataList.length,
            ),
          ],
        ),
      ),
    );
  }
}
