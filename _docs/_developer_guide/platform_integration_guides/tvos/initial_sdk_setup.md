---
nav_title: Initial SDK Setup
platform: tvOS
page_order: 0
---

# Initial SDK Setup

**Note**:  Our tvOS SDK currently supports analytics functionality and fetching News Feed data.  To add a tvOS app in your dashboard please [open a support ticket][support].

{% include archive/apple/initial_setup.md platform="tvOS" %}

## TVML Example
See the [TVML target][2] of our sample application for an example of creating a javascript bridge to the Braze interface.

## Manual Integration Options

You can also integrate our tvOS SDK manually - simply grab the Framework from our [Public Repo][1] and initialize Braze as outlined above.

## Identifying Users and Reporting Analytics
See our [iOS documentation][3] for information about setting user ids, logging custom events, settting user attributes.

[1]: https://github.com/appboy/appboy-ios-sdk
[2]: https://github.com/Appboy/appboy-ios-sdk/tree/master/Example/tvOS_TVML_Stopwatch
[3]: {{ site.baseurl }}/developer_guide/platform_integration_guides/ios/analytics/setting_user_ids/
[support]: {{ site.baseurl }}/support_contact/
