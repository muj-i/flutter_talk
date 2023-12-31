import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';
import 'package:flutter_talk/presentation/ui/widgets/setting_option_tile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 135,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  const Spacer(),
                  const Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("-----"),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(AssetsPath.profileLogo),
                        ),
                        title: const Text(
                          "Moniruzzaman",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff000E08)),
                        ),
                        subtitle: const Text(
                          "Never give up 💪",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        trailing: const Icon(
                          Icons.document_scanner_outlined,
                          size: 30,
                          color: Color(0xff24786D),
                        ),
                      ),
                      const Divider(
                        height: 20,
                        color: Color(0xffF5F6F6),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        children: [
                          SettingOptionTile(
                            icon: Icons.key,
                            title: "Account",
                            subtitle: "Privacy,Security,Change number",
                          ),
                          SettingOptionTile(
                            icon: Icons.chat,
                            title: "Chat",
                            subtitle: "Chat history,theme,wallpapers",
                          ),
                          SettingOptionTile(
                            icon: Icons.notifications_outlined,
                            title: "Notification",
                            subtitle: "Messages, group and others",
                          ),
                          SettingOptionTile(
                            icon: Icons.help,
                            title: "Help",
                            subtitle: "Help center,contact us, privacy policy",
                          ),
                          SettingOptionTile(
                            icon: Icons.storage,
                            title: "Storage and data",
                            subtitle: "Network usage, storage usage",
                          ),
                          SettingOptionTile(
                            icon: Icons.person,
                            title: "Invite a friend",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
