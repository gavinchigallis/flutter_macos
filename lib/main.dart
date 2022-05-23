import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'pages/home_page.dart';

void main() {
  debugPaintSizeEnabled = false;
  debugPaintBaselinesEnabled = false;
  debugPaintLayerBordersEnabled = false;
  debugPaintPointersEnabled = false;
  debugRepaintRainbowEnabled = false;
  debugRepaintTextRainbowEnabled = false;
  //debugCheckElevationsEnabled = false;
  debugDisableClipLayers = false;
  debugDisablePhysicalShapeLayers = false;
  debugDisableOpacityLayers = false;
  runApp(NFTApp());
}

class NFTApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.lightBlue,
                buttonColor: Colors.deepPurple,
            ),
            home: HomePage(),
            routes: {
                //'/': (BuildContext context) => LaunchPage(),
                //'/launch': (BuildContext context) => LaunchPage(),
                '/home': (BuildContext context) => HomePage(),
                //'/feeds': (BuildContext context) => FeedPage(),
                //'/website': (BuildContext context) => BrowserPage("http://dynamicevolution.technology"),
            },
            /*onGenerateRoute: (RouteSettings setting){
                final List<String> pathElements = setting.name.split('/');
                if(pathElements[0] != ''){
                    return null;
                }
                if(pathElements[1] == 'user'){
                    final int index = int.parse(pathElements[2]);

                    return MaterialPageRoute<bool>(
                          builder: (BuildContext context) => homePage());
                }

                print('product not found');
                return null;
            },*/
            onUnknownRoute: (RouteSettings settings){
                return MaterialPageRoute(builder: (BuildContext context) => NFTApp());
            },
        );
    }
}