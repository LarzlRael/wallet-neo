import 'package:flutter/material.dart';
import 'package:neo_wallet/navigation/bottom_navigation.dart';
import 'package:neo_wallet/pages/loading_page.dart';
import 'package:neo_wallet/pages/login_page.dart';
import 'package:neo_wallet/pages/managament_page.dart';
import 'package:neo_wallet/pages/new_wallet.dart';
import 'package:neo_wallet/pages/qr_page.dart';
import 'package:neo_wallet/pages/register_page.dart';
import 'package:neo_wallet/pages/send_page.dart';
import 'package:neo_wallet/pages/transaction_by_wallet.dart';
import 'package:neo_wallet/pages/user_transactions_history_page.dart';
import 'package:neo_wallet/pages/users_wallet_select.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  /* Register and login  */
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),

  //? Bottom navigation pages
  'home': (_) => BottomNavigation(),
  'loading': (_) => LoadingPage(),
  'transactionHistory': (_) => UserTransactionsHistoryPage(),

  // ?
  'sendPage': (_) => SendPage(),
  'newWallet': (_) => NewWallet(),
  'qrPage': (_) => QrPage(),
  'usersWallets': (_) => ManagamentPage(),
  'userWalletSelect': (_) => UserWalletSelect(),
  'transactionByWallet': (_) => TransactionByWallet(),
};
