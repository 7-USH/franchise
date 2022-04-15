// ignore_for_file: avoid_print

import 'dart:math';

import 'package:http/http.dart' as http;

class NetWorking {
  String phoneNumber;
  String password;
  NetWorking({required this.password, required this.phoneNumber});

  Future<String> getLoginDetails() async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://fleenks.com/mv/api/fr-login'));
    request.fields.addAll({'mobile': phoneNumber, 'password': password});
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return await response.stream.bytesToString();
    } else {
      print(response.reasonPhrase);
    }
    return response.reasonPhrase.toString();
  }

  Future<String> getProfileDetails() async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://fleenks.com/mv/api/fr-profile'));
    request.fields.addAll({'id': '1'});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return await response.stream.bytesToString();
    } else {
      print(response.reasonPhrase);
    }
    return response.reasonPhrase.toString();
  }

  Future<String> forgetPassword() async {
    var request = http.MultipartRequest(
        'POST', Uri.parse('https://fleenks.com/mv/api/fr-forgot-password'));
    request.fields.addAll({'mobile': phoneNumber});

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return await response.stream.bytesToString();
    } else {
      print(response.reasonPhrase);
    }
    return response.reasonPhrase.toString();
  }
}
