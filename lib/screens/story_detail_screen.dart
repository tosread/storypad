import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:write_your_story/app_helper/app_helper.dart';
import 'package:write_your_story/models/story_model.dart';
import 'package:write_your_story/widgets/vt_ontap_effect.dart';
import 'package:write_your_story/widgets/w_sliver_appbar.dart';

class StoryDetailScreen extends HookWidget {
  const StoryDetailScreen({
    Key key,
    @required this.story,
    @required this.callback,
  }) : super(key: key);

  final StoryModel story;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    final _headerText = TextFormField(
      textAlign: TextAlign.left,
      initialValue: story.title,
      style: Theme.of(context).textTheme.subtitle1,
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 12.0),
      ),
    );

    String _aboutDateText = "Created on: " +
        AppHelper.dateFormat(context).format(
          story.createOn,
        );

    if (story.updateOn != null) {
      _aboutDateText += "\nUpdated on: " +
          AppHelper.dateFormat(context).format(
            story.updateOn,
          );
    }

    final _aboutDate = Text(
      _aboutDateText,
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Theme.of(context).textTheme.subtitle2.color.withOpacity(0.6),
      ),
    );

    final _paragraph = TextFormField(
      textAlign: TextAlign.left,
      initialValue: story.paragraph,
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
      ),
      style: Theme.of(context).textTheme.bodyText2.copyWith(
            color: Theme.of(context).textTheme.subtitle2.color.withOpacity(0.6),
          ),
    );

    final _theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        TextEditingController().clear();
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          leading: VTOnTapEffect(
            onTap: callback,
            effects: [
              VTOnTapEffectItem(
                effectType: VTOnTapEffectType.scaleDown,
                active: 0.9,
              ),
            ],
            child: FlatButton(
              highlightColor: _theme.disabledColor,
              onPressed: callback,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(48.0),
              ),
              child: Icon(
                Icons.cancel,
                color: _theme.primaryColorDark,
                size: 24,
              ),
            ),
          ),
          actions: [
            VTOnTapEffect(
              effects: [
                VTOnTapEffectItem(
                  effectType: VTOnTapEffectType.scaleDown,
                  active: 0.9,
                ),
              ],
              child: Container(
                width: kToolbarHeight,
                child: FlatButton(
                  highlightColor: _theme.disabledColor,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.0),
                  ),
                  child: Icon(
                    Icons.delete,
                    color: _theme.errorColor,
                    size: 24,
                  ),
                ),
              ),
            ),
            VTOnTapEffect(
              onTap: callback,
              effects: [
                VTOnTapEffectItem(
                  effectType: VTOnTapEffectType.scaleDown,
                  active: 0.9,
                ),
              ],
              child: Container(
                width: kToolbarHeight,
                child: FlatButton(
                  highlightColor: _theme.disabledColor,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48.0),
                  ),
                  child: Icon(
                    Icons.save,
                    color: _theme.primaryColorDark,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4.0),
                _aboutDate,
                _headerText,
                _paragraph,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
