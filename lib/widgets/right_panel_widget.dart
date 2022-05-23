/*
import 'dart:html';
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utilities/widget_states.dart';

// ignore: must_be_immutable
class RightPanelWidget extends StatefulWidget {

  RightPanelWidget() {

  }

  @override
  _RightPanelWidgetState createState() => _RightPanelWidgetState();
}

class _RightPanelWidgetState extends State<RightPanelWidget> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  WIDGET_STATES _pageState = WIDGET_STATES.HAS_DATA;
  WIDGET_STATES _mainDisplayState = WIDGET_STATES.HAS_DATA;
  Widget _view = Container();

  _RightPanelWidgetState() {
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
        this._view = Container();
        break;
      }

      case WIDGET_STATES.HAS_DATA:
      {
        this._view = Container(
          color: Colors.white,
          height: deviceSize.height,
          width: deviceSize.width * 0.25,
          child: const Text("Right Panel",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
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