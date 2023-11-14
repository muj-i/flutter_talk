import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/assets_path.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key, required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap:onTap,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(AssetsPath.profileLogo),
        radius: 30,
      ),
      title: const Text("Monir",style: TextStyle(fontSize:20,color:Color(0xff000E08),fontWeight:FontWeight.bold),),
      subtitle: const Text("How are you",style: TextStyle(fontSize: 12,color:Color(0xff797C7B) ),),
      trailing: Column(
        children: [
          const Text("2 min ago",style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color(0xff797C7B)
          ),),
          const SizedBox(height: 7,),
          Container(
            height: 22,
            width: 22,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xffF04A4C)
            ),
            child: const Text("1",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
          )
        ],
      ),
    );
  }
}