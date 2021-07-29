// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app/proto/mars/export.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app/main.dart';
import 'package:alan/alan.dart';
import 'package:alan/proto/cosmos/bank/v1beta1/export.dart' as bank;

void main() {
  test('Counter increments smoke test', () async {
    // Create a wallet
    final networkInfo = NetworkInfo.fromSingleHost(
      bech32Hrp: 'desmos',
      host: 'localhost',
    );

    final mnemonicString =
        'vivid favorite regular curve check word bubble echo disorder cute parade neck rib evidence option glimpse couple force angry section dizzy puppy express cream';
    final mnemonic = mnemonicString.split(' ');
    final wallet = Wallet.derive(mnemonic, networkInfo);

    // 3. Create and sign the transaction
    final message = MsgCreatePost(
      title: 'FIRST POST',
      body: 'This is my first post body',
      creator: wallet.bech32Address,
    );

    final signer = TxSigner.fromNetworkInfo(networkInfo);
    final tx = await signer.createAndSign(wallet, [message]);

    // 4. Broadcast the transaction
    final txSender = TxSender.fromNetworkInfo(networkInfo);
    final response = await txSender.broadcastTx(tx);

    // Check the result
    if (response.isSuccessful) {
      print('Tx sent successfully. Response: ${response}');
    } else {
      print('Tx errored: ${response}');
    }
  });
}
