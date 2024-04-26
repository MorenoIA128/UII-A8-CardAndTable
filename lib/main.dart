import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Card and Table",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "      Inovatech Irvin 0393",
            style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.normal,
                fontSize: 28),
            textAlign: TextAlign.center,
          ),
          backgroundColor: Color(0xff060246),
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              width: 1000,
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("This card is pressed");
                },
                child: Card(
                  elevation: 40,
                  color: Color(0xffffffff),
                  shadowColor: Color(0xff004892),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        child: Image(
                          image: AssetImage("assets/compu.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Computadora i9",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "La Computadora i9 es una obra maestra de la ingeniería digital, diseñada para satisfacer las demandas . ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left, // Movido aquí
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Container(
                      child: Text(
                        "Opciones",
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Precio",
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Text(
                        "Tiempo",
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("Intel I-9"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("50,000"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("1 dia"),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("Ryzen 7 "),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("60,000"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text(" 1 mes"),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("Core i5"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("20,000"),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Text("2 dia"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
