import 'package:covid_app/themes/constant.dart';
import 'package:flutter/material.dart';

class CardStatus extends StatelessWidget {
  final IconData iconName;
  final Color colorCard;
  final String newCases;
  final String totalCases;
  final String status;

  const CardStatus({
    Key key,
    this.iconName,
    this.colorCard,
    this.newCases,
    this.totalCases,
    this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: textWhite.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  color: colorCard.withOpacity(0.5),
                  border: Border.all(color: colorCard, width: 2),
                  borderRadius: BorderRadius.circular(40.0 / 2),
                ),
                child: Icon(iconName, color: colorCard),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                '[$newCases]',
                style: TextStyle(color: colorCard, fontSize: 15),
              ),
              SizedBox(height: 15.0),
              Text(
                '$totalCases',
                style: TextStyle(
                    color: colorCard,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15.0),
              Text(
                '$status',
                style: TextStyle(color: colorCard, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
