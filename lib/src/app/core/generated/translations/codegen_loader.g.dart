// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "commandCenter": {
    "mapCardHeader": "Salesforse Accounts by country",
    "mapCardFooter": "Invalid state information provided fo {} of {} accounts",
    "multiChartHeader": "{} Analytics: Load Time vs Response Time",
    "multiChartYTitle": "Load Time",
    "multiChartYOppositeTitle": "Avg Response Time",
    "multiChartPageLoadTime": "Page Load Time {}",
    "multiChartRedirectionTime": "Redirection Time {}",
    "multiChartServerResponseTime": "Server Response Time {}",
    "multiChartResponseTime": "Response Time {}",
    "multiChartWebSite": "Web Site",
    "followersHeader": "Social Media Followers",
    "likes": "Likes",
    "followers": "Followers",
    "subscribers": "Subscribers",
    "circledBy": "Circled By",
    "videoStats": "{} Video Stats",
    "videoStatsImageSubtitle": "Metrics Driven Change Management",
    "playCount": "Play Count",
    "engagement": "Engagement",
    "playRate": "Play Rate",
    "callDurationHeader": "{} Today's Average Call Duration",
    "companyName": "Company: {}",
    "basedOnCalls": "Based on {} calls",
    "trafficHeader": "{} Marketing Exposes/Traffic",
    "advertisingAndPromotion": "Advertising & Promotion",
    "sessionTraffic": "Session Traffic",
    "prev": "prev.",
    "cacCardTitle": "{} CAC (Last {} Days)",
    "cacValue": "CAC Value",
    "somedays": "{} days",
    "leadsThisMonth": "Leads (This Month)",
    "lastMonth": "Last Month"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
