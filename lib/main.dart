import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subz/popups/SelectSection.dart';
import 'package:subz/screens/CardDetails.dart';
import 'package:subz/screens/EditProfile.dart';
import 'package:subz/screens/MyProfile.dart';
import 'package:subz/screens/OrderScreen.dart';
import 'package:subz/screens/SettingScreen.dart';
import 'package:subz/screens/changePassword.dart';
import 'package:subz/screens/createAccount.dart';
import 'package:subz/screens/homeScreen.dart';
import 'package:subz/screens/loginScreen.dart';
import 'package:subz/screens/otpVerification.dart';
import 'package:subz/screens/preLogins.dart';
import 'package:subz/screens/searchScreen.dart';
import 'package:subz/screens/splashScreen.dart';
import 'package:subz/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      initialRoute: MyRoutes.SplashScreen,
      routes: {
        MyRoutes.SplashScreen: (context) => SplashScreen(),
        MyRoutes.PreLogins: (context) => PreLogins(),
        MyRoutes.LoginScreen: (context) => LoginScreen(),
        MyRoutes.CreateAccount: (context) => CreateAccount(),
        MyRoutes.OTPverification: (context) => OTPverification(),
        MyRoutes.ChangePassword: (context) => ChangePassword(),
        MyRoutes.HomeScreen: (context) => HomeScreen(),
        MyRoutes.SearchScreen: (context) => SearchScreen(),
        MyRoutes.SelectSection: (context) => SelectSection(),
        MyRoutes.MyProfile: (context) => MyProfile(),
        MyRoutes.EditProfile: (context) => EditProfile(),
        MyRoutes.SettingScreen: (context) => SettingScreen(),
        MyRoutes.OrderScreen: (context) => OrderScreen(),
        MyRoutes.CardDetails: (context) => CardDetails(),
      },
    );
  }
}
