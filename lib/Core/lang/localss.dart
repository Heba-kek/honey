import 'dart:async';

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

  String get lbPer {
    return Intl.message('Personal', name: 'lbPer');
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

  String get lbSend {
    return Intl.message('Send', name: 'lbSend');
  }

  String get lbSelect {
    return Intl.message('Select', name: 'lbSelect');
  }

  String get lbDetails {
    return Intl.message('Details', name: 'lbDetails');
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

  String get lbExTotal {
    return Intl.message('Expensev/Total', name: 'lbExTotal');
  }

  String get lbReportDate {
    return Intl.message('Report Date', name: 'lbReportDate');
  }

  String get lbEdit {
    return Intl.message('Edit', name: 'lbEdit');
  }

  String get lbEditCa {
    return Intl.message('Edit Category', name: 'lbEditCa');
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

  String get lbDebt {
    return Intl.message('Debt', name: 'lbDebt');
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

  String get lbrem {
    return Intl.message('Remainng 45 mins', name: 'lbrem');
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

  String get lbMedicineap {
    return Intl.message('Medicine Appointment', name: 'lbMedicineap');
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
    return Intl.message('Projects', name: 'lbProEn');
  }

  String get lbProMa {
    return Intl.message('Projects Managment', name: 'lbProMa');
  }

  String get lbPro {
    return Intl.message('Projects', name: 'lbPro');
  }

  String get lbRepoEN {
    return Intl.message('Reports', name: 'lbRepo');
  }

  String get lbBudAR {
    return Intl.message('ميزانية', name: 'lbBud');
  }

  String get lbProAR {
    return Intl.message('مشاريع', name: 'lbProAR');
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

  String get lbCashre {
    return Intl.message('Cash Report', name: 'lbCashre');
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

  String get lbImage {
    return Intl.message('Image', name: 'lbImage');
  }

  String get lbCus {
    return Intl.message('Customer', name: 'lbCus');
  }

  String get lbVal {
    return Intl.message('Value', name: 'lbVal');
  }

  String get lbrest {
    return Intl.message('Rest', name: 'lbrest');
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

  String get lbHoppiesHealth {
    return Intl.message("Manage Hoppies and Health", name: "lbHoppiesHealth");
  }

  String get lbSport {
    return Intl.message("Sport", name: "lbSport");
  }

  String get lbMeals {
    return Intl.message("Meals", name: "lbMeals");
  }

  String get lbReading {
    return Intl.message("Reading", name: "lbReading");
  }

  String get lbSmoke {
    return Intl.message("Smoke", name: "lbSmoke");
  }

  String get lbEx {
    return Intl.message('Expensev', name: 'lbEx');
  }

  String get lbExM {
    return Intl.message('Expense Managment', name: 'lbExM');
  }

  String get lbReM {
    return Intl.message('Revenue Managment', name: 'lbReM');
  }

  String get lbMediName {
    return Intl.message('Medicines Name', name: 'lbMediName');
  }

  String get lbRev {
    return Intl.message('Revenue', name: 'lbRev');
  }

  String get lbse {
    return Intl.message('Select icon :', name: 'lbse');
  }

  String get lbcatname {
    return Intl.message('Category name', name: 'lbcatname');
  }

  String get lbSubname {
    return Intl.message('Sub  category name', name: 'lbSubname');
  }

  String get lbSign {
    return Intl.message('Sign Out', name: 'lbSign');
  }

  String get lbSignM {
    return Intl.message('Are you confirm log out ?', name: 'lbSignM');
  }

  String get lbcreate {
    return Intl.message('Create', name: 'lbcreate');
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

  String get lbEditTar {
    return Intl.message('Edit Economize Project', name: 'lbEditTar');
  }

  String get lbNameTar {
    return Intl.message('Enter Economize Project Name', name: 'lbNameTar');
  }

  String get lbGetPay {
    return Intl.message('Get payment', name: 'lbGetPay');
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

  String get lbSignUp {
    return Intl.message('Sign Up', name: 'lbSignUp');
  }

  String get lbDeleteBankM {
    return Intl.message('Are you confirm delete this bank ?',
        name: 'lbDeleteBankM');
  }

  String get lbDeleteCard {
    return Intl.message('Delete Card', name: 'lbDeleteCard');
  }

  String get lbDeleteCat {
    return Intl.message('Delete Category', name: 'lbDeleteCat');
  }

  String get lbDeleteCatM {
    return Intl.message('Are you confirm delete this category ?',
        name: 'lbDeleteCatM');
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

  String get lbinterest {
    return Intl.message('Interest', name: 'lbinterest');
  }

  String get lbFees {
    return Intl.message('Fees', name: 'lbFees');
  }

  String get lbStartOfTheYear {
    return Intl.message('From the beginning of the year',
        name: 'lbStartOfTheYear');
  }

  String get lbShowData {
    return Intl.message("Show data", name: "lbShowData");
  }

  String get lbchooseExpensesCategory {
    return Intl.message("Choose Expenses Category",
        name: "lbShowExpensesCategory");
  }

  String get lbPercentage {
    return Intl.message("Percentage", name: "lbPercentage");
  }

  String get lbWallets {
    return Intl.message("Wallets", name: "lbWallets");
  }

  String get lbCurrentBalance {
    return Intl.message("Current Balance", name: "lbCurrentBalance");
  }

  String get lbHideWallet {
    return Intl.message("Hide Wallet", name: "lbHideWallet");
  }

  String get lbHideWalletDescription {
    return Intl.message("Hide Wallet Desc", name: "lbHideWalletDescription");
  }

  String get lbPayDate {
    return Intl.message("Pay day from each month", name: "lbPayDate");
  }

  String get lbReminderPayDate {
    return Intl.message("Reminder day from each month",
        name: "lbReminderPayDate");
  }

  String get lbProjectName {
    return Intl.message('Project Name', name: 'lbProjectName');
  }

  String get lbProjectValue {
    return Intl.message('Project value', name: 'lbProjectValue');
  }

  String get lbProjectStartValue {
    return Intl.message('Project start value', name: 'lbProjectStartValue');
  }

  String get lbFeildsAreRequired {
    return Intl.message('All fields are required', name: 'lbFeildsAreRequired');
  }

  String get lbExchange {
    return Intl.message('Exhange money between wallets', name: 'lbExchange');
  }

  String get lbOthers {
    return Intl.message('Other', name: 'lbOthers');
  }

  String get lbConfirmation {
    return Intl.message('Confirmation', name: 'lbConfirmation');
  }

  String get lbTransActionsDetails {
    return Intl.message('Transactions details', name: 'lbTransActionsDetails');
  }

  String get lbWarning {
    return Intl.message('Warning', name: 'lbWarning');
  }

  String get lbWalletDeleteWarning {
    return Intl.message('Delete Warning', name: 'lbWalletDeleteWarning');
  }

  String get lbPaidName {
    return Intl.message('Paid', name: 'lbPaidName');
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
