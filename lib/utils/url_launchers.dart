import 'package:url_launcher/url_launcher.dart';

void launchURL(url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView);
  } else {
    throw 'Could not launch $url';
  }
}

void makePhoneCall(String phoneNumber) async {
  final Uri callUri = Uri(scheme: 'tel', path: phoneNumber);
  if (await canLaunchUrl(callUri)) {
    await launchUrl(callUri, mode: LaunchMode.inAppWebView);
  } else {
    throw 'Could not make a phone call to $phoneNumber';
  }
}

void sendEmail({required String email, String? subject, String? body}) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
    queryParameters: {'subject': subject ?? '', 'body': body ?? ''},
  );

  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not launch email client for $email';
  }
}
