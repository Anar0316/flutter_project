import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'counter_viewmodel.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return ViewModelBuilder<CounterViewModel>.reactive(
      viewModelBuilder: () {
        // Load the old value the first time the page is built
        final viewModel = CounterViewModel();
        viewModel.loadData();
        return viewModel;
      },
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${model.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}