
import 'package:flutter/material.dart';
import 'package:fruitables/view/more/rate_us/rating_dialog.dart';
import 'package:share_plus/share_plus.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
       // backgroundColor: Colors.black,
        
        title: Text("More",style: TextStyle(color: Colors.black),) ,
        centerTitle: true,
        ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10,20,10,20),
        children: [
         

          SizedBox(height: 30,),
          
        buildListTile(icon: Icons.headset_mic ,title: "Help & Support"),
        buildListTile(icon: Icons.security,title: "Privacy Policy"),
        buildListTile(icon:Icons.share,title: "Share This App",onTap: () {
          String appUrl = "https://example.com";
                  Share.share("Check out e commerce app : $appUrl");
        },),
        buildListTile(icon: Icons.star_border_outlined ,title: "Rate Us",onTap: (){
             showDialog(
              context: context,
              barrierDismissible: true, 
              builder: (BuildContext context) => RatingDialog(),
            );
        }),
        buildListTile(icon: Icons.message_outlined,title: "Feedback"),

      

        ],
      ),
    );
  }

  Widget buildListTile({dynamic icon, required String title, VoidCallback? onTap }){
    return ListTile(
      leading: icon is IconData? Icon(icon, color: Colors.black,):Image.asset(icon,width: 30,height: 30,color: Colors.white,),
      title: Text(title,style: TextStyle(color: Colors.black),),
      trailing: IconButton(onPressed: onTap, icon: Icon(Icons.arrow_forward_ios,size: 17,color: Colors.black,),),
      onTap: onTap,
    );
  }
}