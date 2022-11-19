//vidio 7-9
import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/myTask.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';
import 'package:task_management_app/app/utils/widget/style/AppColors.dart';

import '../../../utils/widget/UpcomingTask.dart';
import '../../../utils/widget/myfriends.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: const SideBar (),
      backgroundColor: AppColors.primaryBg,
      body:SafeArea(
        child: Row(
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
              Icons.notifications, 
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
                'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
            ),
            )
          ],
             ),
            ),
            //content / isi page /screen
      
              Expanded(
                child: Container(
                padding: !context.isPhone
                ? const EdgeInsets.all(50)
                :  const EdgeInsets.all(20),
                margin: !context.isPhone
                 ? const EdgeInsets.all(10)
                 : const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: !context.isPhone
                   ? BorderRadius.circular(50)
                   : BorderRadius.circular(30),
                ),
      
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                    height: Get.height * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         Text(
                        'My Task', 
                        style: TextStyle(
                          color: AppColors.primaryText, 
                          fontSize: 30,
                          ),
                          ),
                            const SizedBox(
                      height: 20,
                    ),
                    // my task
                    MyTask(),
       
                      ],
                    ),
                  ),
                  !context.isPhone 
                  ? Expanded(
                  child: Row(
                    children: const [
                       UpcomingTask(),
                        MyFriends(),
                    ],
                  ),
                 
                 )
                 : const UpcomingTask(),      
                    ]),
              ))
            ]),
              )
        ],
        ),
      ),
    );
  }
}



