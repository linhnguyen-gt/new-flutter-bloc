import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/response_bloc.dart';
import '../page_two/page_two.dart';

class PageOne extends StatefulWidget {
  static const String route = 'PageOne';

  final String title;

  const PageOne({required this.title, super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  final responseBloc = ResponseBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    responseBloc.add(const CallResponse());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResponseBloc>(
      create: (context) => responseBloc,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
          actions: [
            GestureDetector(
              onTap: () => context.pushNamed(PageTwo.route),
              child: const Icon(Icons.arrow_forward_rounded),
            )
          ],
        ),
        body: BlocBuilder<ResponseBloc, ResponseState>(
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'You have pushed the button this many times: ${state.count}',
                  ),
                  Text(
                    'Response from Api list: ${state.data.length}',
                  ),
                ],
              ),
            );
          },
        ),
        floatingActionButton: BlocBuilder<ResponseBloc, ResponseState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () => responseBloc.add(const Count()),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            );
          },
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
