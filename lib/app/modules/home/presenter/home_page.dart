import 'package:digistarts_challenge/app/core/enums/window_mode.dart';
import 'package:digistarts_challenge/app/core/utils/helpers.dart';
import 'package:digistarts_challenge/app/modules/home/domain/entities/covid_result_entity.dart';
import 'package:digistarts_challenge/app/modules/home/infra/models/covid_result_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import 'home_store.dart';
import 'widgets/cards/card_info_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  final ScrollController listController = ScrollController();

  @override
  void initState() {
    store.getCovidSearch(search: 'search');
    super.initState();
  }

  @override
  void dispose() {
    listController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Colors.white,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          switch (Helpers.getWindowMode(constraints.maxWidth)) {
            case WindowMode.desktopLarge:
              return _buildPhoneBodyWidget;
            case WindowMode.desktop:
              return _buildPhoneBodyWidget;
            case WindowMode.tabletLandscape:
              return _buildPhoneBodyWidget;
            case WindowMode.tabletPortrait:
              return _buildPhoneBodyWidget;
            case WindowMode.phone:
              return _buildPhoneBodyWidget;
          }
        },
      ),
    );
  }

  Widget get _buildPhoneBodyWidget {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: SafeArea(
              bottom: false,
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/2400/1500',
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Leonardo E D S Bidó',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '@leodbidoous',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.only(top: 2.5),
              child: SafeArea(
                bottom: false,
                top: false,
                child: _buildCovidListWidget,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildCovidListWidget {
    return TripleBuilder<HomeStore, Exception, CovidResultEntity>(
      store: store,
      builder: (_, triple) {
        final List _list = triple.state.results;
        return Scrollbar(
          controller: listController,
          child: ListView.separated(
            itemCount: _list.length,
            controller: listController,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            separatorBuilder: (_, __) => const SizedBox(height: 15),
            itemBuilder: (_, index) {
              return SafeArea(
                top: false,
                bottom: _list[index] == triple.state.results.last,
                child: CardInfoWidget(info: _list[index]),
              );
            },
          ),
        );
      },
    );
  }
}
