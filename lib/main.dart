import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subz/mainScreen.dart';
import 'package:subz/popups/SelectSection.dart';
import 'package:subz/popups/YourPoints.dart';
import 'package:subz/popups/earnCoins.dart';
import 'package:subz/popups/thankYou.dart';
import 'package:subz/screens/CardDetails.dart';
import 'package:subz/screens/EditProfile.dart';
import 'package:subz/screens/MyProfile.dart';
import 'package:subz/screens/OrderScreen.dart';
import 'package:subz/screens/ProductDetails.dart';
import 'package:subz/screens/SettingScreen.dart';
import 'package:subz/screens/Terms&Conditions.dart';
import 'package:subz/screens/VideosScreen.dart';
import 'package:subz/screens/changePassword.dart';
import 'package:subz/screens/checkOut.dart';
import 'package:subz/screens/createAccount.dart';
import 'package:subz/screens/homeScreen.dart';
import 'package:subz/screens/loginScreen.dart';
import 'package:subz/screens/otpVerification.dart';
import 'package:subz/screens/preLogins.dart';
import 'package:subz/screens/privacyPolicy.dart';
import 'package:subz/screens/searchScreen.dart';
import 'package:subz/screens/splashScreen.dart';
import 'package:subz/utils/routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        MyRoutes.MainScreen: (context) => MainScreen(),
        MyRoutes.PrivacyPolicy: (context) => PrivacyPolicy(),
        MyRoutes.TermsConditions: (context) => TermsConditions(),
        MyRoutes.ProductDetails: (context) => ProductDetails(),
        MyRoutes.CheckOut: (context) => CheckOut(),
        MyRoutes.ThankYou: (context) => ThankYou(),
        MyRoutes.YourPoint: (context) => YourPoints(),
        MyRoutes.EarnCoins: (context) => Earncoins(),
        MyRoutes.WatchVideos: (context) => WatchVideos(),
      },
    );
  }
}
