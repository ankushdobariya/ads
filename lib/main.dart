import 'package:ads/ads.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(MaterialApp(home: gads(),));
}
class gads extends StatefulWidget {


  @override
  State<gads> createState() => _gadsState();
}

class _gadsState extends State<gads> {

  @override
  void initState() {
    super.initState();
    // Load ads.
    ads.bannerad();
    ads.showRewardedAd();
    ads.createRewardedAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello"),),
      body:  ElevatedButton(onPressed: () {

        ads.createRewardedAd();
        ads.showRewardedAd();

      }, child: Text("ad"))
    );

  }
}
