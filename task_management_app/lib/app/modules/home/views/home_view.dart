//vidio 7-9
import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/utils/widget/header.dart';
import 'package:task_management_app/app/utils/widget/sideBar.dart';
import 'package:task_management_app/app/utils/widget/style/AppColors.dart';

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
                    height: Get.height * 0.3,
                    child: Column(
                      children: [
                        const Text(
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
                    SizedBox(
                      height: 200,
                      child: ListView(
                        clipBehavior: Clip.antiAlias,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        Container(
                          width: 400, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg, 
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                               child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                               radius: 20, 
                                 foregroundImage: NetworkImage(
                                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                           child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                           radius: 20, 
                             foregroundImage: NetworkImage(
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('100%',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                            ],
                          ),
                          Spacer(),
                          Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('10 / 10 Task',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                             const Text(
                            'Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                      
                      ]),
                        ),
                      Container(
                          width: 400, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg, 
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                               child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                               radius: 20, 
                                 foregroundImage: NetworkImage(
                                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                           child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                           radius: 20, 
                             foregroundImage: NetworkImage(
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('100%',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                            ],
                          ),
                          Spacer(),
                          Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('10 / 10 Task',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                             const Text(
                            'Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                      
                      ]),
                        ),
                      Container(
                          width: 400, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg, 
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                               child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                               radius: 20, 
                                 foregroundImage: NetworkImage(
                                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                           child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                           radius: 20, 
                             foregroundImage: NetworkImage(
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('100%',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                            ],
                          ),
                          Spacer(),
                          Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('10 / 10 Task',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                             const Text(
                            'Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                      
                      ]),
                        ),
                      Container(
                          width: 400, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg, 
                            ),
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                               child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                               radius: 20, 
                                 foregroundImage: NetworkImage(
                                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                           child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                           radius: 20, 
                             foregroundImage: NetworkImage(
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('100%',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                            ],
                          ),
                          Spacer(),
                          Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('10 / 10 Task',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                             const Text(
                            'Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                      
                      ]),
                        ),
                      Container(
                          width: 400, 
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColors.cardBg, 
                            ),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [ 
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(25),
                               child: const CircleAvatar(
                              backgroundColor: Colors.amber, 
                               radius: 20, 
                                 foregroundImage: NetworkImage(
                                'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                           child: const CircleAvatar(
                          backgroundColor: Colors.amber, 
                           radius: 20, 
                             foregroundImage: NetworkImage(
                            'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                         ),
                        ),
                        const Spacer(),
                        Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('100%',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                            ],
                          ),
                          Spacer(),
                          Container(
                          height: 25, 
                          width: 80, 
                          color: AppColors.primaryBg, 
                          child: Center(child: Text ('10 / 10 Task',
                          style: TextStyle(
                              color: AppColors.primaryText, 
                              ),
                          )),
                          ),
                          const Text(
                            'Pemrograman Mobile', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 20,
                              ),
                              ),
                             const Text(
                            'Deadline 2 Hari Lagi', 
                            style: TextStyle(
                              color: AppColors.primaryText, 
                              fontSize: 15,
                              ),
                              ),
                      
                      ]),
                        )
                      
      
      
                      ],      
                    ),
                    ),
       
                      ],
                    ),
                  ),
                 
                  Expanded(
                     child: Row(
                       children: [
                         Expanded(
                           child: SafeArea(
                             child: SingleChildScrollView(
                               child: Column(
                                crossAxisAlignment: 
                                CrossAxisAlignment.start ,
                                 children: [
                                   const Text(
                                    'Upcoming Task', 
                                      style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 30,
                                    ),
                                    ),
                                    const  SizedBox(
                                  height: 20,
                                   ), 
                                
                                 SizedBox(
                                                 height: 20,
                                               ),
                                               // my task
                                               SizedBox(
                                                 height: 400,
                                                 child: ListView(
                                                   clipBehavior: Clip.antiAlias,
                                                 // scrollDirection: Axis.vertical,
                                                 shrinkWrap: true,
                                                 children: [
                                                   SizedBox(
                                                    height: 200,
                                                     child: Container(
                                      // width: 400,
                                     /// height: 200, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColors.cardBg, 
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                     child: const CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                     radius: 20, 
                                       foregroundImage: NetworkImage(
                                      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                     ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                 child: const CircleAvatar(
                                backgroundColor: Colors.amber, 
                                 radius: 20, 
                                   foregroundImage: NetworkImage(
                                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                     ),
                                                     const Spacer(),
                                                     Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('100%',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('10 / 10 Task',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                const Text(
                                  'Pemrograman Mobile', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 20,
                                    ),
                                    ),
                                   const Text(
                                  'Deadline 2 Hari Lagi', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 15,
                                    ),
                                    ),
                                                 
                                                 ]),
                                                     ),
                                                   ),
                                                 Container(
                                width: 400, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColors.cardBg, 
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                     child: const CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                     radius: 20, 
                                       foregroundImage: NetworkImage(
                                      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                 child: const CircleAvatar(
                                backgroundColor: Colors.amber, 
                                 radius: 20, 
                                   foregroundImage: NetworkImage(
                                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                                   const Spacer(),
                                                   Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('100%',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('10 / 10 Task',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                const Text(
                                  'Pemrograman Mobile', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 20,
                                    ),
                                    ),
                                   const Text(
                                  'Deadline 2 Hari Lagi', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 15,
                                    ),
                                    ),
                                                 
                                                 ]),
                                                   ),
                                                 Container(
                                width: 400, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColors.cardBg, 
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                     child: const CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                     radius: 20, 
                                       foregroundImage: NetworkImage(
                                      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                 child: const CircleAvatar(
                                backgroundColor: Colors.amber, 
                                 radius: 20, 
                                   foregroundImage: NetworkImage(
                                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                                   const Spacer(),
                                                   Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('100%',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('10 / 10 Task',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                const Text(
                                  'Pemrograman Mobile', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 20,
                                    ),
                                    ),
                                   const Text(
                                  'Deadline 2 Hari Lagi', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 15,
                                    ),
                                    ),
                                                 
                                                 ]),
                                                   ),
                                                 Container(
                                width: 400, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColors.cardBg, 
                                  ),
                                  margin: const EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                     child: const CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                     radius: 20, 
                                       foregroundImage: NetworkImage(
                                      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                 child: const CircleAvatar(
                                backgroundColor: Colors.amber, 
                                 radius: 20, 
                                   foregroundImage: NetworkImage(
                                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                                   const Spacer(),
                                                   Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('100%',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('10 / 10 Task',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                const Text(
                                  'Pemrograman Mobile', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 20,
                                    ),
                                    ),
                                   const Text(
                                  'Deadline 2 Hari Lagi', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 15,
                                    ),
                                    ),
                                                 
                                                 ]),
                                                   ),
                                                 Container(
                                width: 400, 
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: AppColors.cardBg, 
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [ 
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                     child: const CircleAvatar(
                                    backgroundColor: Colors.amber, 
                                     radius: 20, 
                                       foregroundImage: NetworkImage(
                                      'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                 child: const CircleAvatar(
                                backgroundColor: Colors.amber, 
                                 radius: 20, 
                                   foregroundImage: NetworkImage(
                                  'https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.website-files.com%2F62709318493cafbb465ed770%2F6290f7624ccbb28f48643d07_6093a6f9a5c6fd2f11e9612d_CS.png&imgrefurl=https%3A%2F%2Fwww.s-gala.com%2Fblog-post%2Fcustomer-service-yang-handal&tbnid=BAQFhgfOyhXNWM&vet=12ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ..i&docid=Gr32eubHI0YoRM&w=500&h=418&q=foto%20profil%20customer%20service&ved=2ahUKEwim6rCC6Lb7AhVXi9gFHb9rBpMQMygHegUIARCwAQ'),
                               ),
                                                   ),
                                                   const Spacer(),
                                                   Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('100%',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                height: 25, 
                                width: 80, 
                                color: AppColors.primaryBg, 
                                child: Center(child: Text ('10 / 10 Task',
                                style: TextStyle(
                                    color: AppColors.primaryText, 
                                    ),
                                )),
                                ),
                                const Text(
                                  'Pemrograman Mobile', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 20,
                                    ),
                                    ),
                                   const Text(
                                  'Deadline 2 Hari Lagi', 
                                  style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 15,
                                    ),
                                    ),              
                                   ]),
                                  ),                  
                                    ],      
                                      ),
                                ),
                      
                                 ],
                               ),
                             ),
                           ),
                         ),
                         Expanded(
                           child: Column(
                             children: [
                               Row(
                                 children: [
                                   const Text(
                                    'My Friend', 
                                      style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 30,
                                    ),
                                    ),
                                    const Text(
                                    'More', 
                                      style: TextStyle(
                                    color: AppColors.primaryText, 
                                    fontSize: 30,
                                    ),
                                    ),
                                    Icon(
                                      Ionicons.arrow_forward,
                                      color: AppColors.primaryText,
                                    )
                                 ],
                               ),
                                const  SizedBox(
                              height: 20,
                                           ),
                             ],
                           ),
                         ),
                         
                       ],
                     ),
                   ),
                    
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
