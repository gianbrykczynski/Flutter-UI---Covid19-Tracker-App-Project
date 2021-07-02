import 'package:covid_app/pages/detail_page.dart';
import 'package:covid_app/widgets/card_status.dart';
import 'package:covid_app/widgets/line_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

import 'package:covid_app/themes/constant.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: SvgPicture.asset(
                    'assets/images/burger_icon.svg',
                    width: 15,
                    height: 15,
                  )),
              SizedBox(
                width: 15.0,
              ),
              Text(
                ' Painel Covid19 ',
                style: appTitle,
              ),
              SizedBox(
                width: 10.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => DetailPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    color: bgColor,
                    child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: primary,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: -10.0,
                  child: Container(
                    height: 140,
                    child: Image.asset(
                      'assets/images/image_1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned.fill(
                  left: 120.0,
                  top: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Faça seu teste agora!',
                        style: appSubTitle,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Contém perguntas para verificar sua saúde.',
                        style: contentWhite,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Atulização de Dados',
                    style: appSubTitle,
                  ),
                  Text(
                    'Última Atulização: 20/05/2021',
                    style: contentWhite,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  //api refresh here.
                },
                child: Icon(
                  Icons.refresh,
                  color: textWhite,
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CardStatus(
                iconName: LineIcons.arrowUp,
                colorCard: warning,
                newCases: '+25',
                totalCases: '7.987',
                status: 'Ativos',
              ),
              SizedBox(
                width: 10.0,
              ),
              CardStatus(
                iconName: LineIcons.heart,
                colorCard: success,
                newCases: '+5',
                totalCases: '11.09',
                status: 'Recuperados',
              ),
              SizedBox(
                width: 10.0,
              ),
              CardStatus(
                iconName: LineIcons.ambulance,
                colorCard: primary,
                newCases: '+25',
                totalCases: '335',
                status: 'Mortes',
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Gráfico', style: appTitle),
              SizedBox(height: 20.0),
              Container(
                height: 300.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: textWhite.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Casos Ativos',
                            style: TextStyle(color: warning, fontSize: 16),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '7.987',
                                style: TextStyle(
                                    color: warning,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Text(
                                '[+25]',
                                style: TextStyle(color: warning),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25.0),
                      Row(
                        children: <Widget>[
                          Text(
                            'Semanal',
                            style: TextStyle(color: textWhite),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            'Mensal',
                            style: TextStyle(color: textWhite),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Container(
                        width: double.infinity,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 50.0,
                              height: 3,
                              decoration: BoxDecoration(
                                  color: textWhite,
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                            Container(
                              width: double.infinity,
                              height: 3,
                              decoration: BoxDecoration(
                                  color: textWhite.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(3)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.0),
                      chartWidget
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
