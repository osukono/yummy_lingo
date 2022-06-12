import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_lingo/presentation/core/constants.dart';
import 'package:yummy_lingo/presentation/core/screen_size.dart';
import 'package:yummy_lingo/presentation/widgets/badge.dart';
import 'package:yummy_lingo/presentation/widgets/language_icon.dart';
import 'package:yummy_lingo/presentation/widgets/progress_indicator.dart';

class CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final String topic;
  final String level;
  final String description;
  final List<Widget> actions;
  final String languageIcon;
  final String translationIcon;

  const CourseCard({
    Key? key,
    required this.image,
    required this.title,
    required this.topic,
    required this.level,
    required this.description,
    this.actions = const [],
    required this.languageIcon,
    required this.translationIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double imageHight = (ScreenSize.width - 2 * Constants.base) * 9 / 16;

    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.base)),
        margin: const EdgeInsets.fromLTRB(
            Constants.base, Constants.baseH, Constants.base, Constants.baseH),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(Constants.base),
              ),
              child: SvgPicture.network(
                image,
                width: double.infinity,
                height: imageHight,
                fit: BoxFit.cover,
                placeholderBuilder: (context) => SizedBox(
                    width: double.infinity,
                    height: imageHight,
                    child: Center(child: CircularProgress.primary())),
                excludeFromSemantics: true,
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: Constants.base,
                vertical: Constants.baseH,
              ),
              title: Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Badge(
                    text: topic,
                  ),
                ],
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: Constants.baseH),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: Constants.baseH),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: actions,
                          ),
                          SizedBox(
                            width: Constants.smallIcon * 2,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: Constants.smallIcon - 2,
                                  child: LanguageIcon(url: translationIcon),
                                ),
                                LanguageIcon(url: languageIcon),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
