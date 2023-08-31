import 'package:cloud_firestore/cloud_firestore.dart';

class DbService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future createDocument() async {
    // await firestore
    //     .collection("students")
    //     .doc("s1")
    //     .set({"name": "Prabhu", "age": 22});

    await firestore.doc("students/s1").set({"name": "Prabhu", 'age': 22});
  }

  Future updateDocument() async {
    await firestore.collection("students").doc("s2").update({"age": 23});
  }

  Future deleteDocument() async {
    await firestore.collection("students").doc("s2").delete();
  }

  Future readDocument() async {
    DocumentSnapshot ds = await firestore.doc("students/s1").get();
    Map data = ds.data() as Map;
    print("data = $data");
  }
}
