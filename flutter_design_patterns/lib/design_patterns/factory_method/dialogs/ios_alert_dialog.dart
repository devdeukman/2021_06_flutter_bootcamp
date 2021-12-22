import 'package:flutter/cupertino.dart';
import 'package:flutter_design_patterns/design_patterns/factory_method/custom_dialog.dart';

class IosAlertDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text("This is the cupertino-style alert dialog!"),
      actions: [
        CupertinoButton(
          onPressed: Navigator.of(context).pop,
          child: const Text("Close"),
        )
      ],
    );
  }

  @override
  String getTitle() {
    return "iOS Alert Dialog";
  }
}
