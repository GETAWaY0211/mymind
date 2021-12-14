import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

Future<void> deleteAll() async {
  final collection = await FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .get();

  final todocollection = await FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc(DateFormat('dd MMM yyyy').format(DateTime.now()))
      .collection('Todo')
      .get();

  final subcollection = await FirebaseFirestore.instance
      .collection(FirebaseAuth.instance.currentUser!.email!)
      .doc('Note')
      .collection('diary')
      .get();

  final batch = FirebaseFirestore.instance.batch();

  for (final doc in todocollection.docs) {
    batch.delete(doc.reference);
  }

  for (final doc in subcollection.docs) {
    batch.delete(doc.reference);
  }

  for (final doc in collection.docs) {
    batch.delete(doc.reference);
  }

  return batch.commit();
}
