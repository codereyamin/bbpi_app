import 'package:bbpi_app/const/app_const.dart';
import 'package:bbpi_app/main.dart';
import 'package:bbpi_app/page/home_page.dart';
import 'package:bbpi_app/ui/splashscreen.dart';

class App_routs{
  static final init_routs = App_const.splashscreen;


  static final routes = {
    App_const.first:(context)=> MyHomePage(),
    App_const.homepage:(context)=> HomePage(),
    App_const.splashscreen:(context)=> Splashscreen(),

  };
}