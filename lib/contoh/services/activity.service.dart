// import 'dart:convert';
// import 'package:flutter_config/flutter_config.dart';
// import 'package:http/http.dart' as http;

// class ActivityService {
//   var path = FlutterConfig.get('API_PATH');

//   Future getServiceItem() async {
//     var url = Uri.parse("$path/service/get-service-item");
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }

//   Future getItemService(uid) async {
//     var url = Uri.parse("$path/service/get-item-from-service?uid=$uid");
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }

//   Future updateItemServiceStatus(uid, itemUid, status) async {
//     var url = Uri.parse("$path/service/update-item-service-status");
//     final response = await http.put(url, body: {
//       "uid": uid,
//       "item-uid": itemUid,
//       "status": status,
//     });
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }

//   Future bookService(uid, item, vehicle) async {
//     var url = Uri.parse("$path/service/book-service");
//     final response = await http.post(url, body: {
//       "uid": uid,
//       "item": item,
//       "vehicle": vehicle,
//     });
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }

//   Future getServiceList(uid, role, status) async {
//     var url = Uri.parse(
//         "$path/service/get-service-list?uid=$uid&role=$role&status=$status");
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }

//   Future postFeedback(uid, rating, feedback) async {
//     var url = Uri.parse("$path/service/post-feedback");
//     final response = await http.put(url, body: {
//       "uid": uid,
//       "rating": rating,
//       "feedback": feedback,
//     });
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }

//   Future finishService(uid) async {
//     var url = Uri.parse("$path/service/finish-service");
//     final response = await http.put(url, body: {
//       "uid": uid,
//     });
//     if (response.statusCode == 200) {
//       var status = json.decode(response.body)['status'];
//       var message = json.decode(response.body)['message'];
//       var body = json.decode(response.body)['body'];
//       return [status, message, body];
//     } else {
//       return "Couldn't connect to the server, failed to fetch API!";
//     }
//   }
// }
