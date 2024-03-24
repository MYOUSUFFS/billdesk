// ignore_for_file: avoid_print

import 'package:billDeskSDK/sdk.dart';
import 'package:flutter/material.dart';

class SdkResponseHandler implements ResponseHandler {
  SdkResponseHandler({required this.context});
  BuildContext context;
  @override
  void onError(SdkError sdkError) {
    print("Dismiss $sdkError");
  }

  @override
  Future<void> onTransactionResponse(TxnInfo txnInfoMap) async {
    print("object");
    print("$txnInfoMap");

    String merchantId = '${txnInfoMap.txnInfoMap["merchantId"]}';
    String orderId = '${txnInfoMap.txnInfoMap["orderId"]}';
    print(merchantId);
    print(orderId);
  }
}
