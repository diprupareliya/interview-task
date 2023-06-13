import 'package:get/get.dart';

class HomeController extends GetxController{
  RxList consultationList = [
    {
      "profile": "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      "datetime": DateTime.now(),
      "name": "Deep Rupareliya",
      "callJoinStatus": true
    },
    {
      "profile": "https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=772&q=80",
      "datetime": DateTime.now().add(const Duration(days: 2)),
      "name": "Ankit donda",
      "callJoinStatus": false
    },
    {
      "profile": "https://images.unsplash.com/photo-1552058544-f2b08422138a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=798&q=80",
      "datetime": DateTime.now().add(const Duration(days: 3)),
      "name": "Parth rami",
      "callJoinStatus": false
    },
    {
      "profile": "https://images.unsplash.com/photo-1513013489642-a177112e9fbb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80",
      "datetime": DateTime.now().add(const Duration(days: 4)),
      "name": "Pritesh dobariya",
      "callJoinStatus": false
    },
    {
      "profile": "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
      "datetime": DateTime.now().add(const Duration(days: 5)),
      "name": "Purvesh Rupareliya",
      "callJoinStatus": false
    },
  ].obs;
}