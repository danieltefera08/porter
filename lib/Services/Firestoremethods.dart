
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:porter/Services/Storagemethods.dart';
import 'package:porter/shared/Pop_up.dart';

class FirestoreMethods{
    final FirebaseFirestore _firestore=FirebaseFirestore.instance;

    //Upload post
Future <String> Uploadpost(
    BuildContext context,
    String Title,
    String Details,
    dynamic file,
    String uid,
    )async{
    String photourl;
    try{
        if(file!=null){
             photourl=await StorageMethods().Storageip("Posts", file, true);
        }
        else{
            photourl="";
        }
    }
    catch(e){
     String  err=e.toString();
     Showsnackbar(err,context);
    }
}
}