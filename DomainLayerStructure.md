## 1. المحاسبة والقيود (Accounting & Journals)
> هذا الموديول مسؤول عن إدارة الحسابات المالية وقيود اليومية وأرصدة الحسابات والتقارير المالية، ويشمل كل ما يتعلق بالعمليات المحاسبية الأساسية.

- Account (**ACCOUNT**)  <!-- جدول الحسابات الرئيسية وتعريف شجرة الحسابات -->
- AccountCurrency (**ACCOUNT_CURR**)  <!-- العملات المرتبطة بكل حساب -->
- AccountGrouping (**ACCOUNT_GROUPING**)  <!-- تصنيف أو تجميع الحسابات ضمن مجموعات -->
- AccountReportType (**ACCOUNT_REPORT_TYPE**)  <!-- أنواع التقارير المحاسبية المرتبطة بالحسابات -->
- AccountType (**ACCOUNT_TYPES**)  <!-- أنواع الحسابات (أصول، التزامات، ...الخ) -->
- JournalVoucher (**GLS_VCHR_MST_ACCNT**)  <!-- سندات القيد ورؤوس القيود المالية -->
- JournalVoucherType (**GLS_VCHR_TYP_ACNT**)  <!-- أنواع سندات القيد -->
- JournalVoucherTypePrivilege (**GLS_VCHR_TYP_PRV**)  <!-- صلاحيات أو خصائص أنواع السندات -->
- JournalDetail (**DETAIL_JOURNAL_V**)  <!-- تفاصيل القيود المحاسبية -->
- JournalDetailBranch (**DETAIL_JOURNAL_V_BR**)  <!-- تفاصيل القيود حسب الفروع -->
- MasterJournal (**MASTER_JOURNAL_V**)  <!-- القيد الرئيسي (رأس القيد) -->
- MasterJournalBranch (**MASTER_JOURNAL_V_BR**)  <!-- رأس القيد حسب الفروع -->
- OpenBalance (**OPEN_BAL**)  <!-- الأرصدة الافتتاحية للحسابات -->
- Voucher (**VOUCHERS**)  <!-- المستندات المالية العامة (قبض، صرف، ...الخ) -->
- VoucherBranch (**VOUCHERS_BR**)  <!-- مستندات مالية حسب الفروع -->
- VoucherDetail (**VOUCHER_DETAIL**)  <!-- تفاصيل المستندات المالية -->
- CurrencyExchangeRate (**EX_RATE**)  <!-- أسعار صرف العملات -->
- CurrencyValue (**IAS_CURRENCY_VALUE**)  <!-- قيمة العملة في فترات محددة -->
- PeriodExchangeRate (**IAS_PERIOD_EX_RATE**)  <!-- أسعار الصرف حسب الفترات المحاسبية -->
- PeriodExchangeRateDay (**IAS_PERIOD_EX_RATE_DAY**)  <!-- أسعار الصرف اليومية -->
- CurrencyDifferenceTmp (**IAS_CUR_DIFF_TMP**)  <!-- فروقات العملة المؤقتة بين العملات -->
- TaxAccount (**GLS_TAX_ACC**)  <!-- حسابات الضرائب المرتبطة بالمحاسبة -->
- Audit (**AUD**)  <!-- جدول رئيسي لتوثيق عمليات التدقيق والمراجعة -->
- AuditDoc (**IAS_AUDIT_DOC**)  <!-- تفاصيل المستندات الخاضعة للتدقيق -->
- AuditAccDetail (**IAS_AUD_ACC_DTL**)  <!-- تفاصيل حسابية ضمن عمليات التدقيق -->
- AuditAccMaster (**IAS_AUD_ACC_MST**)  <!-- رؤوس عمليات التدقيق للحسابات -->
- AuditHistory (**IAS_AUD_HIST**)  <!-- أرشيف وسجل تاريخي لعمليات التدقيق -->

---

## 2. المخزون والمستودعات (Inventory & Warehouses)
> إدارة أصناف وعمليات المخزون، المستودعات، الحركات المخزنية، الجرد، التجميع والتفكيك، وتسعير الأصناف.

- Warehouse (**WAREHOUSE_DETAILS**)  <!-- تعريف المستودعات ومعلوماتها -->
- WarehouseGroup (**WAREHOUSE_GROUP**)  <!-- مجموعات أو تصنيفات المستودعات -->
- Item (**IAS_ITM_MST**)  <!-- تعريف الأصناف الرئيسية -->
- ItemGroup (**IAS_GRP_ITM_LVL**)  <!-- تصنيف الأصناف في مجموعات -->
- ItemGroupTree (**IAS_GRP_ITM_LVL_TREE**)  <!-- شجرة تصنيف الأصناف -->
- ItemLevelMeasure (**IAS_ITM_LVL_MEASURE**)  <!-- مقاييس الأصناف حسب المستويات -->
- ItemLevelMeasureDetail (**IAS_ITM_LVL_MEASURE_DTL**)  <!-- تفاصيل مقاييس الأصناف -->
- ItemMeasurement (**IAS_ITM_MEASUR_MST**)  <!-- تعريف وحدات قياس الأصناف -->
- ItemMeasurementDetail (**IAS_ITM_MEASUR_DTL**)  <!-- تفاصيل وحدات قياس الأصناف -->
- Measurement (**MEASUREMENT**)  <!-- جدول عام لوحدات القياس -->
- ItemBatch (**IAS_ITM_BATCH**)  <!-- تشغيلات أو دفعات الأصناف -->
- ItemBarcode (**IAS_ITM_UNT_BARCODE**)  <!-- باركودات الوحدات للأصناف -->
- ItemPrice (**IAS_ITEM_PRICE**)  <!-- أسعار الأصناف الحالية -->
- ItemPriceHistory (**IAS_ITEM_PRICE_HISTORY**)  <!-- سجل تاريخي لأسعار الأصناف -->
- PricingLevel (**IAS_PRICING_LEVELS**)  <!-- مستويات التسعير للأصناف -->
- ItemMovement (**ITEM_MOVEMENT**)  <!-- حركات الأصناف (إدخال، إخراج، تحويل ...) -->
- InventoryAdjustment (**STK_ADJUSTMENT**)  <!-- تسويات المخزون (الجرد) -->
- InventoryAdjustmentDetail (**STK_ADJUSTMENT_DET**)  <!-- تفاصيل التسويات المخزنية -->
- InventoryBinDetail (**BIN_DETAILS**)  <!-- تفاصيل أماكن التخزين داخل المستودع -->
- InventoryBin (**ITEM_BIN**)  <!-- تعريف أماكن التخزين (BIN) -->
- StockCount (**IAS_INV_MANAGEMENT**)  <!-- إدارة الجرد الفعلي للمخزون -->
- StockCountTmp (**IAS_INV_MANAGEMENT_TMP**)  <!-- بيانات جرد مؤقت أثناء التنفيذ -->
- KitItem (**KIT_ITEMS**)  <!-- تعريف الأصناف المجمعة (KIT) -->
- KitItemDetail (**KIT_ITEMS_DETAIL**)  <!-- تفاصيل أصناف الكيت -->
- AssembleKitItem (**ASSEMBLE_KIT_ITEMS**)  <!-- عمليات تجميع الكيت -->
- AssembleKitItemDetail (**ASSEMBLE_KIT_ITEMS_DET**)  <!-- تفاصيل تجميع الكيت -->
- DisassembleKitItem (**DISASSEMBLE_KIT_ITEMS**)  <!-- عمليات تفكيك الكيت -->
- DisassembleKitItemDetail (**DISASSEMBLE_KIT_ITEMS_DET**)  <!-- تفاصيل تفكيك الكيت -->
- DisKitItemDetail (**DIS_KIT_ITEMS_DETAIL**)  <!-- تفاصيل إضافية لتفكيك الكيت -->
- CompoundItem (**COMPOUND_ITEMS**)  <!-- أصناف مركبة أو مجمعة من عدة مكونات -->
- StockTransferIn (**IAS_TRANSFER_IN_MST**)  <!-- تحويل مخزون وارد -->
- StockTransferOut (**IAS_TRANSFER_OUT_MST**)  <!-- تحويل مخزون صادر -->
- StockTransferInTmp (**IAS_TRANSFER_IN_SUB_MAIN_TMP**)  <!-- بيانات مؤقتة لتحويل وارد -->
- StockTransferOutTmp (**IAS_TRANSFER_OUT_SUB_MAIN_TMP**)  <!-- بيانات مؤقتة لتحويل صادر -->
- WarehouseTransferExpense (**INV_WRHS_TRNSFR_EXPNS**)  <!-- مصروفات التحويلات بين المستودعات -->
- WarehouseTransferExpenseBranch (**INV_WRHS_TRNSFR_EXPNS_BR**)  <!-- مصروفات تحويل المستودعات حسب الفروع -->

---

## 3. المبيعات والعملاء (Sales & Customers)
> عمليات البيع والفواتير، عروض الأسعار، مرتجعات المبيعات، إدارة بيانات العملاء، مجموعاتهم وفئاتهم، وسجلاتهم المالية.

- SalesOrder (**SALES_ORDER**)  <!-- أوامر البيع المقدمة من العملاء -->
- SalesOrderDetail (**ORDER_DETAIL**)  <!-- تفاصيل أوامر البيع -->
- SalesQuotation (**QUOTATION**)  <!-- عروض الأسعار للعملاء -->
- SalesQuotationDetail (**QUOTATION_DETAIL**)  <!-- تفاصيل عروض الأسعار -->
- SalesInvoice (**IAS_BILL_MST**)  <!-- فواتير البيع الصادرة للعملاء -->
- SalesInvoiceDetail (**IAS_BILL_DTL**)  <!-- تفاصيل فواتير البيع -->
- SalesReturn (**IAS_RET_BILL_MST**)  <!-- فواتير مرتجعات المبيعات -->
- SalesReturnDetail (**IAS_RET_BILL_DTL**)  <!-- تفاصيل مرتجعات المبيعات -->
- SalesCharges (**SALES_CHARGES**)  <!-- المصاريف والرسوم الإضافية على المبيعات -->
- SalesChargesItems (**SALES_CHARGES_ITEMS**)  <!-- تفاصيل المصاريف والرسوم في المبيعات -->
- SalesDiscount (**SALES_DISC**)  <!-- خصومات المبيعات -->
- SalesFreeQty (**SALES_FREE_QTY**)  <!-- كميات مجانية مضافة للعميل -->
- Customer (**CUSTOMER**)  <!-- بيانات العملاء الرئيسيين -->
- CustomerGroup (**CUSTOMER_GROUP**)  <!-- مجموعات العملاء لأغراض التصنيف -->
- CustomerClass (**CUSTOMER_CLASS**)  <!-- تصنيفات العملاء حسب الفئة -->
- CustomerClassType (**CUSTOMER_CLASS_TYP**)  <!-- أنواع تصنيفات العملاء -->
- CustomerCurrency (**CUSTOMER_CURR**)  <!-- عملات العملاء المعتمدة -->
- CustomerCurrencyRequest (**CUSTOMER_CURR_RQ**)  <!-- طلبات تغيير أو إضافة عملة للعميل -->
- CustomerBankAccount (**CUSTOMER_BNK_ACCNT**)  <!-- حسابات العملاء البنكية -->
- CustomerDegree (**CUSTOMER_DEGREE**)  <!-- درجة أو مستوى العميل (للتصنيف) -->
- CustomerRequest (**CUSTOMER_RQ**)  <!-- طلبات العملاء المختلفة -->
- CustomerTransactionGps (**ARS_CST_TRNS_GPS**)  <!-- تتبع إحداثيات عمليات العميل (GPS) -->
- CustomerAddress (**SUB_CUSTOMER**)  <!-- عناوين أو فروع العملاء -->
- CustomerContact (**IAS_CSTMR_CNTCT_US**)  <!-- معلومات التواصل مع العميل -->
- CustomerLoginHistory (**IAS_USR_LGN_HSTRY**)  <!-- سجل دخول العميل للنظام -->
- BillFollowUpMovement (**ARS_BILL_FLLWUP_MOVMNT**)  <!-- متابعة حركات الفواتير للعملاء -->

---

## 4. المشتريات والموردين (Purchases & Vendors)
> إدارة عمليات الشراء (طلبات، عروض، فواتير)، الموردين، تصنيفاتهم، عملاتهم، حساباتهم البنكية، والعمليات المرتبطة بالمشتريات.

- PurchaseOrder (**P_ORDER**)  <!-- أوامر الشراء للموردين -->
- PurchaseOrderDetail (**P_ORDER_DETAIL**)  <!-- تفاصيل أوامر الشراء -->
- PurchaseQuotation (**IAS_VND_QUOT_MST**)  <!-- عروض أسعار الموردين -->
- PurchaseQuotationDetail (**IAS_VND_QUOT_DTL**)  <!-- تفاصيل عروض أسعار الموردين -->
- PurchaseInvoice (**IAS_PI_BILL_MST**)  <!-- فواتير المشتريات -->
- PurchaseInvoiceDetail (**IAS_PI_BILL_DTL**)  <!-- تفاصيل فواتير المشتريات -->
- PurchaseReturn (**IAS_RT_BILL_MST**)  <!-- مرتجعات المشتريات -->
- PurchaseReturnDetail (**IAS_RT_BILL_DTL**)  <!-- تفاصيل مرتجعات المشتريات -->
- Supplier (**IAS_VNDR_ACCNT**)  <!-- بيانات الموردين الرئيسيين -->
- SupplierGroup (**VENDOR_GROUP**)  <!-- مجموعات الموردين لأغراض التصنيف -->
- SupplierClass (**VENDOR_CLASS**)  <!-- تصنيفات الموردين -->
- SupplierCurrency (**VENDOR_CURR**)  <!-- عملات الموردين المعتمدة -->
- SupplierBankAccount (**IAS_VENDOR_BANK**)  <!-- حسابات الموردين البنكية -->
- SupplierDegree (**IAS_VENDOR_DEGREE**)  <!-- درجة أو تصنيف المورد -->
- SupplierClaim (**IAS_VNDR_CLAIM_MST**)  <!-- شكاوى أو مطالبات الموردين -->
- SupplierClaimDetail (**IAS_VNDR_CLAIM_DTL**)  <!-- تفاصيل الشكاوى أو المطالبات -->
- SupplierItem (**IAS_VNDR_ITM**)  <!-- الأصناف المرتبطة بالموردين -->
- PurchaseCharge (**OTHER_CHARGES**)  <!-- مصاريف أو رسوم إضافية على المشتريات -->
- PurchaseChargeItems (**OTHER_CHARGES_ITEMS**)  <!-- تفاصيل الرسوم الإضافية للمشتريات -->

---

## 5. النقدية والبنوك والصناديق (Cash, Banks, Safes)
> إدارة النقدية بالصناديق والبنوك، الشيكات، التحويلات، الأرصدة البنكية، والتسويات.

- CashInHand (**CASH_IN_HAND**)  <!-- بيانات النقدية بالصندوق -->
- CashInHandDetail (**IAS_CASH_IN_HAND_DTL**)  <!-- تفاصيل النقدية بالصندوق -->
- CashAtBank (**CASH_AT_BANK**)  <!-- النقدية في البنوك -->
- CashAtBankDetail (**IAS_CASH_AT_BANK_DTL**)  <!-- تفاصيل النقدية في البنوك -->
- CashAtBankBranch (**IAS_CASH_AT_BANK_BRN**)  <!-- النقدية في البنوك حسب الفروع -->
- CashGroup (**IAS_CASH_GROUP**)  <!-- مجموعات الصناديق أو الحسابات النقدية -->
- BankGroup (**IAS_BANK_GROUP**)  <!-- مجموعات البنوك -->
- BankAdjustMaster (**IAS_BANK_ADJUST_MST**)  <!-- رؤوس تسويات البنوك -->
- BankAdjustDetail (**IAS_BANK_ADJUST_DTL**)  <!-- تفاصيل تسويات البنوك -->
- BankChequeMaster (**GLS_BNK_CHQ_MST**)  <!-- رئيسي الشيكات البنكية -->
- BankChequeDetail (**GLS_BNK_CHQ_DTL**)  <!-- تفاصيل الشيكات البنكية -->
- BankAccountMaster (**GLS_BNK_IDNTF_MST**)  <!-- حسابات بنكية رئيسية -->
- BankAccountDetail (**GLS_BNK_IDNTF_DTL**)  <!-- تفاصيل الحسابات البنكية -->
- ChequeTrace (**IAS_CHEQ_TRACE**)  <!-- تتبع الشيكات البنكية -->
- TrustMaster (**IAS_TRUST_MST**)  <!-- رؤوس الأمانات النقدية -->
- TrustDetail (**IAS_TRUST_DTL**)  <!-- تفاصيل الأمانات النقدية -->

---

## 6. الوحدات والقياس (Measurement & Units)
> ضبط وحدات القياس وتحويلاتها وربطها بالأصناف.

- UnitDescriptionItemMaster (**IAS_MEASUR_DSC_ITM_MST**)  <!-- وحدات القياس الرئيسية للأصناف -->
- UnitDescriptionItemDetail (**IAS_MEASUR_DSC_ITM_DTL**)  <!-- تفاصيل وحدات القياس للأصناف -->
- UnitConversion (**IAS_UNTS_CONV**)  <!-- تحويلات بين وحدات القياس -->
- ItemUnitConnection (**IAS_CONN_ITM_MSUR_UNT**)  <!-- ربط وحدة مع صنف محدد -->

---

## 7. المستخدمين والصلاحيات (Users & Permissions)
> إدارة المستخدمين، الصلاحيات، مجموعات المستخدمين، وسجلات الدخول.

- User (**USER_R**)  <!-- حسابات المستخدمين الرئيسيين -->
- UserHead (**IAS_USER_HEAD**)  <!-- بيانات إضافية عن المستخدم أو الجهاز المستخدم -->
- UserGroup (**IAS_USER_GROUP**)  <!-- مجموعات المستخدمين -->
- Privilege (**PRIVILEGE**)  <!-- الصلاحيات العامة للمستخدمين -->
- PrivilegeCostCenter (**PRIVILEGE_CC**)  <!-- صلاحيات مراكز التكلفة -->
- PrivilegeFixed (**PRIVILEGE_FIXED**)  <!-- صلاحيات ثابتة أو خاصة -->
- PrivilegeGeneralControl (**PRIVILEGE_GC**)  <!-- صلاحيات التحكم العام -->
- PrivilegeWarehouse (**PRIVILEGE_WH**)  <!-- صلاحيات المستودعات -->
- EmployeePrivilege (**IAS_EMP_PRV**)  <!-- صلاحيات الموظفين -->
- UserLoginHistory (**IAS_USR_LGN_HSTRY**)  <!-- سجل دخول المستخدم للنظام -->
- UserTerminal (**IAS_USER_HEAD**)  <!-- الأجهزة أو الطرفيات المرتبطة بالمستخدمين -->

---

## 8. المشاريع والعقود (Projects & Contracts)
> إدارة بيانات المشاريع، مجموعات المشاريع، العقود وتجديداتها.

- Project (**IAS_PROJECTS**)  <!-- المشاريع الرئيسية بالنظام -->
- ProjectGroup (**IAS_PROJECTS_GROUP**)  <!-- مجموعات المشاريع -->
- ContractMaster (**IAS_AR_CNTRCT_MST**)  <!-- رؤوس العقود مع العملاء أو الموردين -->
- ContractDetail (**IAS_AR_CNTRCT_DTL**)  <!-- تفاصيل العقود -->
- ContractBatch (**IAS_AR_CNTRCT_BTCH**)  <!-- دفعات العقود أو مرفقاتها -->
- ContractRenew (**IAS_AR_CNTRCT_RENEW**)  <!-- تجديدات العقود -->

---

## 9. الضرائب والرسوم (Taxation)
> تنظيم أكواد الضرائب وحركاتها وحساباتها وقواعد احتسابها.

- TaxCodeMaster (**GNR_TAX_CODE_MST**)  <!-- أكواد الضرائب الرئيسية -->
- TaxCodeDetail (**GNR_TAX_CODE_DTL**)  <!-- تفاصيل أكواد الضرائب -->
- TaxInput (**GNR_TAX_INPT**)  <!-- إدخالات أو معاملات الضرائب -->
- TaxInputMovement (**GNR_TAX_INPT_MOVMNT**)  <!-- حركات إدخال الضرائب -->
- TaxInputMovementBranch (**GNR_TAX_INPT_MOVMNT_BR**)  <!-- حركات إدخال الضرائب حسب الفروع -->
- TaxItem (**GNR_TAX_ITM**)  <!-- عناصر أو بنود الضرائب -->
- TaxItemMovement (**GNR_TAX_ITM_MOVMNT**)  <!-- حركات بنود الضرائب -->
- TaxItemMovementBranch (**GNR_TAX_ITM_MOVMNT_BR**)  <!-- حركات بنود الضرائب حسب الفروع -->
- TaxSlice (**GNR_TAX_SLICE**)  <!-- شرائح أو أقسام الضرائب -->
- TaxTypeCalculationMaster (**GNR_TAX_TYP_CLC_MST**)  <!-- قواعد حساب الضرائب الرئيسية -->
- TaxTypeCalculationDetail (**GNR_TAX_TYP_CLC_DTL**)  <!-- تفاصيل قواعد حساب الضرائب -->
- TaxTypeCalculationBranch (**GNR_TAX_TYP_CLC_BRN**)  <!-- قواعد حساب الضرائب حسب الفروع -->
- ParameterGeneral (**IAS_PARA_GEN**)  <!-- معايير عامة للنظام (تخص الضرائب وغيرها) -->
- ParameterGL (**IAS_PARA_GL**)  <!-- معايير محاسبية عامة للنظام -->
- ParameterInventory (**IAS_PARA_INV**)  <!-- معايير خاصة بالمخزون -->
- ParameterAR (**IAS_PARA_AR**)  <!-- معايير الحسابات المدينة (العملاء) -->
- ParameterAP (**IAS_PARA_AP**)  <!-- معايير الحسابات الدائنة (الموردين) -->

---

## 10. الموارد البشرية والرواتب (HR & Payroll)
> إدارة بيانات الموظفين وأسرهم، الحضور والانصراف، وصلاحيات الموارد البشرية.

- Employee (**S_EMP**)  <!-- بيانات الموظف الرئيسية -->
- EmployeeBank (**S_EMP_BNK**)  <!-- حسابات الموظفين البنكية -->
- EmployeeAttendance (**GNR_ATTNDNC_LOC**)  <!-- الحضور والانصراف والمواقع -->
- EmployeeFamily (**S_EMP_FMLY**)  <!-- بيانات عائلة الموظف -->
- EmployeePrivilege (**S_EMP_PRV**)  <!-- صلاحيات الموظف -->
- EmployeeGuarantor (**S_EMP_GRNTR**)  <!-- الكفلاء أو الضامنين للموظف -->

---

## 11. الأصول الثابتة (Fixed Assets)
> إدارة الأصول الثابتة وحركاتها وتدقيقها واستهلاكها.

- FixedAssetMaster (**FAS_ASSETS_MST**)  <!-- الأصول الثابتة الرئيسية -->
- AssetAuditItemMaster (**IAS_AUD_ITM_MST**)  <!-- تدقيق الأصول الثابتة (رؤوس) -->
- AssetAuditItemDetail (**IAS_AUD_ITM_DTL**)  <!-- تفاصيل تدقيق الأصول الثابتة -->
- AssetAuditItemOtherMaster (**IAS_AUD_ITM_OTHR_MST**)  <!-- تدقيق إضافي للأصول الثابتة (رؤوس) -->
- AssetAuditItemOtherDetail (**IAS_AUD_ITM_OTHR_DTL**)  <!-- تفاصيل تدقيق إضافية للأصول -->

---

## 12. نقاط البيع (POS)
> إدارة نقاط البيع، فواتير البيع المباشر، الكوبونات، والفواتير الائتمانية.

- PosTerminal (**STN_COUNTERS**)  <!-- تعريف نقاط البيع والأجهزة -->
- PosReceiptMaster (**STN_BILL_MST**)  <!-- رؤوس فواتير نقاط البيع -->
- PosReceiptDetail (**STN_BILL_DTL**)  <!-- تفاصيل فواتير نقاط البيع -->
- PosCoupon (**STN_BILL_COUPON**)  <!-- كوبونات نقاط البيع -->
- PosCreditBill (**STN_BILL_CRDT**)  <!-- فواتير ائتمانية لنقاط البيع -->
- PosCreditBillMaster (**STN_CRDT_BILL_MST**)  <!-- رؤوس الفواتير الائتمانية -->
- PosCreditBillDetail (**STN_CRDT_BILL_DTL**)  <!-- تفاصيل الفواتير الائتمانية -->

---

## 13. التقارير والإعدادات (Reports & Settings)
> إعداد قوالب التقارير، إعدادات الإعلامات، والمعايير العامة.

- ReportTemplateMaster (**S_RPRT_USR_TMPLT_MST**)  <!-- قوالب التقارير الرئيسية للمستخدمين -->
- ReportTemplateDetail (**S_RPRT_USR_TMPLT_DTL**)  <!-- تفاصيل قوالب التقارير -->
- ParameterGeneral (**IAS_PARA_GEN**)  <!-- معايير عامة للنظام -->
- ParameterGL (**IAS_PARA_GL**)  <!-- معايير المحاسبة العامة -->
- ParameterInventory (**IAS_PARA_INV**)  <!-- معايير المخزون -->
- ParameterAR (**IAS_PARA_AR**)  <!-- معايير الحسابات المدينة (العملاء) -->
- ParameterAP (**IAS_PARA_AP**)  <!-- معايير الحسابات الدائنة (الموردين) -->
- NotificationSetting (**IAS_MOBILE_NTFCTN**)  <!-- إعدادات الإعلامات والتنبيهات للموبايل -->

---

## 14. ملفات ودعم النظام (Attachments, System Support)
> إدارة المرفقات، الملفات، التسلسلات، الملاحظات، السجلات، والنسخ الاحتياطي.

- AttachmentMaster (**IAS_ATTACH_MST**)  <!-- المرفقات الرئيسية -->
- AttachmentDetail (**IAS_ATTACH_DTL**)  <!-- تفاصيل المرفقات -->
- FileType (**S_LIB_FILE**)  <!-- أنواع الملفات المرفقة أو المعرفة بالنظام -->
- SequenceControl (**S_SEQ_CTL**)  <!-- التحكم في التسلسلات (الأرقام التلقائية) -->
- SequenceValues (**S_SEQ_VALUES**)  <!-- قيم التسلسلات المستخدمة -->
- Note (**NOTE**)  <!-- الملاحظات العامة بالنظام -->
- NoteDetail (**NOTE_DETAIL**)  <!-- تفاصيل الملاحظات -->
- AuditLog (**IAS_LOGS**)  <!-- سجلات التدقيق (Logs) الرئيسية -->
- SystemLog (**S_LOGS**)  <!-- سجلات النظام العامة -->
- Backup (**BACKUP**)  <!-- جداول النسخ الاحتياطي للنظام -->

---

## 15. جداول متنوعة (Miscellaneous)
> معلومات عامة مثل الدول، المدن، المناطق، وأنواع البطاقات الائتمانية.

- Country (**CNTRY**)  <!-- الدول المتاحة بالنظام -->
- City (**CITIES**)  <!-- المدن المتاحة بالنظام -->
- Region (**REGIONS**)  <!-- المناطق الجغرافية بالنظام -->
- CreditCardType (**CREDIT_CARD_TYPES**)  <!-- أنواع البطاقات الائتمانية -->
- CurrencyUserLimit (**GLS_CRNCY_USR_LMT**)  <!-- حدود العملات للمستخدمين -->

---

## 16. جداول غير مصنفة (Uncategorized)
> جداول لم تُصنف بعد أو ذات استخدام خاص أو داخلي في النظام.

- ALL_BRANCHES  <!-- جميع الفروع والشركات بنظام واحد -->
- APX_FVRT_SCR  <!-- شاشات المفضلة للمستخدمين -->
- APX_SCR  <!-- تعريف شاشات النظام -->
- APX_SCR_PRV  <!-- صلاحيات الشاشات للمستخدمين -->
- ARS_ANSWR_QUESTNNR_DTL  <!-- تفاصيل إجابات الاستبيانات أو النماذج -->
- ARS_ANSWR_QUESTNNR_MST  <!-- رؤوس الاستبيانات أو النماذج -->
- ARS_AUTO_SLS_ORDR_DTL  <!-- تفاصيل أوامر البيع الآليّة -->
- ARS_AUTO_SLS_ORDR_MST  <!-- رؤوس أوامر البيع الآليّة -->
- ARS_CODE_DTL  <!-- تفاصيل أكواد النظام (إجرائية أو فرعية) -->
- ARS_CODE_MST  <!-- رؤوس أكواد النظام (إجرائية أو فرعية) -->
- ARS_NEWS_CSS  <!-- نشرات أو أخبار النظام -->
- ARS_PARA_CSS  <!-- إعدادات أو معايير خاصة بالنظام أو الوحدة -->
