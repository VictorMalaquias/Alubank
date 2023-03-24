import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            'Acões da conta',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: const BoxCard(
                boxContent: _AccountsAContent(
                  icon: Icon(Icons.account_balance_wallet),
                  text: 'Depositar',
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const BoxCard(
                boxContent: _AccountsAContent(
                  icon: Icon(Icons.cached),
                  text: 'Transferir',
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const BoxCard(
                boxContent: _AccountsAContent(
                  icon: Icon(Icons.center_focus_strong),
                  text: 'Ler',
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}

class _AccountsAContent extends StatelessWidget {
  final Icon icon;
  final String text;
  const _AccountsAContent({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          Text(text)
        ],
      ),
    );
  }
}
