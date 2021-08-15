import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/constants/layout_constants.dart';

import 'package:flutter_design_patterns/design_patterns/composite/ifile.dart';
import 'package:flutter_design_patterns/helpers/index.dart';

class File extends StatelessWidget implements IFile {
  const File({
    Key? key,
    required this.title,
    required this.size,
    required this.icon,
  }) : super(key: key);

  final String title;
  final int size;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return render(context);
  }

  @override
  int getSize() {
    return size;
  }

  @override
  Widget render(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: LayoutConstants.paddingS),
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        leading: Icon(icon),
        trailing: Text(
          FileSizeConverter.bytesToString(size),
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.black54),
        ),
        dense: true,
      ),
    );
  }
}
