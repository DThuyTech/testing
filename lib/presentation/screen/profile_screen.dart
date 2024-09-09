import 'package:auto_route/auto_route.dart';
import 'package:display_tracking/domain/enities/reputation_item.dart';
import 'package:display_tracking/domain/enities/user_item.dart';
import 'package:display_tracking/presentation/base/base_page_state.dart';
import 'package:display_tracking/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.user});
  final UserItem user;
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BasePageState<ProfileScreen, ProfileBloc> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    bloc.add(ProfileInitiated(user: widget.user));
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        bloc.add(const LoadMoreReputation());
      }
    });
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black87),
        ),
        leading: const Icon(
          Icons.menu,
          color: Colors.black87,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    widget.user.profileImage,
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                widget.user.displayName,
                style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: const Divider(
                color: grey33,
                height: dotSpace,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: marginSizeXMedium,
                vertical: marginSizeSSmall,
              ),
              child: Text(
                'List reputations',
                style: TextStyle(
                  color: grey3,
                  fontSize: textSizeNormal,
                ),
              ),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                return Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ListView.builder(
                      controller: scrollController,
                      itemCount: state.reputationItems.length,
                      itemBuilder: (context, index) {
                        if (index < state.reputationItems.length - 1) {
                          return _ReputationCard(
                            reputationItem: state.reputationItems[index],
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class _ReputationCard extends StatelessWidget {
  const _ReputationCard({required this.reputationItem});
  final ReputationItem reputationItem;

  String formatDate(int timestamp) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
    return DateFormat.yMMMd().format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reputation Type: ${reputationItem.reputationHistoryType}',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text('Reputation Change: ${reputationItem.reputationChange}'),
            const SizedBox(height: 8),
            Text('Created At: ${formatDate(reputationItem.creationDate)}'),
            const SizedBox(height: 8),
            Text('Post ID: ${reputationItem.postId}'),
          ],
        ),
      ),
    );
  }
}
