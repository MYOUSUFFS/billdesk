import 'package:billDeskSDK/sdk.dart';

final String auth_code =
    "OToken 1c3c06ef2acd5117050b376e07d01d03e86f8c25cdfb058b6726055cce0a94c965ce7be46ee2b47a112130c870067733a3389ff733e2098d71970dbf391eaa178f2922cf7471193c265b2da46d460b7ceb52bfe1118607ec76ab2d6b8f1a4ce7f82074852aa69e67123ba62941ada31e591b53c093bb05ceeb97c39be76e72c11312fbaab29f02775316b1b240cdb4a9b8b3e3fa92502250ce55.4145535f55415431";
final String image_code =
    "data:image/jpeg;base64,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";

final Map<String, dynamic> flowConfigMap = {
  "merchantId": "V2UATBDSK",
  "bdOrderId": "OAQB19XTQU6R8A",
  "authToken": "${auth_code}",
  "childWindow": true,
  // "childWindow": false,
  "retryCount": 2,
  // "prefs": {
  //   "payment_categories": ["card", "nb"],
  //   "allowed_bins": ["459150", "525211"]
  // }
};

final Map<String, dynamic> sdkConfigMap = {
  "flowConfig": flowConfigMap,
  "flowType": "payments",
  "merchantLogo": "${image_code}",
  "themeConfig": {
    "sdkPrimaryColor": "#69068a",
    "sdkAccentColor": "#cf5df5",
    "sdkBackgroundColor": "#f2caff",
    "sdkBannerColor": "#982cbb"
  }
};

class MyBillDesk {
  static lanchWebView() {
    final sdkConfig = SdkConfig(
      sdkConfigJson: SdkConfiguration.fromJson(sdkConfigMap),
      responseHandler: ResponseHandler(),
      isUATEnv: true,
    );
    SDKWebView.openSDKWebView(sdkConfig);
  }
}
