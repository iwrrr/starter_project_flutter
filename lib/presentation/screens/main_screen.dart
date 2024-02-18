import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/main_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const CircularProgressIndicator();
            }

            if (state is ProductSuccess) {
              final productList = state.data;
              return ListView.builder(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final product = productList[index];
                  return Text("${product.name}");
                },
              );
            }

            if (state is ProductError) {
              return Text(state.message);
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
