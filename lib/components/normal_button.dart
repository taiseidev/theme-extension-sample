import 'package:flutter/material.dart';
import 'package:theme_extention_sample/theme/theme_extesion.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({
    Key? key,
    this.style,
  }) : super(key: key);

  final NormalButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    // contextでthemeを取得
    final defaultStyle = Theme.of(context).extension<NormalButtonStyle>();
    final width = style?.width ?? defaultStyle?.width;
    final height = style?.height ?? defaultStyle?.height;
    final title = style?.title ?? defaultStyle?.title;
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          title!,
        ),
      ),
    );
  }
}
