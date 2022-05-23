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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello"),),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            // width: ads.myBanner!.size.width.toDouble(),
            // height:ads.myBanner!.size.height.toDouble(),
            child: AdWidget(ad: ads.myBanner!,),
          ),
          ElevatedButton(onPressed: () {

          }, child: Text("ad"))
        ],
      ),
    );

  }
}
