# 15. جداول متنوعة (Miscellaneous)

---

## Country (**CNTRY**)
| الاسم الجديد       | الاسم القديم       | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                        |
|-------------------|-------------------|-----------------|--------|-----------|--------|-----------------------------------|
| CountryNo         | CNTRY_NO          | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة                       |
| ArabicName        | CNTRY_A_NAME      | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الدولة بالعربية              |
| EnglishName       | CNTRY_E_NAME      | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الدولة بالانجليزية           |
| CountryShort      | CNTRY_SHRT        | VARCHAR2(10)    | لا     | نعم       | لا     | اختصار الدولة                    |
| Continent         | CNTRY_CNTNT       | VARCHAR2(20)    | لا     | نعم       | لا     | القارة                           |
| CurrencyNo        | CUR_NO            | NUMBER(4,0)     | لا     | نعم       | لا     | رقم العملة                       |
| CurrencyCode      | CUR_CODE          | VARCHAR2(7)     | لا     | نعم       | لا     | كود العملة                       |
| NationalityAr     | CNTRY_ANTION      | VARCHAR2(15)    | لا     | نعم       | لا     | الجنسية (عربي)                   |
| NationalityEn     | CNTRY_ENTION      | VARCHAR2(15)    | لا     | نعم       | لا     | الجنسية (انجليزي)                |
| NationalityShort  | NTION_SHRT        | VARCHAR2(10)    | لا     | نعم       | لا     | اختصار الجنسية                   |
| ZoneNo            | ZONE_NO           | NUMBER(4,0)     | لا     | نعم       | لا     | رقم المنطقة الجغرافية            |
| NotAllowDealWith  | NOT_ALLW_DEAL_WTH | NUMBER(1,0)     | لا     | نعم       | لا     | غير مسموح التعامل معها           |
| AddedUserId       | AD_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف                |
| AddedDate         | AD_DATE           | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                     |
| UpdatedUserId     | UP_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل                 |
| UpdatedDate       | UP_DATE           | DATE            | لا     | نعم       | لا     | تاريخ التعديل                     |
| UpdateCount       | UP_CNT            | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                  |
| ReportPriority    | PR_REP            | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                    |
| AddedTerminal     | AD_TRMNL_NM       | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                      |
| UpdatedTerminal   | UP_TRMNL_NM       | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                      |
| PhoneKey          | PHONE_KEY         | VARCHAR2(10)    | لا     | نعم       | لا     | مفتاح الاتصال الدولي               |

---

## City (**CITIES**)
| الاسم الجديد     | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|-----------------|-----------------|-----------------|--------|-----------|--------|------------------------------|
| CityNo          | CITY_NO         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة                  |
| ArabicName      | CITY_A_NAME     | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المدينة بالعربية         |
| EnglishName     | CITY_E_NAME     | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المدينة بالانجليزية      |
| ProvinceNo      | PROV_NO         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحافظة                 |
| CountryNo       | CNTRY_NO        | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة                   |
| CityShort       | CITY_SHRT       | VARCHAR2(10)    | لا     | نعم       | لا     | اختصار المدينة               |
| ZoneNo          | ZONE_NO         | NUMBER(4,0)     | لا     | نعم       | لا     | رقم المنطقة الجغرافية        |
| CitySerial      | CITY_SER        | NUMBER          | لا     | نعم       | لا     | تسلسل المدينة                |
| AddedUserId     | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف            |
| AddedDate       | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                 |
| UpdatedUserId   | UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل             |
| UpdatedDate     | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعديل                 |
| UpdateCount     | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث              |
| ReportPriority  | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                |
| AddedTerminal   | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                  |
| UpdatedTerminal | UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                  |

---

## Region (**REGIONS**)
| الاسم الجديد      | الاسم القديم    | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                |
|------------------|----------------|-----------------|--------|-----------|--------|--------------------------|
| RegionCode       | R_CODE         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المنطقة             |
| ArabicName       | R_A_NAME       | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المنطقة بالعربي     |
| EnglishName      | R_E_NAME       | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المنطقة بالإنجليزي  |
| CountryNo        | CNTRY_NO       | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة              |
| ProvinceNo       | PROV_NO        | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحافظة            |
| CityNo           | CITY_NO        | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة             |
| RegionShort      | RGN_SHRT       | VARCHAR2(10)    | لا     | نعم       | لا     | اختصار/رمز المنطقة      |
| ZoneNo           | ZONE_NO        | NUMBER(4,0)     | لا     | نعم       | لا     | رقم المنطقة الجغرافية   |
| AddedUserId      | AD_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف      |
| AddedDate        | AD_DATE        | DATE            | لا     | نعم       | لا     | تاريخ الإضافة           |
| UpdatedUserId    | UP_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل       |
| UpdatedDate      | UP_DATE        | DATE            | لا     | نعم       | لا     | تاريخ التعديل           |
| UpdateCount      | UP_CNT         | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث        |
| ReportPriority   | PR_REP         | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير          |
| AddedTerminal    | AD_TRMNL_NM    | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة            |
| UpdatedTerminal  | UP_TRMNL_NM    | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل            |

---

## CreditCardType (**CREDIT_CARD_TYPES**)
| الاسم الجديد          | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                          |
|----------------------|--------------------|-----------------|--------|-----------|--------|-------------------------------------|
| CreditCardNo         | CR_CARD_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم البطاقة الائتمانية             |
| CreditCardName       | CR_CARD_NAME       | VARCHAR2(100)   | نعم    | لا        | لا     | اسم البطاقة                        |
| CreditCardEName      | CR_CARD_E_NAME     | VARCHAR2(100)   | لا     | نعم       | لا     | اسم البطاقة بالإنجليزي             |
| BankAccount          | BANK_AC            | VARCHAR2(30)    | لا     | نعم       | لا     | حساب البنك المربوط                 |
| CommissionAccount    | COMM_AC            | VARCHAR2(30)    | لا     | نعم       | لا     | حساب العمولة                       |
| CommissionPercent    | COMM_PER           | NUMBER(7,4)     | لا     | نعم       | لا     | نسبة العمولة                       |
| CommissionCalcType   | COMM_CALC_TYPE     | NUMBER(1,0)     | لا     | نعم       | لا     | نوع احتساب العمولة                 |
| DuePeriod            | DUE_PERIOD         | NUMBER(3,0)     | لا     | نعم       | لا     | فترة الاستحقاق (أيام)              |
| CreditCardType       | CR_CARD_TYPE       | NUMBER(2,0)     | لا     | نعم       | لا     | نوع البطاقة                        |
| MachineNoBank        | MACHINE_NO_BANK    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم جهاز البنك                     |
| MachineNo            | MACHINE_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم جهاز نقاط البيع                |
| WarehouseCode        | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المستودع                       |
| AccountCodeRecLetter | ACODE_REC_LETTER   | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب لرسالة الاستلام         |
| BankNo               | BANK_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك                          |
| AddedUserId          | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف                  |
| AddedDate            | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                      |
| UpdatedUserId        | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل                   |
| UpdatedDate          | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التعديل                       |
| UpdateCount          | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                    |
| ReportPriority       | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                      |
| AddedTerminal        | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                        |
| UpdatedTerminal      | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                        |
| CommissionAmount     | COMM_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ العمولة                        |
| MaxCommissionPercent | MAX_COMM_PER       | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لنسبة العمولة           |
| MaxCommissionAmount  | MAX_COMM_AMT       | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لمبلغ العمولة           |
| CurrencyMaxComm      | A_CY_MAX_COMM      | VARCHAR2(7)     | لا     | نعم       | لا     | عملة الحد الأعلى للعمولة            |
| ConnectBranchNo      | CONN_BRN_NO        | NUMBER(6,0)     | لا     | نعم       | لا     | ربط الفرع                           |
| ConnectTerminalName  | CONN_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | ربط اسم الجهاز                      |

---

## CurrencyUserLimit (**GLS_CRNCY_USR_LMT**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                       |
|---------------------|--------------------|-----------------|--------|-----------|--------|----------------------------------|
| CurrencyCode        | CUR_CODE           | VARCHAR2(7)     | لا     | نعم       | لا     | كود العملة                      |
| UserNo              | USER_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم                    |
| MaxCurrencyRate     | MAX_CUR_RATE       | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لسعر الصرف          |
| MinCurrencyRate     | MIN_CUR_RATE       | NUMBER          | لا     | نعم       | لا     | الحد الأدنى لسعر الصرف          |
| CurrencyRate        | CUR_RATE           | NUMBER          | لا     | نعم       | لا     | سعر الصرف الحالي                |
| MinPaymentRate      | MIN_PYMNT_RATE     | NUMBER          | لا     | نعم       | لا     | الحد الأدنى لسعر دفع العملة     |
| MaxPaymentRate      | MAX_PYMNT_RATE     | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لسعر دفع العملة     |
| MinReceivedRate     | MIN_RCVD_RATE      | NUMBER          | لا     | نعم       | لا     | الحد الأدنى لسعر استلام العملة  |
| MaxReceivedRate     | MAX_RCVD_RATE      | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لسعر استلام العملة  |
| ConnectBranchNo     | CONN_BRN_NO        | NUMBER(6,0)     | لا     | نعم       | لا     | ربط الفرع                       |
| AddedUserId         | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف              |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                   |
| UpdatedUserId       | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل               |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التعديل                   |
| ReportPriority      | PR_REP             | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير                  |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                    |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                    |

---


