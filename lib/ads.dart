import 'package:google_mobile_ads/google_mobile_ads.dart';

class ads {
  static BannerAd? myBanner;
  static RewardedAd? rewardedAd;

  static bannerad() {
    myBanner = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(

        onAdLoaded: (Ad ad) => print('Ad loaded.'),
        // Called when an ad request failed.
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          // Dispose the ad here to free resources.
          ad.dispose();
          print('Ad failed to load: $error');
        },
        // Called when an ad opens an overlay that covers the screen.
        onAdOpened: (Ad ad) => print('Ad opened.'),
        // Called when an ad removes an overlay that covers the screen.
        onAdClosed: (Ad ad) => print('Ad closed.'),
        // Called when an impression occurs on the ad.
        onAdImpression: (Ad ad) => print('Ad impression.'),
      ),
    );
    myBanner!.load();
  }

  static createRewardedAd() {

    RewardedAd(
        adUnitId: 'ca-app-pub-3940256099942544/5224354917',
        adRequest: AdRequest(),
    rewardedAdLoadCallback: RewardedAdLoadCallback(
    onAdLoaded: (RewardedAd ad) {
    print('$ad loaded.');
    // Keep a reference to the ad so you can show it later.
    rewardedAd = ad;
    },
    onAdFailedToLoad: (LoadAdError error) {
    print('RewardedAd failed to load: $error');
    },
    ) );
  }
}