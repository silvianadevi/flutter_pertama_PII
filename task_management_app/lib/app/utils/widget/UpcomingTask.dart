import 'package:flutter/material.dart';

import 'style/AppColors.dart';

class UpcomingTask extends StatelessWidget {
  const UpcomingTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
       child: Row(
         children: [
           Expanded(
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
                               SizedBox(
                                 height: 400,
                                 child: ListView(
                                   clipBehavior: Clip.antiAlias,
                                 // scrollDirection: Axis.vertical,
                                 shrinkWrap: true,
                                 children: [
                                 Container(
                             height: 200, 
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
                                 
                ] 
                ),
                   ),                 
                                 Container(
                             height: 200, 
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
                                 
                ] 
                ),
                   ),                             ],
              ),
                ),
        
                 ],
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
                        Icons.arrow_forward,
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
     );
  }
}
