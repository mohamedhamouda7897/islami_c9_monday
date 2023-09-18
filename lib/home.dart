import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_c9_mon/my_theme_data.dart';
import 'package:islami_c9_mon/tabs/ahadeth.dart';
import 'package:islami_c9_mon/tabs/quran.dart';
import 'package:islami_c9_mon/tabs/radio.dart';
import 'package:islami_c9_mon/tabs/sebha.dart';
import 'package:islami_c9_mon/tabs/settings.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = "Homee";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.appTitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/quran.png")),
                  label: "Quran",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                  label: "Sebha",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio.png")),
                  label: "Radio",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "Ahadeth",
                  backgroundColor: MyThemeData.primary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Settings",
                  backgroundColor: MyThemeData.primary),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];
}
