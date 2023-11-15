import 'package:flutter/material.dart';
import '../../../data/model/message_model.dart';
import '../../../data/model/user_model.dart';
import '../utility/assets_path.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.onTap, required this.userName,
  });

  final VoidCallback onTap;
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          onTap: onTap,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(AssetsPath.profileLogo),
            radius: 30,
          ),
          title:  Text(
            // "Jamalpur er Gorbo",
            userName,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xff000E08),
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle:  Text(
            "How are you",
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12, color: Color(0xff797C7B)),
          ),
          trailing: Column(
            children: [
              const Text(
                "2 min ago",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff797C7B)),
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                height: 22,
                width: 22,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffF04A4C)),
                child: const Text(
                  "1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        const Positioned(
          left: 58,
          bottom: 9,
          child: CircleAvatar(
            radius: 5,
            backgroundColor: Colors.green,
          ),
        )
      ],
    );
  }
}
