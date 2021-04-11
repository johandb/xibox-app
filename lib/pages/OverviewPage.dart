import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:xibox_app/model/Xibox.dart';
import 'package:xibox_app/utils/constants.dart';

class OverviewPage extends StatelessWidget {
  final String today = DateFormat('EEEE d MMMM').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Card(
            child: Column(
              children: [
                // SizedBox(
                //   height: 20.0,
                // ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Incoming XiBox',
                    style: TextStyle(color: kBlue80, fontSize: 24.0),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      width: 90.0,
                      height: 90.0,
                      image: AssetImage('images/icons/box.png'),
                    ),
                    Image(
                      width: 90.0,
                      height: 90.0,
                      image: AssetImage('images/icons/dots.png'),
                    ),
                    Image(
                      width: 90.0,
                      height: 90.0,
                      image: AssetImage('images/icons/home.png'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Center(
                        child: Text('Today', style: TextStyle(color: kBlue80, fontSize: 24.0)),
                      ),
                      Center(
                        child: Text(today, style: TextStyle(color: kBlue80, fontSize: 24.0)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: XiboxListView(),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Card(
              child: Container(
                alignment: Alignment.topLeft,
                transform: Matrix4.translationValues(0.0, -15.0, 0.0),
                margin: EdgeInsets.only(left: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Balance',
                      style: TextStyle(color: kBlue80, fontSize: 24.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: kBlue80),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              kEuro + '32,50',
                              style: TextStyle(fontSize: 32.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 150.0,
                          decoration: BoxDecoration(
                            border: Border.all(color: kBlue80),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              kEuro + '5,50',
                              style: TextStyle(fontSize: 32.0),
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
          Card(
            child: Container(
              color: kGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      print('scanning');
                    },
                    child: Image(
                      width: 90.0,
                      height: 90.0,
                      image: AssetImage('images/icons/scan.png'),
                    ),
                  ),
                  Text(
                    'Scan XiBox',
                    style: TextStyle(fontSize: 32.0, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class XiboxListView extends StatelessWidget {
  final List<Xibox> entries = <Xibox>[
    Xibox(from: '12:30', to: '14:45', carrier: 'PostNL', retailer: 'Zalando Lounge', count: 1),
    Xibox(from: '15:30', to: '17:30', carrier: 'DHL', retailer: 'Bol.com', count: 3),
    Xibox(from: '17:00', to: '21:00', carrier: 'GLS', retailer: 'Wehkamp.nl', count: 2),
    Xibox(from: '17:00', to: '21:00', carrier: 'UPS', retailer: 'Amazon.nl', count: 1)
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Expected arrival',
                      style: TextStyle(fontSize: 18.0, color: kBlue80),
                    ),
                    Text(
                      entries[index].from + '-' + entries[index].to,
                      style: TextStyle(fontSize: 22.0, color: kBlue80),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entries[index].retailer,
                      style: TextStyle(fontSize: 14.0, color: kBlue80),
                    ),
                    Text(
                      entries[index].carrier,
                      style: TextStyle(fontSize: 14.0, color: kBlue80),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Stack(
                      children: [
                        Image(
                          width: 32.0,
                          height: 32.0,
                          image: AssetImage('images/icons/hexagon.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 11.0, top: 5.0),
                          child: Text(
                            entries[index].count.toString(),
                            style: TextStyle(fontSize: 18, color: kBlue80),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
