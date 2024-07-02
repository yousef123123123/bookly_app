import 'package:bookly/core/models/book_model.dart';
import 'package:bookly/Feauters/home/presentation/manager/newest%20books_cubit/newest_books_cubit.dart';
import 'package:bookly/Feauters/home/presentation/views/widgets/BestSeller_ListView_item.dart';
import 'package:bookly/core/widgets/Custom_error_wideget.dart';
import 'package:bookly/core/widgets/custom_Loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        return BlocBuilder<NewestBooksCubit, NewestBooksState>(
          builder: (context, state) {
            if (state is NewestBooksSuccess) {
              return ListView.builder(
                // physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: BookListViewItem(
                      bookModel: state.books[index],
                    ),
                  );
                },
              );
            } else if (state is NewestBooksFailure) {
              return CustomErrorWideget(errMessages: state.errMessage);
            } else {
              return CustomLoadingIndicator();
            }
          },
        );
      },
    );
  }
}
