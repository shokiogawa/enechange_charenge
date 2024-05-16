import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChargerCardInfo extends HookConsumerWidget {
  const ChargerCardInfo(
      {super.key,
      required this.iconData,
      required this.label,
      required this.value});

  final IconData iconData;
  final Text label;
  final String value;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  iconData,
                  color: const Color(0xffFFB800),
                  size: 15,
                ),
              ),
              Expanded(
                flex: 4,
                  child: label)
            ],
          ),
        ),
        Expanded(
            flex: 3,
            child: Text(
              value,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}
