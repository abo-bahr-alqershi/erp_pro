# 11. الأصول الثابتة (Fixed Assets)
> **جميع الحقول الرئيسية لجداول الأصول الثابتة والتدقيق**

---

## FixedAssetMaster (**FAS_ASSETS_MST**)
| الاسم الجديد         | الاسم القديم    | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                     |
|---------------------|----------------|--------------|--------|-----------|--------|-------------------------------|
| AssetCode           | AS_CODE        | VARCHAR2(30) | لا     | نعم       | لا     | كود الأصل الثابت              |
| EmployeeNo          | EMP_NO         | NUMBER(10,0) | لا     | نعم       | لا     | رقم الموظف المسؤول            |
| AssetArabicName     | AS_A_NAME      | VARCHAR2(100)| لا     | نعم       | لا     | اسم الأصل عربي                |
| AssetEnglishName    | AS_E_NAME      | VARCHAR2(100)| لا     | نعم       | لا     | اسم الأصل إنجليزي             |
| EndBalanceQty       | END_BLNC_QTY   | NUMBER       | لا     | نعم       | لا     | رصيد نهاية الفترة (كمية)      |
| AssetStatus         | AS_ST          | NUMBER(1,0)  | لا     | نعم       | لا     | حالة الأصل                    |

---

## AssetAuditItemMaster (**IAS_AUD_ITM_MST**)
| الاسم الجديد           | الاسم القديم      | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل                 |
|-----------------------|------------------|------------------|--------|-----------|--------|---------------------------|
| AuditNo               | AUD_NO           | NUMBER(30,0)     | لا     | نعم       | لا     | رقم التدقيق              |
| AuditType             | AUD_TYPE         | NUMBER(2,0)      | لا     | نعم       | لا     | نوع التدقيق              |
| DocType               | DOC_TYPE         | NUMBER(5,0)      | لا     | نعم       | لا     | نوع المستند              |
| JVType                | JV_TYPE          | NUMBER(10,0)     | لا     | نعم       | لا     | نوع القيد                |
| DocNo                 | DOC_NO           | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند              |
| DocSerial             | DOC_SER          | NUMBER(38,0)     | لا     | نعم       | لا     | تسلسل المستند            |
| DocDate               | DOC_DATE         | DATE             | لا     | نعم       | لا     | تاريخ المستند            |
| AccountCode           | A_CODE           | VARCHAR2(30)     | لا     | نعم       | لا     | كود الحساب                |
| AccountCodeDetail     | AC_CODE_DTL      | VARCHAR2(30)     | لا     | نعم       | لا     | كود الحساب التفصيلي       |
| AccountDetailType     | AC_DTL_TYP       | NUMBER(2,0)      | لا     | نعم       | لا     | نوع الحساب التفصيلي       |
| CurrencyCode          | A_CY             | VARCHAR2(7)      | لا     | نعم       | لا     | رمز العملة                |
| CustomerCode          | C_CODE           | VARCHAR2(15)     | لا     | نعم       | لا     | كود العميل                |
| VendorCode            | V_CODE           | VARCHAR2(15)     | لا     | نعم       | لا     | كود المورد                |
| CustomerVendorName    | C_V_NAME         | VARCHAR2(60)     | لا     | نعم       | لا     | اسم العميل/المورد         |
| Amount                | AMT              | NUMBER           | لا     | نعم       | لا     | المبلغ                    |
| DiscountAmount        | DISC_AMT         | NUMBER           | لا     | نعم       | لا     | مبلغ الخصم                |
| OtherAmount           | OTHR_AMT         | NUMBER           | لا     | نعم       | لا     | مبلغ آخر                  |
| VATAmount             | VAT_AMT          | NUMBER           | لا     | نعم       | لا     | مبلغ الضريبة              |
| CommissionPercent     | COMM_PER         | NUMBER(7,4)      | لا     | نعم       | لا     | نسبة العمولة              |
| DocRate               | DOC_RATE         | NUMBER           | لا     | نعم       | لا     | سعر المستند               |
| StockRate             | STK_RATE         | NUMBER           | لا     | نعم       | لا     | معدل المخزون              |
| Description           | A_DESC           | VARCHAR2(250)    | لا     | نعم       | لا     | وصف                       |
| ReferenceNo           | REF_NO           | VARCHAR2(15)     | لا     | نعم       | لا     | رقم مرجعي                 |
| CashNo                | CASH_NO          | NUMBER(10,0)     | لا     | نعم       | لا     | رقم النقدية               |
| ChequeNo              | CHEQUE_NO        | NUMBER(20,0)     | لا     | نعم       | لا     | رقم الشيك                 |
| WarehouseCode         | W_CODE           | NUMBER(10,0)     | لا     | نعم       | لا     | كود المستودع              |
| CostCenterCode        | CC_CODE          | VARCHAR2(30)     | لا     | نعم       | لا     | كود مركز التكلفة          |
| RegionCode            | R_CODE           | NUMBER(10,0)     | لا     | نعم       | لا     | كود المنطقة               |
| RepCode               | REP_CODE         | VARCHAR2(15)     | لا     | نعم       | لا     | كود المندوب               |
| LCNo                  | LC_NO            | VARCHAR2(15)     | لا     | نعم       | لا     | رقم الاعتماد المستندي      |
| LoadNo                | LOAD_NO          | NUMBER(15,0)     | لا     | نعم       | لا     | رقم الحمولة               |
| LoadSer               | LOAD_SER         | NUMBER(38,0)     | لا     | نعم       | لا     | تسلسل الحمولة             |
| FDocNo                | F_DOC_NO         | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند السابق        |
| FDocSer               | F_DOC_SER        | NUMBER(38,0)     | لا     | نعم       | لا     | تسلسل المستند السابق      |
| ReasonDelete          | REASON_DEL       | VARCHAR2(250)    | لا     | نعم       | لا     | سبب الحذف/الإلغاء         |
| DocDueDate            | DOC_DUE_DATE     | DATE             | لا     | نعم       | لا     | تاريخ الاستحقاق           |
| ExternalPost          | EXTERNAL_POST    | NUMBER(5,0)      | لا     | نعم       | لا     | ترحيل خارجي               |
| ReportPriority        | PR_REP           | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير            |
| Processed             | PROCESSED        | NUMBER(1,0)      | لا     | نعم       | لا     | تم المعالجة               |
| BillPay               | BILL_PY          | NUMBER(1,0)      | لا     | نعم       | لا     | دفع الفاتورة              |
| PurchaseType          | PUR_TYPE         | NUMBER(1,0)      | لا     | نعم       | لا     | نوع الشراء                |
| ExpenseAccountCode    | EXP_A_CODE       | VARCHAR2(30)     | لا     | نعم       | لا     | كود حساب المصروفات        |
| ExpenseCurrencyCode   | EXP_A_CY         | VARCHAR2(7)      | لا     | نعم       | لا     | عملة المصروفات            |
| ExpenseAmount         | EXP_AMT          | NUMBER           | لا     | نعم       | لا     | مبلغ المصروفات            |
| ExpenseRate           | EXP_RATE         | NUMBER           | لا     | نعم       | لا     | سعر المصروفات             |
| UpdateCount           | UP_CNT           | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث          |
| UserId                | U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | رقم المستخدم              |
| AuditDate             | AUD_DATE         | DATE             | لا     | نعم       | لا     | تاريخ التدقيق             |
| AddedUserId           | AD_U_ID          | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف         |
| AddedDate             | AD_DATE          | DATE             | لا     | نعم       | لا     | تاريخ الإضافة             |
| PostedUserId          | POST_U_ID        | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي رحّل         |
| PostedDate            | POST_DATE        | DATE             | لا     | نعم       | لا     | تاريخ الترحيل             |
| UnpostedUserId        | UNPOST_U_ID      | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي ألغى الترحيل |
| UnpostedDate          | UNPOST_DATE      | DATE             | لا     | نعم       | لا     | تاريخ إلغاء الترحيل       |
| TerminalName          | TRMNL_NAME       | VARCHAR2(100)    | لا     | نعم       | لا     | اسم الجهاز                |
| CompanyNo             | CMP_NO           | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة                 |
| BranchNo              | BRN_NO           | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع                  |
| BranchYear            | BRN_YEAR         | NUMBER(4,0)      | لا     | نعم       | لا     | سنة الفرع                  |
| BranchUser            | BRN_USR          | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع               |

---

## AssetAuditItemDetail (**IAS_AUD_ITM_DTL**)
| الاسم الجديد           | الاسم القديم   | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل           |
|-----------------------|---------------|-----------------|--------|-----------|--------|---------------------|
| AuditNo               | AUD_NO        | NUMBER(30,0)    | لا     | نعم       | لا     | رقم التدقيق        |
| AuditType             | AUD_TYPE      | NUMBER(2,0)     | لا     | نعم       | لا     | نوع التدقيق        |
| DocType               | DOC_TYPE      | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند        |
| JVType                | JV_TYPE       | NUMBER(10,0)    | لا     | نعم       | لا     | نوع القيد          |
| DocNo                 | DOC_NO        | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند        |
| DocSerial             | DOC_SER       | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند      |
| ItemCode              | I_CODE        | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف/الأصل    |
| ItemQty               | I_QTY         | NUMBER          | لا     | نعم       | لا     | الكمية             |
| FreeQty               | FREE_QTY      | NUMBER          | لا     | نعم       | لا     | الكمية المجانية    |
| ItemUnit              | ITM_UNT       | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف         |
| PackSize              | P_SIZE        | NUMBER          | لا     | نعم       | لا     | حجم العبوة         |
| PackQty               | P_QTY         | NUMBER          | لا     | نعم       | لا     | كمية العبوة        |
| ItemPrice             | I_PRICE       | NUMBER          | لا     | نعم       | لا     | سعر الصنف          |
| StockCost             | STK_COST      | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون      |
| OutQty                | OUT_QTY       | NUMBER          | لا     | نعم       | لا     | كمية الصادر        |
| OutFreeQty            | OUT_FREE_QTY  | NUMBER          | لا     | نعم       | لا     | كمية الصادر المجانية|
| WarehouseCode         | W_CODE        | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع       |
| CostCenterCode        | CC_CODE       | VARCHAR2(30)    | لا     | نعم       | لا     | كود مركز التكلفة   |
| ExpireDate            | EXPIRE_DATE   | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الصلاحية|
| BatchNo               | BATCH_NO      | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الدفعة         |
| DiscountAmount        | DIS_AMT       | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم         |
| VATAmount             | VAT_AMT       | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة       |
| OtherAmount           | OTHR_AMT      | NUMBER          | لا     | نعم       | لا     | مبلغ آخر           |
| UseSerialNo           | USE_SERIALNO  | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الرقم التسلسلي|
| ServiceItem           | SERVICE_ITEM  | NUMBER(1,0)     | لا     | نعم       | لا     | صنف خدمي           |
| RecordNo              | RCRD_NO       | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر          |
| DocSequence           | DOC_SEQUENCE  | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند      |
| ItemDescription       | ITEM_DESC     | VARCHAR2(4000)  | لا     | نعم       | لا     | وصف الصنف/الأصل    |
| Barcode               | BARCODE       | VARCHAR2(30)    | لا     | نعم       | لا     | باركود             |
| SONo                  | SO_NO         | NUMBER(15,0)    | لا     | نعم       | لا     | رقم أمر البيع      |
| SOSerial              | SO_SER        | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل أمر البيع    |
| DocTypeRef            | DOC_TYPE_REF  | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي|
| DocNoRef              | DOC_NO_REF    | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي|
| DocSerRef             | DOC_SER_REF   | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي|
| TerminalName          | TRMNL_NAME    | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الجهاز         |
| CompanyNo             | CMP_NO        | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة         |
| BranchNo              | BRN_NO        | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع          |
| BranchYear            | BRN_YEAR      | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع          |
| BranchUser            | BRN_USR       | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع       |
| UpdateCount           | UP_CNT        | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث   |

---

## AssetAuditItemOtherMaster (**IAS_AUD_ITM_OTHR_MST**)
| الاسم الجديد         | الاسم القديم      | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                     |
|---------------------|------------------|---------------|--------|-----------|--------|-------------------------------|
| AuditNo             | AUD_NO           | NUMBER(30,0)  | لا     | نعم       | لا     | رقم التدقيق                  |
| AuditType           | AUD_TYPE         | NUMBER(2,0)   | لا     | نعم       | لا     | نوع التدقيق                  |
| DocType             | DOC_TYPE         | NUMBER(5,0)   | لا     | نعم       | لا     | نوع المستند                  |
| JVType              | JV_TYPE          | NUMBER(10,0)  | لا     | نعم       | لا     | نوع القيد                    |
| DocNo               | DOC_NO           | NUMBER(15,0)  | لا     | نعم       | لا     | رقم المستند                  |
| DocSerial           | DOC_SER          | NUMBER(38,0)  | لا     | نعم       | لا     | تسلسل المستند                |
| DocDate             | DOC_DATE         | DATE          | لا     | نعم       | لا     | تاريخ المستند                |
| AccountCode         | A_CODE           | VARCHAR2(30)  | لا     | نعم       | لا     | كود الحساب                    |
| AccountCodeDetail   | AC_CODE_DTL      | VARCHAR2(30)  | لا     | نعم       | لا     | كود الحساب التفصيلي           |
| AccountDetailType   | AC_DTL_TYP       | NUMBER(2,0)   | لا     | نعم       | لا     | نوع الحساب التفصيلي           |
| CurrencyCode        | A_CY             | VARCHAR2(7)   | لا     | نعم       | لا     | رمز العملة                    |
| CustomerCode        | C_CODE           | VARCHAR2(15)  | لا     | نعم       | لا     | كود العميل                    |
| VendorCode          | V_CODE           | VARCHAR2(15)  | لا     | نعم       | لا     | كود المورد                    |
| CustomerVendorName  | C_V_NAME         | VARCHAR2(60)  | لا     | نعم       | لا     | اسم العميل/المورد             |
| DocumentAmount      | DOC_AMT          | NUMBER        | لا     | نعم       | لا     | مبلغ المستند                  |
| DiscountAmount      | DISC_AMT         | NUMBER        | لا     | نعم       | لا     | مبلغ الخصم                    |
| OtherAmount         | OTHR_AMT         | NUMBER        | لا     | نعم       | لا     | مبلغ آخر                      |
| VATAmount           | VAT_AMT          | NUMBER        | لا     | نعم       | لا     | مبلغ الضريبة                  |
| CommissionPercent   | COMM_PER         | NUMBER(7,4)   | لا     | نعم       | لا     | نسبة العمولة                  |
| DocRate             | DOC_RATE         | NUMBER        | لا     | نعم       | لا     | سعر المستند                    |
| StockRate           | STK_RATE         | NUMBER        | لا     | نعم       | لا     | معدل المخزون                  |
| Description         | DOC_DESC         | VARCHAR2(250) | لا     | نعم       | لا     | وصف المستند                    |
| ReferenceNo         | REF_NO           | VARCHAR2(15)  | لا     | نعم       | لا     | رقم مرجعي                      |
| CashNo              | CASH_NO          | NUMBER(10,0)  | لا     | نعم       | لا     | رقم النقدية                    |
| ChequeNo            | CHEQUE_NO        | NUMBER(20,0)  | لا     | نعم       | لا     | رقم الشيك                       |
| WarehouseCode       | W_CODE           | NUMBER(10,0)  | لا     | نعم       | لا     | كود المستودع                    |
| CostCenterCode      | CC_CODE          | VARCHAR2(30)  | لا     | نعم       | لا     | كود مركز التكلفة                |
| ProjectNo           | PJ_NO            | VARCHAR2(15)  | لا     | نعم       | لا     | رقم المشروع                     |
| ActivityNo          | ACTV_NO          | VARCHAR2(15)  | لا     | نعم       | لا     | رقم النشاط                       |
| RegionCode          | R_CODE           | NUMBER(10,0)  | لا     | نعم       | لا     | كود المنطقة                      |
| RepCode             | REP_CODE         | VARCHAR2(15)  | لا     | نعم       | لا     | كود المندوب                       |
| HierarchyNo         | HRCHY_NO         | NUMBER(20,0)  | لا     | نعم       | لا     | رقم التسلسل الوظيفي               |
| LCNo                | LC_NO            | VARCHAR2(15)  | لا     | نعم       | لا     | رقم الاعتماد المستندي              |
| ReasonDelete        | REASON_DEL       | VARCHAR2(250) | لا     | نعم       | لا     | سبب الحذف/الإلغاء                  |
| DocDueDate          | DOC_DUE_DATE     | DATE          | لا     | نعم       | لا     | تاريخ الاستحقاق                     |
| ExternalPost        | EXTERNAL_POST    | NUMBER(5,0)   | لا     | نعم       | لا     | ترحيل خارجي                          |
| ReportPriority      | PR_REP           | NUMBER(10,0)  | لا     | نعم       | لا     | أولوية التقرير                        |
| Processed           | PROCESSED        | NUMBER(1,0)   | لا     | نعم       | لا     | تم المعالجة                             |
| DocumentPay         | DOC_PY           | NUMBER(1,0)   | لا     | نعم       | لا     | دفع المستند                               |
| PurchaseType        | PUR_TYPE         | NUMBER(1,0)   | لا     | نعم       | لا     | نوع الشراء                                  |
| SideRequest         | SIDE_REQ         | VARCHAR2(60)  | لا     | نعم       | لا     | جهة الطلب                                     |
| RequestAvailableDate| REQ_AVL_DATE     | DATE          | لا     | نعم       | لا     | تاريخ توفر الطلب                                 |
| DocTypeRef          | DOC_TYPE_REF     | NUMBER(5,0)   | لا     | نعم       | لا     | نوع المستند المرجعي                                 |
| DocJVTypeRef        | DOC_JV_TYPE_REF  | NUMBER(10,0)  | لا     | نعم       | لا     | نوع قيد المرجعي                                     |
| DocNoRef            | DOC_NO_REF       | NUMBER(15,0)  | لا     | نعم       | لا     | رقم المستند المرجعي                                    |
| DocSerRef           | DOC_SER_REF      | NUMBER(38,0)  | لا     | نعم       | لا     | تسلسل المستند المرجعي                                  |
| Approved            | APPRVD           | NUMBER(1,0)   | لا     | نعم       | لا     | معتمد                                                   |
| ApprovedUserId      | APPRVD_U_ID      | NUMBER(5,0)   | لا     | نعم       | لا     | المستخدم الذي اعتمد                                      |
| ApprovedDate        | APPRVD_DATE      | DATE          | لا     | نعم       | لا     | تاريخ الاعتماد                                            |
| Inactive            | INACTIVE         | NUMBER(1,0)   | لا     | نعم       | لا     | معطل                                                       |
| InactiveUserId      | INACTIVE_U_ID    | NUMBER(5,0)   | لا     | نعم       | لا     | المستخدم الذي عطل                                           |
| InactiveDate        | INACTIVE_DATE    | DATE          | لا     | نعم       | لا     | تاريخ التعطيل                                               |
| InactiveReason      | INACTIVE_RES     | VARCHAR2(250) | لا     | نعم       | لا     | سبب التعطيل                                                 |
| UserId              | U_ID             | NUMBER(5,0)   | لا     | نعم       | لا     | رقم المستخدم                                               |
| AuditDate           | AUD_DATE         | DATE          | لا     | نعم       | لا     | تاريخ التدقيق                                              |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)   | لا     | نعم       | لا     | المستخدم الذي أضاف                                         |
| AddedDate           | AD_DATE          | DATE          | لا     | نعم       | لا     | تاريخ الإضافة                                              |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)   | لا     | نعم       | لا     | المستخدم الذي عدل                                          |
| UpdatedDate         | UP_DATE          | DATE          | لا     | نعم       | لا     | تاريخ آخر تعديل                                            |
| UpdateCount         | UP_CNT           | NUMBER(10,0)  | لا     | نعم       | لا     | عدد مرات التحديث                                           |
| TerminalName        | TRMNL_NAME       | VARCHAR2(100) | لا     | نعم       | لا     | اسم الجهاز                                                 |
| CompanyNo           | CMP_NO           | NUMBER(3,0)   | نعم    | لا        | لا     | رقم الشركة                                                  |
| BranchNo            | BRN_NO           | NUMBER(6,0)   | نعم    | لا        | لا     | رقم الفرع                                                   |
| BranchYear          | BRN_YEAR         | NUMBER(4,0)   | لا     | نعم       | لا     | سنة الفرع                                                   |
| BranchUser          | BRN_USR          | NUMBER(3,0)   | لا     | نعم       | لا     | مستخدم الفرع                                                |

---

## AssetAuditItemOtherDetail (**IAS_AUD_ITM_OTHR_DTL**)
| الاسم الجديد           | الاسم القديم     | النوع          | إجباري | يقبل فارغ | تلقائي | شرح الحقل                |
|-----------------------|-----------------|---------------|--------|-----------|--------|--------------------------|
| AuditNo               | AUD_NO          | NUMBER(30,0)  | لا     | نعم       | لا     | رقم التدقيق             |
| AuditType             | AUD_TYPE        | NUMBER(2,0)   | لا     | نعم       | لا     | نوع التدقيق             |
| DocType               | DOC_TYPE        | NUMBER(5,0)   | لا     | نعم       | لا     | نوع المستند             |
| JVType                | JV_TYPE         | NUMBER(10,0)  | لا     | نعم       | لا     | نوع القيد               |
| DocNo                 | DOC_NO          | NUMBER(15,0)  | لا     | نعم       | لا     | رقم المستند             |
| DocSerial             | DOC_SER         | NUMBER(38,0)  | لا     | نعم       | لا     | تسلسل المستند           |
| ItemCode              | I_CODE          | VARCHAR2(30)  | لا     | نعم       | لا     | كود الصنف/الأصل         |
| ItemQty               | I_QTY           | NUMBER        | لا     | نعم       | لا     | الكمية                  |
| FreeQty               | FREE_QTY        | NUMBER        | لا     | نعم       | لا     | الكمية المجانية         |
| ItemUnit              | ITM_UNT         | VARCHAR2(10)  | لا     | نعم       | لا     | وحدة الصنف              |
| PackSize              | P_SIZE          | NUMBER        | لا     | نعم       | لا     | حجم العبوة              |
| PackQty               | P_QTY           | NUMBER        | لا     | نعم       | لا     | كمية العبوة             |
| ItemPrice             | I_PRICE         | NUMBER        | لا     | نعم       | لا     | سعر الصنف               |
| StockCost             | STK_COST        | NUMBER        | لا     | نعم       | لا     | تكلفة المخزون           |
| FlowQty               | FLW_QTY         | NUMBER        | لا     | نعم       | لا     | كمية التدفق             |
| FlowFreeQty           | FLW_FREE_QTY    | NUMBER        | لا     | نعم       | لا     | كمية التدفق المجانية    |
| WarehouseCode         | W_CODE          | NUMBER(10,0)  | لا     | نعم       | لا     | كود المستودع            |
| CostCenterCode        | CC_CODE         | VARCHAR2(30)  | لا     | نعم       | لا     | كود مركز التكلفة        |
| ProjectNo             | PJ_NO           | VARCHAR2(15)  | لا     | نعم       | لا     | رقم المشروع             |
| ActivityNo            | ACTV_NO         | VARCHAR2(15)  | لا     | نعم       | لا     | رقم النشاط              |
| ExpireDate            | EXPIRE_DATE     | DATE          | لا     | نعم       | لا     | تاريخ انتهاء الصلاحية   |
| BatchNo               | BATCH_NO        | VARCHAR2(30)  | لا     | نعم       | لا     | رقم الدفعة              |
| DiscountAmount        | DIS_AMT         | NUMBER        | لا     | نعم       | لا     | مبلغ الخصم              |
| VATAmount             | VAT_AMT         | NUMBER        | لا     | نعم       | لا     | مبلغ الضريبة            |
| OtherAmount           | OTHR_AMT        | NUMBER        | لا     | نعم       | لا     | مبلغ آخر                |
| UseSerialNo           | USE_SERIALNO    | NUMBER(1,0)   | لا     | نعم       | لا     | استخدام الرقم التسلسلي  |
| ServiceItem           | SERVICE_ITEM    | NUMBER(1,0)   | لا     | نعم       | لا     | صنف خدمي                |
| RecordNo              | RCRD_NO         | NUMBER(10,0)  | لا     | نعم       | لا     | رقم السطر               |
| DocSequence           | DOC_SEQUENCE    | NUMBER(38,0)  | لا     | نعم       | لا     | تسلسل المستند           |
| ItemDescription       | ITEM_DESC       | VARCHAR2(250) | لا     | نعم       | لا     | وصف الصنف/الأصل         |
| Barcode               | BARCODE         | VARCHAR2(30)  | لا     | نعم       | لا     | باركود                   |
| FromQty               | F_QTY           | NUMBER        | لا     | نعم       | لا     | كمية من                  |
| ToQty                 | T_QTY           | NUMBER        | لا     | نعم       | لا     | كمية إلى                 |
| FromAmount            | F_AMT           | NUMBER        | لا     | نعم       | لا     | مبلغ من                  |
| ToAmount              | T_AMT           | NUMBER        | لا     | نعم       | لا     | مبلغ إلى                 |
| DiscountType          | DISC_TYPE       | NUMBER(2,0)   | لا     | نعم       | لا     | نوع الخصم                |
| QtyItemCode           | QT_I_CODE       | VARCHAR2(30)  | لا     | نعم       | لا     | كود الصنف للكمية         |
| DocTypeRef            | DOC_TYPE_REF    | NUMBER(5,0)   | لا     | نعم       | لا     | نوع المستند المرجعي      |
| DocJVTypeRef          | DOC_JV_TYPE_REF | NUMBER(10,0)  | لا     | نعم       | لا     | نوع القيد المرجعي        |
| DocNoRef              | DOC_NO_REF      | NUMBER(15,0)  | لا     | نعم       | لا     | رقم المستند المرجعي      |
| DocSerRef             | DOC_SER_REF     | NUMBER(38,0)  | لا     | نعم       | لا     | تسلسل المستند المرجعي    |
| DocSequenceRef        | DOC_SEQUENCE_REF| NUMBER(38,0)  | لا     | نعم       | لا     | تسلسل المستند المرجعي    |
| TerminalName          | TRMNL_NAME      | VARCHAR2(100) | لا     | نعم       | لا     | اسم الجهاز               |
| CompanyNo             | CMP_NO          | NUMBER(3,0)   | نعم    | لا        | لا     | رقم الشركة                |
| BranchNo              | BRN_NO          | NUMBER(6,0)   | نعم    | لا        | لا     | رقم الفرع                 |
| BranchYear            | BRN_YEAR        | NUMBER(4,0)   | لا     | نعم       | لا     | سنة الفرع                 |
| BranchUser            | BRN_USR         | NUMBER(3,0)   | لا     | نعم       | لا     | مستخدم الفرع              |
| UpdateCount           | UP_CNT          | NUMBER(10,0)  | لا     | نعم       | لا     | عدد مرات التحديث          |

---
