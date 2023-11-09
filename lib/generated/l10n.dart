// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `أختر لغةً`
  String get choose_language {
    return Intl.message(
      'أختر لغةً',
      name: 'choose_language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `العربية`
  String get arabic {
    return Intl.message(
      'العربية',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `البريد الالكتروني`
  String get email {
    return Intl.message(
      'البريد الالكتروني',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور`
  String get password {
    return Intl.message(
      'كلمة المرور',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور`
  String get confirm_password {
    return Intl.message(
      'تأكيد كلمة المرور',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `انت لم تستكمل بياناتك , الرجاء النقر هنا لاستكمالها`
  String get data_not_comleted {
    return Intl.message(
      'انت لم تستكمل بياناتك , الرجاء النقر هنا لاستكمالها',
      name: 'data_not_comleted',
      desc: '',
      args: [],
    );
  }

  /// `أضف تقييم`
  String get add_a_review {
    return Intl.message(
      'أضف تقييم',
      name: 'add_a_review',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الدخول`
  String get log_In {
    return Intl.message(
      'تسجيل الدخول',
      name: 'log_In',
      desc: '',
      args: [],
    );
  }

  /// `البريد الالكتروني  سجل من قبل `
  String get log_In_Error_EmailAlreadyInUser {
    return Intl.message(
      'البريد الالكتروني  سجل من قبل ',
      name: 'log_In_Error_EmailAlreadyInUser',
      desc: '',
      args: [],
    );
  }

  /// `البريد الالكتروني  غير صحيح  `
  String get log_In_Error_InvalidEmail {
    return Intl.message(
      'البريد الالكتروني  غير صحيح  ',
      name: 'log_In_Error_InvalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `المستخدم موقوف`
  String get log_In_Error_UserDisabled {
    return Intl.message(
      'المستخدم موقوف',
      name: 'log_In_Error_UserDisabled',
      desc: '',
      args: [],
    );
  }

  /// `البريد الالكتروني غير مسجل `
  String get log_In_Error_UserNotFound {
    return Intl.message(
      'البريد الالكتروني غير مسجل ',
      name: 'log_In_Error_UserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور غير صحيحة `
  String get log_In_Error_WrongPassword {
    return Intl.message(
      'كلمة المرور غير صحيحة ',
      name: 'log_In_Error_WrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `يرجى التأكد من صحة كلمة المرور`
  String get log_In_Error_UnEqualPassword {
    return Intl.message(
      'يرجى التأكد من صحة كلمة المرور',
      name: 'log_In_Error_UnEqualPassword',
      desc: '',
      args: [],
    );
  }

  /// `لقد اخترت وقت البدء مسبقا `
  String get the_Time_Now_cannot_be_before_the_beginning_of_time {
    return Intl.message(
      'لقد اخترت وقت البدء مسبقا ',
      name: 'the_Time_Now_cannot_be_before_the_beginning_of_time',
      desc: '',
      args: [],
    );
  }

  /// `الطلب زائد عن الحد `
  String get log_In_Error_TooManyRequests {
    return Intl.message(
      'الطلب زائد عن الحد ',
      name: 'log_In_Error_TooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `ليس لك صلاحية للقيام بهذه العمليه`
  String get log_In_Error_OperationNotAllowed {
    return Intl.message(
      'ليس لك صلاحية للقيام بهذه العمليه',
      name: 'log_In_Error_OperationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `خطأ غير متوقع`
  String get log_In_Error_UnknownErrorFirebase {
    return Intl.message(
      'خطأ غير متوقع',
      name: 'log_In_Error_UnknownErrorFirebase',
      desc: '',
      args: [],
    );
  }

  /// `الوقت المتبقي`
  String get remaning_time {
    return Intl.message(
      'الوقت المتبقي',
      name: 'remaning_time',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل جديد`
  String get sign_Up {
    return Intl.message(
      'تسجيل جديد',
      name: 'sign_Up',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور`
  String get passward_forgeted {
    return Intl.message(
      'نسيت كلمة المرور',
      name: 'passward_forgeted',
      desc: '',
      args: [],
    );
  }

  /// `دقيقة`
  String get menit {
    return Intl.message(
      'دقيقة',
      name: 'menit',
      desc: '',
      args: [],
    );
  }

  /// `دقائق`
  String get menits {
    return Intl.message(
      'دقائق',
      name: 'menits',
      desc: '',
      args: [],
    );
  }

  /// `نسيت كلمة المرور`
  String get password_forgotten {
    return Intl.message(
      'نسيت كلمة المرور',
      name: 'password_forgotten',
      desc: '',
      args: [],
    );
  }

  /// `الجلسة القادمة`
  String get next_session {
    return Intl.message(
      'الجلسة القادمة',
      name: 'next_session',
      desc: '',
      args: [],
    );
  }

  /// `الجلسات القادمة`
  String get next_sessions {
    return Intl.message(
      'الجلسات القادمة',
      name: 'next_sessions',
      desc: '',
      args: [],
    );
  }

  /// `انشاء حساب`
  String get new_Account {
    return Intl.message(
      'انشاء حساب',
      name: 'new_Account',
      desc: '',
      args: [],
    );
  }

  /// `حفظ`
  String get save {
    return Intl.message(
      'حفظ',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `يوم`
  String get day {
    return Intl.message(
      'يوم',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `الاسم بالكامل`
  String get name_person {
    return Intl.message(
      'الاسم بالكامل',
      name: 'name_person',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل البيانات`
  String get data_details {
    return Intl.message(
      'تفاصيل البيانات',
      name: 'data_details',
      desc: '',
      args: [],
    );
  }

  /// `قرأت سياسة `
  String get have_readed {
    return Intl.message(
      'قرأت سياسة ',
      name: 'have_readed',
      desc: '',
      args: [],
    );
  }

  /// `الخصوصية والاستخدام`
  String get privacy_policy {
    return Intl.message(
      'الخصوصية والاستخدام',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد البيانات `
  String get assure_Data {
    return Intl.message(
      'تأكيد البيانات ',
      name: 'assure_Data',
      desc: '',
      args: [],
    );
  }

  /// `اللقب`
  String get last_name {
    return Intl.message(
      'اللقب',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `ارغب في اظهار اللقب`
  String get show_last_name {
    return Intl.message(
      'ارغب في اظهار اللقب',
      name: 'show_last_name',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الميلاد`
  String get birth_day {
    return Intl.message(
      'تاريخ الميلاد',
      name: 'birth_day',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ`
  String get date {
    return Intl.message(
      'تاريخ',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ`
  String get the_date {
    return Intl.message(
      'التاريخ',
      name: 'the_date',
      desc: '',
      args: [],
    );
  }

  /// `الجنس`
  String get gender {
    return Intl.message(
      'الجنس',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `المؤهل العلمي`
  String get qualification {
    return Intl.message(
      'المؤهل العلمي',
      name: 'qualification',
      desc: '',
      args: [],
    );
  }

  /// `البلد`
  String get country {
    return Intl.message(
      'البلد',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `المدينة`
  String get city {
    return Intl.message(
      'المدينة',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `تخطي`
  String get skip {
    return Intl.message(
      'تخطي',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `تم إضافة موعد يوم `
  String get a_day_has_been_added {
    return Intl.message(
      'تم إضافة موعد يوم ',
      name: 'a_day_has_been_added',
      desc: '',
      args: [],
    );
  }

  /// `حسب رغبتك`
  String get as_you_wish {
    return Intl.message(
      'حسب رغبتك',
      name: 'as_you_wish',
      desc: '',
      args: [],
    );
  }

  /// `تعديل الملف الشخصي`
  String get profile_Edit {
    return Intl.message(
      'تعديل الملف الشخصي',
      name: 'profile_Edit',
      desc: '',
      args: [],
    );
  }

  /// `الأستاذ الدكتور`
  String get MR {
    return Intl.message(
      'الأستاذ الدكتور',
      name: 'MR',
      desc: '',
      args: [],
    );
  }

  /// `رقم الهاتف`
  String get phone_number {
    return Intl.message(
      'رقم الهاتف',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `تغيير كلمة المرور`
  String get change_password {
    return Intl.message(
      'تغيير كلمة المرور',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `مرحبا!`
  String get welcome {
    return Intl.message(
      'مرحبا!',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `إحصائيات`
  String get statistics {
    return Intl.message(
      'إحصائيات',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `تغيير`
  String get change {
    return Intl.message(
      'تغيير',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `تحديد القوت الضائع`
  String get free_time {
    return Intl.message(
      'تحديد القوت الضائع',
      name: 'free_time',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور الحالية`
  String get current_password {
    return Intl.message(
      'كلمة المرور الحالية',
      name: 'current_password',
      desc: '',
      args: [],
    );
  }

  /// `كلمة مرور جديدة`
  String get new_password {
    return Intl.message(
      'كلمة مرور جديدة',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد كلمة المرور الجديدة`
  String get Confirm_the_new_password {
    return Intl.message(
      'تأكيد كلمة المرور الجديدة',
      name: 'Confirm_the_new_password',
      desc: '',
      args: [],
    );
  }

  /// `تجويد/تحفيظ`
  String get intonation_memorization {
    return Intl.message(
      'تجويد/تحفيظ',
      name: 'intonation_memorization',
      desc: '',
      args: [],
    );
  }

  /// `إغلاق`
  String get close {
    return Intl.message(
      'إغلاق',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `الجلسات`
  String get sessions {
    return Intl.message(
      'الجلسات',
      name: 'sessions',
      desc: '',
      args: [],
    );
  }

  /// `عدد الساعات`
  String get hours_num {
    return Intl.message(
      'عدد الساعات',
      name: 'hours_num',
      desc: '',
      args: [],
    );
  }

  /// `ساعات`
  String get hours {
    return Intl.message(
      'ساعات',
      name: 'hours',
      desc: '',
      args: [],
    );
  }

  /// `الى`
  String get to {
    return Intl.message(
      'الى',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `يجب اضافة`
  String get error_validation_require {
    return Intl.message(
      'يجب اضافة',
      name: 'error_validation_require',
      desc: '',
      args: [],
    );
  }

  /// `يجب ان يكون البريد الإلكتروني يحوي على @`
  String get error_validation_email {
    return Intl.message(
      'يجب ان يكون البريد الإلكتروني يحوي على @',
      name: 'error_validation_email',
      desc: '',
      args: [],
    );
  }

  /// `يرجى إدخال 8 محارف على الأقل من أحرف وأرقام`
  String get error_validation_length {
    return Intl.message(
      'يرجى إدخال 8 محارف على الأقل من أحرف وأرقام',
      name: 'error_validation_length',
      desc: '',
      args: [],
    );
  }

  /// `غير متطابقة`
  String get error_validation_match {
    return Intl.message(
      'غير متطابقة',
      name: 'error_validation_match',
      desc: '',
      args: [],
    );
  }

  /// `شهادات المعلم`
  String get teacher_certificates {
    return Intl.message(
      'شهادات المعلم',
      name: 'teacher_certificates',
      desc: '',
      args: [],
    );
  }

  /// `شهادات المعلمة`
  String get teacher_certificates_f {
    return Intl.message(
      'شهادات المعلمة',
      name: 'teacher_certificates_f',
      desc: '',
      args: [],
    );
  }

  /// `سجل الإنجازات`
  String get record_of_achievements {
    return Intl.message(
      'سجل الإنجازات',
      name: 'record_of_achievements',
      desc: '',
      args: [],
    );
  }

  /// `سجل الجلسات`
  String get session_list {
    return Intl.message(
      'سجل الجلسات',
      name: 'session_list',
      desc: '',
      args: [],
    );
  }

  /// `السور المنتهية`
  String get finished_souars {
    return Intl.message(
      'السور المنتهية',
      name: 'finished_souars',
      desc: '',
      args: [],
    );
  }

  /// `عدد الجلسات`
  String get num_of_the_sessions {
    return Intl.message(
      'عدد الجلسات',
      name: 'num_of_the_sessions',
      desc: '',
      args: [],
    );
  }

  /// `بمعدل ساعات :`
  String get hourly_rate {
    return Intl.message(
      'بمعدل ساعات :',
      name: 'hourly_rate',
      desc: '',
      args: [],
    );
  }

  /// `ساعة`
  String get hour {
    return Intl.message(
      'ساعة',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `اليوم`
  String get today {
    return Intl.message(
      'اليوم',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `جلسة تسميع`
  String get hearing_session {
    return Intl.message(
      'جلسة تسميع',
      name: 'hearing_session',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الجلسة من السور`
  String get details_of_the_session_from_the_surah {
    return Intl.message(
      'تفاصيل الجلسة من السور',
      name: 'details_of_the_session_from_the_surah',
      desc: '',
      args: [],
    );
  }

  /// `اسم معلم الجلسة `
  String get session_teacher_name {
    return Intl.message(
      'اسم معلم الجلسة ',
      name: 'session_teacher_name',
      desc: '',
      args: [],
    );
  }

  /// `حالة الجلسة:`
  String get session_status {
    return Intl.message(
      'حالة الجلسة:',
      name: 'session_status',
      desc: '',
      args: [],
    );
  }

  /// `عنوان الجلسة`
  String get session_title {
    return Intl.message(
      'عنوان الجلسة',
      name: 'session_title',
      desc: '',
      args: [],
    );
  }

  /// `موقع الجلسة`
  String get session_location {
    return Intl.message(
      'موقع الجلسة',
      name: 'session_location',
      desc: '',
      args: [],
    );
  }

  /// `تم الحفظ`
  String get saved {
    return Intl.message(
      'تم الحفظ',
      name: 'saved',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم الحفظ`
  String get not_saved {
    return Intl.message(
      'لم يتم الحفظ',
      name: 'not_saved',
      desc: '',
      args: [],
    );
  }

  /// `المعلمين`
  String get teachers {
    return Intl.message(
      'المعلمين',
      name: 'teachers',
      desc: '',
      args: [],
    );
  }

  /// `البحث عن معلم`
  String get search_of_the_teacher {
    return Intl.message(
      'البحث عن معلم',
      name: 'search_of_the_teacher',
      desc: '',
      args: [],
    );
  }

  /// `رجوع`
  String get back {
    return Intl.message(
      'رجوع',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `تعديل المعلومات الشخصية`
  String get edit_personal_information {
    return Intl.message(
      'تعديل المعلومات الشخصية',
      name: 'edit_personal_information',
      desc: '',
      args: [],
    );
  }

  /// `حلقة`
  String get episode {
    return Intl.message(
      'حلقة',
      name: 'episode',
      desc: '',
      args: [],
    );
  }

  /// `تجويد`
  String get intonation {
    return Intl.message(
      'تجويد',
      name: 'intonation',
      desc: '',
      args: [],
    );
  }

  /// `تحفيظ`
  String get memorization {
    return Intl.message(
      'تحفيظ',
      name: 'memorization',
      desc: '',
      args: [],
    );
  }

  /// `نقاط`
  String get points {
    return Intl.message(
      'نقاط',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `عن المعلم`
  String get about_the_teacher {
    return Intl.message(
      'عن المعلم',
      name: 'about_the_teacher',
      desc: '',
      args: [],
    );
  }

  /// `عن المعلمة`
  String get about_the_teacherf {
    return Intl.message(
      'عن المعلمة',
      name: 'about_the_teacherf',
      desc: '',
      args: [],
    );
  }

  /// `الطلاب الحاليين`
  String get current_students {
    return Intl.message(
      'الطلاب الحاليين',
      name: 'current_students',
      desc: '',
      args: [],
    );
  }

  /// `طالب`
  String get the_student {
    return Intl.message(
      'طالب',
      name: 'the_student',
      desc: '',
      args: [],
    );
  }

  /// ` المدينة : `
  String get city_country_geographic_location {
    return Intl.message(
      ' المدينة : ',
      name: 'city_country_geographic_location',
      desc: '',
      args: [],
    );
  }

  /// `تصفية حسب`
  String get filter_by {
    return Intl.message(
      'تصفية حسب',
      name: 'filter_by',
      desc: '',
      args: [],
    );
  }

  /// `الوقت`
  String get time {
    return Intl.message(
      'الوقت',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `اسم المعلم`
  String get teacher_name {
    return Intl.message(
      'اسم المعلم',
      name: 'teacher_name',
      desc: '',
      args: [],
    );
  }

  /// `موقع المعلم`
  String get teacher_location {
    return Intl.message(
      'موقع المعلم',
      name: 'teacher_location',
      desc: '',
      args: [],
    );
  }

  /// `تطبيق`
  String get implementation {
    return Intl.message(
      'تطبيق',
      name: 'implementation',
      desc: '',
      args: [],
    );
  }

  /// `إلغاء`
  String get cancel {
    return Intl.message(
      'إلغاء',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد جلسات بعد`
  String get no_sessions_yet {
    return Intl.message(
      'لا توجد جلسات بعد',
      name: 'no_sessions_yet',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد اشعارات بعد`
  String get no_notifications_yet {
    return Intl.message(
      'لا توجد اشعارات بعد',
      name: 'no_notifications_yet',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب`
  String get create_account {
    return Intl.message(
      'إنشاء حساب',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الحساب`
  String get account_details {
    return Intl.message(
      'تفاصيل الحساب',
      name: 'account_details',
      desc: '',
      args: [],
    );
  }

  /// `المعلومات الشخصية`
  String get personal_information {
    return Intl.message(
      'المعلومات الشخصية',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `أكمل البيانات لتقديم تجربة استخدام أفضل `
  String get complete_the_data_to_provide_a_better_user_experience {
    return Intl.message(
      'أكمل البيانات لتقديم تجربة استخدام أفضل ',
      name: 'complete_the_data_to_provide_a_better_user_experience',
      desc: '',
      args: [],
    );
  }

  /// `متابعة الطلاب`
  String get follow_the_students {
    return Intl.message(
      'متابعة الطلاب',
      name: 'follow_the_students',
      desc: '',
      args: [],
    );
  }

  /// `أرغب بإظهار الاسم للعامة`
  String get I_want_to_show_my_name_to_the_public {
    return Intl.message(
      'أرغب بإظهار الاسم للعامة',
      name: 'I_want_to_show_my_name_to_the_public',
      desc: '',
      args: [],
    );
  }

  /// `معلوماتي الشخصية`
  String get my_personal_information {
    return Intl.message(
      'معلوماتي الشخصية',
      name: 'my_personal_information',
      desc: '',
      args: [],
    );
  }

  /// `تعديل`
  String get edit {
    return Intl.message(
      'تعديل',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `جلسة التجويد بتلاوة حفص بن عاصم`
  String get Tajweed_session_recited_by_Hafs_bin_Asim {
    return Intl.message(
      'جلسة التجويد بتلاوة حفص بن عاصم',
      name: 'Tajweed_session_recited_by_Hafs_bin_Asim',
      desc: '',
      args: [],
    );
  }

  /// `المعلم:`
  String get MR2 {
    return Intl.message(
      'المعلم:',
      name: 'MR2',
      desc: '',
      args: [],
    );
  }

  /// `احجز جلسة`
  String get session_reservation {
    return Intl.message(
      'احجز جلسة',
      name: 'session_reservation',
      desc: '',
      args: [],
    );
  }

  /// `موعد الجلسة`
  String get session_date {
    return Intl.message(
      'موعد الجلسة',
      name: 'session_date',
      desc: '',
      args: [],
    );
  }

  /// `حدد يوم وتوقيت الجلسة`
  String get determine_the_date_and_time_of_the_session {
    return Intl.message(
      'حدد يوم وتوقيت الجلسة',
      name: 'determine_the_date_and_time_of_the_session',
      desc: '',
      args: [],
    );
  }

  /// `السورة`
  String get souar {
    return Intl.message(
      'السورة',
      name: 'souar',
      desc: '',
      args: [],
    );
  }

  /// `تسميع ب`
  String get reciting_from {
    return Intl.message(
      'تسميع ب',
      name: 'reciting_from',
      desc: '',
      args: [],
    );
  }

  /// `جلسة`
  String get session {
    return Intl.message(
      'جلسة',
      name: 'session',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الجلسة`
  String get sessions_details {
    return Intl.message(
      'تفاصيل الجلسة',
      name: 'sessions_details',
      desc: '',
      args: [],
    );
  }

  /// `بدء الجلسة`
  String get session_start {
    return Intl.message(
      'بدء الجلسة',
      name: 'session_start',
      desc: '',
      args: [],
    );
  }

  /// `الإعدادات`
  String get settings {
    return Intl.message(
      'الإعدادات',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `حسنا`
  String get ok {
    return Intl.message(
      'حسنا',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تستكمل بياناتك أولاٌ`
  String get need_to_add_your_data {
    return Intl.message(
      'يجب أن تستكمل بياناتك أولاٌ',
      name: 'need_to_add_your_data',
      desc: '',
      args: [],
    );
  }

  /// ` كلمة المرور غير صحيحة`
  String get the_password_is_not_currect {
    return Intl.message(
      ' كلمة المرور غير صحيحة',
      name: 'the_password_is_not_currect',
      desc: '',
      args: [],
    );
  }

  /// `هذا الحساب غير مسجل `
  String get this_account_has_been_registered {
    return Intl.message(
      'هذا الحساب غير مسجل ',
      name: 'this_account_has_been_registered',
      desc: '',
      args: [],
    );
  }

  /// `ذكر`
  String get mail {
    return Intl.message(
      'ذكر',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `انثى`
  String get femail {
    return Intl.message(
      'انثى',
      name: 'femail',
      desc: '',
      args: [],
    );
  }

  /// `الكل`
  String get all {
    return Intl.message(
      'الكل',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `يجب اختيار المدينة `
  String get city_must_been_chosen {
    return Intl.message(
      'يجب اختيار المدينة ',
      name: 'city_must_been_chosen',
      desc: '',
      args: [],
    );
  }

  /// `الرابط المباشر للجلسة`
  String get session_link {
    return Intl.message(
      'الرابط المباشر للجلسة',
      name: 'session_link',
      desc: '',
      args: [],
    );
  }

  /// `يجب ان توافق على سياسة الخصوصية `
  String get must_accept_privacy {
    return Intl.message(
      'يجب ان توافق على سياسة الخصوصية ',
      name: 'must_accept_privacy',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد جلسات متاحة للشيخ اليوم `
  String get no_sessions_available {
    return Intl.message(
      'لا توجد جلسات متاحة للشيخ اليوم ',
      name: 'no_sessions_available',
      desc: '',
      args: [],
    );
  }

  /// `ييجب اختيار وقت الجلسة `
  String get must_choose_session_time {
    return Intl.message(
      'ييجب اختيار وقت الجلسة ',
      name: 'must_choose_session_time',
      desc: '',
      args: [],
    );
  }

  /// `ييجب اختيار  الجلسة `
  String get must_choose_session {
    return Intl.message(
      'ييجب اختيار  الجلسة ',
      name: 'must_choose_session',
      desc: '',
      args: [],
    );
  }

  /// `ييجب اختيار  سورة للتسميع `
  String get must_choose_soura {
    return Intl.message(
      'ييجب اختيار  سورة للتسميع ',
      name: 'must_choose_soura',
      desc: '',
      args: [],
    );
  }

  /// `محجوزة`
  String get reservation {
    return Intl.message(
      'محجوزة',
      name: 'reservation',
      desc: '',
      args: [],
    );
  }

  /// `غير محجوزة`
  String get not_reservation {
    return Intl.message(
      'غير محجوزة',
      name: 'not_reservation',
      desc: '',
      args: [],
    );
  }

  /// `طلب الحجز`
  String get session_request {
    return Intl.message(
      'طلب الحجز',
      name: 'session_request',
      desc: '',
      args: [],
    );
  }

  /// `سنرسل لك اشعارا عن الموافقة عليه`
  String get reservation_to_be_conformed {
    return Intl.message(
      'سنرسل لك اشعارا عن الموافقة عليه',
      name: 'reservation_to_be_conformed',
      desc: '',
      args: [],
    );
  }

  /// `يجب الموافقة على سياسة الخصوصية `
  String get must_accept_to_privacy {
    return Intl.message(
      'يجب الموافقة على سياسة الخصوصية ',
      name: 'must_accept_to_privacy',
      desc: '',
      args: [],
    );
  }

  /// `اختيار`
  String get choose {
    return Intl.message(
      'اختيار',
      name: 'choose',
      desc: '',
      args: [],
    );
  }

  /// `حضر`
  String get attended {
    return Intl.message(
      'حضر',
      name: 'attended',
      desc: '',
      args: [],
    );
  }

  /// `حضر و حفظ`
  String get attend_and_saved {
    return Intl.message(
      'حضر و حفظ',
      name: 'attend_and_saved',
      desc: '',
      args: [],
    );
  }

  /// `حضر ولم يحفظ`
  String get attend_and_not_save {
    return Intl.message(
      'حضر ولم يحفظ',
      name: 'attend_and_not_save',
      desc: '',
      args: [],
    );
  }

  /// `مواعيد الجلسات`
  String get sessions_time {
    return Intl.message(
      'مواعيد الجلسات',
      name: 'sessions_time',
      desc: '',
      args: [],
    );
  }

  /// `الوقت من`
  String get time_from {
    return Intl.message(
      'الوقت من',
      name: 'time_from',
      desc: '',
      args: [],
    );
  }

  /// `الوقت الى`
  String get time_to {
    return Intl.message(
      'الوقت الى',
      name: 'time_to',
      desc: '',
      args: [],
    );
  }

  /// `لم يحضر `
  String get not_attend {
    return Intl.message(
      'لم يحضر ',
      name: 'not_attend',
      desc: '',
      args: [],
    );
  }

  /// `لم تقم بتقييم هذه الجلسة اضغط على تفاصيل الجلسة وأضف التقييم`
  String get not_evaluation {
    return Intl.message(
      'لم تقم بتقييم هذه الجلسة اضغط على تفاصيل الجلسة وأضف التقييم',
      name: 'not_evaluation',
      desc: '',
      args: [],
    );
  }

  /// `الحساب مسجل من قبل`
  String get account_has_been_registered {
    return Intl.message(
      'الحساب مسجل من قبل',
      name: 'account_has_been_registered',
      desc: '',
      args: [],
    );
  }

  /// `الجلسة`
  String get the_session {
    return Intl.message(
      'الجلسة',
      name: 'the_session',
      desc: '',
      args: [],
    );
  }

  /// `تقييم المدرس`
  String get teacher_evaluation {
    return Intl.message(
      'تقييم المدرس',
      name: 'teacher_evaluation',
      desc: '',
      args: [],
    );
  }

  /// `مثال نصي`
  String get text_example {
    return Intl.message(
      'مثال نصي',
      name: 'text_example',
      desc: '',
      args: [],
    );
  }

  /// `سجل الجلسات`
  String get sessions_list {
    return Intl.message(
      'سجل الجلسات',
      name: 'sessions_list',
      desc: '',
      args: [],
    );
  }

  /// ` كل الجلسات`
  String get all_sessions {
    return Intl.message(
      ' كل الجلسات',
      name: 'all_sessions',
      desc: '',
      args: [],
    );
  }

  /// `عدد السور`
  String get number_of_souars {
    return Intl.message(
      'عدد السور',
      name: 'number_of_souars',
      desc: '',
      args: [],
    );
  }

  /// `الجلسات السابقة`
  String get ended_sessions {
    return Intl.message(
      'الجلسات السابقة',
      name: 'ended_sessions',
      desc: '',
      args: [],
    );
  }

  /// `الجلسات المحجوزة`
  String get booked_sessions {
    return Intl.message(
      'الجلسات المحجوزة',
      name: 'booked_sessions',
      desc: '',
      args: [],
    );
  }

  /// `البحث عن طالب`
  String get search_of_the_student {
    return Intl.message(
      'البحث عن طالب',
      name: 'search_of_the_student',
      desc: '',
      args: [],
    );
  }

  /// `الطالب :`
  String get student {
    return Intl.message(
      'الطالب :',
      name: 'student',
      desc: '',
      args: [],
    );
  }

  /// `المواعيد اليومية`
  String get daily_date {
    return Intl.message(
      'المواعيد اليومية',
      name: 'daily_date',
      desc: '',
      args: [],
    );
  }

  /// `حالة الطالب `
  String get student_status {
    return Intl.message(
      'حالة الطالب ',
      name: 'student_status',
      desc: '',
      args: [],
    );
  }

  /// `إضافة جلسة جديدة`
  String get add_new_session {
    return Intl.message(
      'إضافة جلسة جديدة',
      name: 'add_new_session',
      desc: '',
      args: [],
    );
  }

  /// `اختر التاريخ`
  String get choose_date {
    return Intl.message(
      'اختر التاريخ',
      name: 'choose_date',
      desc: '',
      args: [],
    );
  }

  /// `بداية التوقيت`
  String get start_session {
    return Intl.message(
      'بداية التوقيت',
      name: 'start_session',
      desc: '',
      args: [],
    );
  }

  /// `نهاية التوقيت`
  String get end_session {
    return Intl.message(
      'نهاية التوقيت',
      name: 'end_session',
      desc: '',
      args: [],
    );
  }

  /// `جلسة تسميع`
  String get listening_session {
    return Intl.message(
      'جلسة تسميع',
      name: 'listening_session',
      desc: '',
      args: [],
    );
  }

  /// `تم حجز الجلسة`
  String get session_booked {
    return Intl.message(
      'تم حجز الجلسة',
      name: 'session_booked',
      desc: '',
      args: [],
    );
  }

  /// `إضافة موعد جلسة جديدة`
  String get add_new_session_date {
    return Intl.message(
      'إضافة موعد جلسة جديدة',
      name: 'add_new_session_date',
      desc: '',
      args: [],
    );
  }

  /// `إضافة`
  String get add {
    return Intl.message(
      'إضافة',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `وقت البدء`
  String get start_time {
    return Intl.message(
      'وقت البدء',
      name: 'start_time',
      desc: '',
      args: [],
    );
  }

  /// `أتم الحفظ`
  String get savedd {
    return Intl.message(
      'أتم الحفظ',
      name: 'savedd',
      desc: '',
      args: [],
    );
  }

  /// `وقت الانتهاء`
  String get end_time {
    return Intl.message(
      'وقت الانتهاء',
      name: 'end_time',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ`
  String get history {
    return Intl.message(
      'التاريخ',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `تفاصيل الجلسة`
  String get session_details {
    return Intl.message(
      'تفاصيل الجلسة',
      name: 'session_details',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد الجلسة`
  String get session_confirmation {
    return Intl.message(
      'تأكيد الجلسة',
      name: 'session_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `إرسال تنبيهات`
  String get send_notification {
    return Intl.message(
      'إرسال تنبيهات',
      name: 'send_notification',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل الخروج`
  String get log_out {
    return Intl.message(
      'تسجيل الخروج',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `تغيير اللغة`
  String get change_language {
    return Intl.message(
      'تغيير اللغة',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `الاعتذار عن الجلسة`
  String get apologies_for_the_session {
    return Intl.message(
      'الاعتذار عن الجلسة',
      name: 'apologies_for_the_session',
      desc: '',
      args: [],
    );
  }

  /// `...جاري التحميل`
  String get loading {
    return Intl.message(
      '...جاري التحميل',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `وقت الجلسة`
  String get session_time {
    return Intl.message(
      'وقت الجلسة',
      name: 'session_time',
      desc: '',
      args: [],
    );
  }

  /// `إضافة شهادة`
  String get add_certificates {
    return Intl.message(
      'إضافة شهادة',
      name: 'add_certificates',
      desc: '',
      args: [],
    );
  }

  /// `الإشعارات`
  String get notifications {
    return Intl.message(
      'الإشعارات',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `السور`
  String get souars {
    return Intl.message(
      'السور',
      name: 'souars',
      desc: '',
      args: [],
    );
  }

  /// `عدد الجلسات`
  String get num_sessions {
    return Intl.message(
      'عدد الجلسات',
      name: 'num_sessions',
      desc: '',
      args: [],
    );
  }

  /// `معدل الساعات`
  String get the_hourly_rate {
    return Intl.message(
      'معدل الساعات',
      name: 'the_hourly_rate',
      desc: '',
      args: [],
    );
  }

  /// `سورة`
  String get soura {
    return Intl.message(
      'سورة',
      name: 'soura',
      desc: '',
      args: [],
    );
  }

  /// `الساعة`
  String get the_hour {
    return Intl.message(
      'الساعة',
      name: 'the_hour',
      desc: '',
      args: [],
    );
  }

  /// `ساعات`
  String get all_hour {
    return Intl.message(
      'ساعات',
      name: 'all_hour',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ من`
  String get date_from {
    return Intl.message(
      'التاريخ من',
      name: 'date_from',
      desc: '',
      args: [],
    );
  }

  /// `التاريخ إلى`
  String get date_to {
    return Intl.message(
      'التاريخ إلى',
      name: 'date_to',
      desc: '',
      args: [],
    );
  }

  /// `ذكر`
  String get male {
    return Intl.message(
      'ذكر',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `أنثى`
  String get female {
    return Intl.message(
      'أنثى',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `الغاء الموعد`
  String get cancel_session {
    return Intl.message(
      'الغاء الموعد',
      name: 'cancel_session',
      desc: '',
      args: [],
    );
  }

  /// `رفض الحجز`
  String get reject_session {
    return Intl.message(
      'رفض الحجز',
      name: 'reject_session',
      desc: '',
      args: [],
    );
  }

  /// `هل تود حذف هذه الجلسة؟`
  String get do_you_want_to_delete_this_sessions {
    return Intl.message(
      'هل تود حذف هذه الجلسة؟',
      name: 'do_you_want_to_delete_this_sessions',
      desc: '',
      args: [],
    );
  }

  /// `هل تود الغاء هذه الجلسة؟`
  String get do_you_want_to_Cancel_this_sessions {
    return Intl.message(
      'هل تود الغاء هذه الجلسة؟',
      name: 'do_you_want_to_Cancel_this_sessions',
      desc: '',
      args: [],
    );
  }

  /// `محجوزة`
  String get reserved {
    return Intl.message(
      'محجوزة',
      name: 'reserved',
      desc: '',
      args: [],
    );
  }

  /// `إلغاء الموعد`
  String get cancel_appointment {
    return Intl.message(
      'إلغاء الموعد',
      name: 'cancel_appointment',
      desc: '',
      args: [],
    );
  }

  /// `تأجيل الموعد`
  String get relate_session {
    return Intl.message(
      'تأجيل الموعد',
      name: 'relate_session',
      desc: '',
      args: [],
    );
  }

  /// `حجز جلسة`
  String get book_a_session {
    return Intl.message(
      'حجز جلسة',
      name: 'book_a_session',
      desc: '',
      args: [],
    );
  }

  /// `تسميع سورة`
  String get Recite_surah {
    return Intl.message(
      'تسميع سورة',
      name: 'Recite_surah',
      desc: '',
      args: [],
    );
  }

  /// `اختر اليوم المناسب والساعات المناسبة لك،يمكنك إضافة أكثر من موعد في يوم واحد`
  String
      get Choose_the_right_day_and_hours_for_you_you_can_add_more_than_one_appointment_in_one_day {
    return Intl.message(
      'اختر اليوم المناسب والساعات المناسبة لك،يمكنك إضافة أكثر من موعد في يوم واحد',
      name:
          'Choose_the_right_day_and_hours_for_you_you_can_add_more_than_one_appointment_in_one_day',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد نتائج`
  String get Data_not_fount {
    return Intl.message(
      'لا يوجد نتائج',
      name: 'Data_not_fount',
      desc: '',
      args: [],
    );
  }

  /// `توقيت الجلسة :`
  String get session_timing {
    return Intl.message(
      'توقيت الجلسة :',
      name: 'session_timing',
      desc: '',
      args: [],
    );
  }

  /// `من`
  String get from {
    return Intl.message(
      'من',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `منتهية`
  String get finished {
    return Intl.message(
      'منتهية',
      name: 'finished',
      desc: '',
      args: [],
    );
  }

  /// `تقييم الجلسة :`
  String get session_evaluation {
    return Intl.message(
      'تقييم الجلسة :',
      name: 'session_evaluation',
      desc: '',
      args: [],
    );
  }

  /// `العودة`
  String get back_api {
    return Intl.message(
      'العودة',
      name: 'back_api',
      desc: '',
      args: [],
    );
  }

  /// `يجب إضافة`
  String get must_add {
    return Intl.message(
      'يجب إضافة',
      name: 'must_add',
      desc: '',
      args: [],
    );
  }

  /// `البريد إلكتروني خاطئ`
  String get invalid_email {
    return Intl.message(
      'البريد إلكتروني خاطئ',
      name: 'invalid_email',
      desc: '',
      args: [],
    );
  }

  /// `كلمة المرور خاطئة`
  String get invalid_password {
    return Intl.message(
      'كلمة المرور خاطئة',
      name: 'invalid_password',
      desc: '',
      args: [],
    );
  }

  /// `هذا الحقل مطلوب`
  String get required_field {
    return Intl.message(
      'هذا الحقل مطلوب',
      name: 'required_field',
      desc: '',
      args: [],
    );
  }

  /// `طلبات الحجز`
  String get booking_requests {
    return Intl.message(
      'طلبات الحجز',
      name: 'booking_requests',
      desc: '',
      args: [],
    );
  }

  /// `اختر تاريخ وتوقيت الجلسة`
  String get choose_session_time_and_date {
    return Intl.message(
      'اختر تاريخ وتوقيت الجلسة',
      name: 'choose_session_time_and_date',
      desc: '',
      args: [],
    );
  }

  /// `اختر السورة`
  String get choose_sora {
    return Intl.message(
      'اختر السورة',
      name: 'choose_sora',
      desc: '',
      args: [],
    );
  }

  /// `الآية`
  String get verse {
    return Intl.message(
      'الآية',
      name: 'verse',
      desc: '',
      args: [],
    );
  }

  /// `تاريخ الجلسة`
  String get sessions_date {
    return Intl.message(
      'تاريخ الجلسة',
      name: 'sessions_date',
      desc: '',
      args: [],
    );
  }

  /// `الصفحة الشخصية`
  String get personal_page {
    return Intl.message(
      'الصفحة الشخصية',
      name: 'personal_page',
      desc: '',
      args: [],
    );
  }

  /// `المعلمة :`
  String get miss {
    return Intl.message(
      'المعلمة :',
      name: 'miss',
      desc: '',
      args: [],
    );
  }

  /// `الشيخ`
  String get sheikh {
    return Intl.message(
      'الشيخ',
      name: 'sheikh',
      desc: '',
      args: [],
    );
  }

  /// `معلوماتي`
  String get my_information {
    return Intl.message(
      'معلوماتي',
      name: 'my_information',
      desc: '',
      args: [],
    );
  }

  /// `شهاداتي`
  String get my_certificates {
    return Intl.message(
      'شهاداتي',
      name: 'my_certificates',
      desc: '',
      args: [],
    );
  }

  /// `حجز الجلسة`
  String get book_the_session {
    return Intl.message(
      'حجز الجلسة',
      name: 'book_the_session',
      desc: '',
      args: [],
    );
  }

  /// `الصفحة الرئيسية`
  String get main_page {
    return Intl.message(
      'الصفحة الرئيسية',
      name: 'main_page',
      desc: '',
      args: [],
    );
  }

  /// `لديك جلسة بعد قليل`
  String get you_have_a_session_soon {
    return Intl.message(
      'لديك جلسة بعد قليل',
      name: 'you_have_a_session_soon',
      desc: '',
      args: [],
    );
  }

  /// `ذكرك باقتراب موعد جلستك مع الشيخ `
  String get we_remind_you_that_your_session_with_the_Sheikh_is_approaching {
    return Intl.message(
      'ذكرك باقتراب موعد جلستك مع الشيخ ',
      name: 'we_remind_you_that_your_session_with_the_Sheikh_is_approaching',
      desc: '',
      args: [],
    );
  }

  /// `الرئيسية`
  String get main {
    return Intl.message(
      'الرئيسية',
      name: 'main',
      desc: '',
      args: [],
    );
  }

  /// `هل تود المغادرة؟`
  String get do_you_want_to_leave {
    return Intl.message(
      'هل تود المغادرة؟',
      name: 'do_you_want_to_leave',
      desc: '',
      args: [],
    );
  }

  /// `لا`
  String get no {
    return Intl.message(
      'لا',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `نعم`
  String get yes {
    return Intl.message(
      'نعم',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `invalidate phone number`
  String get invalidatePhone {
    return Intl.message(
      'invalidate phone number',
      name: 'invalidatePhone',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get confirm {
    return Intl.message(
      'تأكيد',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// ` تم إضافة الموعد بنجاح`
  String get date_added_successfully {
    return Intl.message(
      ' تم إضافة الموعد بنجاح',
      name: 'date_added_successfully',
      desc: '',
      args: [],
    );
  }

  /// `ابحث عن اسم السورة`
  String get search_for_the_name_of_the_surah {
    return Intl.message(
      'ابحث عن اسم السورة',
      name: 'search_for_the_name_of_the_surah',
      desc: '',
      args: [],
    );
  }

  /// `إضافة موعد جديد`
  String get add_new_date {
    return Intl.message(
      'إضافة موعد جديد',
      name: 'add_new_date',
      desc: '',
      args: [],
    );
  }

  /// `لا توجد طلبات`
  String get no_requests {
    return Intl.message(
      'لا توجد طلبات',
      name: 'no_requests',
      desc: '',
      args: [],
    );
  }

  /// `متبقي  {remaining_time} على الجلسة `
  String stay(Object remaining_time) {
    return Intl.message(
      'متبقي  $remaining_time على الجلسة ',
      name: 'stay',
      desc: '',
      args: [remaining_time],
    );
  }

  /// `لا توجد مواعيد هذا اليوم`
  String get there_are_no_dates_for_today {
    return Intl.message(
      'لا توجد مواعيد هذا اليوم',
      name: 'there_are_no_dates_for_today',
      desc: '',
      args: [],
    );
  }

  /// `يجب ان يكون وقت الفراغ ساعة على الاقل `
  String get free_time_should_be_at_least_an_hour {
    return Intl.message(
      'يجب ان يكون وقت الفراغ ساعة على الاقل ',
      name: 'free_time_should_be_at_least_an_hour',
      desc: '',
      args: [],
    );
  }

  /// `لا يمكن أن يكون نهاية التوقيت قبل بداية التوقيت `
  String get the_end_of_time_cannot_be_before_the_beginning_of_time {
    return Intl.message(
      'لا يمكن أن يكون نهاية التوقيت قبل بداية التوقيت ',
      name: 'the_end_of_time_cannot_be_before_the_beginning_of_time',
      desc: '',
      args: [],
    );
  }

  /// `سيتم إرسال إشعار لك حين اقتراب موعد الجلسة`
  String
      get a_notification_will_be_sent_to_yothu_when_the_session_is_approaching {
    return Intl.message(
      'سيتم إرسال إشعار لك حين اقتراب موعد الجلسة',
      name:
          'a_notification_will_be_sent_to_yothu_when_the_session_is_approaching',
      desc: '',
      args: [],
    );
  }

  /// `تم ايقاف الجلسة`
  String get the_session_has_been_stoped {
    return Intl.message(
      'تم ايقاف الجلسة',
      name: 'the_session_has_been_stoped',
      desc: '',
      args: [],
    );
  }

  /// `برجاء التقييم الجلسة `
  String get please_evalute_this_sessoin {
    return Intl.message(
      'برجاء التقييم الجلسة ',
      name: 'please_evalute_this_sessoin',
      desc: '',
      args: [],
    );
  }

  /// `لم يحضر`
  String get did_not_attend {
    return Intl.message(
      'لم يحضر',
      name: 'did_not_attend',
      desc: '',
      args: [],
    );
  }

  /// `متبقي`
  String get stay2 {
    return Intl.message(
      'متبقي',
      name: 'stay2',
      desc: '',
      args: [],
    );
  }

  /// `على الجلسة`
  String get to_session {
    return Intl.message(
      'على الجلسة',
      name: 'to_session',
      desc: '',
      args: [],
    );
  }

  /// `أتم الحفظ`
  String get the_verses_have_been_memorized {
    return Intl.message(
      'أتم الحفظ',
      name: 'the_verses_have_been_memorized',
      desc: '',
      args: [],
    );
  }

  /// `أتم حفظ المقدار كاملاً`
  String get the_entire_surah_has_been_memorized {
    return Intl.message(
      'أتم حفظ المقدار كاملاً',
      name: 'the_entire_surah_has_been_memorized',
      desc: '',
      args: [],
    );
  }

  /// `تقييم حفظ الطالب`
  String get student_memorization_assessment {
    return Intl.message(
      'تقييم حفظ الطالب',
      name: 'student_memorization_assessment',
      desc: '',
      args: [],
    );
  }

  /// `تقييم `
  String get evaluation {
    return Intl.message(
      'تقييم ',
      name: 'evaluation',
      desc: '',
      args: [],
    );
  }

  /// `ثواني`
  String get seconds {
    return Intl.message(
      'ثواني',
      name: 'seconds',
      desc: '',
      args: [],
    );
  }

  /// `ثانية`
  String get second {
    return Intl.message(
      'ثانية',
      name: 'second',
      desc: '',
      args: [],
    );
  }

  /// `اختر الجنس`
  String get choose_gender {
    return Intl.message(
      'اختر الجنس',
      name: 'choose_gender',
      desc: '',
      args: [],
    );
  }

  /// `تم التقييم`
  String get evaluation_done {
    return Intl.message(
      'تم التقييم',
      name: 'evaluation_done',
      desc: '',
      args: [],
    );
  }

  /// `شكرا لك , تم تقييم الطالب`
  String get thank_you_student_has_been_evaluated {
    return Intl.message(
      'شكرا لك , تم تقييم الطالب',
      name: 'thank_you_student_has_been_evaluated',
      desc: '',
      args: [],
    );
  }

  /// `يجب ان يكون وقت التفرغ   اكثر من نصف ساعة في اليوم `
  String get session_time_defferance {
    return Intl.message(
      'يجب ان يكون وقت التفرغ   اكثر من نصف ساعة في اليوم ',
      name: 'session_time_defferance',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد إشعارات بعد`
  String get no_notification_yet {
    return Intl.message(
      'لا يوجد إشعارات بعد',
      name: 'no_notification_yet',
      desc: '',
      args: [],
    );
  }

  /// `إعادة المحاولة`
  String get try_again {
    return Intl.message(
      'إعادة المحاولة',
      name: 'try_again',
      desc: '',
      args: [],
    );
  }

  /// `لم يسجل`
  String get did_not_register {
    return Intl.message(
      'لم يسجل',
      name: 'did_not_register',
      desc: '',
      args: [],
    );
  }

  /// `البحث عن البلد`
  String get search_for_the_name_of_the_country {
    return Intl.message(
      'البحث عن البلد',
      name: 'search_for_the_name_of_the_country',
      desc: '',
      args: [],
    );
  }

  /// `اختر البلد`
  String get choose_the_country {
    return Intl.message(
      'اختر البلد',
      name: 'choose_the_country',
      desc: '',
      args: [],
    );
  }

  /// `هناك خطأ ما ،الرجاء المحاولة لاحقاً`
  String get something_went_wrong_please_try_again_later {
    return Intl.message(
      'هناك خطأ ما ،الرجاء المحاولة لاحقاً',
      name: 'something_went_wrong_please_try_again_later',
      desc: '',
      args: [],
    );
  }

  /// `لا يوجد شهادات بعد`
  String get there_are_no_certificates_yet {
    return Intl.message(
      'لا يوجد شهادات بعد',
      name: 'there_are_no_certificates_yet',
      desc: '',
      args: [],
    );
  }

  /// `المعلمون`
  String get the_teachers {
    return Intl.message(
      'المعلمون',
      name: 'the_teachers',
      desc: '',
      args: [],
    );
  }

  /// `لا يمكنك اختيار أكثر من 3 سور`
  String get you_cannot_choose_souar {
    return Intl.message(
      'لا يمكنك اختيار أكثر من 3 سور',
      name: 'you_cannot_choose_souar',
      desc: '',
      args: [],
    );
  }

  /// ` لا يمكنك اختيار أكثر من 3 بلدان`
  String get you_cannot_choose_country {
    return Intl.message(
      ' لا يمكنك اختيار أكثر من 3 بلدان',
      name: 'you_cannot_choose_country',
      desc: '',
      args: [],
    );
  }

  /// `لم يتم التحديد `
  String get not_selected {
    return Intl.message(
      'لم يتم التحديد ',
      name: 'not_selected',
      desc: '',
      args: [],
    );
  }

  /// `التقييم`
  String get the_evaluation {
    return Intl.message(
      'التقييم',
      name: 'the_evaluation',
      desc: '',
      args: [],
    );
  }

  /// ` يمكنك اختيار بلد واحد فقط`
  String get you_can_choose_one_country {
    return Intl.message(
      ' يمكنك اختيار بلد واحد فقط',
      name: 'you_can_choose_one_country',
      desc: '',
      args: [],
    );
  }

  /// `تم ارسال رسالة اعادة تعيين كلمة المرور من فضلك قم بمراجعة حسابك`
  String get password_has_been_changed {
    return Intl.message(
      'تم ارسال رسالة اعادة تعيين كلمة المرور من فضلك قم بمراجعة حسابك',
      name: 'password_has_been_changed',
      desc: '',
      args: [],
    );
  }

  /// `الرجاء إعادة تسجيل الدخول`
  String get login_again {
    return Intl.message(
      'الرجاء إعادة تسجيل الدخول',
      name: 'login_again',
      desc: '',
      args: [],
    );
  }

  /// `تم تعيين كلمة سر جديدة بنجاح`
  String get a_new_password_set_successfully {
    return Intl.message(
      'تم تعيين كلمة سر جديدة بنجاح',
      name: 'a_new_password_set_successfully',
      desc: '',
      args: [],
    );
  }

  /// ` تم إرسال بريد إلكتروني إلى البريد الإلكتروني الخاص بك لتعيين كلمة المرور الجديدة ، رجاء قم بتفقده `
  String get an_email_sent_your_email_set_new_password {
    return Intl.message(
      ' تم إرسال بريد إلكتروني إلى البريد الإلكتروني الخاص بك لتعيين كلمة المرور الجديدة ، رجاء قم بتفقده ',
      name: 'an_email_sent_your_email_set_new_password',
      desc: '',
      args: [],
    );
  }

  /// `سور`
  String get the_souars {
    return Intl.message(
      'سور',
      name: 'the_souars',
      desc: '',
      args: [],
    );
  }

  /// `استعادة كلمة المرور`
  String get restore_password {
    return Intl.message(
      'استعادة كلمة المرور',
      name: 'restore_password',
      desc: '',
      args: [],
    );
  }

  /// `المعلم`
  String get the_teacher {
    return Intl.message(
      'المعلم',
      name: 'the_teacher',
      desc: '',
      args: [],
    );
  }

  /// `المعلمة`
  String get the_teacherf {
    return Intl.message(
      'المعلمة',
      name: 'the_teacherf',
      desc: '',
      args: [],
    );
  }

  /// `القرآن الكريم`
  String get the_holy_quran {
    return Intl.message(
      'القرآن الكريم',
      name: 'the_holy_quran',
      desc: '',
      args: [],
    );
  }

  /// `آخر قراءة`
  String get last_reading {
    return Intl.message(
      'آخر قراءة',
      name: 'last_reading',
      desc: '',
      args: [],
    );
  }

  /// `استكمل القراءة`
  String get continue_reading {
    return Intl.message(
      'استكمل القراءة',
      name: 'continue_reading',
      desc: '',
      args: [],
    );
  }

  /// `الأجزاء`
  String get parts {
    return Intl.message(
      'الأجزاء',
      name: 'parts',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد الحساب`
  String get verify_email {
    return Intl.message(
      'تأكيد الحساب',
      name: 'verify_email',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد`
  String get verify {
    return Intl.message(
      'تأكيد',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد رمز التحقق`
  String get verifyOTP {
    return Intl.message(
      'تأكيد رمز التحقق',
      name: 'verifyOTP',
      desc: '',
      args: [],
    );
  }

  /// `إرسال`
  String get send {
    return Intl.message(
      'إرسال',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `أرسال الكود الى البريد الالكترونى`
  String get send_otp {
    return Intl.message(
      'أرسال الكود الى البريد الالكترونى',
      name: 'send_otp',
      desc: '',
      args: [],
    );
  }

  /// ` لا يوجد سور منتهية بعد`
  String get there_is_no_finished_souras_yet {
    return Intl.message(
      ' لا يوجد سور منتهية بعد',
      name: 'there_is_no_finished_souras_yet',
      desc: '',
      args: [],
    );
  }

  /// `يرجى إدخال بريد الكتروني صحيح `
  String get please_enter_a_valid_email {
    return Intl.message(
      'يرجى إدخال بريد الكتروني صحيح ',
      name: 'please_enter_a_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `يرجى إدخال كلمة مرور صحيحة`
  String get please_enter_a_valid_password {
    return Intl.message(
      'يرجى إدخال كلمة مرور صحيحة',
      name: 'please_enter_a_valid_password',
      desc: '',
      args: [],
    );
  }

  /// `إدخال رمز التحقق`
  String get enter_the_verification_code {
    return Intl.message(
      'إدخال رمز التحقق',
      name: 'enter_the_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `قمنا بإرسال رمز التحقق لبريدك الالكتروني الرجاء ادخال الرمز`
  String
      get we_have_sent_a_verification_code_to_your_email_please_enter_the_code {
    return Intl.message(
      'قمنا بإرسال رمز التحقق لبريدك الالكتروني الرجاء ادخال الرمز',
      name:
          'we_have_sent_a_verification_code_to_your_email_please_enter_the_code',
      desc: '',
      args: [],
    );
  }

  /// `إدخال كلمة مرور جديدة`
  String get enter_a_new_password {
    return Intl.message(
      'إدخال كلمة مرور جديدة',
      name: 'enter_a_new_password',
      desc: '',
      args: [],
    );
  }

  /// `إعادة إرسال رمز التحقق`
  String get resend_verification_code {
    return Intl.message(
      'إعادة إرسال رمز التحقق',
      name: 'resend_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `اختر التوقيت`
  String get choose_time {
    return Intl.message(
      'اختر التوقيت',
      name: 'choose_time',
      desc: '',
      args: [],
    );
  }

  /// `اختر الساعات المناسبة لك`
  String get choose_the_hours_that_are_right_for_you {
    return Intl.message(
      'اختر الساعات المناسبة لك',
      name: 'choose_the_hours_that_are_right_for_you',
      desc: '',
      args: [],
    );
  }

  /// `اختر الجلسة`
  String get choose_session {
    return Intl.message(
      'اختر الجلسة',
      name: 'choose_session',
      desc: '',
      args: [],
    );
  }

  /// `صباحاً`
  String get am {
    return Intl.message(
      'صباحاً',
      name: 'am',
      desc: '',
      args: [],
    );
  }

  /// `مساءً`
  String get pm {
    return Intl.message(
      'مساءً',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `هذا البريد الإلكتروني غير مسجل من قبل`
  String get this_email_is_not_registered_before {
    return Intl.message(
      'هذا البريد الإلكتروني غير مسجل من قبل',
      name: 'this_email_is_not_registered_before',
      desc: '',
      args: [],
    );
  }

  /// `قم بإدخال البريد الإلكتروني المسجل من قبل وسنقوم بإرسال كلمة مرور جديدة على بريدك `
  String
      get enter_the_email_registered_before_and_we_will_send_a_new_password_to_your_email {
    return Intl.message(
      'قم بإدخال البريد الإلكتروني المسجل من قبل وسنقوم بإرسال كلمة مرور جديدة على بريدك ',
      name:
          'enter_the_email_registered_before_and_we_will_send_a_new_password_to_your_email',
      desc: '',
      args: [],
    );
  }

  /// `إدخال رمز التأكيد`
  String get enter_confirmation_code {
    return Intl.message(
      'إدخال رمز التأكيد',
      name: 'enter_confirmation_code',
      desc: '',
      args: [],
    );
  }

  /// `لقد قمنا بإرسال رمز تفعيل لبريدك الإلكتروني من فضلك قم بإدخاله`
  String get we_have_sent_an_activation_code_to_your_email_please_enter_it {
    return Intl.message(
      'لقد قمنا بإرسال رمز تفعيل لبريدك الإلكتروني من فضلك قم بإدخاله',
      name: 'we_have_sent_an_activation_code_to_your_email_please_enter_it',
      desc: '',
      args: [],
    );
  }

  /// `إعادة إرسال الرمز؟`
  String get resend_code {
    return Intl.message(
      'إعادة إرسال الرمز؟',
      name: 'resend_code',
      desc: '',
      args: [],
    );
  }

  /// `قم بإدخال كلمة مرور جديدة لتتمكن من تسجيل الدخول مرة أخرى`
  String get enter_a_new_password_to_be_able_to_log_in_again {
    return Intl.message(
      'قم بإدخال كلمة مرور جديدة لتتمكن من تسجيل الدخول مرة أخرى',
      name: 'enter_a_new_password_to_be_able_to_log_in_again',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على 8 أحرف `
  String get password_must_contain_8_characters {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على 8 أحرف ',
      name: 'password_must_contain_8_characters',
      desc: '',
      args: [],
    );
  }

  /// `يجب أن تحتوي كلمة المرور على رقم واحد على الأقل `
  String get password_must_contain_at_least_one_number {
    return Intl.message(
      'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل ',
      name: 'password_must_contain_at_least_one_number',
      desc: '',
      args: [],
    );
  }

  /// `تطابق كلمتي المرور`
  String get both_passwords_match {
    return Intl.message(
      'تطابق كلمتي المرور',
      name: 'both_passwords_match',
      desc: '',
      args: [],
    );
  }

  /// `تم إرسال كلمة مرور جديدة`
  String get a_new_password_has_been_sent {
    return Intl.message(
      'تم إرسال كلمة مرور جديدة',
      name: 'a_new_password_has_been_sent',
      desc: '',
      args: [],
    );
  }

  /// `لقد قمنا بإرسال رمز تأكيد لبريدك الإلكتروني من فضلك قم بالتحقق من البريد`
  String
      get we_have_sent_a_confirmation_code_to_your_email_please_check_the_mail {
    return Intl.message(
      'لقد قمنا بإرسال رمز تأكيد لبريدك الإلكتروني من فضلك قم بالتحقق من البريد',
      name:
          'we_have_sent_a_confirmation_code_to_your_email_please_check_the_mail',
      desc: '',
      args: [],
    );
  }

  /// `التحقق من الرمز`
  String get code_verification {
    return Intl.message(
      'التحقق من الرمز',
      name: 'code_verification',
      desc: '',
      args: [],
    );
  }

  /// `إنشاء حساب جديد`
  String get create_new_account {
    return Intl.message(
      'إنشاء حساب جديد',
      name: 'create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `تطابق رمزي التأكيد `
  String get confirmation_token_match {
    return Intl.message(
      'تطابق رمزي التأكيد ',
      name: 'confirmation_token_match',
      desc: '',
      args: [],
    );
  }

  /// `هذا البريد الإلكتروني مسجل من قبل `
  String get this_email_is_registered_from {
    return Intl.message(
      'هذا البريد الإلكتروني مسجل من قبل ',
      name: 'this_email_is_registered_from',
      desc: '',
      args: [],
    );
  }

  /// `تم التسجيل , افحص بريدك الإلكتروني`
  String get registered_check_your_email {
    return Intl.message(
      'تم التسجيل , افحص بريدك الإلكتروني',
      name: 'registered_check_your_email',
      desc: '',
      args: [],
    );
  }

  /// `شكرا لك, لقد تم التسجيل بنجاح ,من فضلك قم بفحص بريدك الإلكتروني ,لقد قمنا بإرسال رمز التفعيل إليك`
  String get thank_you_your_registration_successful {
    return Intl.message(
      'شكرا لك, لقد تم التسجيل بنجاح ,من فضلك قم بفحص بريدك الإلكتروني ,لقد قمنا بإرسال رمز التفعيل إليك',
      name: 'thank_you_your_registration_successful',
      desc: '',
      args: [],
    );
  }

  /// `تأكيد البريد الإلكتروني`
  String get verify_your_email {
    return Intl.message(
      'تأكيد البريد الإلكتروني',
      name: 'verify_your_email',
      desc: '',
      args: [],
    );
  }

  /// `التحقق من البريد الإلكتروني`
  String get email_verification {
    return Intl.message(
      'التحقق من البريد الإلكتروني',
      name: 'email_verification',
      desc: '',
      args: [],
    );
  }

  /// `تم إرسال رمز التحقق`
  String get verification_code_has_been_sent {
    return Intl.message(
      'تم إرسال رمز التحقق',
      name: 'verification_code_has_been_sent',
      desc: '',
      args: [],
    );
  }

  /// `تسجيل`
  String get registration {
    return Intl.message(
      'تسجيل',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `إزالة التصفية`
  String get remove_filter {
    return Intl.message(
      'إزالة التصفية',
      name: 'remove_filter',
      desc: '',
      args: [],
    );
  }

  /// `المعلم`
  String get mr {
    return Intl.message(
      'المعلم',
      name: 'mr',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
