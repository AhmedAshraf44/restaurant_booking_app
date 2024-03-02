
//  showModalBottomSheet({}
//                 isScrollControlled: true,
//                 // enableDrag: false,

import 'package:flutter/material.dart';

RoundedRectangleBorder buildRoundedRectangleBorder()
{
  return const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                ),
              );
} 
//               context: context,
//                builder: (context) {
//                 return SizedBox(
//                           height: MediaQuery.of(context).size.height * .7,

//                   child:const RegisterBottomSheet(index: 0,));
//                },),