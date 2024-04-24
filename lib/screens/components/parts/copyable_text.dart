import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyableText extends Text {
  const CopyableText(super.data, {super.key, super.style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        if (data != null) {
          Clipboard.setData(ClipboardData(text: data!));
        }
      },
      child: super.build(context),
    );
  }
}
