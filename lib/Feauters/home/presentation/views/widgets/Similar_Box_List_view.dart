import 'package:bookly/Feauters/home/presentation/manager/similarbooks%20cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:bookly/core/widgets/Custom_error_wideget.dart';
import 'package:bookly/core/widgets/custom_Loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubitCubit, SimilarBooksCubitState>(
      builder: (context, state) {
        if (state is SimilarBooksCubitSucess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookImage(
                      imageUrl:
                          'https://5.imimg.com/data5/SELLER/Default/2023/3/296178163/GX/GL/SD/186724856/vivo-mobile-phone-1000x1000.jpg',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksCubitFailure) {
          return CustomErrorWideget(errMessages: state.errMesage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
