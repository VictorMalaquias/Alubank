import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentAContent()),
    );
  }
}

class _RecentAContent extends StatelessWidget {
  const _RecentAContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Row(
                children: [
                  ColorDot(color: ThemeColors.dot['orange']),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Saída'),
                      Text(
                        '\$9900,97',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: Row(
                children: [
                  ColorDot(color: ThemeColors.dot['purple']),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Entrada'),
                      Text(
                        '\$9900,97',
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text('Limite de gastos: \$432,90'),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
          child: const LinearProgressIndicator(
            value: 0.3,
            minHeight: 8,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        const Text(
            'Esse mês vocÊ gastou \$ 1500.00 com jogos. Tente abaixar este custo!'),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Diga-me como!',
              style: TextStyle(fontSize: 16),
            ))
      ],
    );
  }
}
