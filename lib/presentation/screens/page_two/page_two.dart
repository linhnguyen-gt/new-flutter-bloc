import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/base_page_state.dart';
import '../../../data/models/count/count_model.dart';
import '../../bloc/count/count_bloc.dart';

@RoutePage()
class PageTwo extends StatefulWidget {
  final CountModel countPageOne;

  const PageTwo({required this.countPageOne, super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends BasePageState<PageTwo, CountBloc> {
  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page Two'),
      ),
      body: BlocBuilder<CountBloc, CountState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    'List length page one params: ${widget.countPageOne.count}',
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '${state.count}',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
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
