import 'package:flutter/material.dart';
import 'package:flutter_chat_demo/const.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CurrencyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Currencies',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: CurrencyPageScreen(),
    );
  }
}

class CurrencyPageScreen extends StatefulWidget {
  @override
  State createState() => CurrencyPageScreenState();
}

class CurrencyPageScreenState extends State<CurrencyPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DataTable(
          columns:[
            DataColumn( label: Center(child: Center(child: Text('  ')  ))) ,
            DataColumn( label: Center(child:  Center(child: Text('Name') )) ),
            DataColumn(label: Center (child: Center(child: Text('Price') ))),
          ], 
          rows: [
            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/btc.svg",width :80,height :80) )) ,
               DataCell(  Center (child: Text('Bitcoin') ) ),
               DataCell(  Center (child: Text('34344.91') ) ),
             ]
            ),
            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/eth.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Etherium') ) ),
               DataCell( Center(child: Text('2321.74'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: Image.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/HEX.png",width :80,height :80))),
               DataCell(  Center (child: Text('HEX') ) ),
               DataCell( Center(child: Text('0.1198'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/usdt.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Tether') ) ),
               DataCell( Center(child: Text('0.8465'))),
             ]
            ),

             DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/bnb.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Binance Coin') ) ),
               DataCell( Center(child: Text('282.281'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/ada.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Cardano') ) ),
               DataCell( Center(child: Text('1.15710'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/XRP.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Ripple') ) ),
               DataCell( Center(child: Text('0.61780'))),
             ]
            ),
            
            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/usdc.svg",width :80,height :80))),
               DataCell(  Center (child: Text('USD Coin') ) ),
               DataCell( Center(child: Text('0.84621'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/doge.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Doge Coin') ) ),
               DataCell( Center(child: Text('0.16919'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/DOT.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Polkadot') ) ),
               DataCell( Center(child: Text('16.0458'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/UNISWAP.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Uniswap Protocol Token') ) ),
               DataCell( Center(child: Text('20.996'))),
             ]
            ),

             DataRow(
             cells : [
               DataCell(  Center(child: Image.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/BUSD.png",width :80,height :80))),
               DataCell(  Center (child: Text('Binance USD') ) ),
               DataCell( Center(child: Text('0.8466'))),
             ]
            ),
            
            DataRow(
             cells : [
               DataCell(  Center(child: SvgPicture.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/ltc.svg",width :80,height :80))),
               DataCell(  Center (child: Text('Litecoin') ) ),
               DataCell( Center(child: Text('122.032'))),
             ]
            ),

            DataRow(
             cells : [
               DataCell(  Center(child: Image.network("https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/theta.png",width :80,height :80))),
               DataCell(  Center (child: Text('Theta Token') ) ),
               DataCell( Center(child: Text('5.9607'))),
             ]
            ),
          ],
        )
      )
    );
  }
}
