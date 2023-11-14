import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';
import 'package:flutter_talk/presentation/ui/widgets/chat_story_picker.dart';
import 'package:flutter_talk/presentation/ui/widgets/chat_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     body:SafeArea(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(12.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Container(
                       padding: const EdgeInsets.all(12),
                       decoration:  BoxDecoration(
                         shape: BoxShape.circle,
                         color: Colors.black,
                         border: Border.all(
                           color: const Color(0xFF363F3B),
                         )
                       ),
                       child: const Icon(Icons.search,color: Colors.white,size: 30,),
                     ),
                     const Spacer(),
                     const Text("Home",style: TextStyle(
                       color: Colors.white,
                       fontSize: 20,
                       fontWeight: FontWeight.w500,
                     ),),
                     const Spacer(),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          AssetsPath.profileLogo,
                        ),
                        radius: 25,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 88,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return ChatStoryPicker(
                              onTab: () {},
                            );
                          } else {
                            return Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 7, right: 7),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.amber,
                                      width: 3,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 28,
                                    backgroundImage:
                                        NetworkImage(AssetsPath.profileLogo),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Monir",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            );
                          }

                          // return Column(
                          //   children: [
                          //   Container(
                          //     margin: const EdgeInsets.only(right: 3),
                          //   width: 80,
                          //   height: 80,
                          //   alignment: Alignment.center,
                          //   decoration: const BoxDecoration(
                          //     shape: BoxShape.circle,
                          //       gradient: LinearGradient(
                          //           begin: Alignment.topRight,
                          //           end: Alignment.centerRight,
                          //           colors: [
                          //             Colors.amber,
                          //             Colors.purple,
                          //           ])),
                          //   child: Container(
                          //     height: 70,
                          //     decoration: BoxDecoration(
                          //       color: Colors.orangeAccent,
                          //       shape: BoxShape.circle,
                          //       image: DecorationImage(
                          //           image: NetworkImage(AssetsPath.profileLogo)
                          //       ),
                          //     ),
                          //   ),
                          // ),]
                          // );
                        },
                      ))
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    )),
                child: Padding(
                    padding: const EdgeInsets.only(
                      right: 10,
                      left: 10,
                      top: 20,
                    ),
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        // return  Dismissible(
                        //   key: ValueKey(index),
                        //   background: Container(
                        //     alignment: Alignment.centerRight,
                        //     padding: const EdgeInsets.only(right: 20),
                        //     color: Colors.teal[200],
                        //     child: Row(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: [
                        //         Container(
                        //           height: 36,
                        //           width: 36,
                        //           decoration: const BoxDecoration(
                        //               shape: BoxShape.circle,
                        //               color: Colors.black,
                        //           ),
                        //           child: const Icon(Icons.notifications_outlined,color: Colors.white,size:22,)
                        //         ),
                        //         const SizedBox(width: 8,),
                        //         Container(
                        //             height: 36,
                        //             width: 36,
                        //             decoration: const BoxDecoration(
                        //                 shape: BoxShape.circle,
                        //                 color: Colors.redAccent
                        //             ),
                        //             child: const Icon(Icons.delete_forever,color: Colors.white,size:22,)
                        //         ),
                        //       ],
                        //     )
                        //   ),
                        //   direction: DismissDirection.endToStart,
                        //   confirmDismiss: (direction)async{
                        //     return  await _showMyDialog(context);
                        //   },
                        //   onDismissed: (DismissDirection direction){
                        //     log('Dismissed with direction $direction');
                        //   },
                        //   child: ChatTile(
                        //     onTap: (){},
                        //   ),
                        // );
                        return Slidable(
                          closeOnScroll: true,
                          key: ValueKey(index),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(
                                    width: 85,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        height: 36,
                                        width: 36,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black,
                                        ),
                                        child: const Icon(
                                          Icons.notifications_outlined,
                                          color: Colors.white,
                                          size: 22,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                        height: 36,
                                        width: 36,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.redAccent),
                                        child: const Icon(
                                          Icons.delete_forever,
                                          color: Colors.white,
                                          size: 22,
                                        )),
                                  ),
                                ],
                              )
                            ],
                          ),
                          child: ChatTile(
                            onTap: () {},
                          ),
                        );
                      },
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  //  _showMyDialog(context) async {
  //   return showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Are You Sure'),
  //         content: const Text('Do you want to delete chat history?'),
  //         actions:[
  //           TextButton(
  //             child: const Text('yes'),
  //             onPressed: () {
  //               Navigator.of(context).pop(true);
  //             },
  //           ),
  //           TextButton(
  //             child: const Text('No'),
  //             onPressed: () {
  //               Navigator.of(context).pop(false);
  //             },
  //           )
  //
  //         ],
  //       );
  //     },
  //   );
  // }
}




