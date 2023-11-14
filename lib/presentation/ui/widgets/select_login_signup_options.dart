import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectLoginSignupOptions extends StatelessWidget {
  SelectLoginSignupOptions({
    super.key, required this.imageLink, required this.onTap, this.isChangeColor=false,
  });
  final String imageLink;
  final VoidCallback onTap;
  bool isChangeColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all( color: Colors.white,width: 1),
        ),
        child: Padding(
          padding: EdgeInsets.all(11.0),
          child: SvgPicture.asset(imageLink,width: 24,height: 24,color: isChangeColor?Colors.white:null,),
        ),
      ),
    );
  }
}