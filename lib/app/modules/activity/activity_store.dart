import 'package:flutter/material.dart';
import 'package:masterclass_app/app/modules/activity/widgets/empty_activity.dart';
import 'package:mobx/mobx.dart';

import 'widgets/activity_list_tile.dart';

part 'activity_store.g.dart';

class ActivityStore = _ActivityStoreBase with _$ActivityStore;

abstract class _ActivityStoreBase with Store {
  @observable
  String? title;
  @action
  Widget checkActivity(context) {
    if (title == 'Animações') {
      return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ActivityListTile(
            index: index,
            title: 'Exercicio ${index + 1}',
            route: '/animation/exercicio',
          );
        },
      );
    }
    if (title == 'Leitura de Mockup') {
      return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ActivityListTile(
            index: index,
            title: 'Exercicio ${index + 1}',
            route: '/layout/exercicio',
          );
        },
      );
    }
    if (title == 'Playground_') {
      return ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return ActivityListTile(
            index: index,
            title: 'Exercicio ${index + 1}',
            route: 'exercicio',
          );
        },
      );
    } else {
      return const EmptyActivity();
    }
  }
}
