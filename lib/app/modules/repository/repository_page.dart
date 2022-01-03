import 'package:flutter/material.dart';
import 'package:masterclass_app/app/shared/widgets/empty_activity.dart';

class RepositoryPage extends StatefulWidget {
  const RepositoryPage({Key? key}) : super(key: key);

  @override
  _RepositoryPageState createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: EmptyActivity());
  }
}
