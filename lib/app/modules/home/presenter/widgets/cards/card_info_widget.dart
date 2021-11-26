import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_entity.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  final CovidEntity info;

  const CardInfoWidget({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final Color gravityColor;

    if (info.deathRate == null) {
      gravityColor = Colors.grey.shade200;
    } else if (info.deathRate! <= 0.1) {
      gravityColor = Colors.green;
    } else if (info.deathRate! <= 0.2) {
      gravityColor = Colors.yellow;
    } else if (info.deathRate! <= 0.4) {
      gravityColor = Colors.orange;
    } else if (info.deathRate! <= 0.6) {
      gravityColor = Colors.red.shade300;
    } else if (info.deathRate! <= 0.8) {
      gravityColor = Colors.red.shade400;
    } else {
      gravityColor = Colors.red.shade900;
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        decoration: BoxDecoration(
          color: gravityColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 10,
              offset: Offset(0, 10),
              color: Colors.black12,
            ),
          ],
        ),
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(info.city ?? 'Não iformado.',
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      fontWeight: FontWeight.bold,
                                    )),
                        const SizedBox(height: 5),
                        Text(
                          info.state ?? 'Não iformado.',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    info.cityIbgeCode ?? '-',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Casos confirmados:',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '${info.confirmed ?? '-'}',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Óbitos',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${info.deaths ?? '-'}',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
