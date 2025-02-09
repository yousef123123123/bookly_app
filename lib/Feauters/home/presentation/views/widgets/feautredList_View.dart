import 'package:bookly/Feauters/home/presentation/manager/feautured_books_cubit/feautured_books_cubit.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/Custom_Book_Item.dart';
import 'package:bookly/core/widgets/Custom_error_wideget.dart';
import 'package:bookly/core/widgets/custom_Loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/App_router.dart';

class FeauterdBooksListView extends StatelessWidget {
  const FeauterdBooksListView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeauturedBooksCubit, FeauturedBooksState>(
      builder: (context, state) {
        if (state is FeauturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.kBookDetailsView,
                          extra: state.books[index],
                        );
                      },
                      child: CustomBookImage(
                        imageUrl: state.books[index].volumeInfo.imageLinks
                                ?.thumbnail ??
                            'https://easydrawingguides.com/wp-content/uploads/2020/10/how-to-draw-an-open-book-featured-image-1200.png',
                      ),
                    ),
                  );
                }),
          );
        } else if (state is FeauturedBooksFailure) {
          return CustomErrorWideget(errMessages: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
