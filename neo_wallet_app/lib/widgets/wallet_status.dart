import 'package:flutter/material.dart';
import 'package:neo_wallet/widgets/widgets.dart';

class WalletStatus extends StatelessWidget {
  final bool showButton;
  final num walletHeightSize;

  const WalletStatus(
      {required this.showButton, required this.walletHeightSize});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    final titleStyle = TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500);
    final subTitleStyle = TextStyle(color: Colors.white, fontSize: 13);

    return Container(
      height: mediaQuery.height * walletHeightSize,
      width: double.infinity,
      /* color: Colors.blue, */
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF06B1FF),
            Color(0xFF0076FE),
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Etherum', style: titleStyle),
                Text('1740.58 USD per ETH', style: subTitleStyle),
              ],
            ),
            Column(
              children: [
                Text('0.00000000012 ETH', style: titleStyle),
                Text('0.47 USD', style: subTitleStyle),
              ],
            ),
            showButton
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ButtonWithIcon(
                        label: 'Enviar',
                        icon: (Icons.send_and_archive_rounded),
                        buttonBorderPrimary: false,
                        onPressed: () {},
                      ),
                      ButtonWithIcon(
                        label: 'Recibir',
                        icon: (Icons.qr_code),
                        buttonBorderPrimary: false,
                        onPressed: () {},
                      ),
                    ],
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}