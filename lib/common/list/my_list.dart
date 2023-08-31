import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class MyList<T> extends StatelessWidget {
  const MyList(
      {required this.itemBuilder,
      required this.data,
      required this.pagingController,
      super.key});

  final List<T> data;

  final PagingController<dynamic, T> pagingController;

  final Widget Function(
    BuildContext context,
    T item,
    int index,
  ) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final builderDelegate =
        PagedChildBuilderDelegate<T>(itemBuilder: itemBuilder);
    return PagedListView(
        pagingController: pagingController, builderDelegate: builderDelegate);
  }
}
