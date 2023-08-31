import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../base/base_page_state.dart';
import '../../bloc/count/count_bloc.dart';
import '../../model/count/count_model.dart';

class PageTwo extends StatefulWidget {
  static const String route = 'PageTwo';

  final String title;
  final CountModel countPageOne;

  const PageTwo({required this.title, required this.countPageOne, super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends BasePageState<PageTwo, CountBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<CountBloc, CountState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Count page one params: ${widget.countPageOne.count}',
                ),
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => bloc.add(const Count()),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
