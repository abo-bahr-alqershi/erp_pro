# الهيكل النهائي لطبقة الدومين (Domain Layer)

## 1. المحاسبة والقيود (Accounting & Journals)
- Account (**ACCOUNT**)
- AccountCurrency (**ACCOUNT_CURR**)
- AccountGrouping (**ACCOUNT_GROUPING**)
- AccountReportType (**ACCOUNT_REPORT_TYPE**)
- AccountType (**ACCOUNT_TYPES**)
- JournalVoucher (**GLS_VCHR_MST_ACCNT**)
- JournalVoucherType (**GLS_VCHR_TYP_ACNT**)
- JournalVoucherTypePrivilege (**GLS_VCHR_TYP_PRV**)
- JournalDetail (**DETAIL_JOURNAL_V**)
- JournalDetailBranch (**DETAIL_JOURNAL_V_BR**)
- MasterJournal (**MASTER_JOURNAL_V**)
- MasterJournalBranch (**MASTER_JOURNAL_V_BR**)
- OpenBalance (**OPEN_BAL**)
- Voucher (**VOUCHERS**)
- VoucherBranch (**VOUCHERS_BR**)
- VoucherDetail (**VOUCHER_DETAIL**)
- Currency (**EX_RATE**, **IAS_CURRENCY_VALUE**)
- PeriodExchangeRate (**IAS_PERIOD_EX_RATE**, **IAS_PERIOD_EX_RATE_DAY**)
- CurrencyDifference (**IAS_CUR_DIFF_TMP**)
- TaxAccount (**GLS_TAX_ACC**)
- Audit (**AUD**, **IAS_AUDIT_DOC**, **IAS_AUD_ACC_DTL**, **IAS_AUD_ACC_MST**, **IAS_AUD_HIST**)

---

## 2. المخزون والمستودعات (Inventory & Warehouses)
- Warehouse (**WAREHOUSE_DETAILS**)
- WarehouseGroup (**WAREHOUSE_GROUP**)
- Item (**IAS_ITM_MST**)
- ItemGroup (**IAS_GRP_ITM_LVL**, **IAS_GRP_ITM_LVL_TREE**)
- ItemLevelMeasure (**IAS_ITM_LVL_MEASURE**, **IAS_ITM_LVL_MEASURE_DTL**)
- ItemMeasurement (**IAS_ITM_MEASUR_MST**, **IAS_ITM_MEASUR_DTL**, **MEASUREMENT**)
- ItemBatch (**IAS_ITM_BATCH**)
- ItemBarcode (**IAS_ITM_UNT_BARCODE**)
- ItemPrice (**IAS_ITEM_PRICE**, **IAS_ITEM_PRICE_HISTORY**, **IAS_PRICING_LEVELS**)
- ItemMovement (**ITEM_MOVEMENT**)
- InventoryAdjustment (**STK_ADJUSTMENT**, **STK_ADJUSTMENT_DET**)
- InventoryTransaction (**BIN_DETAILS**, **ITEM_BIN**)
- StockCount (**IAS_INV_MANAGEMENT**, **IAS_INV_MANAGEMENT_TMP**)
- KitItem (**KIT_ITEMS**, **KIT_ITEMS_DETAIL**)
- AssembleKitItem (**ASSEMBLE_KIT_ITEMS**, **ASSEMBLE_KIT_ITEMS_DET**)
- DisassembleKitItem (**DISASSEMBLE_KIT_ITEMS**, **DISASSEMBLE_KIT_ITEMS_DET**, **DIS_KIT_ITEMS_DETAIL**)
- CompoundItem (**COMPOUND_ITEMS**)
- StockTransfer (**IAS_TRANSFER_IN_MST**, **IAS_TRANSFER_OUT_MST**, **IAS_TRANSFER_IN_SUB_MAIN_TMP**, **IAS_TRANSFER_OUT_SUB_MAIN_TMP**)
- WarehouseTransferExpense (**INV_WRHS_TRNSFR_EXPNS**, **INV_WRHS_TRNSFR_EXPNS_BR**)

---

## 3. المبيعات والعملاء (Sales & Customers)
- SalesOrder (**SALES_ORDER**, **ORDER_DETAIL**)
- SalesQuotation (**QUOTATION**, **QUOTATION_DETAIL**)
- SalesInvoice (**IAS_BILL_MST**, **IAS_BILL_DTL**)
- SalesReturn (**IAS_RET_BILL_MST**, **IAS_RET_BILL_DTL**)
- SalesCharges (**SALES_CHARGES**, **SALES_CHARGES_ITEMS**)
- SalesDiscount (**SALES_DISC**)  
- SalesFreeQty (**SALES_FREE_QTY**)
- Customer (**CUSTOMER**)
- CustomerGroup (**CUSTOMER_GROUP**)
- CustomerClass (**CUSTOMER_CLASS**)
- CustomerClassType (**CUSTOMER_CLASS_TYP**)
- CustomerCurrency (**CUSTOMER_CURR**, **CUSTOMER_CURR_RQ**)
- CustomerBankAccount (**CUSTOMER_BNK_ACCNT**)
- CustomerDegree (**CUSTOMER_DEGREE**)
- CustomerRequest (**CUSTOMER_RQ**)
- CustomerTransactionGps (**ARS_CST_TRNS_GPS**)
- CustomerAddress (**SUB_CUSTOMER**)
- CustomerContact (**IAS_CSTMR_CNTCT_US**)
- CustomerLoginHistory (**IAS_USR_LGN_HSTRY**)
- BillFollowUpMovement (**ARS_BILL_FLLWUP_MOVMNT**)

---

## 4. المشتريات والموردين (Purchases & Vendors)
- PurchaseOrder (**P_ORDER**, **P_ORDER_DETAIL**)
- PurchaseQuotation (**IAS_VND_QUOT_MST**, **IAS_VND_QUOT_DTL**)
- PurchaseInvoice (**IAS_PI_BILL_MST**, **IAS_PI_BILL_DTL**)
- PurchaseReturn (**IAS_RT_BILL_MST**, **IAS_RT_BILL_DTL**)
- Supplier (**IAS_VNDR_ACCNT**)
- SupplierGroup (**VENDOR_GROUP**)
- SupplierClass (**VENDOR_CLASS**)
- SupplierCurrency (**VENDOR_CURR**)
- SupplierBankAccount (**IAS_VENDOR_BANK**)
- SupplierDegree (**IAS_VENDOR_DEGREE**)
- SupplierClaim (**IAS_VNDR_CLAIM_MST**, **IAS_VNDR_CLAIM_DTL**)
- SupplierItem (**IAS_VNDR_ITM**)
- PurchaseCharge (**OTHER_CHARGES**, **OTHER_CHARGES_ITEMS**)

---

## 5. النقدية والبنوك والصناديق (Cash, Banks, Safes)
- CashInHand (**CASH_IN_HAND**, **IAS_CASH_IN_HAND_DTL**)
- CashAtBank (**CASH_AT_BANK**, **IAS_CASH_AT_BANK_DTL**, **IAS_CASH_AT_BANK_BRN**)
- CashGroup (**IAS_CASH_GROUP**)
- Bank (**IAS_BANK_GROUP**, **IAS_BANK_ADJUST_MST**, **IAS_BANK_ADJUST_DTL**)
- BankCheque (**GLS_BNK_CHQ_MST**, **GLS_BNK_CHQ_DTL**)
- BankAccount (**GLS_BNK_IDNTF_MST**, **GLS_BNK_IDNTF_DTL**)
- ChequeTrace (**IAS_CHEQ_TRACE**)
- Trust (**IAS_TRUST_MST**, **IAS_TRUST_DTL**)

---

## 6. الوحدات والقياس (Measurement & Units)
- Unit (**IAS_MEASUR_DSC_ITM_MST**, **IAS_MEASUR_DSC_ITM_DTL**, **IAS_UNTS_CONV**)
- UnitConversion (**IAS_UNTS_CONV**)
- ItemUnit (**IAS_CONN_ITM_MSUR_UNT**)

---

## 7. المستخدمين والصلاحيات (Users & Permissions)
- User (**USER_R**, **IAS_USER_HEAD**)
- UserGroup (**IAS_USER_GROUP**)
- Privilege (**PRIVILEGE**, **PRIVILEGE_CC**, **PRIVILEGE_FIXED**, **PRIVILEGE_GC**, **PRIVILEGE_WH**)
- Role (**IAS_EMP_PRV**)
- UserLoginHistory (**IAS_USR_LGN_HSTRY**)
- UserTerminal (**IAS_USER_HEAD**)

---

## 8. المشاريع والعقود (Projects & Contracts)
- Project (**IAS_PROJECTS**)
- ProjectGroup (**IAS_PROJECTS_GROUP**)
- Contract (**IAS_AR_CNTRCT_MST**, **IAS_AR_CNTRCT_DTL**, **IAS_AR_CNTRCT_BTCH**)
- ContractRenew (**IAS_AR_CNTRCT_RENEW**)

---

## 9. الضرائب والرسوم (Taxation)
- TaxCode (**GNR_TAX_CODE_MST**, **GNR_TAX_CODE_DTL**)
- TaxInput (**GNR_TAX_INPT**, **GNR_TAX_INPT_MOVMNT**, **GNR_TAX_INPT_MOVMNT_BR**)
- TaxItem (**GNR_TAX_ITM**, **GNR_TAX_ITM_MOVMNT**, **GNR_TAX_ITM_MOVMNT_BR**)
- TaxSlice (**GNR_TAX_SLICE**)
- TaxTypeCalculation (**GNR_TAX_TYP_CLC_MST**, **GNR_TAX_TYP_CLC_DTL**, **GNR_TAX_TYP_CLC_BRN**)
- TaxationParameter (**IAS_PARA_GEN**, **IAS_PARA_GL**, **IAS_PARA_INV**, **IAS_PARA_AR**, **IAS_PARA_AP**)

---

## 10. الموارد البشرية والرواتب (HR & Payroll)
- Employee (**S_EMP**)
- EmployeeBank (**S_EMP_BNK**)
- EmployeeAttendance (**GNR_ATTNDNC_LOC**)
- EmployeeFamily (**S_EMP_FMLY**)
- EmployeePrivilege (**S_EMP_PRV**)
- Department (**S_EMP_GRNTR**)

---

## 11. الأصول الثابتة (Fixed Assets)
- FixedAsset (**FAS_ASSETS_MST**)
- AssetTransaction (**IAS_AUD_ITM_MST**, **IAS_AUD_ITM_DTL**)
- AssetDepreciation (**IAS_AUD_ITM_OTHR_MST**, **IAS_AUD_ITM_OTHR_DTL**)

---

## 12. نقاط البيع (POS)
- PosTerminal (**STN_COUNTERS**)
- PosReceipt (**STN_BILL_MST**, **STN_BILL_DTL**)
- PosCoupon (**STN_BILL_COUPON**)
- PosCreditBill (**STN_BILL_CRDT**, **STN_CRDT_BILL_MST**, **STN_CRDT_BILL_DTL**)

---

## 13. التقارير والإعدادات (Reports & Settings)
- ReportTemplate (**S_RPRT_USR_TMPLT_MST**, **S_RPRT_USR_TMPLT_DTL**)
- Parameter (**IAS_PARA_GEN**, **IAS_PARA_GL**, **IAS_PARA_INV**, **IAS_PARA_AR**, **IAS_PARA_AP**)
- NotificationSetting (**IAS_MOBILE_NTFCTN**)

---

## 14. ملفات ودعم النظام (Attachments, System Support)
- Attachment (**IAS_ATTACH_MST**, **IAS_ATTACH_DTL**)
- FileType (**S_LIB_FILE**)
- Sequence (**S_SEQ_CTL**, **S_SEQ_VALUES**)
- Note (**NOTE**, **NOTE_DETAIL**)
- AuditLog (**IAS_LOGS**, **S_LOGS**)
- Backup (**BACKUP**)

---

## 15. جداول متنوعة (Miscellaneous)
- Country (**CNTRY**)
- City (**CITIES**)
- Region (**REGIONS**)
- CurrencyType (**CREDIT_CARD_TYPES**, **GLS_CRNCY_USR_LMT**)
- Others (أي جدول غير مصنف أعلاه أو غير واضح الدومين)