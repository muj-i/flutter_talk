import 'package:flutter/material.dart';
import 'package:flutter_talk/presentation/ui/utility/assets_path.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
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
                    const Text("Contacts",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'CircularStd',
                      fontWeight: FontWeight.w500,
                    ),),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration:  BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(
                            color: const Color(0xFF363F3B),
                          )
                      ),
                      child: const Icon(Icons.person,color: Colors.white,size: 30,),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 60,
                              height: 6,
                              decoration: ShapeDecoration(
                                color: Colors.grey.shade300,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          const Text(
                            'My Contact',
                            style: TextStyle(
                              color: Color(0xFF000D07),
                              fontSize: 16,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w500,
                              height: 0.06,
                            ),
                          ),
                          const SizedBox(height: 40,),
                          const Text(
                            'A',
                            style: TextStyle(
                              color: Color(0xFF000D07),
                              fontSize: 16,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          ListView.separated(
                            shrinkWrap: true,
                              primary: false,
                              itemCount: 2,
                            itemBuilder: (contex,index){
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: Container(
                                    width: 52,
                                    height: 52,
                                    decoration: ShapeDecoration(
                                      image: DecorationImage(
                                        image:  NetworkImage(AssetsPath.profileLogo),
                                        fit: BoxFit.cover,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(31),
                                      ),
                                    ),
                                  ),
                                  title: const Text(
                                    'Afrin Sabila ',
                                    style: TextStyle(
                                      color: Color(0xFF000D07),
                                      fontSize: 18,
                                      fontFamily: 'CircularStd',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    'Life is beautiful 👌',
                                    style: TextStyle(
                                      color: Color(0xFF797C7B),
                                      fontSize: 12,
                                      fontFamily: 'Circular Std',
                                      fontWeight: FontWeight.w400,
                                      height: 0.08,
                                    ),
                                  ),
                                );
                            },
                            separatorBuilder: (context,index)=> const SizedBox(height: 16.0,),
                          ),
                          const SizedBox(height: 40,),
                          const Text(
                            'B',
                            style: TextStyle(
                              color: Color(0xFF000D07),
                              fontSize: 16,
                              fontFamily: 'CircularStd',
                              fontWeight: FontWeight.w600,
                              height: 0.06,
                            ),
                          ),
                          const SizedBox(height: 20,),
                          ListView.separated(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: 20,
                            itemBuilder: (contex,index){
                              return ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading: Container(
                                  width: 52,
                                  height: 52,
                                  decoration: ShapeDecoration(
                                    image: DecorationImage(
                                      image:  NetworkImage(AssetsPath.profileLogo),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(31),
                                    ),
                                  ),
                                ),
                                title: const Text(
                                  'Bristy Haque ',
                                  style: TextStyle(
                                    color: Color(0xFF000D07),
                                    fontSize: 18,
                                    fontFamily: 'CircularStd',
                                    fontWeight: FontWeight.w500,
                                    height: 0.06,
                                  ),
                                ),
                                subtitle: const Text(
                                  'Keep working ✍',
                                  style: TextStyle(
                                    color: Color(0xFF797C7B),
                                    fontSize: 12,
                                    fontFamily: 'CircularStd',
                                    fontWeight: FontWeight.w400,
                                    height: 0.08,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context,index)=> const SizedBox(height: 16.0,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
