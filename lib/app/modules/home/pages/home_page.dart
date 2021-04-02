import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../cubits/heros/heros_cubit.dart';
import '../widgets/heros_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _herosCubit = Modular.get<HerosCubit>();
  @override
  void initState() {
    super.initState();
    _herosCubit.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: BlocBuilder<HerosCubit, HerosState>(
          cubit: _herosCubit,
          builder: (_, state) {
            return state.maybeWhen(
              loadLoading: () => CircularProgressIndicator(),
              loadFailure: (message) => Text("$message"),
              loadLoadded: (data) => HerosWidget(data: data),
              orElse: () => Container(),
            );
          },
        ),
      ),
    );
  }
}
