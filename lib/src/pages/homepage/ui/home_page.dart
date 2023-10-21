import 'package:flutter/material.dart';
import 'package:flutter_sandbox_project/src/common/ui/app_circular_progress_indicator.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/ui/view_model/homepage_view_model.dart';
import 'package:flutter_sandbox_project/src/pages/homepage/ui/widget/homepage_body.dart';
import 'package:provider/provider.dart';

/**
 * @Author Federico Bortolozzo
 * Flutter Developer
 * on 05/09/23.
 */
class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomepageViewModel>(
        builder: (context,
            viewModel,
            _,) {
          return Stack(
            children: [
              HomepageBody(viewModel: viewModel),
              if (viewModel.state.isLoading)
                AppCircularProgressIndicator(
                  spinnerColor: Colors.green,
                  backgroundColor: Colors.white.withOpacity(0.8),
                ),
            ],
          );
        });
  }
}
