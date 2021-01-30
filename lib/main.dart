import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Color.fromRGBO(120, 161, 202, 1),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(fontSize: 25, color: Colors.black),
                        ),
                        Row(
                          children: [
                            Text("Filters Result For - "),
                            Text("Today",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(120, 161, 202, 1),
                      ),
                      height: 50,
                      width: 50,
                      // onPressed: () {},
                      child: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.white,
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              // color: ,
                              Text(
                                "1000",
                                style: TextStyle(
                                    color: Color.fromRGBO(120, 161, 202, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Total Orders",
                                style: TextStyle(
                                  // color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                        onPressed: () {})
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              // color: ,
                              Text(
                                "10%",
                                style: TextStyle(
                                    color: Color.fromRGBO(120, 161, 202, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Dilevered %",
                                style: TextStyle(
                                  // color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  // fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons.arrow_forward_ios_outlined),
                        onPressed: () {})
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  // color: ,
                                  Text(
                                    "40%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(120, 161, 202, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "RTO %",
                                    style: TextStyle(
                                      // color: Color.fromRGBO(120, 161, 202, 1),
                                      fontSize: 18,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                              onPressed: () {})
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "RTO Summary",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      PieChart(
                          // chartType: ChartType.ring,
                          // centerText: "RTO %",
                          dataMap: {
                            "Good": 4,
                            "Average": 4,
                            "Danger": 1,
                            "Blocked": 2,
                          }),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  // color: ,
                                  Text(
                                    "20%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(120, 161, 202, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Return %",
                                    style: TextStyle(
                                      // color: Color.fromRGBO(120, 161, 202, 1),
                                      fontSize: 18,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                              onPressed: () {})
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Return Pending"),
                          Text("\$2076",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Return Settled"),
                          Text("\$2076",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  // color: ,
                                  Text(
                                    "20%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(120, 161, 202, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "Cancel %",
                                    style: TextStyle(
                                      // color: Color.fromRGBO(120, 161, 202, 1),
                                      fontSize: 18,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.arrow_forward_ios_outlined),
                                  onPressed: () {}),
                              Text("Order Count")
                            ],
                          )
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("By Customer"),
                          Text("1000",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("By Resellmall"),
                          Text("1000",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("By Me"),
                          Text("1000",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Row(
                                children: [
                                  // color: ,
                                  Text(
                                    "\$1000",
                                    style: TextStyle(
                                        color: Color.fromRGBO(120, 161, 202, 1),
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    "GMV",
                                    style: TextStyle(
                                      // color: Color.fromRGBO(120, 161, 202, 1),
                                      fontSize: 18,
                                      // fontWeight: FontWeight.bold
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios_outlined),
                              onPressed: () {})
                        ],
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("GMV Settled"),
                          Text("\$1000",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("GMV Pending"),
                          Text("\$1000",
                              style: TextStyle(
                                  color: Color.fromRGBO(120, 161, 202, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8),
                  child: Text(
                    "Summary Sheet",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(120, 161, 202, 1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
