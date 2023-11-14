import 'package:flutter/material.dart';
import '../utility/assets_path.dart';

class ChatStoryPicker extends StatelessWidget {
  const ChatStoryPicker({
    super.key, required this.onTab,
  });

  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            InkWell(
              onTap: onTab,
              child: Container(
                margin: const EdgeInsets.only(left:7,right: 7),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 3,
                  ),
                ),
                child:  CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(AssetsPath.profileLogo),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Text("My Status",style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.white,
            ),)
          ],
        ),
        Positioned(
          left: 50,
          bottom: 25,
          child: Container(
              height: 20,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add,color: Colors.black,size: 20,)
          ),
        )
      ],
    );
  }
}