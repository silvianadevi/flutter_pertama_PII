import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:task_management_app/app/routes/app_pages.dart';
import 'package:task_management_app/app/utils/widget/style/AppColors.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwithme.id%2Ffungsi-customer-service%2F&psig=AOvVaw3jCV-GMXNdokv4ctp2z2on&ust=1668873814503000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKjy6cmNuPsCFQAAAAAdAAAAABAE'),
         ),
        ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
           child: const CircleAvatar(
          backgroundColor: Colors.amber, 
           radius: 20, 
             foregroundImage: NetworkImage(
            'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwithme.id%2Ffungsi-customer-service%2F&psig=AOvVaw3jCV-GMXNdokv4ctp2z2on&ust=1668873814503000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCKjy6cmNuPsCFQAAAAAdAAAAABAE'),
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
                'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
         ),
        ),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
           child: const CircleAvatar(
          backgroundColor: Colors.amber, 
           radius: 20, 
             foregroundImage: NetworkImage(
            'https://ecs7.tokopedia.net/blog-tokopedia-com/uploads/2021/03/Freepik2.jpg'),
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
    );
  }
}