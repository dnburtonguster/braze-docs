---
nav_title: Integration Overview
page_order: 1
search_rank: 5
platform: Android
---

# News Feed Integration Overview

In Android, the News Feed and feedback form are implemented as [Fragments][2] that are available in the Braze Android UI project. View [Google's documentation on Fragments][3] for information on how to add a Fragment to an Activity.

>  The Android UI Fragments do not automatically track session analytics. To ensure that sessions are tracked correctly, you should call `IAppboy.openSession()` when your app is opened (learn more about [tracking user sessions][4]).

The `AppboyFeedFragment` class will automatically refresh and display the contents of the News Feed and log usage analytics. The cards that can appear in a user's News Feed are set on the Braze dashboard.

Linking to the News Feed from an in-app message must be enabled by registering the `AppboyFeedActivity` within your [AndroidManifest.xml][28] file.

**Implementation Example**

See [`DroidBoyActivity.java`][5] in the Droidboy sample app.


[2]: http://developer.android.com/guide/components/fragments.html
[3]: http://developer.android.com/guide/components/fragments.html#Adding "Android Documentation: Fragments"
[4]: {{ site.baseurl }}/developer_guide/platform_integration_guides/android/analytics/tracking_sessions/
[5]: https://github.com/Appboy/appboy-android-sdk/blob/master/droidboy/src/main/java/com/appboy/sample/DroidBoyActivity.java
[28]: https://github.com/Appboy/appboy-android-sdk/blob/master/droidboy/src/main/AndroidManifest.xml "AndroidManifest.xml"
