import 'package:auto_route/annotations.dart';
import 'package:bloc_small/bloc_small.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/response/response_bloc.dart';

@RoutePage()
class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends BaseBlocPageState<PageOne, ResponseBloc> {
  @override
  void initState() {
    // TODO(LinhNguyen): implement initState
    super.initState();
    bloc.add(const CallResponse());
  }

  Future<void> onRefresh() async {
    bloc.add(const CallResponse());
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Page One'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: GestureDetector(
              onTap: () => bloc.add(const ClickScreen()),
              child: const Icon(Icons.arrow_forward_rounded),
            ),
          )
        ],
      ),
      body: BlocBuilder<ResponseBloc, ResponseState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: onRefresh,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Text(
                      'Response from Api list: ${state.data.length}',
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.data.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        final item = state.data[index];
                        return ListTile(
                          title: Text(item.state ?? ''),
                          subtitle: Text('Population: ${item.population}'),
                          trailing: Text(item.year ?? ''),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
