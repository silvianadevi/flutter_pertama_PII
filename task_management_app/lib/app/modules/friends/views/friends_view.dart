import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';
import 'package:task_management_app/app/utils/widget/style/AppColors.dart';

import '../controllers/friends_controller.dart';

class FriendsView extends GetView<FriendsController> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar (),
      backgroundColor: AppColors.primaryBg,
      body:Row(
      children: [
      !context.isPhone
         ? Expanded(
            flex: 2,
            child:  const SideBar(), 
          )
          : const SizedBox(),
        Expanded(
          flex: 15,
          child: Column( children: [
          !context.isPhone  
          ? const  header() 
          : Container(
            padding: EdgeInsets.all(20),
           child: Row(
            children: [
              IconButton(
                onPressed: () {
                  _drawerKey.currentState!.openDrawer();
                }, 
           icon: Icon(
            Icons.menu, 
            color : AppColors.primaryText,
            ),
            ), 
            const SizedBox(
            width: 15,
            ),
             Column(
         // mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
          Text(
            'Task Management' ,
            style: TextStyle(fontSize: 30, color: AppColors.primaryText),
            ),
          Text(
            'Manage Task Made Easy With Friends',
             style: TextStyle(fontSize: 16, color: AppColors.primaryText),
            ),
        ],
        ),
         const Spacer(),
         const Icon(
            Ionicons.notifications, 
            color: AppColors.primaryText,
            size: 30,
          ),
          const SizedBox(
            width: 15,
            ),
          ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: const CircleAvatar(
            backgroundColor: Colors.amber, 
            radius: 25, 
            foregroundImage: NetworkImage(
              'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
          ),
          )
        ],
           ),
          ),
          //content / isi page /screen

            Expanded(
              child: Container(
              padding: const EdgeInsets.all(50),
              margin: !context.isPhone
               ? const EdgeInsets.all(10)
               : const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: !context.isPhone
                 ? BorderRadius.circular(50)
                 : BorderRadius.circular(20),
              ),
            ))
          ]),
            )
      ],
      ),
    );
  }
}
