// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:billDeskSDK/sdk.dart';
import 'package:flutter/material.dart';

import 'SDKResponseHandler.dart';

// const String authCode =
//     "OToken efe059fc8f1b222317151af5bbc0197cda0fc8ec04b3d595831bb89133df6ae049b7a74a9f2406982c17e2728ac9ef07d8b4e6ff54a33e4ff6f4f34406168257883e9e8c38be1bd3ed14d8405556f50c4a89147d9a96c54141b9b4a5cb80a9fc613235b9edf67622804f3399848c46fbb68e626569aa5f814eed4ece9d19b3ced7716e4bd42154796695f3c88d5e72b58e0c477f63e11501694f.4145535f55415431";
// const String imageCode =
//     "data:image/jpeg;base64,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";
// final Map<String, dynamic> flowConfigMap = {
//   "merchantId": "V2UATBDSK",
//   "bdOrderId": "OAKV19XTQSGZBG",
//   "authToken": authCode,
//   "childWindow": false,
//   "retryCount": 2,
// };
// final Map<String, dynamic> sdkConfigMap = {
//   "flowConfig": flowConfigMap,
//   "flowType": "payments",
//   "merchantLogo": imageCode
// };

class MyBillDesk {
  Future<Map<String, dynamic>?> _config() async {
    try {
      final url = Uri.parse(
          "https://ecfilesolutions.com/ecpaye/user/rech-and-bill/rec-bill-bd");
      final response = await http.post(
        url,
        body: json.encode({
          "amount": "1",
          "consumer_number": "75346789757",
          "operator_code": "ICFFR",
          "details": null,
          "use_my_wallet_rewards": false
        }),
        headers: {
          "Content-Type": "application/json",
          //Todo :- this is our app token.
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1ZmIzZGYzN2IxNGEyYTgwMGE1ZTNjYmQxIiwiaWF0IjoxNzExMjg4MjAyLCJleHAiOjE3MTEzNzQ2MDJ9.jxK7vpGj8HVcLi1rsmLY7KJBhON9v9DRGaBA4jg3-MM'
        },
      );
      print(jsonDecode(response.body));
      return jsonDecode(response.body);
    } catch (e) {
      debugPrint(e.toString());
      return {};
    }
  }

  lanchWebView(BuildContext context) async {
    ResponseHandler responseHandler = SdkResponseHandler(context: context);
    final opject = await _config();
    if (opject?["options"] != null) {
      final sdkConfig = SdkConfig(
        sdkConfigJson: SdkConfiguration.fromJson(opject?["options"]),
        responseHandler: responseHandler,
        isUATEnv: false,
        isDevModeAllowed: true,
        isJailBreakAllowed: false,
        shouldUseOldUat: true,
      );
      SDKWebView.openSDKWebView(sdkConfig);
    }
  }
}
