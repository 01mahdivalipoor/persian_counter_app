// .این یک ویجت تست مقدماتی در فلاتر است
//
// برای اجرای تعامل با یک ویجت در تست، از
// WidgetTester
// که فلاتر برای شما مهیا کرده استفاده کنید، برای مثال شما میتوانید
// tap , scroll gestures و ...
// .ارسال کنید
// همچنین شما میتوانید از
// WidgetTester
// .برای پیدا کردن ویجت های فرزند در درخت ویجت، خواند متن و بررسی صحت مقادیر یا ویژگی ها استفاده کنید

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:persian_counter_app/main.dart';

void main() {
  testWidgets('تست افزایش شمارنده', (WidgetTester tester) async {
    // .برنامه ما را بساز و یک فریم از آن راه اندازی کن
    await tester.pumpWidget(MyApp());

    // .مطمئن شو که شمارنده ما با 0 شروع میشود
    expect(find.text('۰'), findsOneWidget);
    expect(find.text('۱'), findsNothing);

    // .آیکون + را کلیک کن و یک فریم جدید راه اندازی کن
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // .مطمئن شو که شمارنده ما افزایش یافته
    expect(find.text('۰'), findsNothing);
    expect(find.text('۱'), findsOneWidget);
  });
}
