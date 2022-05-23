/*
import 'dart:html';
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utilities/helper.dart';
import '../utilities/widget_states.dart';

// ignore: must_be_immutable
class HeaderWidget extends StatefulWidget {

  HeaderWidget() {

  }

  @override
  _HeaderWidgetState createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  WIDGET_STATES _widgetState = WIDGET_STATES.HAS_DATA;
  Widget _view = Container();

  _HeaderWidgetState() {
  }


  @override
  void initState() {
    super.initState();
    
  }

  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    //Variables
    final Size deviceSize = MediaQuery.of(context).size;

    //Set view
    switch (this._widgetState) {
      case WIDGET_STATES.IS_LOADING:
      {
        this._view = SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(),
        ));
        break;
      }

      case WIDGET_STATES.HAS_DATA:
      {
        this._view = Container(
          color: Colors.white,
          height: deviceSize.height * 0.10,
          width: deviceSize.width,
          padding: EdgeInsets.only(
            left: 40,
            right: 10
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: (deviceSize.width * 0.20) - 20,
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      child: Image.asset("assets/images/icons/logo.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    const Text("COC NFT",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Ubuntu_Title"
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 400,
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(25.0),
                               
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Search NFT, Collection or Artist",
                            fillColor: HexColor("#f4f7ff"),
                            contentPadding: EdgeInsets.only(
                              top: 10
                            )
                          ),
                        ),
                      ),
                      Container(
                        //width: 400,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 140,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  radius: 0.8,
                                  focalRadius: 0.5,
                                  colors: [
                                    HexColor("#8b53be"),
                                    //HexColor("#105ba7"),
                                    HexColor("#1a409a")
                                  ],
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    padding: EdgeInsets.only(
                                      right: 10
                                    ),
                                    margin: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: HexColor("#248fd3").withOpacity(0.5),
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(30.0),
                                        bottomLeft: Radius.circular(30.0)
                                      )
                                    ),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      margin: EdgeInsets.only(
                                        right: 0
                                      ),
                                      decoration: BoxDecoration(
                                        color: HexColor("#4497ec"),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30.0),
                                          bottomRight: Radius.circular(30.0),
                                          topLeft: Radius.circular(30.0),
                                          bottomLeft: Radius.circular(30.0)
                                        )
                                      ),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        padding: EdgeInsets.all(5),
                                        child: Image.asset("assets/images/icons/ethereum.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: const Text("1493",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 5),
                                    child: const Text("ETH",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              padding: EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 5,
                                bottom: 5
                              ),
                              decoration: BoxDecoration(
                                color: HexColor("#d3d3d3").withOpacity(0.2),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)
                                )
                              ),
                              child: Text(
                                "👑",
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                //color: Colors.transparent,
                                color: HexColor("#d3d3d3").withOpacity(0.2),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40.0),
                                  bottomRight: Radius.circular(40.0),
                                  topLeft: Radius.circular(40.0),
                                  bottomLeft: Radius.circular(40.0)
                                )
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                      top: 5,
                                      bottom: 5
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent
                                    ),
                                    child: null
                                  ),
                                  Positioned(
                                    right: 5,
                                    //top: -5,
                                    child: Container(
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          bottomLeft: Radius.circular(10.0)
                                        )
                                      )
                                    )
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    padding: EdgeInsets.only(
                                      left: 10,
                                      right: 10,
                                      top: 5,
                                      bottom: 5
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent
                                    ),
                                    child: Icon(
                                      Icons.notifications
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: HexColor("#ecbe61"),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0),
                                      topLeft: Radius.circular(40.0),
                                      bottomLeft: Radius.circular(40.0)
                                    )
                                  ),
                                  child: null,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  padding: EdgeInsets.only(
                                    left: 5,
                                    right: 5,
                                    top: 5,
                                    bottom: 5
                                  ),
                                  child: Image.asset("assets/images/profile.png",
                                    fit: BoxFit.fill,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Maxine Joyl",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Creator",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ],     
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 40,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 20,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

        break;
      }

      case WIDGET_STATES.HAS_ERROR:
      {
        this._view = Container();
        break;
      }

      default:
      {
        this._view = Container();
        break;
      }
    }

    return this._view;
  }

}