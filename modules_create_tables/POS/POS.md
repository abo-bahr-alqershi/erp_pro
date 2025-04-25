# 12. نقاط البيع (POS)
> **جداول نقاط البيع الرئيسية بالكامل دون أي نقص**

---

## PosTerminal (**STN_COUNTERS**)
| الاسم الجديد       | الاسم القديم    | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                  |
|-------------------|----------------|--------------|--------|-----------|--------|----------------------------|
| TerminalNo        | CUNTR_NO       | NUMBER(10,0) | لا     | نعم       | لا     | رقم نقطة البيع/الجهاز      |
| TerminalArabicName| CUNTR_L_NM     | VARCHAR2(60) | لا     | نعم       | لا     | اسم عربي لجهاز نقطة البيع  |
| TerminalEnglishName| CUNTR_F_NM    | VARCHAR2(60) | لا     | نعم       | لا     | اسم انجليزي للجهاز        |
| FuelTypeNo        | FUEL_TYP_NO    | NUMBER(5,0)  | لا     | نعم       | لا     | رقم نوع الوقود (إن وجد)   |
| WarehouseCode     | W_CODE         | NUMBER(10,0) | لا     | نعم       | لا     | كود المستودع               |
| PrimaryRead       | PRIMARY_READ   | NUMBER       | لا     | نعم       | لا     | قراءة أولية (عداد/وقود)   |
| AddedUserId       | AD_U_ID        | NUMBER(5,0)  | نعم    | لا        | لا     | المستخدم الذي أضاف         |
| AddedDate         | AD_DATE        | DATE         | نعم    | لا        | لا     | تاريخ الإضافة              |
| UpdatedUserId     | UP_U_ID        | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عدل          |
| UpdatedDate       | UP_DATE        | DATE         | لا     | نعم       | لا     | تاريخ آخر تعديل            |
| BranchNo          | BRN_NO         | NUMBER(6,0)  | نعم    | لا        | لا     | رقم الفرع                   |
| ReportPriority    | PR_REP         | NUMBER(10,0) | لا     | نعم       | لا     | أولوية التقرير             |
| UpdateCount       | UP_CNT         | NUMBER(10,0) | لا     | نعم       | لا     | عدد مرات التحديث           |
| Inactive          | INACTIVE       | NUMBER(1,0)  | لا     | نعم       | لا     | معطل                        |
| InactiveDate      | INACTIVE_DATE  | DATE         | لا     | نعم       | لا     | تاريخ التعطيل               |
| InactiveReason    | INACTIVE_RES   | VARCHAR2(250)| لا     | نعم       | لا     | سبب التعطيل                 |
| InactiveUserId    | INACTIVE_U_ID  | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عطل           |
| TerminalCode      | CUNTR_CODE     | VARCHAR2(60) | لا     | نعم       | لا     | كود نقطة البيع/الجهاز       |
| CostCenterCode    | CC_CODE        | VARCHAR2(30) | لا     | نعم       | لا     | مركز التكلفة                |
| ProjectNo         | PJ_NO          | VARCHAR2(15) | لا     | نعم       | لا     | رقم المشروع                 |
| ActivityNo        | ACTV_NO        | VARCHAR2(15) | لا     | نعم       | لا     | رقم النشاط                  |
| AddedTerminal     | AD_TRMNL_NM    | VARCHAR2(50) | لا     | نعم       | لا     | اسم الجهاز عند الإضافة      |
| UpdatedTerminal   | UP_TRMNL_NM    | VARCHAR2(50) | لا     | نعم       | لا     | اسم الجهاز عند التعديل      |

---

## PosReceiptMaster (**STN_BILL_MST**)
| الاسم الجديد        | الاسم القديم    | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                       |
|--------------------|----------------|--------------|--------|-----------|--------|----------------------------------|
| ReceiptNo          | DOC_NO         | NUMBER(15,0) | لا     | نعم       | لا     | رقم الفاتورة                    |
| ReceiptSerial      | DOC_SER        | NUMBER(38,0) | لا     | نعم       | لا     | تسلسل الفاتورة                  |
| CashNo             | CASH_NO        | NUMBER(10,0) | لا     | نعم       | لا     | رقم النقدية                     |
| CurrencyCode       | A_CY           | VARCHAR2(7)  | لا     | نعم       | لا     | رمز العملة                      |
| AccountCode        | A_CODE         | VARCHAR2(30) | لا     | نعم       | لا     | كود الحساب                      |
| IncomeAccountCode  | INC_A_CODE     | VARCHAR2(30) | لا     | نعم       | لا     | كود حساب الإيراد                |
| CurrencyRate       | CUR_RATE       | NUMBER       | لا     | نعم       | لا     | سعر الصرف                       |
| CollectorNo        | COL_NO         | NUMBER(10,0) | لا     | نعم       | لا     | رقم المحصل                      |
| EmployeeNo         | EMP_NO         | NUMBER(10,0) | لا     | نعم       | لا     | رقم الموظف                      |
| ReferenceNo        | REF_NO         | VARCHAR2(15) | لا     | نعم       | لا     | رقم مرجعي                       |
| ReceiptDesc        | DOC_DSC        | VARCHAR2(500)| لا     | نعم       | لا     | وصف الفاتورة                    |
| Field1 - Field10   | FIELD1-10      | VARCHAR2(250)| لا     | نعم       | لا     | حقول إضافية مرنة                |
| CashAmount         | CSH_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ النقد                      |
| CreditAmount       | CR_AMT         | NUMBER       | لا     | نعم       | لا     | مبلغ الائتمان                   |
| CouponAmount       | CPN_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ الكوبونات                  |
| BillAmount         | BILL_AMT       | NUMBER       | لا     | نعم       | لا     | إجمالي الفاتورة                 |
| DecreaseAmount     | DEC_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ النقص                      |
| IncreaseAmount     | INC_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ الزيادة                    |
| WarehouseCode      | W_CODE         | NUMBER(10,0) | لا     | نعم       | لا     | رقم المستودع                    |
| StandBy            | STAND_BY       | NUMBER(1,0)  | لا     | نعم       | لا     | حالة الانتظار                   |
| DiscountAmount     | DISC_AMT       | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم                      |
| VATAmount          | VAT_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ الضريبة                    |
| TaxCalcTypeNo      | CLC_TYP_NO_TAX | NUMBER(5,0)  | لا     | نعم       | لا     | نوع احتساب الضريبة              |
| WarehouseTransferAmount | WHTRNS_AMT | NUMBER       | لا     | نعم       | لا     | مبلغ تحويل المخزون              |
| AddedUserId        | AD_U_ID        | NUMBER(5,0)  | نعم    | لا        | لا     | المستخدم الذي أضاف               |
| AddedDate          | AD_DATE        | DATE         | نعم    | لا        | لا     | تاريخ الإضافة                    |
| UpdatedUserId      | UP_U_ID        | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عدل                |
| UpdatedDate        | UP_DATE        | DATE         | لا     | نعم       | لا     | تاريخ آخر تعديل                  |
| ReportPriority     | PR_REP         | NUMBER(10,0) | لا     | نعم       | لا     | أولوية التقرير                   |
| UpdateCount        | UP_CNT         | NUMBER(10,0) | لا     | نعم       | لا     | عدد مرات التحديث                 |
| CompanyNo          | CMP_NO         | NUMBER(3,0)  | نعم    | لا        | لا     | رقم الشركة                        |
| BranchNo           | BRN_NO         | NUMBER(6,0)  | نعم    | لا        | لا     | رقم الفرع                         |
| BranchYear         | BRN_YEAR       | NUMBER(4,0)  | لا     | نعم       | لا     | سنة الفرع                         |
| BranchUser         | BRN_USR        | NUMBER(3,0)  | لا     | نعم       | لا     | مستخدم الفرع                      |
| ReceiptDate        | DOC_DATE       | DATE         | لا     | نعم       | لا     | تاريخ الفاتورة                    |
| AuditRef           | AUDIT_REF      | NUMBER(1,0)  | لا     | نعم       | لا     | مرجع تدقيق                        |
| AuditRefDesc       | AUDIT_REF_DESC | VARCHAR2(500)| لا     | نعم       | لا     | وصف مرجع التدقيق                  |
| AuditRefUserId     | AUDIT_REF_U_ID | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم المسؤول عن التدقيق       |
| AuditRefDate       | AUDIT_REF_DATE | DATE         | لا     | نعم       | لا     | تاريخ التدقيق                     |
| SaleInvoiceType    | SI_TYPE        | NUMBER(5,0)  | لا     | نعم       | لا     | نوع فاتورة البيع                   |
| IncomeAccountCodeDetail | INC_AC_CODE_DTL | VARCHAR2(30)| لا | نعم       | لا     | كود تفصيلي لحساب الإيراد           |
| IncomeAccountDetailType  | INC_AC_DTL_TYP | NUMBER(2,0) | لا | نعم       | لا     | نوع الحساب التفصيلي للإيراد         |
| DocPosted          | DOC_PST        | NUMBER(1,0)  | لا     | نعم       | لا     | تم الترحيل                         |
| ProductNo          | PRD_NO         | NUMBER(5,0)  | لا     | نعم       | لا     | رقم المنتج                          |
| CostCenterCode     | CC_CODE        | VARCHAR2(30) | لا     | نعم       | لا     | مركز التكلفة                        |
| ProjectNo          | PJ_NO          | VARCHAR2(15) | لا     | نعم       | لا     | رقم المشروع                         |
| ActivityNo         | ACTV_NO        | VARCHAR2(15) | لا     | نعم       | لا     | رقم النشاط                          |
| RepCode            | REP_CODE       | VARCHAR2(15) | لا     | نعم       | لا     | كود المندوب                          |
| AddedTerminal      | AD_TRMNL_NM    | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند الإضافة                   |
| UpdatedTerminal    | UP_TRMNL_NM    | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند التعديل                   |
| OutAmount          | OUT_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ الصادر                          |

---

## PosReceiptDetail (**STN_BILL_DTL**)
| الاسم الجديد        | الاسم القديم    | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                |
|--------------------|----------------|--------------|--------|-----------|--------|--------------------------|
| ReceiptNo          | DOC_NO         | NUMBER(15,0) | لا     | نعم       | لا     | رقم الفاتورة            |
| ReceiptSerial      | DOC_SER        | NUMBER(38,0) | لا     | نعم       | لا     | تسلسل الفاتورة          |
| RecordNo           | RCRD_NO        | NUMBER(10,0) | لا     | نعم       | لا     | رقم السطر/التفصيل       |
| TerminalNo         | CUNTR_NO       | NUMBER(10,0) | لا     | نعم       | لا     | رقم نقطة البيع/الجهاز    |
| TerminalReadPrev   | CUNTR_READ_PREV| NUMBER       | لا     | نعم       | لا     | قراءة سابقة (عداد/وقود) |
| TerminalReadCurrent| CUNTR_READ_CRNT| NUMBER       | لا     | نعم       | لا     | القراءة الحالية         |
| ItemQty            | I_QTY          | NUMBER       | لا     | نعم       | لا     | الكمية                  |
| ItemPrice          | I_PRICE        | NUMBER       | لا     | نعم       | لا     | سعر الوحدة              |
| LastReadDate       | LAST_READ_DATE | DATE         | لا     | نعم       | لا     | تاريخ آخر قراءة         |
| TerminalDesc       | CUNTR_DSC      | VARCHAR2(250)| لا     | نعم       | لا     | وصف الجهاز              |
| BatchNo            | BATCH_NO       | VARCHAR2(30) | لا     | نعم       | لا     | رقم الدفعة              |
| DiscountPercent    | DIS_PER        | NUMBER(20,17)| لا     | نعم       | لا     | نسبة الخصم              |
| DiscountAmount     | DIS_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم              |
| DiscountAmountMaster| DISC_AMT_MST  | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم الرئيسي      |
| CurrentReadDate    | CRNT_READ_DATE | DATE         | لا     | نعم       | لا     | تاريخ القراءة الحالية   |
| SaleInvoiceType    | SI_TYPE        | NUMBER(5,0)  | لا     | نعم       | لا     | نوع فاتورة البيع        |
| ItemCode           | I_CODE         | VARCHAR2(30) | لا     | نعم       | لا     | كود الصنف               |
| WarehouseCode      | W_CODE         | NUMBER(10,0) | لا     | نعم       | لا     | رقم المستودع            |
| FuelTypeNo         | FUEL_TYP_NO    | NUMBER(5,0)  | لا     | نعم       | لا     | رقم نوع الوقود          |
| EmployeeNo         | EMP_NO         | NUMBER(10,0) | لا     | نعم       | لا     | رقم الموظف              |
| CostCenterCode     | CC_CODE        | VARCHAR2(30) | لا     | نعم       | لا     | مركز التكلفة            |
| ProjectNo          | PJ_NO          | VARCHAR2(15) | لا     | نعم       | لا     | رقم المشروع             |
| ActivityNo         | ACTV_NO        | VARCHAR2(15) | لا     | نعم       | لا     | رقم النشاط              |
| VATAmount          | VAT_AMT        | NUMBER(24,9) | لا     | نعم       | لا     | مبلغ الضريبة            |
| VATPercent         | VAT_PER        | NUMBER(7,4)  | لا     | نعم       | لا     | نسبة الضريبة            |
| AddedUserId        | AD_U_ID        | NUMBER(5,0)  | نعم    | لا        | لا     | المستخدم الذي أضاف      |
| AddedDate          | AD_DATE        | DATE         | نعم    | لا        | لا     | تاريخ الإضافة           |
| UpdatedUserId      | UP_U_ID        | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عدل       |
| UpdatedDate        | UP_DATE        | DATE         | لا     | نعم       | لا     | تاريخ آخر تعديل         |
| UpdateCount        | UP_CNT         | NUMBER(10,0) | لا     | نعم       | لا     | عدد مرات التحديث        |
| CompanyNo          | CMP_NO         | NUMBER(3,0)  | نعم    | لا        | لا     | رقم الشركة              |
| BranchNo           | BRN_NO         | NUMBER(6,0)  | نعم    | لا        | لا     | رقم الفرع               |
| BranchYear         | BRN_YEAR       | NUMBER(4,0)  | لا     | نعم       | لا     | سنة الفرع               |
| BranchUser         | BRN_USR        | NUMBER(3,0)  | لا     | نعم       | لا     | مستخدم الفرع            |

---

## PosCoupon (**STN_BILL_COUPON**)
| الاسم الجديد        | الاسم القديم    | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                |
|--------------------|----------------|--------------|--------|-----------|--------|--------------------------|
| ReceiptNo          | DOC_NO         | NUMBER(15,0) | لا     | نعم       | لا     | رقم الفاتورة            |
| ReceiptSerial      | DOC_SER        | NUMBER(38,0) | لا     | نعم       | لا     | تسلسل الفاتورة          |
| CouponNo           | CPN_NO         | NUMBER(20,0) | لا     | نعم       | لا     | رقم الكوبون             |
| FuelTypeNo         | FUEL_TYP_NO    | NUMBER(5,0)  | لا     | نعم       | لا     | رقم نوع الوقود          |
| CustomerCode       | C_CODE         | VARCHAR2(15) | لا     | نعم       | لا     | كود العميل              |
| ItemQty            | I_QTY          | NUMBER       | لا     | نعم       | لا     | الكمية                  |
| ItemPrice          | I_PRICE        | NUMBER       | لا     | نعم       | لا     | سعر الوحدة              |
| IssueDate          | ISSUE_DATE     | DATE         | لا     | نعم       | لا     | تاريخ الإصدار           |
| ExpireDate         | EXPIRE_DATE    | DATE         | لا     | نعم       | لا     | تاريخ الانتهاء          |
| CouponDesc         | CPN_DSC        | VARCHAR2(250)| لا     | نعم       | لا     | وصف الكوبون             |
| BatchNo            | BATCH_NO       | VARCHAR2(30) | لا     | نعم       | لا     | رقم الدفعة              |
| DiscountPercent    | DIS_PER        | NUMBER(20,17)| لا     | نعم       | لا     | نسبة الخصم              |
| DiscountAmount     | DIS_AMT        | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم              |
| DiscountAmountMaster| DISC_AMT_MST  | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم الرئيسي      |
| EmployeeNo         | EMP_NO         | NUMBER(10,0) | لا     | نعم       | لا     | رقم الموظف              |
| ItemCode           | I_CODE         | VARCHAR2(30) | لا     | نعم       | لا     | كود الصنف               |
| WarehouseCode      | W_CODE         | NUMBER(10,0) | لا     | نعم       | لا     | رقم المستودع            |
| TerminalNo         | CUNTR_NO       | NUMBER(10,0) | لا     | نعم       | لا     | رقم نقطة البيع/الجهاز    |
| RecordNo           | RCRD_NO        | NUMBER(10,0) | لا     | نعم       | لا     | رقم السطر/التفصيل       |
| CostCenterCode     | CC_CODE        | VARCHAR2(30) | لا     | نعم       | لا     | مركز التكلفة            |
| ProjectNo          | PJ_NO          | VARCHAR2(15) | لا     | نعم       | لا     | رقم المشروع             |
| ActivityNo         | ACTV_NO        | VARCHAR2(15) | لا     | نعم       | لا     | رقم النشاط              |
| VATAmount          | VAT_AMT        | NUMBER(24,9) | لا     | نعم       | لا     | مبلغ الضريبة            |
| VATPercent         | VAT_PER        | NUMBER(7,4)  | لا     | نعم       | لا     | نسبة الضريبة            |
| UpdatedUserId      | UP_U_ID        | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عدل       |
| UpdatedDate        | UP_DATE        | DATE         | لا     | نعم       | لا     | تاريخ آخر تعديل         |
| ReportPriority     | PR_REP         | NUMBER(10,0) | لا     | نعم       | لا     | أولوية التقرير          |
| UpdateCount        | UP_CNT         | NUMBER(10,0) | لا     | نعم       | لا     | عدد مرات التحديث        |
| CompanyNo          | CMP_NO         | NUMBER(3,0)  | نعم    | لا        | لا     | رقم الشركة              |
| BranchNo           | BRN_NO         | NUMBER(6,0)  | نعم    | لا        | لا     | رقم الفرع               |
| BranchYear         | BRN_YEAR       | NUMBER(4,0)  | لا     | نعم       | لا     | سنة الفرع               |
| BranchUser         | BRN_USR        | NUMBER(3,0)  | لا     | نعم       | لا     | مستخدم الفرع            |
| AddedTerminal      | AD_TRMNL_NM    | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند الإضافة      |
| UpdatedTerminal    | UP_TRMNL_NM    | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند التعديل      |

---

## PosCreditBill (**STN_BILL_CRDT**)
| الاسم الجديد         | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                |
|---------------------|------------------|-----------------|--------|-----------|--------|--------------------------|
| ReceiptNo           | DOC_NO           | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة            |
| ReceiptSerial       | DOC_SER          | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل الفاتورة          |
| BillNo              | BILL_NO          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة الائتمانية |
| FuelTypeNo          | FUEL_TYP_NO      | NUMBER(5,0)     | لا     | نعم       | لا     | رقم نوع الوقود          |
| CustomerCode        | C_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل              |
| ItemQty             | I_QTY            | NUMBER          | لا     | نعم       | لا     | الكمية                  |
| ItemPrice           | I_PRICE          | NUMBER          | لا     | نعم       | لا     | سعر الوحدة              |
| IssueDate           | ISSUE_DATE       | DATE            | لا     | نعم       | لا     | تاريخ الإصدار           |
| ExpireDate          | EXPIRE_DATE      | DATE            | لا     | نعم       | لا     | تاريخ الانتهاء          |
| BillDesc            | BILL_DSC         | VARCHAR2(250)   | لا     | نعم       | لا     | وصف الفاتورة            |
| EmployeeNo          | EMP_NO           | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف              |
| CostCenterCode      | CC_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة            |
| ProjectNo           | PJ_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع             |
| ActivityNo          | ACTV_NO          | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط              |
| ItemCode            | I_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف               |
| WarehouseCode       | W_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المستودع            |
| TerminalNo          | CUNTR_NO         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم نقطة البيع/الجهاز    |
| RecordNo            | RCRD_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر/التفصيل       |
| BatchNo             | BATCH_NO         | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الدفعة              |
| DiscountPercent     | DIS_PER          | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة الخصم              |
| DiscountAmount      | DIS_AMT          | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم              |
| DiscountAmountMaster| DISC_AMT_MST     | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي      |
| VATAmount           | VAT_AMT          | NUMBER(24,9)    | لا     | نعم       | لا     | مبلغ الضريبة            |
| VATPercent          | VAT_PER          | NUMBER(7,4)     | لا     | نعم       | لا     | نسبة الضريبة            |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف      |
| AddedDate           | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة           |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل       |
| UpdatedDate         | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل         |
| UpdateCount         | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث        |
| CompanyNo           | CMP_NO           | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة              |
| BranchNo            | BRN_NO           | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع               |
| BranchYear          | BRN_YEAR         | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع               |
| BranchUser          | BRN_USR          | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع            |
| AddedTerminal       | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة      |
| UpdatedTerminal     | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل      |

---

## PosCreditBillMaster (**STN_CRDT_BILL_MST**)
| الاسم الجديد        | الاسم القديم      | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                       |
|--------------------|------------------|--------------|--------|-----------|--------|----------------------------------|
| ReceiptSerial      | DOC_SER          | NUMBER(38,0) | نعم    | لا        | لا     | تسلسل الفاتورة                  |
| ReceiptDate        | DOC_DATE         | DATE         | نعم    | لا        | لا     | تاريخ الفاتورة                   |
| FuelTypeNo         | FUEL_TYP_NO      | NUMBER(5,0)  | لا     | نعم       | لا     | رقم نوع الوقود                  |
| ReceiptNo          | DOC_NO           | NUMBER(5,0)  | لا     | نعم       | لا     | رقم الفاتورة                    |
| FirstBillNo        | F_BILL_NO        | NUMBER(15,0) | لا     | نعم       | لا     | رقم أول فاتورة في المجموعة      |
| ToBillNo           | T_BILL_NO        | NUMBER(15,0) | لا     | نعم       | لا     | رقم آخر فاتورة في المجموعة      |
| ReferenceNo        | REF_NO           | VARCHAR2(15) | لا     | نعم       | لا     | رقم مرجعي                       |
| ReceiptDesc        | DOC_DSC          | VARCHAR2(500)| لا     | نعم       | لا     | وصف الفاتورة                    |
| CustomerCode       | C_CODE           | VARCHAR2(15) | لا     | نعم       | لا     | كود العميل                      |
| IssueDate          | ISSUE_DATE       | DATE         | لا     | نعم       | لا     | تاريخ الإصدار                   |
| ExpireDate         | EXPIRE_DATE      | DATE         | لا     | نعم       | لا     | تاريخ الانتهاء                   |
| TargetFuelTypeNo   | T_FUEL_TYP_NO    | NUMBER(6,0)  | لا     | نعم       | لا     | رقم نوع الوقود المستهدف         |
| MoveDocPay         | MOVE_DOC_PY      | NUMBER(1,0)  | لا     | نعم       | لا     | حالة الدفع للنقل                |
| AddedUserId        | AD_U_ID          | NUMBER(5,0)  | نعم    | لا        | لا     | المستخدم الذي أضاف              |
| AddedDate          | AD_DATE          | DATE         | نعم    | لا        | لا     | تاريخ الإضافة                   |
| UpdatedUserId      | UP_U_ID          | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عدل               |
| UpdatedDate        | UP_DATE          | DATE         | لا     | نعم       | لا     | تاريخ آخر تعديل                 |
| CompanyNo          | CMP_NO           | NUMBER(3,0)  | نعم    | لا        | لا     | رقم الشركة                      |
| BranchNo           | BRN_NO           | NUMBER(6,0)  | نعم    | لا        | لا     | رقم الفرع                       |
| BranchYear         | BRN_YEAR         | NUMBER(4,0)  | لا     | نعم       | لا     | سنة الفرع                       |
| BranchUser         | BRN_USR          | NUMBER(3,0)  | لا     | نعم       | لا     | مستخدم الفرع                    |
| ReportPriority     | PR_REP           | NUMBER(10,0) | لا     | نعم       | لا     | أولوية التقرير                  |
| UpdateCount        | UP_CNT           | NUMBER(10,0) | لا     | نعم       | لا     | عدد مرات التحديث                |
| AddedTerminal      | AD_TRMNL_NM      | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند الإضافة              |
| UpdatedTerminal    | UP_TRMNL_NM      | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند التعديل              |

---

## PosCreditBillDetail (**STN_CRDT_BILL_DTL**)
| الاسم الجديد         | الاسم القديم      | النوع         | إجباري | يقبل فارغ | تلقائي | شرح الحقل                       |
|---------------------|------------------|--------------|--------|-----------|--------|----------------------------------|
| BillNo              | BILL_NO          | NUMBER(15,0) | نعم    | لا        | لا     | رقم الفاتورة الائتمانية         |
| ReceiptSerial       | DOC_SER          | NUMBER(38,0) | نعم    | لا        | لا     | تسلسل الفاتورة                  |
| ReceiptNo           | DOC_NO           | NUMBER(15,0) | لا     | نعم       | لا     | رقم الفاتورة                    |
| ProcessedFlag       | PRCSSD_FLG       | NUMBER(1,0)  | لا     | نعم       | لا     | علم تنفيذ السطر                 |
| Inactive            | INACTIVE         | NUMBER(1,0)  | لا     | نعم       | لا     | معطل                             |
| InactiveUserId      | INACTIVE_U_ID    | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عطل                |
| InactiveDate        | INACTIVE_DATE    | DATE         | لا     | نعم       | لا     | تاريخ التعطيل                    |
| InactiveReason      | INACTIVE_RES     | VARCHAR2(250)| لا     | نعم       | لا     | سبب التعطيل                      |
| MoveBillPay         | MOVE_BILL_PY     | NUMBER(1,0)  | لا     | نعم       | لا     | حالة دفع الفاتورة               |
| ReceiptNoPay        | DOC_NO_PY        | NUMBER(15,0) | لا     | نعم       | لا     | رقم فاتورة الدفع                |
| ReceiptSerialPay    | DOC_SER_PY       | NUMBER(38,0) | لا     | نعم       | لا     | تسلسل فاتورة الدفع              |
| PeriodYear          | P_YEAR           | NUMBER(1,0)  | لا     | نعم       | لا     | سنة الفترة                      |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)  | نعم    | لا        | لا     | المستخدم الذي أضاف              |
| AddedDate           | AD_DATE          | DATE         | نعم    | لا        | لا     | تاريخ الإضافة                   |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)  | لا     | نعم       | لا     | المستخدم الذي عدل               |
| UpdatedDate         | UP_DATE          | DATE         | لا     | نعم       | لا     | تاريخ آخر تعديل                 |
| UpdateCount         | UP_CNT           | NUMBER(10,0) | لا     | نعم       | لا     | عدد مرات التحديث                |
| CompanyNo           | CMP_NO           | NUMBER(3,0)  | نعم    | لا        | لا     | رقم الشركة                      |
| BranchNo            | BRN_NO           | NUMBER(6,0)  | نعم    | لا        | لا     | رقم الفرع                       |
| BranchYear          | BRN_YEAR         | NUMBER(4,0)  | لا     | نعم       | لا     | سنة الفرع                       |
| BranchUser          | BRN_USR          | NUMBER(3,0)  | لا     | نعم       | لا     | مستخدم الفرع                    |
| CustomerCode        | C_CODE           | VARCHAR2(15) | لا     | نعم       | لا     | كود العميل                      |
| FuelTypeNo          | FUEL_TYP_NO      | NUMBER(5,0)  | لا     | نعم       | لا     | رقم نوع الوقود                  |
| ItemCode            | I_CODE           | VARCHAR2(30) | لا     | نعم       | لا     | كود الصنف                       |
| WarehouseCode       | W_CODE           | NUMBER(10,0) | لا     | نعم       | لا     | رقم المستودع                    |
| TerminalNo          | CUNTR_NO         | NUMBER(10,0) | لا     | نعم       | لا     | رقم نقطة البيع/الجهاز            |
| RecordNo            | RCRD_NO          | NUMBER(10,0) | لا     | نعم       | لا     | رقم السطر/التفصيل               |
| BatchNo             | BATCH_NO         | VARCHAR2(30) | لا     | نعم       | لا     | رقم الدفعة                      |
| DiscountPercent     | DIS_PER          | NUMBER(20,17)| لا     | نعم       | لا     | نسبة الخصم                      |
| DiscountAmount      | DIS_AMT          | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم                      |
| DiscountAmountMaster| DISC_AMT_MST     | NUMBER       | لا     | نعم       | لا     | مبلغ الخصم الرئيسي              |
| VATAmount           | VAT_AMT          | NUMBER(24,9) | لا     | نعم       | لا     | مبلغ الضريبة                    |
| VATPercent          | VAT_PER          | NUMBER(7,4)  | لا     | نعم       | لا     | نسبة الضريبة                    |
| AddedTerminal       | AD_TRMNL_NM      | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند الإضافة              |
| UpdatedTerminal     | UP_TRMNL_NM      | VARCHAR2(50) | لا     | نعم       | لا     | الجهاز عند التعديل              |

---
