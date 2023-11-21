import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../base/base_page_state.dart';
import '../../bloc/response/response_bloc.dart';

class PageOne extends StatefulWidget {
  static const String route = 'PageOne';

  final String title;

  const PageOne({required this.title, super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends BasePageState<PageOne, ResponseBloc> {
  @override
  void initState() {
    // TODO(LinhNguyen): implement initState
    super.initState();
    bloc.add(const CallResponse());
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          GestureDetector(
            onTap: () => bloc.add(const ClickScreen()),
            child: const Icon(Icons.arrow_forward_rounded),
          )
        ],
      ),
      body: BlocBuilder<ResponseBloc, ResponseState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Response from Api list: ${state.data.length}',
                ),
                // ListView.builder(
                //     itemCount: state.data.length, itemBuilder: itemBuilder)
              ],
            ),
          );
        },
      ),
    );
  }
}
