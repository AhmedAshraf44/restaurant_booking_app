import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class CustomTextwidget extends StatelessWidget {
  const CustomTextwidget({super.key, required this.textTop, required this.textBottom, this.onPressed, this.styleTextBottom=Styles.textStyle12Medium,});
  final String textTop;
  final String textBottom;
  final void Function()? onPressed;
  final TextStyle? styleTextBottom;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textTop,style: Styles.textStyle16Smei,),
          const SizedBox(
            height: 4,
           ),
            Text(textBottom,style:styleTextBottom,),
          ],
         ),
         TextButton(onPressed: onPressed, 
         child:const Row(
           children: [
             Text('See All ',style: Styles.textStyle12Medium,),
                Icon(FontAwesomeIcons.chevronRight,color: Color(0XFF89909E),size: 14,),
           ],
         ),),
      ],
    );
  }
}