# 5. النقدية والبنوك والصناديق (Cash, Banks, Safes)
> **جميع الحقول والشرح للجداول: النقدية بالصندوق، تفاصيل النقدية بالصندوق، النقدية في البنوك، تفاصيل النقدية بالبنوك، النقدية بالبنوك حسب الفروع**

---

## CashInHand (**CASH_IN_HAND**)
| الاسم الجديد                 | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| CashNo                      | CASH_NO               | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الصندوق النقدي |
| CashName                    | CASH_NAME             | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الصندوق (عربي) |
| CashEnglishName             | CASH_E_NAME           | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الصندوق (إنجليزي) |
| AccountCode                 | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي |
| CashSerial                  | CASH_SR               | NUMBER(10,0)    | نعم    | لا        | لا     | الرقم التسلسلي للصندوق |
| CashType                    | CASH_TYPE             | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الصندوق (رئيسي/فرعي/...) |
| UseCashIncome               | USE_CASH_INCOME       | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الصندوق للإيرادات |
| POSSystem                   | POS_SYS               | NUMBER(1,0)     | لا     | نعم       | لا     | مرتبط بنظام نقاط البيع (1=نعم) |
| BranchNo                    | CONN_BRN_NO           | NUMBER(6,0)     | لا     | نعم       | لا     | ربط بفرع معين |
| ConfirmLastDate             | CONF_LAST_DATE        | DATE            | لا     | نعم       | لا     | تاريخ آخر تأكيد للصندوق |
| Inactive                    | INACTIVE              | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate                | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason              | INACTIVE_RES          | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| AddedUserId                 | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                   | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId               | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                 | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                 | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority              | PR_REP                | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal               | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal             | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReceiptSerialType           | RCPT_SRL_TYP          | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تسلسل الإيصال |
| PaymentTypeNoDefault        | PYMNT_TYP_NO_DFLT     | NUMBER(2,0)     | لا     | نعم       | لا     | نوع الدفع الافتراضي |
| ReceivedTypeNoDefault       | RCVD_TYP_NO_DFLT      | NUMBER(2,0)     | لا     | نعم       | لا     | نوع المقبوض الافتراضي |
| MediatorFlag                | MEDIATOR              | NUMBER(1,0)     | لا     | نعم       | لا     | صندوق وسيط (1=نعم) |
| GroupNo                     | GROUP_NO              | NUMBER(10,0)    | لا     | نعم       | لا     | رقم مجموعة الصناديق |

---

## CashInHandDetail (**IAS_CASH_IN_HAND_DTL**)
| الاسم الجديد                 | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| CashNo                      | CASH_NO               | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الصندوق النقدي |
| AccountCode                 | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي |
| CurrencyCode                | A_CY                  | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| OpenBalanceLocal            | OPEN_BAL_L            | NUMBER          | لا     | نعم       | لا     | رصيد افتتاحي بالعملة المحلية |
| OpenBalanceForeign          | OPEN_BAL_F            | NUMBER          | لا     | نعم       | لا     | رصيد افتتاحي بالعملة الأجنبية |
| CurrentBalanceLocal         | CURR_BAL_L            | NUMBER          | لا     | نعم       | لا     | الرصيد الحالي بالعملة المحلية |
| CurrentBalanceForeign       | CURR_BAL_F            | NUMBER          | لا     | نعم       | لا     | الرصيد الحالي بالعملة الأجنبية |
| Inactive                    | INACTIVE              | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| MinLimitAmount              | MIN_LMT_AMT           | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للرصد |
| MaxLimitAmount              | MAX_LMT_AMT           | NUMBER          | لا     | نعم       | لا     | الحد الأعلى للرصد |
| MaxLimitTransactionAmount   | MAX_LMT_TRNS_AMT      | NUMBER          | لا     | نعم       | لا     | الحد الأعلى للمعاملة |
| MinLimitTransactionAmount   | MIN_LMT_TRNS_AMT      | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للمعاملة |
| PassLimit                   | PASS_LMT              | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتجاوز الحد (1=نعم) |
| InactiveDate                | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| AddedUserId                 | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                   | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId               | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                 | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                 | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |

---

## CashAtBank (**CASH_AT_BANK**)
| الاسم الجديد                 | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| BankNo                      | BANK_NO               | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| AccountCode                 | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب البنكي |
| BankName                    | BANK_NAME             | VARCHAR2(100)   | نعم    | لا        | لا     | اسم البنك (عربي) |
| BankEnglishName             | BANK_E_NAME           | VARCHAR2(100)   | لا     | نعم       | لا     | اسم البنك (إنجليزي) |
| BankSerial                  | BANK_SR               | NUMBER(10,0)    | نعم    | لا        | لا     | الرقم التسلسلي للبنك |
| GroupNo                     | GROUP_NO              | NUMBER(10,0)    | لا     | نعم       | لا     | رقم مجموعة البنوك |
| BankAccount                 | BANK_ACC              | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الحساب البنكي |
| BranchNo                    | CONN_BRN_NO           | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع |
| BankTel                     | B_TEL                 | VARCHAR2(30)    | لا     | نعم       | لا     | هاتف البنك |
| BankFax                     | B_FAX                 | VARCHAR2(30)    | لا     | نعم       | لا     | فاكس البنك |
| BankBox                     | B_BOX                 | VARCHAR2(10)    | لا     | نعم       | لا     | صندوق البريد للبنك |
| BankAddress                 | B_ADDRESS             | VARCHAR2(60)    | لا     | نعم       | لا     | عنوان البنك |
| BankEmail                   | B_E_MAIL              | VARCHAR2(50)    | لا     | نعم       | لا     | بريد إلكتروني للبنك |
| BankWebsite                 | B_WEB_SITE            | VARCHAR2(50)    | لا     | نعم       | لا     | موقع البنك |
| CountryNo                   | CNTRY_NO              | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة |
| CityNo                      | CITY_NO               | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة |
| MediatorFlag                | MEDIATOR              | NUMBER(1,0)     | لا     | نعم       | لا     | بنك وسيط (1=نعم) |
| Inactive                    | INACTIVE              | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate                | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason              | INACTIVE_RES          | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| BankImage                   | BANK_IMG              | VARCHAR2(30)    | لا     | نعم       | لا     | صورة البنك |
| ReceiveLetter               | REC_LETTER            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم خطاب استلام |
| PaymentLetter               | PAY_LETTER            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم خطاب دفع |
| ChqPayIntermAccount         | CHQ_PAY_INTRM_AC      | VARCHAR2(30)    | لا     | نعم       | لا     | حساب وسيط لشيكات الدفع |
| RepSample                   | REP_SMPLE             | NUMBER(2,0)     | لا     | نعم       | لا     | عينة ممثل/وكيل |
| ConfirmLastDate             | CONF_LAST_DATE        | DATE            | لا     | نعم       | لا     | تاريخ آخر تأكيد |
| OutCheckAutoSerial          | OCHK_AUTO_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل شيك الصادر التلقائي |
| BankCode                    | BANK_CODE             | NUMBER(30,0)    | لا     | نعم       | لا     | كود البنك الخارجي |
| AddedUserId                 | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                   | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId               | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                 | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                 | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority              | PR_REP                | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal               | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal             | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReceiptSerialType           | RCPT_SRL_TYP          | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تسلسل الإيصال |
| PaymentTypeNoDefault        | PYMNT_TYP_NO_DFLT     | NUMBER(2,0)     | لا     | نعم       | لا     | نوع الدفع الافتراضي |
| ReceivedTypeNoDefault       | RCVD_TYP_NO_DFLT      | NUMBER(2,0)     | لا     | نعم       | لا     | نوع المقبوض الافتراضي |
| BankNetworkCode             | BNK_NTWRK_CODE        | VARCHAR2(200)   | لا     | نعم       | لا     | كود شبكة البنك |

---

## CashAtBankDetail (**IAS_CASH_AT_BANK_DTL**)
| الاسم الجديد                 | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| BankNo                      | BANK_NO               | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| AccountCode                 | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب البنكي |
| CurrencyCode                | A_CY                  | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| OpenBalanceLocal            | OPEN_BAL_L            | NUMBER          | لا     | نعم       | لا     | رصيد افتتاحي بالعملة المحلية |
| OpenBalanceForeign          | OPEN_BAL_F            | NUMBER          | لا     | نعم       | لا     | رصيد افتتاحي بالعملة الأجنبية |
| CurrentBalanceLocal         | CURR_BAL_L            | NUMBER          | لا     | نعم       | لا     | الرصيد الحالي بالعملة المحلية |
| CurrentBalanceForeign       | CURR_BAL_F            | NUMBER          | لا     | نعم       | لا     | الرصيد الحالي بالعملة الأجنبية |
| Inactive                    | INACTIVE              | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate                | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| MinLimitAmount              | MIN_LMT_AMT           | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للرصد |
| MaxLimitAmount              | MAX_LMT_AMT           | NUMBER          | لا     | نعم       | لا     | الحد الأعلى للرصد |
| MaxLimitTransactionAmount   | MAX_LMT_TRNS_AMT      | NUMBER          | لا     | نعم       | لا     | الحد الأعلى للمعاملة |
| MinLimitTransactionAmount   | MIN_LMT_TRNS_AMT      | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للمعاملة |
| PassLimit                   | PASS_LMT              | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتجاوز الحد (1=نعم) |
| BankAccount                 | BNK_AC                | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الحساب البنكي (تفصيلي) |
| AddedUserId                 | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                   | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId               | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                 | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                 | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |

---

## CashAtBankBranch (**IAS_CASH_AT_BANK_BRN**)
| الاسم الجديد                 | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| BranchBankNo                | BRN_BANK_NO           | NUMBER(3,0)     | لا     | نعم       | لا     | رقم البنك الفرعي |
| BankNo                      | BANK_NO               | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| AccountCode                 | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب البنكي |
| OpenBalanceLocal            | OPEN_BAL_L            | NUMBER          | لا     | نعم       | لا     | رصيد افتتاحي محلي |
| OpenBalanceForeign          | OPEN_BAL_F            | NUMBER          | لا     | نعم       | لا     | رصيد افتتاحي أجنبي |
| CurrentBalanceLocal         | CURR_BAL_L            | NUMBER          | لا     | نعم       | لا     | الرصيد الحالي محلي |
| CurrentBalanceForeign       | CURR_BAL_F            | NUMBER          | لا     | نعم       | لا     | الرصيد الحالي أجنبي |
| Inactive                    | INACTIVE              | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate                | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| AddedUserId                 | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                   | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId               | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                 | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                 | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority              | PR_REP                | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal               | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal             | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## CashGroup (**IAS_CASH_GROUP**)
| الاسم الجديد     | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|------------------|-----------------|--------|-----------|--------|-----------|
| GroupNo         | GROUP_NO         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم مجموعة الصناديق/الحسابات النقدية |
| GroupName       | GROUP_NAME       | VARCHAR2(60)    | لا     | نعم       | لا     | اسم المجموعة (عربي) |
| GroupEName      | GROUP_E_NAME     | VARCHAR2(60)    | لا     | نعم       | لا     | اسم المجموعة (إنجليزي) |
| AddedUserId     | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate       | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal   | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId   | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate     | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedTerminal | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReportPriority  | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount     | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |

---

## BankGroup (**IAS_BANK_GROUP**)
| الاسم الجديد     | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|------------------|-----------------|--------|-----------|--------|-----------|
| GroupNo         | GROUP_NO         | NUMBER(10,0)    | نعم    | لا        | لا     | رقم مجموعة البنوك |
| GroupName       | GROUP_NAME       | VARCHAR2(60)    | نعم    | لا        | لا     | اسم المجموعة (عربي) |
| GroupEName      | GROUP_E_NAME     | VARCHAR2(60)    | لا     | نعم       | لا     | اسم المجموعة (إنجليزي) |
| AddedUserId     | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate       | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId   | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate     | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount     | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority  | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal   | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## BankAdjustMaster (**IAS_BANK_ADJUST_MST**)
| الاسم الجديد            | الاسم القديم            | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------|------------------------|-----------------|--------|-----------|--------|-----------|
| DocumentNo             | DOC_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial         | DOC_SER                | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| DocumentDate           | DOC_DATE               | DATE            | لا     | نعم       | لا     | تاريخ المستند |
| BankNo                 | BANK_NO                | NUMBER(10,0)    | نعم    | لا        | لا     | رقم البنك |
| AccountCode            | A_CODE                 | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب البنكي |
| CurrencyCode           | A_CY                   | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| BranchBankNo           | BRN_BANK_NO            | NUMBER(3,0)     | لا     | نعم       | لا     | رقم البنك الفرعي |
| BankBalanceInBank      | BANK_BAL_IN_BANK       | NUMBER          | لا     | نعم       | لا     | رصيد البنك حسب كشف البنك |
| BankBalanceInCompany   | BANK_BAL_IN_CMP        | NUMBER          | لا     | نعم       | لا     | رصيد البنك حسب الشركة |
| Processed              | PROCESSED              | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| JournalVoucherFlag     | JV_DOC                 | NUMBER(1,0)     | لا     | نعم       | لا     | قيد يومية مرتبط (1=نعم) |
| AddedUserId            | AD_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate              | AD_DATE                | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId          | UP_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate            | UP_DATE                | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount            | UP_CNT                 | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CompanyNo              | CMP_NO                 | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo               | BRN_NO                 | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear             | BRN_YEAR               | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser             | BRN_USR                | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal          | AD_TRMNL_NM            | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal        | UP_TRMNL_NM            | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReportPriority         | PR_REP                 | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AdjustmentTypeNo       | TYP_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     | نوع التسوية |
| ReferenceNo            | REF_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| ExchangeRate           | EX_RATE                | NUMBER          | لا     | نعم       | لا     | سعر الصرف |
| StandBy                | STAND_BY               | NUMBER(1,0)     | لا     | نعم       | لا     | قيد الانتظار (1=نعم) |
| AttachNo               | ATTACH_NO              | NUMBER(3,0)     | لا     | نعم       | لا     | عدد المرفقات |
| DocumentSequence       | DOC_SQ                 | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| DocumentTypeRef        | DOC_TYP_REF            | NUMBER(10,0)    | لا     | نعم       | لا     | نوع المستند المرجعي |
| JournalVoucherTypeRef  | DOC_JV_TYP_REF         | NUMBER(10,0)    | لا     | نعم       | لا     | نوع قيد اليومية المرجعي |
| DocumentNoRef          | DOC_NO_REF             | NUMBER(30,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocumentSerialRef      | DOC_SRL_REF            | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocumentSequenceRef    | DOC_SQ_REF             | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocumentDescription    | DOC_DSC                | VARCHAR2(750)   | لا     | نعم       | لا     | وصف المستند |
| DocumentPostFlag       | DOC_POST               | NUMBER(1,0)     | لا     | نعم       | لا     | ترحيل المستند (1=نعم) |
| PostUserId             | POST_U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي رحّل المستند |
| PostDate               | POST_DATE              | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId           | UNPOST_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي ألغى الترحيل |
| UnpostDate             | UNPOST_DATE            | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| AuditRef               | AUDIT_REF              | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc           | AUDIT_REF_DESC         | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId         | AUDIT_REF_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate           | AUDIT_REF_DATE         | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| ExternalPost           | EXTERNAL_POST          | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| CostCenterCode         | CC_CODE                | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo              | PJ_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo             | ACTV_NO                | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |

---

## BankAdjustDetail (**IAS_BANK_ADJUST_DTL**)
| الاسم الجديد            | الاسم القديم            | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------|------------------------|-----------------|--------|-----------|--------|-----------|
| DocumentNo             | DOC_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial         | DOC_SER                | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| BankNo                 | BANK_NO                | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| AccountCode            | A_CODE                 | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب البنكي |
| AccountCodeDetail      | AC_CODE_DTL            | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب الفرعي |
| AccountDetailType      | AC_DTL_TYP             | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| CurrencyCode           | A_CY                   | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| BranchBankNo           | BRN_BANK_NO            | NUMBER(3,0)     | لا     | نعم       | لا     | رقم البنك الفرعي |
| BankBalance            | BANK_BAL               | NUMBER          | لا     | نعم       | لا     | رصيد البنك |
| DocumentDescription    | DOC_DESC               | VARCHAR2(250)   | لا     | نعم       | لا     | وصف السطر |
| JournalAmount          | J_AMT                  | NUMBER          | لا     | نعم       | لا     | مبلغ القيد |
| JournalAmountForeign   | J_AMT_F                | NUMBER          | لا     | نعم       | لا     | مبلغ القيد أجنبي |
| RecordNo               | RCRD_NO                | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| AddedUserId            | AD_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate              | AD_DATE                | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId          | UP_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate            | UP_DATE                | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| CompanyNo              | CMP_NO                 | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo               | BRN_NO                 | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear             | BRN_YEAR               | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser             | BRN_USR                | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount            | UP_CNT                 | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CostCenterCode         | CC_CODE                | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo              | PJ_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo             | ACTV_NO                | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ReferenceNo            | REF_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| DocumentBranchNo       | DOC_BRN_NO             | NUMBER          | لا     | نعم       | لا     | رقم فرع المستند |
| DocumentTypeRef        | DOC_TYP_REF            | NUMBER(10,0)    | لا     | نعم       | لا     | نوع المستند المرجعي |
| JournalVoucherTypeRef  | DOC_JV_TYP_REF         | NUMBER(10,0)    | لا     | نعم       | لا     | نوع قيد اليومية المرجعي |
| DocumentNoRef          | DOC_NO_REF             | NUMBER(30,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocumentSerialRef      | DOC_SRL_REF            | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocumentSequenceRef    | DOC_SQ_REF             | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocumentSequence       | DOC_SQ                 | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر |
| ExchangeRate           | EX_RATE                | NUMBER          | لا     | نعم       | لا     | سعر الصرف |
| AccountCodeDetailSub   | AC_CODE_DTL_SUB        | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب فرعي إضافي |

---

## BankChequeMaster (**GLS_BNK_CHQ_MST**)
| الاسم الجديد         | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|------------------|-----------------|--------|-----------|--------|-----------|
| BankNo              | BANK_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| BookNo              | BOOK_NO          | NUMBER(10,0)    | نعم    | لا        | لا     | رقم دفتر الشيكات |
| FirstChequeNo       | F_CHQ_NO         | NUMBER(20,0)    | لا     | نعم       | لا     | أول رقم شيك في الدفتر |
| LastChequeNo        | T_CHQ_NO         | NUMBER(20,0)    | لا     | نعم       | لا     | آخر رقم شيك في الدفتر |
| ReferenceNo         | REF_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CurrencyCode        | CUR_CODE         | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority      | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal       | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal     | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## BankChequeDetail (**GLS_BNK_CHQ_DTL**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| BankNo             | BANK_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| CurrencyCode       | CUR_CODE            | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| BookNo             | BOOK_NO             | NUMBER(10,0)    | نعم    | لا        | لا     | رقم دفتر الشيكات |
| ChequeNo           | CHQ_NO              | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الشيك |
| ChequeStatus       | CHQ_ST              | NUMBER(1,0)     | نعم    | لا        | لا     | حالة الشيك |
| DocumentNoRef      | DOC_NO_REF          | NUMBER(30,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocumentSerialRef  | DOC_SRL_REF         | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocumentDateRef    | DOC_DATE_REF        | DATE            | لا     | نعم       | لا     | تاريخ المستند المرجعي |
| Notes              | NOTES               | VARCHAR2(250)   | لا     | نعم       | لا     | ملاحظات |
| ChequeSignature    | CHQ_SGNTR           | NUMBER(1,0)     | لا     | نعم       | لا     | توقيع الشيك (1=موقع) |
| SignatureDate      | SGNTR_DATE          | DATE            | لا     | نعم       | لا     | تاريخ التوقيع |
| SignaturePerson    | SGNTR_PRSN          | VARCHAR2(60)    | لا     | نعم       | لا     | اسم الموقع |
| ReceivedPerson     | RCVD_PRSN           | VARCHAR2(60)    | لا     | نعم       | لا     | اسم المستلم |
| NotesChequeStatus  | NOTES_CHQ_ST        | VARCHAR2(250)   | لا     | نعم       | لا     | ملاحظات حالة الشيك |
| DocTypeRef         | DOC_TYP_REF         | NUMBER(10,0)    | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocJVTypeRef       | DOC_JV_TYP_REF      | NUMBER(10,0)    | لا     | نعم       | لا     | نوع قيد المستند المرجعي |
| UserNoChequeStatus | USR_NO_CHQ_ST       | NUMBER(10,0)    | لا     | نعم       | لا     | مستخدم حالة الشيك |
| DateChequeStatus   | DATE_CHQ_ST         | DATE            | لا     | نعم       | لا     | تاريخ حالة الشيك |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |

---

## BankAccountMaster (**GLS_BNK_IDNTF_MST**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| DocType            | DOC_TYP             | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند |
| DocJVType          | DOC_JV_TYP          | NUMBER(10,0)    | نعم    | لا        | لا     | نوع قيد اليومية |
| DocumentNo         | DOC_NO              | NUMBER(30,0)    | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial     | DOC_SRL             | NUMBER(38,0)    | لا     | نعم       | لا     | التسلسل للمستند |
| DocumentMSq        | DOC_M_SQ            | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي مؤقت |
| DocumentDate       | DOC_DATE            | DATE            | نعم    | لا        | لا     | تاريخ المستند |
| FromDate           | F_DATE              | DATE            | لا     | نعم       | لا     | من تاريخ |
| ToDate             | T_DATE              | DATE            | لا     | نعم       | لا     | إلى تاريخ |
| AccountCode        | AC_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب |
| AccountCodeDetail  | AC_CODE_DTL         | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب فرعي |
| AccountCodeDetailSub | AC_CODE_DTL_SUB    | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب فرعي إضافي |
| AccountDetailType  | AC_DTL_TYP          | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| IdentifyChequeNo   | IDNTF_CHQ_NO        | NUMBER(1,0)     | لا     | نعم       | لا     | تعريف رقم الشيك |
| IdentifyNoteNoBank | IDNTF_NT_NO_BNK     | NUMBER(1,0)     | لا     | نعم       | لا     | تعريف رقم الإشعار البنكي |
| IdentifyRefNo      | IDNTF_REF_NO        | NUMBER(1,0)     | لا     | نعم       | لا     | تعريف الرقم المرجعي |
| CurrencyCode       | CUR_CODE            | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| DocumentDesc       | DOC_DSC             | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف المستند |
| ReferenceNo        | REF_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| ManualNo           | MNL_NO              | VARCHAR2(20)    | لا     | نعم       | لا     | رقم يدوي |
| Field1             | FLD1                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 1 |
| Field2             | FLD2                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 2 |
| Field3             | FLD3                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 3 |
| Field4             | FLD4                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 4 |
| Field5             | FLD5                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 5 |
| Field6             | FLD6                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 6 |
| Field7             | FLD7                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 7 |
| Field8             | FLD8                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 8 |
| Field9             | FLD9                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 9 |
| Field10            | FLD10               | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 10 |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | نعم    | لا        | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | نعم    | لا        | لا     | تاريخ الإضافة |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| BranchNo           | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchUser         | BRN_USR             | NUMBER(10,0)    | لا     | نعم       | لا     | مستخدم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | نعم    | لا        | لا     | السنة المالية للفرع |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ReportPriority     | PR_REP              | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| TypeSerial         | TYP_SRL             | NUMBER(5,0)     | لا     | نعم       | لا     | تسلسل نوع العملية |
| Approved           | APPROVED            | NUMBER(1,0)     | لا     | نعم       | لا     | تم الاعتماد (1=نعم) |
| ApprovedUserId     | APRV_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الاعتماد |
| ApprovedDate       | APRV_DATE           | DATE            | لا     | نعم       | لا     | تاريخ الاعتماد |
| ApprovedDesc       | APRV_DSC            | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الاعتماد |
| ProcessedFlag      | PRCSSD_FLG          | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة |
| Inactive           | INACTIVE            | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveReason     | INACTIVE_RES        | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| InactiveUserId     | INACTIVE_U_ID       | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل السطر |
| InactiveDate       | INACTIVE_DATE       | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| StandbyFlag        | STNDBY_FLG          | NUMBER(1,0)     | نعم    | لا        | لا     | قيد الانتظار |
| StandbyUserId      | STNDBY_U_ID         | NUMBER(10,0)    | لا     | نعم       | لا     | مستخدم وضع الانتظار |
| StandbyDate        | STNDBY_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الانتظار |
| StandbyDesc        | STNDBY_DSC          | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الانتظار |
| CreatedDateClock   | CRT_DATE_CLK        | DATE            | لا     | نعم       | لا     | تاريخ ووقت الإنشاء |
| AttachNo           | ATTACH_NO           | NUMBER(3,0)     | لا     | نعم       | لا     | عدد المرفقات |

---

## BankAccountDetail (**GLS_BNK_IDNTF_DTL**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| StatementType      | STMNT_TYP           | NUMBER(1,0)     | لا     | نعم       | لا     | نوع البيان/الحركة |
| DocumentNo         | DOC_NO              | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند الرئيسي |
| DocumentSerial     | DOC_SRL             | NUMBER(38,0)    | نعم    | لا        | لا     | التسلسل للمستند |
| DocumentMSq        | DOC_M_SQ            | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي مؤقت |
| DocumentDSq        | DOC_D_SQ            | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي فرعي |
| RecordNo           | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| AccountCode        | AC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب |
| AccountCodeDetail  | AC_CODE_DTL         | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب فرعي |
| AccountDetailType  | AC_DTL_TYP          | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| CurrencyCode       | CUR_CODE            | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| ChequeNo           | CHQ_NO              | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الشيك |
| ChequeDate         | CHQ_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الشيك |
| DebitAmount        | DR_AMT              | NUMBER          | لا     | نعم       | لا     | المبلغ المدين |
| CreditAmount       | CR_AMT              | NUMBER          | لا     | نعم       | لا     | المبلغ الدائن |
| NoteNoBank         | NT_NO_BNK           | VARCHAR2(20)    | لا     | نعم       | لا     | رقم إشعار البنك |
| ReferenceNo        | REF_NO              | VARCHAR2(30)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| DocumentDescDetail | DOC_D_DSC           | VARCHAR2(500)   | لا     | نعم       | لا     | وصف السطر |
| IdentifyFlag       | IDNTF_FLG           | NUMBER(1,0)     | لا     | نعم       | لا     | علم التحديد |
| ManualIdentifyFlag | IDNTF_MNL_FLG       | NUMBER(1,0)     | لا     | نعم       | لا     | علم التحديد اليدوي |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | نعم    | لا        | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | نعم    | لا        | لا     | تاريخ الإضافة |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| BranchNo           | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | نعم    | لا        | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| DocTypeRef         | DOC_TYP_REF         | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocumentNoRef      | DOC_NO_REF          | NUMBER(30,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocumentSerialRef  | DOC_SRL_REF         | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocumentDSqRef     | DOC_D_SQ_REF        | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي فرعي مرجعي |

---

## ChequeTrace (**IAS_CHEQ_TRACE**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| AuditType          | AUD_TYPE            | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الحركة (إيداع/صرف/...) |
| VoucherType        | VOUCHER_TYPE        | NUMBER(1,0)     | نعم    | لا        | لا     | نوع السند |
| VoucherPayType     | VOUCHER_PAY_TYPE    | NUMBER(1,0)     | نعم    | لا        | لا     | نوع دفع السند |
| VoucherNo          | VOUCHER_NO          | NUMBER(15,0)    | نعم    | لا        | لا     | رقم السند |
| CashNo             | CASH_NO             | NUMBER(10,0)    | نعم    | لا        | لا     | رقم الصندوق |
| VoucherSerial      | V_SER               | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السند |
| AccountCode        | A_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب |
| AccountCodeDetail  | AC_CODE_DTL         | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب الفرعي |
| AccountDetailType  | AC_DTL_TYP          | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| CurrencyCode       | A_CY                | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| AccountDesc        | AC_DESC             | VARCHAR2(250)   | لا     | نعم       | لا     | وصف الحساب |
| ReturnReason       | RETURN_RES          | VARCHAR2(250)   | لا     | نعم       | لا     | سبب الإرجاع |
| AccountAmount      | AC_AMT              | NUMBER          | لا     | نعم       | لا     | مبلغ الحساب |
| AccountAmountForeign | AC_AMTF           | NUMBER          | لا     | نعم       | لا     | مبلغ الحساب أجنبي |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| CustomerCode       | C_CODE              | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| VendorCode         | V_CODE              | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| ChequeType         | CHEQ_TYPE           | NUMBER(2,0)     | لا     | نعم       | لا     | نوع الشيك |
| CashBankNo         | CSH_BNK_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الصندوق/البنك |
| ChequeNo           | CHEQUE_NO           | VARCHAR2(20)    | لا     | نعم       | لا     | رقم الشيك |
| ValueDate          | VALUE_DATE          | DATE            | لا     | نعم       | لا     | تاريخ القيمة |
| ChequePost         | CHEQUE_POST         | NUMBER(1,0)     | لا     | نعم       | لا     | تم الترحيل (1=نعم) |
| ChequeValued       | CHEQUE_VALUED       | NUMBER(1,0)     | لا     | نعم       | لا     | تم التقييم (1=نعم) |
| NoteNo             | NOTE_NO             | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الملاحظة |
| BankNo             | BANK_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| ReferenceNo        | REF_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| RecordNo           | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| Endorsement        | ENDRSMNT            | NUMBER(1,0)     | لا     | نعم       | لا     | تظهير (1=نعم) |
| AccountCodeEnd     | A_CODE_END          | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب النهائي |
| AccountCodeDetailEnd | AC_CODE_DTL_END   | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب الفرعي النهائي |
| AccountDetailTypeEnd | AC_DTL_TYP_END    | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب النهائي |
| CustomerCodeEnd    | C_CODE_END          | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل النهائي |
| VendorCodeEnd      | V_CODE_END          | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد النهائي |
| ExternalPost       | EXTERNAL_POST       | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| DocSequence        | DOC_SEQUENCE        | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| DocTypeRef         | DOC_TYPE_REF        | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocJVTypeRef       | DOC_JV_TYPE_REF     | NUMBER(5,0)     | لا     | نعم       | لا     | نوع قيد المستند المرجعي |
| DocumentNoRef      | DOC_NO_REF          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocumentSerialRef  | DOC_SER_REF         | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| PostUserId         | POST_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate           | POST_DATE           | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId       | UNPOST_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate         | UNPOST_DATE         | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| AuditUserId        | AUD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم التدقيق |
| AuditDate          | AUD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التدقيق |
| CompanyNo          | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority     | PR_REP              | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| EndorsementDate    | ENDRSMNT_DATE       | DATE            | لا     | نعم       | لا     | تاريخ التظهير |

---

## TrustMaster (**IAS_TRUST_MST**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| TrustNo            | TRUST_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الأمانة الرئيسي |
| TrustSerial        | TRUST_SER           | NUMBER(38,0)    | لا     | نعم       | لا     | التسلسل للأمانة |
| TrustDate          | TRUST_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الأمانة |
| Description        | A_DESC              | VARCHAR2(250)   | لا     | نعم       | لا     | وصف أو ملاحظات الأمانة |
| ReferenceNo        | REF_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| EmployeeNo         | EMP_NO              | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف المرتبط |
| WarehouseCode      | W_CODE              | NUMBER(3,0)     | لا     | نعم       | لا     | كود المستودع المرتبط |
| Processed          | PROCESSED           | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| ReportPriority     | PR_REP              | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CompanyNo          | CMP_NO              | NUMBER(2,0)     | لا     | نعم       | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(3,0)     | لا     | نعم       | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |

---

## TrustDetail (**IAS_TRUST_DTL**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| TrustNo            | TRUST_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الأمانة الرئيسي |
| TrustSerial        | TRUST_SER           | NUMBER(38,0)    | لا     | نعم       | لا     | التسلسل للأمانة |
| ItemCode           | I_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| WarehouseCode      | W_CODE              | NUMBER(3,0)     | لا     | نعم       | لا     | كود المستودع |
| ItemQty            | I_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الصنف |
| ItemUnit           | ITM_UNT             | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize           | P_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| RecordNo           | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| CompanyNo          | CMP_NO              | NUMBER(2,0)     | لا     | نعم       | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(3,0)     | لا     | نعم       | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |

---
