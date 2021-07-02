import 'package:covid_app/themes/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 50.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: bgColor,
                ),
              ),
            ),
            Container(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Faça seu teste \n de Covid19!',
                            style: appTitle,
                          ),
                          Image.asset('assets/images/image_2.png'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 170.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(70.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 70.0,
                            ),
                            Row(
                              children: [
                                Container(
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        height: 4,
                                        width: 60.0,
                                        decoration: BoxDecoration(
                                            color: textWhite,
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                      Container(
                                        height: 3,
                                        width: size.width - 120,
                                        decoration: BoxDecoration(
                                            color: textWhite.withOpacity(0.2),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text('1/10',
                                    style: TextStyle(color: textWhite)),
                              ],
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Você sentiu\nalguns destes\nsintomas abaixo:\nsintomas:',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold,
                                  color: textWhite,
                                  height: 1.4),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Text(
                              'Febre, Tosse, Coriza,\nTontura, Dificuldade em Respirar.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                height: 1.2,
                                color: textWhite,
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: (size.width - 120) / 2,
                                  child: FlatButton(
                                    color: textWhite,
                                    onPressed: () {},
                                    child: Text(
                                      'Não',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40.0,
                                ),
                                Container(
                                  width: (size.width - 120) / 2,
                                  child: FlatButton(
                                    color: textWhite,
                                    onPressed: () {},
                                    child: Text(
                                      'Sim',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
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
