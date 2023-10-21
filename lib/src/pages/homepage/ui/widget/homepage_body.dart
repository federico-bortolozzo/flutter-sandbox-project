import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/ui/view_model/homepage_view_model.dart';
import 'package:flutter_sandbox_project/theme/model/app_theme.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
class HomepageBody extends StatelessWidget{
  final HomepageViewModel viewModel;

  const HomepageBody({required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Scaffold(
      backgroundColor: theme.colors.surface.sectionBackground,
      appBar: AppBar(
        backgroundColor: theme.colors.accent.secondary,
        title: Text(viewModel.state.title ?? "-"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              'Hai selezionato il personaggio',
              style: theme.typography.body16,
            ),
            Text(
              '${viewModel.state.counter}',
              style: theme.typography.body18.copyWith(fontSize: 24),
            ),
            SizedBox(height: theme.dimensions.padding.s,),
            Text(
              '${viewModel.state.character?.name ?? "-"}',
              style: theme.typography.body18.copyWith(fontSize: 18),
            ),
            SizedBox(height: theme.dimensions.padding.l,),
            MaterialButton(onPressed: (){
              viewModel.changedTheme();
            },
            child: Text("Cambia tema", style: theme.typography.body18.copyWith(color:theme.colors.text.primary),),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme.colors.fill.primary,
        onPressed: () {
          viewModel.onIncrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

}