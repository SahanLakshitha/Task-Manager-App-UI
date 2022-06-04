import 'dart:ui';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/consts/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        /*shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(45),
          ),
        ),*/
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          )
        ],
        //title: const Text("Home"),
        backgroundColor: AppColors.appbarColor,
        elevation: 0.0,
        toolbarHeight: 60,
        //centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/back.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularPercentIndicator(
                      radius: 120.0,
                      lineWidth: 10.0,
                      animation: true,
                      percent: 0.75,
                      center: Container(
                        // padding: EdgeInsets.all(10),
                        // margin: new EdgeInsets.symmetric(horizontal: 20.0),

                        width: 80,
                        height: 80,

                        decoration: BoxDecoration(
                          color: AppColors.appbarColor,
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('lib/assets/profile.jpg')),
                        ),
                        //child: Image.asset('lib/assets/profile.jpg')
                      ),
                      footer: new Text(
                        "",
                        style: new TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17.0),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.red,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sourav Suman",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 25.0,
                              fontFamily: 'Raleway',
                              color: AppColors.fontColor),
                        ),
                        const Text(
                          "App Developer",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17.0,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                height: 180,
                width: 500,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0)),
                  color: AppColors.appbarColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "My Tasks",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25.0,
                          color: AppColors.fontColor),
                    ),
                  ),
                  SizedBox(
                    child: Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.green,
                      ),
                      child: ClipOval(
                        child: Material(
                          color: Colors.green, // button color
                          child: InkWell(
                            splashColor: Colors.green, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.calendar_today), // icon
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.green,
                        ),
                        child: ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.green, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.alarm), // icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To Do",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                color: AppColors.fontColor),
                          ),
                          const Text(
                            "5 tasks now,1 started",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.yellow,
                        ),
                        child: ClipOval(
                          child: Material(
                            color: Colors.yellow, // button color
                            child: InkWell(
                              splashColor: Colors.yellowAccent, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.radio_button_on), // icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "In Progress",
                            style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 20.0,
                                color: AppColors.fontColor),
                          ),
                          const Text(
                            "1 tasks now,1 started",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.blueAccent,
                        ),
                        child: ClipOval(
                          child: Material(
                            color: Colors.blueAccent, // button color
                            child: InkWell(
                              splashColor: Colors.blueAccent, // splash color
                              onTap: () {}, // button pressed
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                  Icon(Icons.check_circle_outline), // icon
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Done",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20.0,
                              color: AppColors.fontColor,
                            ),
                          ),
                          const Text(
                            "18 tasks now,13 started",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(5),
                child: Text(
                  "Active projects",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 25.0,
                      fontFamily: 'Raleway',
                      color: AppColors.fontColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 10.0,
                          animation: true,
                          percent: 0.25,
                          center: new Text(
                            "25%",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                          footer: new Text(
                            "\n",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.white,
                        ),
                        const Text(
                          "Medical App",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "9 hours progress",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        const Text(""),
                      ],
                    ),
                    alignment: Alignment.bottomLeft,
                    width: 180,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.greenAccent,
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new CircularPercentIndicator(
                          radius: 120.0,
                          lineWidth: 10.0,
                          animation: true,
                          percent: 0.6,
                          center: new Text(
                            "60%",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                                color: Colors.white),
                          ),
                          footer: new Text(
                            "",
                            style: new TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.white,
                        ),
                        const Text(
                          "Making History Notes",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "20 hours progress",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white,
                          ),
                        ),
                        const Text(""),
                      ],
                    ),
                    width: 180,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: 180,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.yellow,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomLeft,
                    width: 180,
                    height: 250,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
