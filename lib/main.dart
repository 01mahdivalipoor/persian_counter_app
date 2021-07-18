import 'package:flutter/material.dart';
import 'package:persian_tools/persian_tools.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // .این ویجت ریشه/پایه اپلیکیشن شماست
  @override
  Widget build(BuildContext context) {
    return Banner(
      // .این بنر گوشه صفحه است که نشان میدهد اپلیکیشن شما درحال توسعه است
      layoutDirection: TextDirection.rtl,
      textDirection: TextDirection.rtl,
      location: BannerLocation.topEnd,
      message: 'دیباگ',
      textStyle: TextStyle(fontFamily: 'Vazir Bold', fontSize: 12),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'نسخه آزمایشی فلاتر',
        theme: ThemeData(
          // .این تم اپلیکیشن شماست
          //
          // برای اجرای اپلیکیشن، از دستور
          // flutter run
          // .استفاده کنید
          // .میبینید که اپلیکیشن شما نوار ابزار آبی رنگی در بالای صفحه دارد
          // در ادامه بدون خروج از اپلیکیشن
          // primarySwatch
          // را به
          // Colors.green
          // .تغییر دهید
          // و سپس برای دیدن نتیجه
          // hot reload (r در کنسول را فشار دهید)
          // .یا در محیط توسعه تان فایل را به راحتی ذخیره کنید
          // توجه کنید که شمارنده به عدد صفر بازنگشته و اپلیکیشن ریستارت نشده است
          // این یعنی بدون ریستارت کردن اپلیکیشن، تغییرات اعمال میشود
          // .که سرعت توسعه را بسیار افزایش میدهد
          primarySwatch: Colors.blue,
          // در اینجا از فونتی که در فایل
          // pubspec.yaml
          // .آدرس دهی کردیم نیز بعنوان فونت اصلی اپلیکیشن استفاده میکنیم
          fontFamily: 'Vazir',
        ),
        home: MyHomePage(title: 'صفحه اصلی نسخه آزمایشی فلاتر'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  // .این ویجت صفحه اصلی برنامه شماست که دارای وضعیت قابل تغییر یا همان استیت فول است
  // Stateful
  // یعنی دارای یک ابجکت با
  // محتوایی که روی ظاهر آن تاثیر گذار است
  // مثل
  // title
  // .که در پایین مقدار دهی شده

  // این کلاس یک پیکربندی برای استیت است که مقادیر را
  // (title در اینجا مقدار)
  // که توسط ویجت والد
  // (App در اینجا توسط ویجت)
  // تامین شده را حفظ میکند، که در ادامه توسط متد
  // build
  // .برای ساختن استیت مورد استفاده قرار گرفته است
  //
  // همیشه مقادیر در کلاس زیردسته بصورت
  // final
  // .علامت گذاری میشوند

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // این فراخوان از
      // setState
      // به فلاتر میگوید که چیزی در این استیت تغییر کرده است، که باعث اجرای دوباره متد
      // build
      // زیر میشود تا
      // display
      // .بتواند مقادیر بروزرسانی شده را نمایش دهد
      // اگر ما
      // _counter
      // را بدون فراخوانی
      // setState
      // تغییر دهیم متد
      // build
      // .دوباره فراخوانده نمیشود و تغییری حاصل نمیشود
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // این متد هربار که
    // setState
    // .فراخوانده شود دوباره اجرا میشود
    // مثال اجرا شده در متد
    // _incrementCounter
    //
    // فلاتر بهینه سازی شده تا متد های دوباره اجرا شده ی
    // build
    // را تسریع کند. بنابراین هرچیزی را که نیاز به بروزرسانی دارد را
    // میتوان تغییر داد بدون اینکه خودتان شخصا مجبور باشید
    // .مثال های ویجت را تغییر دهید
    return RtlScaffold(
      appBar: AppBar(
        // اینجا ما مقادیر را از ابجکت
        // MyHomePage
        // که توسط متد
        // App.build
        // ساخته شده میگیریم و برای تنظیم
        // Appbar title
        // .از آن استفاده میکنیم
        title: Text(widget.title),
      ),
      body: Center(
        // .این ویجت یک فرزند میگیرد و آن را در وسط ویجت والد خود قرار میدهد
        child: Column(
          // .این ویجت یک لیست از ویجت بعنوان فرزندان خود میگیرد و آنها را بصورت عمودی میچیند
          // بصورت پیش فرض اندازه خود را بصورت افقی با فرزندان خود تطبیق میدهد
          // .و سعی میکند با ویجت والد در طول به یک اندازه باشد
          //
          //
          // p در کنسول کلید
          // را فشار دهید تا گزینه
          // debug painting
          // .فعال شود
          // این گزینه در اندروید استودیو و در وی اس کد در مسیر
          // Flutter Inspector -> Toggle Debug Paint
          // .موجود است که برای دیدن مرزبندی هر ویجت است
          //
          // Column
          // .برای کنترل چگونگی سایزبندی خود و موقعیت دهی فرزندان خود پراپرتی های گوناگونی دارد
          // اینجا ما از
          // mainAxisAlignment
          // استفاده میکنیم تا فرزندان را بصورت عمودی در مرکز قرار دهیم. در اینجا
          // main axis
          // یا همان محور اصلی عمودیست زیرا ویجت
          // Column
          // .عمودی است
          // .محور عرضی در اینجا افقی خواهد بود
          // cross axis
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'شما دکمه را این تعداد بار فشرده اید:',
            ),
            Text(
              convertEnToFa('$_counter'),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'افزایش',
        child: Icon(Icons.add),
      ),
      // .ویرگول موجود در آخر متد ها باعث فرمت شدن خودکار کدها و بالا رفتن خوانایی کد میشود
    );
  }
}

// .در ادامه نیز یک ویجت برای راستچین سازی اپلیکیشن ساخته ایم که تمام اپلیکیشن را راستچین میکند
// اگر خواستید به حالت پیش فرض برگردید در بالا ویجت
// RtlScaffold
// را با
// Scaffold
// .جایگزین کنید
class RtlScaffold extends StatefulWidget {
  final dynamic appBar;
  final dynamic body;
  final dynamic floatingActionButton;

  const RtlScaffold({
    Key? key,
    this.appBar,
    this.body,
    this.floatingActionButton,
  }) : super(key: key);

  @override
  _RtlScaffoldState createState() => _RtlScaffoldState();
}

class _RtlScaffoldState extends State<RtlScaffold> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: widget.appBar,
        body: widget.body,
        floatingActionButton: widget.floatingActionButton,
      ),
    );
  }
}
