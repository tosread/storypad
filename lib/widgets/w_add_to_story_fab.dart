import 'package:flutter/material.dart';
import 'package:write_your_story/screens/story_detail_screen.dart';
import 'package:write_your_story/widgets/vt_ontap_effect.dart';

class AddToStoryFAB extends StatelessWidget {
  const AddToStoryFAB({
    Key key,
    @required this.forDate,
  }) : super(key: key);

  final DateTime forDate;

  @override
  Widget build(BuildContext context) {
    return VTOnTapEffect(
      onTap: () {},
      effects: [
        VTOnTapEffectItem(effectType: VTOnTapEffectType.scaleDown),
        VTOnTapEffectItem(
          effectType: VTOnTapEffectType.touchableOpacity,
          active: 0.1,
        )
      ],
      child: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              fullscreenDialog: true,
              builder: (context) {
                return StoryDetailScreen(
                  futureId: forDate.millisecondsSinceEpoch,
                );
              },
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
        elevation: 0.0,
        highlightElevation: 0.0,
        focusElevation: 0.0,
        hoverElevation: 0.0,
        disabledElevation: 0.0,
      ),
    );
    // },
    // );
  }
}