import 'package:display_tracking/domain/enities/user_item.dart';
import 'package:display_tracking/presentation/resource/theme/color.dart';
import 'package:display_tracking/presentation/resource/ui_contants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardUser extends StatelessWidget {
  const CardUser({
    super.key,
    required this.userItem,
    required this.isBookmarked,
    required this.bookmark,
    required this.onTap,
  });

  final UserItem userItem;
  final bool isBookmarked;
  final Function() bookmark;
  final Function() onTap;

  void launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch ${Uri.parse(url)}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: marginSizeSSmall,
        horizontal: marginSizeMedium,
      ),
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          padding: const EdgeInsets.all(marginSizeLSmall),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                blurRadius: marginSizeLSmall,
                color: grey12,
              ),
            ],
            borderRadius: BorderRadius.circular(borderRadiusSmall),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: heightSizeSLarge,
                height: heightSizeSLarge,
                child: CircleAvatar(
                  backgroundColor: green6,
                  radius: 50,
                  backgroundImage: NetworkImage(
                    userItem.profileImage,
                  ),
                ),
              ),
              const SizedBox(
                width: marginSizeLSmall,
              ),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userItem.displayName,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: textSizeMedium,
                          overflow: TextOverflow.fade),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width * .4),
                      child: Text(
                        userItem.location,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: textSizeSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width * .4),
                      child: Text(
                        'Reputation : ${userItem.reputation.toString()}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: textSizeSmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          child: const Icon(
                            Icons.link,
                            color: blue12,
                          ),
                          onTap: () {
                            launchURL(userItem.link);
                          },
                        ),
                        const SizedBox(
                          width: marginSizeLSmall,
                        ),
                        InkWell(
                          child: const Icon(
                            Icons.open_in_browser_sharp,
                            color: blue12,
                          ),
                          onTap: () {
                            launchURL(userItem.websiteUrl);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => bookmark(),
                child: isBookmarked
                    ? const Icon(
                        Icons.bookmark,
                        color: yellow2,
                      )
                    : const Icon(
                        Icons.bookmark_border_outlined,
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
