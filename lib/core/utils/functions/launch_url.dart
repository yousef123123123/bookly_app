import 'package:bookly/core/utils/functions/custom_Snac_Bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> LaunchCustomUR(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      CustomSnacBar(context, ' Cannot Launch $url');
    }
  }
}
