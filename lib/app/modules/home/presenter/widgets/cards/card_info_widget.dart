import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_entity.dart';
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  final CovidEntity info;

  const CardInfoWidget({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 10),
            color: Colors.black12,
          ),
        ],
      ),
      padding: const EdgeInsets.all(15),
      child: Text(
        info.city ?? 'Não iformado.',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
