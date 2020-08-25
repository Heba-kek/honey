import 'dart:async';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:honey/Core/lang/messages_all.dart';

import 'package:intl/intl.dart';

class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;

      return new AppLocalizations();
    });
  }

  String get locale {
    return Intl.message('en', name: 'locale');
  }

  String get pushedTheButton {
    return Intl.message('you have pushed the button this many times',
        name: 'pushedTheButton');
  }

  String get title {
    return Intl.message('Contact Us', name: 'title');
  }

  String get btnsubmit {
    return Intl.message('Submit', name: 'btnsubmit');
  }

  String get lblname {
    return Intl.message('Name', name: 'lblname');
  }

  String get lbAddMore {
    return Intl.message('Add more Dates Reminders', name: 'lbAddMore');
  }

  String get lblphone {
    return Intl.message('Phone', name: 'lblphone');
  }

  String get lblemail {
    return Intl.message('Email', name: 'lblemail');
  }

  String get lbTotal {
    return Intl.message('Total', name: 'lbTotal');
  }

  String get lbBank {
    return Intl.message('Banks', name: 'lbBank');
  }

  String get lbTReport {
    return Intl.message('Total Report', name: 'lbTReport');
  }

  String get lbTReports {
    return Intl.message('Reports', name: 'lbTReports');
  }

  String get lbReport {
    return Intl.message('Report', name: 'lbReport');
  }

  String get lbDelete {
    return Intl.message('Delete', name: 'lbDelete');
  }

  String get lbUs {
    return Intl.message('US', name: 'lbUs');
  }

  String get lbSP {
    return Intl.message('SYP', name: 'lbSP');
  }

  String get lbEU {
    return Intl.message('EUP', name: 'lbEU');
  }

  String get lbWithdrawal {
    return Intl.message('Withdrawal', name: 'lbWithdrawal');
  }

  String get lbTransfer {
    return Intl.message('Transfer', name: 'lbTransfer');
  }

  String get lbBcharge {
    return Intl.message('Bank Charge', name: 'lbBcharge');
  }

  String get lbAddAmount {
    return Intl.message('Add Amount', name: 'lbAddAmount');
  }

  String get lbbinterest {
    return Intl.message('Bank Interest', name: 'lbbinterest');
  }

  String get lbAddBank {
    return Intl.message('Add Bank', name: 'lbAddBank');
  }

  String get lbBankName {
    return Intl.message('Bank Name', name: 'lbBankName');
  }

  String get lbAmount {
    return Intl.message('Amount', name: 'lbAmount');
  }

  String get lbSave {
    return Intl.message('Save', name: 'lbSave');
  }

  String get lbSelect {
    return Intl.message('Select', name: 'lbSelect');
  }

  String get lbReportBank {
    return Intl.message('Report Bank', name: 'lbReportBank');
  }

  String get lbReportDebt {
    return Intl.message('Report Debt', name: 'lbReportDebt');
  }

  String get lbDate {
    return Intl.message('Date', name: 'lbDate');
  }

  String get lbDes {
    return Intl.message('Description', name: 'lbDes');
  }

  String get lbSubmit {
    return Intl.message('Submit', name: 'lbSubmit');
  }

  String get lbTodate {
    return Intl.message('To Date', name: 'lbTodate');
  }

  String get lbFDate {
    return Intl.message('From Date', name: 'lbFDate');
  }

  String get lbMove {
    return Intl.message('Moves', name: 'lbMove');
  }

  String get lbCategory {
    return Intl.message('Category', name: 'lbCategory');
  }

  String get lbReportDate {
    return Intl.message('Report Date', name: 'lbReportDate');
  }

  String get lbEdit {
    return Intl.message('Edit', name: 'lbEdit');
  }

  String get lbBankDetails {
    return Intl.message('Bank Details', name: 'lbBankDetails');
  }

  String get lbMore {
    return Intl.message('More', name: 'lbMore');
  }

  String get lbAddEx {
    return Intl.message('Add Expensive', name: 'lbAddEx');
  }

  String get lbFrom {
    return Intl.message('From', name: 'lbFrom');
  }

  String get lbTo {
    return Intl.message('To', name: 'lbTo');
  }

  String get lbExAmount {
    return Intl.message('Expenditure Amount', name: 'lbExAmount');
  }

  String get lbAddRev {
    return Intl.message('Add Revenue', name: 'lbAddRev');
  }

  String get lbRevAmount {
    return Intl.message('Revenue Amount', name: 'lbRevAmount');
  }

  String get lbEditPro {
    return Intl.message('Edit Project', name: 'lbEditPro');
  }

  String get lbReportPro {
    return Intl.message('Report Project', name: 'lbReportPro');
  }

  String get lbDebtEN {
    return Intl.message('Debts', name: 'lbDebt');
  }

  String get lbDebtAR {
    return Intl.message('ديون', name: 'lbDebt');
  }

  String get lbPayment {
    return Intl.message('Payment', name: 'lbPayment');
  }

  String get lbAddDebt {
    return Intl.message('Add Debt', name: 'lbAddDebt');
  }

  String get lbPrice {
    return Intl.message('Price', name: 'lbPrice');
  }

  String get lbDueDate {
    return Intl.message('Due Date', name: 'lbDueDate');
  }

  String get lbReminderDate {
    return Intl.message('Reminder Date', name: 'lbReminderDate');
  }

  String get lbEditDate {
    return Intl.message('Edit this Reminder date?', name: 'lbEditDate');
  }

  String get lbDeleteDate {
    return Intl.message('Delete this Reminder date?', name: 'lbDeleteDate');
  }

  String get lbCancel {
    return Intl.message('Cancel', name: 'lbCancel');
  }

  String get lbMsgDelete {
    return Intl.message('Click on ok will delete the Reminder date permently',
        name: 'lbMsgDelete');
  }

  String get lbCreditor {
    return Intl.message('Creditor', name: 'lbCreditor');
  }

  String get lbDebtor {
    return Intl.message('Debtor', name: 'lbDebtor');
  }

  String get lbTotalAmount {
    return Intl.message('Total Amount', name: 'lbTotalAmount');
  }

  String get lbCurrency {
    return Intl.message('Currency', name: 'lbCurrency');
  }

  String get lbBill {
    return Intl.message('Bill Number', name: 'lbBill');
  }

  String get lbDone {
    return Intl.message('Done', name: 'lbDone');
  }

  String get lbPick {
    return Intl.message('Pick New Date', name: 'lbPick');
  }

  String get lbAddDate {
    return Intl.message('Choose Reminder Date', name: 'lbAddDate');
  }

  String get lbAddDebtPersonel {
    return Intl.message('Add Personal Debts', name: 'lbAddDebtPersonel');
  }

  String get lbHomeAR {
    return Intl.message('الصفحة الرئيسية', name: 'lbHome');
  }

  String get lbHomeEN {
    return Intl.message('Home', name: 'lbHome');
  }

  String get lbNoteEn {
    return Intl.message('Notes', name: 'lbNote');
  }

  String get lbNoteAR {
    return Intl.message('ملاحظات', name: 'lbNote');
  }

  String get lbMemoryEN {
    return Intl.message('Memories', name: 'lbMemory');
  }

  String get lbMemoryAr {
    return Intl.message('مذكرات', name: 'lbMemory');
  }

  String get lbExEn {
    return Intl.message('Expenditure', name: 'lbEx');
  }

  String get lbEcoEN {
    return Intl.message('Economize Project', name: 'lbEco');
  }

  String get lbRevEN {
    return Intl.message('Revenue', name: 'lbRev');
  }

  String get lbExAR {
    return Intl.message('مصاريف', name: 'lbEx');
  }

  String get lbEcoAR {
    return Intl.message('مخططات توفير', name: 'lbEco');
  }

  String get lbRevAR {
    return Intl.message('إيرادات', name: 'lbRev');
  }

  String get lbBudEN {
    return Intl.message('Budjet', name: 'lbBud');
  }

  String get lbProEn {
    return Intl.message('Projects', name: 'lbPro');
  }

  String get lbRepoEN {
    return Intl.message('Reports', name: 'lbRepo');
  }

  String get lbBudAR {
    return Intl.message('ميزانية', name: 'lbBud');
  }

  String get lbProAR {
    return Intl.message('مشاريع', name: 'lbPro');
  }

  String get lbRepoAR {
    return Intl.message('تقارير', name: 'lbRepo');
  }

  String get lbSchEn {
    return Intl.message('Sechdule Meeting', name: 'lbSch');
  }

  String get lbBankAEn {
    return Intl.message('Bank Account', name: 'lbBankA');
  }

  String get lbSchAr {
    return Intl.message('مواعيد', name: 'lbSch');
  }

  String get lbBankAAr {
    return Intl.message('حسابات بنكية', name: 'lbBankA');
  }

  String get lbSelectL {
    return Intl.message('Select Language', name: 'lbSelectL');
  }

  String get lbCash {
    return Intl.message('Cash', name: 'lbCash');
  }

  String get lbToday {
    return Intl.message('Today Schedule', name: 'lbToday');
  }

  String get lbMeeting {
    return Intl.message('Meetings', name: 'lbMeeting');
  }

  String get lbhealth {
    return Intl.message('Health Managment', name: 'lbhealth');
  }

  String get lbTime {
    return Intl.message('Times', name: 'lbTime');
  }

  String get lbRemain {
    return Intl.message('Remain', name: 'lbRemain');
  }

  String get lbJan {
    return Intl.message('January', name: 'lbJan');
  }

  String get lbFab {
    return Intl.message('February', name: 'lbFab');
  }

  String get lbMar {
    return Intl.message('March', name: 'lbMar');
  }

  String get lbApr {
    return Intl.message('April', name: 'lbApr');
  }

  String get lbMay {
    return Intl.message('May', name: 'lbMay');
  }

  String get lbJune {
    return Intl.message('June', name: 'lbJune');
  }

  String get lbJuly {
    return Intl.message('July', name: 'lbJuly');
  }

  String get lbSep {
    return Intl.message('September', name: 'lbSep');
  }

  String get lbOct {
    return Intl.message('October', name: 'lbOct');
  }

  String get lbNov {
    return Intl.message('November', name: 'lbNov');
  }

  String get lbAug {
    return Intl.message('Augest', name: 'lbAug');
  }

  String get lbDec {
    return Intl.message('December', name: 'lbDec');
  }

  String get lbmedicine {
    return Intl.message('Medince date', name: 'lbmedicine');
  }

  String get lbPatient {
    return Intl.message("Patient Name", name: "lbPatient");
  }

  String get lbMedicine {
    return Intl.message("Medicine Name", name: "lbMedicine");
  }

  String get lbMedicineShape {
    return Intl.message("Medicine Shape", name: "lbMedicineShape");
  }

  String get lbdose {
    return Intl.message("dose", name: "lbdose");
  }

  String get lbInstruction {
    return Intl.message("Intsruction", name: "lbInstruction");
  }

  String get lbwhennecessary {
    return Intl.message("when necessary", name: "lbwhennecessary");
  }

  String get lbDaile {
    return Intl.message("Daily", name: "lbDaile");
  }

  String get lbNumberofTimes {
    return Intl.message("Number of times", name: "lbNumberofTimes");
  }

  String get lbDay {
    return Intl.message("day", name: "lbDay");
  }

  String get lbConverter {
    return Intl.message("Converter", name: "lbConverter");
  }

  String get lbFreeLance {
    return Intl.message("Freelance", name: "lbFreeLance");
  }

  String get lbAdd {
    return Intl.message("Add", name: "lbAdd");
  }

  String get lbAddAppointment {
    return Intl.message("Add appointment", name: "lbAddAppointment");
  }

  String get lbAddTask {
    return Intl.message("Add Task", name: "lbAddTask");
  }

//and add all the text you have inside the app that you need to make it in

//arabic and english launguages

}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) {
    return false;
  }
}
