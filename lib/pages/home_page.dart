/*
import 'dart:html';
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_macos/utilities/helper.dart';
import 'package:flutter_macos/widgets/header_widget.dart';
import 'package:flutter_macos/widgets/navbar_widget.dart';
import 'package:flutter_macos/widgets/right_panel_widget.dart';

import '../utilities/widget_states.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {

  HomePage() {

  }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  WIDGET_STATES _pageState = WIDGET_STATES.HAS_DATA;
  WIDGET_STATES _mainDisplayState = WIDGET_STATES.HAS_DATA;
  Widget _view = Container();

  _HomePageState() {
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
    switch (this._pageState) {
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
        this._view = SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                children: [
                  HeaderWidget(),
                  Container(
                    height: deviceSize.height * 0.9,
                    child: Row(
                      children: [
                        NavBarWidget(),
                        Expanded(
                          child: _mainDisplay()
                        ),
                        RightPanelWidget()
                      ],
                    ),
                  )
                ],
              ),
            )
          )
        );

        break;
      }

      case WIDGET_STATES.HAS_ERROR:
      {
        this._view = SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Container()
            )
        );
        break;
      }

      default:
      {
        this._view = SafeArea(
            child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(),
          )
        );
        break;
      }
    }

    return this._view;
  }

  Widget _mainDisplay() {
    //Variables
    final Size deviceSize = MediaQuery.of(context).size;

    switch (this._mainDisplayState) {
      
      case WIDGET_STATES.INITIAL_STATE:
      {
        return Container();
        break;
      }

      case WIDGET_STATES.IS_LOADING:
      {
        return Container(
            width: 50,
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: CircularProgressIndicator(
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.indigo),
              ),
            ),
        );
        break;
      }

      case WIDGET_STATES.NO_DATA:
        {
          return Container();
          break;
        }

      case WIDGET_STATES.HAS_DATA:
      {
        return Container(
          color: HexColor("#f4f7ff"),
          width: deviceSize.width * 0.5,
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
            bottom: 20
          ),
          child: Column(
            children: [
              Container(
                width: deviceSize.width * 0.5,
                height: 200,
                child: Stack(
                  children: [
                    Container(
                      width: deviceSize.width * 0.5,
                      height: 200,
                      child: null,
                    ),
                    Positioned(
                      bottom: 0,
                      child:Container(
                        width: deviceSize.width * 0.5,
                        height: 170,
                        decoration: BoxDecoration(
                          //color: Colors.blue[500],
                          image: DecorationImage(
                            image: AssetImage("assets/images/banner_background.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 350,
                              margin: EdgeInsets.only(
                                left: 40
                              ),
                              child: const Text("Discover, Collect, Sell and Create your own NFT",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500
                                ),
                              )
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 120,
                              margin: EdgeInsets.only(
                                left: 40,
                                right: 40
                              ),
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 10,
                                bottom: 10
                              ),
                              decoration: BoxDecoration(
                                color: HexColor("#f5f5f5").withOpacity(0.20),
                                border: Border.all(
                                  color: Colors.white,// set border color
                                  width: 1.0
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0)
                                )
                              ),
                              child: const Text("Discover Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal
                                ),
                              )
                            )
                          ],
                        ),
                      )
                    ),
                    Positioned(
                      right: 50,
                      child: Container(
                        width: 100,
                        height: 200,
                        child: Image.asset("assets/images/astronaut.png",
                          fit: BoxFit.fill,
                        ),
                      )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.blue,
                width: deviceSize.width * 0.5,
                height: 150,
                child: const Text("Collections",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.yellow,
                width: deviceSize.width * 0.5,
                height: 150,
                child: const Text("NFT",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                  ),
                ),
              )
            ],
          ),
        );
        break;
      }

      case WIDGET_STATES.HAS_ERROR:
      {
        return Container();
        break;
      }

      default:
      {
        return Container();
        break;
      }
    }
  }


  /*
  * @Description: 
  *
  * @param:
  *
  * @return: widget
  */
  /*Future<void> _postCountries() async {
    
    setState(() {
        this._isLoadingCountries = true;
        this._mainDisplayState = WIDGET_STATES.IS_LOADING;
    });
    
    
    HttpRepos.countryRepo.countries()
    .then((value) {
        print("Success: _postCountries");
        print("value:");
        print(value.toJson().toString());

        setState(() {
            this._isLoadingCountries = false;
            //_countriesResponse = value;
            //_filteredCountriesResponse = value;
            _mainDisplayState = WIDGET_STATES.HAS_DATA;
        });
    },
    onError: (error) {
        print("onError: _postCountries");
        
        setState(() {
            this._isLoadingCountries = false;
            _mainDisplayState = WIDGET_STATES.HAS_ERROR;
        });

        if (error != null) {
            _helper.logger.e(error);
            _helper.logger.e(StackTrace.current);
            //TODO: Show error dialog
            return Center(child: Text(error.toString()));
        }
    })
    .catchError((error){
        print("catchError: _postCountries");
        print(error);
        
        setState(() {
            this._isLoadingCountries = false;
            _mainDisplayState = WIDGET_STATES.HAS_ERROR;
        });
    });
  }*/

}