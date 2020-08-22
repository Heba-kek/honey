import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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

  String get title {
    return Intl.message('Contact Us', name: 'title');
  }

  String get btnsubmit {
    return Intl.message('Submit', name: 'btnsubmit');
  }

  String get locale {
    return Intl.message('en', name: 'locale');
  }

  String get lblname {
    return Intl.message('Name', name: 'lblname');
  }

  String get lbAddV {
    return Intl.message('Add this value', name: 'lbAddV');
  }

  String get lbDebtPro {
    return Intl.message('Debt project', name: 'lbDebtPro');
  }

  String get lbValueD {
    return Intl.message('is debt for this project', name: 'lbValueD');
  }

  String get lbAddPro {
    return Intl.message('Add Project', name: 'lbAddPro');
  }

  String get lbLoad {
    return Intl.message('Loading data...', name: 'lbLoad');
  }

  String get lbAddMore {
    return Intl.message('Add more Dates Reminders', name: 'lbAddMore');
  }

  String get lbInsetInsV {
    return Intl.message('Please Insert installment Value', name: 'lbInsetInsV');
  }

  String get lbInsetInsD {
    return Intl.message('Please Insert installment Date', name: 'lbInsetInsD');
  }

  String get lbCardName {
    return Intl.message('Card Name', name: 'lbCardName');
  }

  String get lbsignout {
    return Intl.message('Sign Out', name: 'lbsignout');
  }

  String get lbsignoutAr {
    return Intl.message('تسجيل خروج', name: 'lbsignout');
  }

  String get lbEngWord {
    return Intl.message('English Word', name: 'lbEngWord');
  }

  String get lbcreate {
    return Intl.message('Create New Account', name: 'lbcreate');
  }

  String get lbAddMem {
    return Intl.message('Add Memory', name: 'lbAddMem');
  }

  String get lbMemName {
    return Intl.message('Memory Name', name: 'lbMemName');
  }

  String get lnLoanN {
    return Intl.message('Please Insert Loan Name', name: 'lnLoanN');
  }

  String get lnDebtN {
    return Intl.message('Please Insert Debt Name', name: 'lnDebtN');
  }

  String get lnLends {
    return Intl.message('Lends', name: 'lnLends');
  }

  String get lnBorrows {
    return Intl.message('Borrows', name: 'lnBorrows');
  }

  String get lbLoanA {
    return Intl.message('Please Insert Loan Amount', name: 'lbLoanA');
  }

  String get lbDebtA {
    return Intl.message('Please Insert Debt Amount', name: 'lbDebtA');
  }

  String get lbDebtD {
    return Intl.message('Please Insert Debt Description', name: 'lbDebtD');
  }

  String get lbInstMeg {
    return Intl.message('Are you confirm to insert this data to loan ?',
        name: 'lbInstMeg');
  }

  String get lbInsetRemD {
    return Intl.message('Please Insert Reminder Date', name: 'lbInsetRemD');
  }

  String get lbRepTar {
    return Intl.message('Economize Project Report', name: 'lbRepTar');
  }

  String get lbAddMoreValue {
    return Intl.message('Add more Value', name: 'lbAddMoreValue');
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

  String get lbEditTar {
    return Intl.message('Edit Economize Project', name: 'lbEditTar');
  }

  String get lbNameTar {
    return Intl.message('Enter Economize Project Name', name: 'lbNameTar');
  }

  String get lbGetPay {
    return Intl.message('Get payment', name: 'lbGetPay');
  }

  String get lbBank {
    return Intl.message('Banks', name: 'lbBank');
  }

  String get lbTReport {
    return Intl.message('Total Report', name: 'lbTReport');
  }

  String get lbfirstn {
    return Intl.message('First Name', name: 'lbfirstn');
  }

  String get lblastname {
    return Intl.message('Last Name', name: 'lblastname');
  }

  String get lbemail {
    return Intl.message('Email', name: 'lbemail');
  }

  String get lbpass {
    return Intl.message('Password', name: 'lbpass');
  }

  String get lbpassC {
    return Intl.message('Confirm Password', name: 'lbpassC');
  }

  String get lbmobile {
    return Intl.message('MobileNumber', name: 'lbmobile');
  }

  String get lbCode {
    return Intl.message('Code', name: 'lbCode');
  }

  String get lbGTReport {
    return Intl.message('Get Total Report', name: 'lbGTReport');
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

  String get lbDeleteLoan {
    return Intl.message('Delete Loan', name: 'lbDeleteLoan');
  }

  String get lbDeleteDebt {
    return Intl.message('Delete Debt', name: 'lbDeleteDebt');
  }

  String get lbDeleteDebtM {
    return Intl.message('Are you confirm delete this debt ?',
        name: 'lbDeleteDebtM');
  }

  String get lbDeleteBank {
    return Intl.message('Delete Bank', name: 'lbDeleteBank');
  }





  String get lbSign {
    return Intl.message('Sign Out', name: 'lbSign');
  }

  String get lbSignUp {
    return Intl.message('Sign Up', name: 'lbSignUp');
  }

  String get lbSignM {
    return Intl.message('Are you confirm log out ?', name: 'lbSignM');
  }

  String get lbDeleteBankM {
    return Intl.message('Are you confirm delete this bank ?',
        name: 'lbDeleteBankM');
  }

  String get lbDeleteCard {
    return Intl.message('Delete Card', name: 'lbDeleteCard');
  }

  String get lbDeleteCardM {
    return Intl.message('Are you confirm delete this card ?',
        name: 'lbDeleteCardM');
  }

  String get lbDeleteMem {
    return Intl.message('Delete Memory', name: 'lbDeleteMem');
  }

  String get lbDeleteMemM {
    return Intl.message('Are you confirm delete this Memory ?',
        name: 'lbDeleteMemM');
  }

  String get lbDeleteTarget {
    return Intl.message('Delete Economize Project', name: 'lbDeleteTarget');
  }

  String get lbDateE {
    return Intl.message('Date Field is Empty', name: 'lbDateE');
  }

  String get lbEmpty {
    return Intl.message('Please insert the empty value', name: 'lbEmpty');
  }

  String get lbViewD {
    return Intl.message('View data from start date', name: 'lbViewD');
  }

  String get lbWait {
    return Intl.message('Please wait....', name: 'lbWait');
  }

  String get lbInsertV {
    return Intl.message(
        'You cannot insert a value greater than your total value',
        name: 'lbInsertV');
  }

  String get lbNoteN {
    return Intl.message('Note......', name: 'lbNoteN');
  }

  String get lbNoData {
    return Intl.message('There is no any data', name: 'lbNoData');
  }

  String get lbProName {
    return Intl.message('Project Name', name: 'lbProName');
  }

  String get lbDeleteLoanMsg {
    return Intl.message('Are you confirm delete this loan ?',
        name: 'lbDeleteLoanMsg');
  }

  String get lbUs {
    return Intl.message('US', name: 'lbUs');
  }

  String get lbValueUn {
    return Intl.message('Loan amount with interest', name: 'lbValueUn');
  }

  String get lbMonthly {
    return Intl.message('Monthly', name: 'lbMonthly');
  }

  String get lb3Monthly {
    return Intl.message('3 Month', name: 'lb3Monthly');
  }

  String get lb6Monthly {
    return Intl.message('6 Month', name: 'lb6Monthly');
  }

  String get lbYear {
    return Intl.message('Yesrly', name: 'lbYear');
  }

  String get lbDaily {
    return Intl.message('Daily', name: 'lbDaily');
  }

  String get lbPay {
    return Intl.message('Payment', name: 'lbPay');
  }

  String get lbPayTable {
    return Intl.message('Payment Table', name: 'lbPayTable');
  }

  String get lbSP {
    return Intl.message('SYP', name: 'lbSP');
  }

  String get lbVisaCard {
    return Intl.message('Visa Card', name: 'lbVisaCard');
  }

  String get lbMasterCard {
    return Intl.message('MAster Card', name: 'lbMasterCard');
  }

  String get lbManual {
    return Intl.message('Manual', name: 'lbManual');
  }

  String get lbEU {
    return Intl.message('EUP', name: 'lbEU');
  }

  String get lbFees {
    return Intl.message('Fees', name: 'lbFees');
  }

  String get lbCash {
    return Intl.message('Cash withdrawal', name: 'lbCash');
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

  String get lbAddMed {
    return Intl.message('Add Medicines', name: 'lbAddMed');
  }

  String get lbAddCredit {
    return Intl.message('Add Card', name: 'lbAddCredit');
  }

  String get lbBankName {
    return Intl.message('Bank Name', name: 'lbBankName');
  }

  String get lbMediName {
    return Intl.message('Medicines Name', name: 'lbMediName');
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

  String get lbcardAmou {
    return Intl.message('Account statement : ', name: 'lbcardAmou');
  }

  String get lbReportCard {
    return Intl.message('Report Card', name: 'lbReportCard');
  }

  String get lbReportDebt {
    return Intl.message('Report Debt', name: 'lbReportDebt');
  }

  String get lbDate {
    return Intl.message('Date', name: 'lbDate');
  }

  String get lbType {
    return Intl.message('Type', name: 'lbType');
  }

  String get lbSelectDate {
    return Intl.message('Select Date....', name: 'lbSelectDate');
  }

  String get lbDaile {
    return Intl.message('Daily', name: 'lbDaile');
  }

  String get lbWeekly {
    return Intl.message('Weekly', name: 'lbWeekly');
  }

  String get lbGetDate {
    return Intl.message('Get Data', name: 'lbGetDate');
  }

  String get lbEditDateT {
    return Intl.message('Edit Date', name: 'lbEditDateT');
  }

  String get lbStartTime {
    return Intl.message('Start Time', name: 'lbStartTime');
  }

  String get lbEndTime {
    return Intl.message('End Time', name: 'lbEndTime');
  }

  String get lbPlaces {
    return Intl.message('Place', name: 'lbPlaces');
  }

  String get lbPhoneNum {
    return Intl.message('PhoneNumber', name: 'lbPhoneNum');
  }

  String get lbEnterPerNam {
    return Intl.message('Enter Person Name', name: 'lbEnterPerNam');
  }

  String get lbEnterPhone {
    return Intl.message('Enter phone number', name: 'lbEnterPhone');
  }

  String get lbEnterReq {
    return Intl.message('Enter Required material', name: 'lbEnterReq');
  }

  String get lbEnterReq2 {
    return Intl.message('Enter Required material', name: 'lbEnterReq2');
  }

  String get lbDes {
    return Intl.message('Description', name: 'lbDes');
  }

  String get lbcardLimit {
    return Intl.message('Credit Limit', name: 'lbcardLimit');
  }

  String get lbcardLimitA {
    return Intl.message('Available Credit Line', name: 'lbcardLimitA');
  }

  String get lbAmountDe {
    return Intl.message('Deserved Amount', name: 'lbAmountDe');
  }

  String get lbSubmit {
    return Intl.message('Submit', name: 'lbSubmit');
  }

  String get lbPayPay {
    return Intl.message('Pay your Payment', name: 'lbPayPay');
  }

  String get lbEditRem {
    return Intl.message('Edit this Reminder date?', name: 'lbEditRem');
  }

  String get lbAddDebtNew {
    return Intl.message('Add new Debt', name: 'lbAddDebt');
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

  String get ibIntValue {
    return Intl.message('Residual Value', name: 'ibIntValue');
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

  String get lbPayCard {
    return Intl.message('Payments/Fees/Cash withdrawal', name: 'lbPayCard');
  }

  String get lbPayoff {
    return Intl.message('Pay Off', name: 'lbPayoff');
  }

  String get lbcardEN {
    return Intl.message('Credit Card', name: 'lbcardEN');
  }

  String get lbcardAR {
    return Intl.message('البطاقة الإئتمانية', name: 'lbcardAR');
  }

  String get lbworkdAr {
    return Intl.message('يوميات العمل', name: 'lbworkdAr');
  }

  String get lbworkdEn {
    return Intl.message('Work Diaries', name: 'lbworkdEn');
  }

  String get lbmedEn {
    return Intl.message('Medicines', name: 'lbmedEn');
  }

  String get lbmedAr {
    return Intl.message('أدوية', name: 'lbmedAr');
  }

  String get lbPreEn {
    return Intl.message('Prepaid Card', name: 'lbPreEn');
  }

  String get lbPreAr {
    return Intl.message('بطاقة مسبقة الدفع', name: 'lbPreAr');
  }

  String get lbLoanAr {
    return Intl.message('قروض', name: 'lbLoanAr');
  }

  String get lbLoanEn {
    return Intl.message('Loans', name: 'lbLoanEn');
  }

  String get lbPayment {
    return Intl.message('Payment', name: 'lbPayment');
  }

  String get lbPaymentAmount {
    return Intl.message('Payment Amount', name: 'lbPaymentAmount');
  }

  String get lbAddDebt {
    return Intl.message('Add Debt', name: 'lbAddDebt');
  }

  String get lbPrice {
    return Intl.message('Price', name: 'lbPrice');
  }

  String get lbLoanEN {
    return Intl.message('Loans', name: 'lbLoanEN');
  }

  String get lbDueDate {
    return Intl.message('Due Date', name: 'lbDueDate');
  }

  String get lbReminderDate {
    return Intl.message('Reminder Date', name: 'lbReminderDate');
  }

  String get lbEditDate {
    return Intl.message('Edit this date?', name: 'lbEditDate');
  }

  String get lbDeleteDate {
    return Intl.message('Delete this Reminder date?', name: 'lbDeleteDate');
  }

  String get lbBeforOD {
    return Intl.message('Before One Day', name: 'lbBeforOD');
  }

  String get lbBeforTD {
    return Intl.message('Before Tow Days', name: 'lbBeforTD');
  }

  String get lbBeforOH {
    return Intl.message('Before One Hour', name: 'lbBeforOH');
  }

  String get lbPageN {
    return Intl.message('Pages numbers', name: 'lbPageN');
  }

  String get lbBeforTH {
    return Intl.message('Before Two Hours', name: 'lbBeforTH');
  }

  String get lbSelectC {
    return Intl.message('Select from Calender', name: 'lbSelectC');
  }

  String get lbDeleteDateInst {
    return Intl.message('Delete this Installment date?',
        name: 'lbDeleteDateInst');
  }

  String get lbCancel {
    return Intl.message('Cancel', name: 'lbCancel');
  }

  String get lbMsgDelete {
    return Intl.message('Click on ok will delete the  date permently',
        name: 'lbMsgDelete');
  }

  String get lbDeleteV {
    return Intl.message('Are you sure to delete this amount ?',
        name: 'lbDeleteV');
  }

  String get lbPaid {
    return Intl.message('Paid', name: 'lbPaid');
  }

  String get lbAddPay {
    return Intl.message('Add payment', name: 'lbAddPay');
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

  String get lbTotalAmountPle {
    return Intl.message('Please enter the Amount of Economize Project you want',
        name: 'lbTotalAmountPle');
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

  String get lbAdd {
    return Intl.message('Add', name: 'lbAdd');
  }

  String get lbDailyP {
    return Intl.message('Daily Project', name: 'lbDailyP');
  }

  String get lbPick {
    return Intl.message('Pick New Date', name: 'lbPick');
  }

  String get lbPickAppDate {
    return Intl.message('Pick the Appointment Date', name: 'lbPickAppDate');
  }

  String get lbPickDT {
    return Intl.message('Pick the time and Date', name: 'lbPickDT');
  }

  String get lbNameLec {
    return Intl.message('Name your Lecture', name: 'lbNameLec');
  }

  String get lbsubLec {
    return Intl.message('Course Title', name: 'lbsubLec');
  }

  String get lbsubme {
    return Intl.message('Meeting Subject', name: 'lbsubme');
  }

  String get lbDestanation {
    return Intl.message('The Destination', name: 'lbDestanation');
  }

  String get lbEnterdesta {
    return Intl.message('Please enter The destination', name: 'lbEnterdesta');
  }

  String get lbNameDoc {
    return Intl.message('Doctor Name', name: 'lbNameDoc');
  }

  String get lbEnterN {
    return Intl.message('Please enter The Name of your', name: 'lbEnterN');
  }

  String get lbEnterT {
    return Intl.message('Please enter things of your', name: 'lbEnterT');
  }

  String get lbEnterS {
    return Intl.message('Please enter Subject of your', name: 'lbEnterS');
  }

  String get lbSubject {
    return Intl.message('Subject', name: 'lbSubject');
  }

  String get lbEnterNotYoy {
    return Intl.message('Please enter Notes of your', name: 'lbEnterNotYoy');
  }

  String get lbPaper {
    return Intl.message('Papier or things for meeting', name: 'lbPaper');
  }

  String get lbAddNum {
    return Intl.message('Add Phones Number', name: 'lbAddNum');
  }

  String get lbAddNumNew {
    return Intl.message('Add New Phone Number', name: 'lbAddNumNew');
  }

  String get lbAddNewPeo {
    return Intl.message('Add New People', name: 'lbAddNewPeo');
  }

  String get lbImpotant {
    return Intl.message('The Importance', name: 'lbImpotant');
  }

  String get lbA {
    return Intl.message('A', name: 'lbA');
  }

  String get lbB {
    return Intl.message('B', name: 'lbB');
  }

  String get lbC {
    return Intl.message('C', name: 'lbC');
  }

  String get lbD {
    return Intl.message('D', name: 'lbD');
  }

  String get lbE {
    return Intl.message('E', name: 'lbE');
  }

  String get lbPlace {
    return Intl.message('Place your', name: 'lbPlace');
  }

  String get lbNames {
    return Intl.message('Name your ', name: 'lbNames');
  }

  String get lbEnterName {
    return Intl.message('Please enter The Name of your', name: 'lbEnterName');
  }

  String get lbEnterPlace {
    return Intl.message('Please enter The Place of your', name: 'lbEnterPlace');
  }

  String get lbAddPeople {
    return Intl.message('Add People that attended the meeting',
        name: 'lbAddPeople');
  }

  String get lbAddMateNew {
    return Intl.message('Add New Material Required', name: 'lbAddMateNew');
  }

  String get lbAddMateNew2 {
    return Intl.message('Add New Material Required', name: 'lbAddMateNew2');
  }

  String get lbAD {
    return Intl.message('AD', name: 'lbAD');
  }

  String get lbREQ {
    return Intl.message('REQ', name: 'lbREQ');
  }

  String get lbAddMaterial {
    return Intl.message('Add Requires Material for the meeting',
        name: 'lbAddMaterial');
  }

  String get lbAddMaterial2 {
    return Intl.message('Add Requires Material for the meeting',
        name: 'lbAddMaterial2');
  }

  String get lbEnterNo {
    return Intl.message('Notes of your', name: 'lbEnterNo');
  }

  String get lbSubLec {
    return Intl.message('Subject of your Lecture', name: 'lbSubLec');
  }

  String get lbSub {
    return Intl.message('Subject of your', name: 'lbSub');
  }

  String get lbToTime {
    return Intl.message('To Time', name: 'lbToTime');
  }

  String get lbFromTime {
    return Intl.message('From Time', name: 'lbFromTime');
  }

  String get lbAddDate {
    return Intl.message('Choose Reminder Date', name: 'lbAddDate');
  }

  String get lbAddDateIns {
    return Intl.message('Choose Due Date', name: 'lbAddDateIns');
  }

  String get lbAddDebtPersonel {
    return Intl.message('Add Personal Debts', name: 'lbAddDebtPersonel');
  }

  String get lbAddLoan {
    return Intl.message('Add Loan', name: 'lbAddLoan');
  }

  String get lbHomeAR {
    return Intl.message('الصفحة الرئيسية', name: 'lbHome');
  }

  String get lbHomeEN {
    return Intl.message('Home', name: 'lbHome');
  }

  String get lbNoteEn {
    return Intl.message('Notes', name: 'lbNoteEn');
  }

  String get lbNote {
    return Intl.message('Notes', name: 'lbNote');
  }

  String get lbUpIma {
    return Intl.message('Uploading Image...', name: 'lbUpIma');
  }

  String get lbUpImaSel {
    return Intl.message('Select Image', name: 'lbUpImaSel');
  }

  String get lbNoteName {
    return Intl.message('Note Name', name: 'lbNoteName');
  }

  String get lbNoImg {
    return Intl.message('No Image Selected', name: 'lbNoImg');
  }

  String get lbErrorImg {
    return Intl.message('Error Picking Image', name: 'lbErrorImg');
  }

  String get lbAddNOte {
    return Intl.message('Add Note', name: 'lbAddNOte');
  }

  String get lbNoteAR {
    return Intl.message('ملاحظات', name: 'lbNoteAR');
  }

  String get lbMemoryEN {
    return Intl.message('Memories', name: 'lbMemory');
  }

  String get lbMem {
    return Intl.message('Memories', name: 'lbMem');
  }

  String get lbProlem {
    return Intl.message('Problems', name: 'lbProlem');
  }

  String get lbEvent {
    return Intl.message('Events', name: 'lbEvent');
  }

  String get lbMemoryAr {
    return Intl.message('مذكرات', name: 'lbMemory');
  }

  String get lbExEn {
    return Intl.message('Expenditure', name: 'lbEx');
  }

  String get lbEx {
    return Intl.message('Expensev', name: 'lbEx');
  }

  String get lbEcoEN {
    return Intl.message('Economize Project', name: 'lbEco');
  }

  String get lbEco {
    return Intl.message('Economize Project', name: 'lbEco');
  }

  String get lbRevEN {
    return Intl.message('Revenue', name: 'lbRev');
  }

  String get lbAddTar {
    return Intl.message('Add Economize Project', name: 'lbAddTar');
  }

  String get lbStatus {
    return Intl.message('Status', name: 'lbStatus');
  }

  String get lbRev {
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

  String get lbPro {
    return Intl.message('Projects', name: 'lbPro');
  }

  String get lbGetDe {
    return Intl.message('Get Debt', name: 'lbGetDe');
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

  String get lbCashP {
    return Intl.message('Cash', name: 'lbCashP');
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

  String get lbInsDate {
    return Intl.message('Installment date', name: 'lbInsDate');
  }

  String get lbInsValue {
    return Intl.message('Installment maturity Value', name: 'lbInsValue');
  }

  String get lbInsNum {
    return Intl.message('Number of installments', name: 'lbInsNum');
  }

  String get lbDemurrage {
    return Intl.message('Demurrage', name: 'lbDemurrage');
  }

  String get lbWorkA {
    return Intl.message('Work Appointment', name: 'lbWorkA');
  }

  String get lbLectureA {
    return Intl.message('Lecture or Lesson Appointment', name: 'lbLectureA');
  }

  String get lbExamA {
    return Intl.message('Exam or test Appointment', name: 'lbExamA');
  }

  String get lbEventA {
    return Intl.message('Event Appointment', name: 'lbEventA');
  }

  String get lbPersonalA {
    return Intl.message('Personal Appointment', name: 'lbPersonalA');
  }

  String get lbPerson {
    return Intl.message('Person', name: 'lbPerson');
  }

  String get lbMeetingReq {
    return Intl.message('Meeting Requirements', name: 'lbMeetingReq');
  }

  String get lbTravelA {
    return Intl.message('Travel or Journey Appointment', name: 'lbTravelA');
  }

  String get lbDoctorA {
    return Intl.message('Doctor Appointment', name: 'lbDoctorA');
  }

  String get lbStudyA {
    return Intl.message('Study Appointment', name: 'lbStudyA');
  }

  String get lbSelectCat {
    return Intl.message('Select Category', name: 'lbSelectC');
  }
}

class SpecificLocalizationDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final Locale overriddenLocale;

  SpecificLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<AppLocalizations> load(Locale locale) =>
      AppLocalizations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}

class FallbackCupertinoLocalisationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalisationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'ar'].contains(locale.languageCode);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<_DefaultCupertinoLocalizations>(
          _DefaultCupertinoLocalizations(locale));

  @override
  bool shouldReload(FallbackCupertinoLocalisationsDelegate old) => false;
}

class _DefaultCupertinoLocalizations extends DefaultCupertinoLocalizations {
  final Locale locale;

  _DefaultCupertinoLocalizations(this.locale);
}
