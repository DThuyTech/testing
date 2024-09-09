import 'package:auto_route/auto_route.dart';
import 'package:display_tracking/presentation/base/base_page_state.dart';
import 'package:display_tracking/presentation/blocs/list_sof_bloc/list_sof_bloc.dart';
import 'package:display_tracking/presentation/components/widget/widget.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListSofScreen extends StatefulWidget {
  const ListSofScreen({super.key});

  @override
  State<ListSofScreen> createState() => _ListSofScreenState();
}

class _ListSofScreenState extends BasePageState<ListSofScreen, ListSofBloc> {
  final ScrollController scrollController = ScrollController();

  void resetScrollController() {
    scrollController.jumpTo(0); // Reset scroll position to the top
  }

  @override
  void initState() {
    bloc.add(const ListSofInitiated(limit: 30, page: 1));
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        bloc.add(const LoadMoreItem());
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: grey25,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'List SOF',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: marginSizeXMedium),
            child: GestureDetector(
              child: const Icon(
                Icons.filter_list,
                weight: 700,
              ),
              onTap: () {
                bloc.add(const FilterBookmarked());
                resetScrollController();
              },
            ),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          controller: scrollController,
          child: BlocBuilder<ListSofBloc, ListSofState>(
            buildWhen: (previous, current) => previous != current,
            builder: (context, state) {
              return state.userItemsFilter.isNotEmpty
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...state.userItemsFilter.map(
                          (item) {
                            int index = state.userItemsFilter.indexOf(item);
                            if (index < state.userItemsFilter.length - 1) {
                              return CardUser(
                                onTap: () =>
                                    bloc.add(UserItemCardPressed(user: item)),
                                userItem: item,
                                isBookmarked:
                                    state.userBookmarked[item.userId] != null &&
                                        state.userBookmarked[item.userId] ==
                                            true,
                                bookmark: () => bloc.add(
                                  UserItemBookmarked(
                                    idUserItem: item.userId,
                                  ),
                                ),
                              );
                            } else {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ],
                    )
                  : const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
