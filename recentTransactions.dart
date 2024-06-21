import 'package:banking_app/utilities/themeStyles.dart';
import 'package:banking_app/widgets/transactionCard.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatefulWidget {
  @override
  _RecentTransactionsState createState() => _RecentTransactionsState();
}

class _RecentTransactionsState extends State<RecentTransactions> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              bottom: 16.0,
              top: 32.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Transactions', style: ThemeStyles.primaryTitle),
                Text('See All', style: ThemeStyles.seeAll),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                TransactionCard(
                  color: Colors.black,
                  letter: 'N',
                  title: 'Nafees Ahmad',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.720,30 €',
                ),
                TransactionCard(
                  color: Color(0xfffe695d),
                  letter: 'N',
                  title: 'Nafees',
                  subTitle: ' Hotel Booking',
                  price: '- 620,30 €',
                ),
                TransactionCard(
                  color: Color(0xff103289),
                  letter: 'M',
                  title: 'Moin',
                  subTitle: ' UI Kit',
                  price: '- 59,99 €',
                ),
                TransactionCard(
                  color: Colors.greenAccent,
                  letter: 'S',
                  title: 'Sharyar',
                  subTitle: 'Finance Landing Page',
                  price: '- 5.720,30 €',
                ),
                TransactionCard(
                  color: Colors.amberAccent,
                  letter: 'F',
                  title: 'Fahad',
                  subTitle: ' UI Kit',
                  price: '- 59,99 €',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
