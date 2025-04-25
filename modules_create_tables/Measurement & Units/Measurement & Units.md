# 6. الوحدات والقياس (Measurement & Units)
> **جميع الحقول والشرح للجداول: وحدات الأصناف، التحويلات، الربط بوحدات الأصناف**

---

## UnitDescriptionItemMaster (**IAS_MEASUR_DSC_ITM_MST**)
| الاسم الجديد             | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-------------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode                | I_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| MeasureNo               | MEASUR_NO           | NUMBER(5,0)     | لا     | نعم       | لا     | رقم وحدة القياس الرئيسية |
| MeasureArabicName       | MEASUR_L_NM         | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الوحدة عربي |
| MeasureEnglishName      | MEASUR_F_NM         | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الوحدة إنجليزي |
| DocumentSequence        | DOC_SEQ             | NUMBER          | لا     | نعم       | لا     | تسلسل المستند |
| AddedUserId             | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate               | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId           | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate             | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority          | PR_REP              | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount             | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal           | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal         | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| MeasureDescription      | MEASUR_DSC          | VARCHAR2(250)   | لا     | نعم       | لا     | وصف الوحدة |
| MeasureImage            | MEASUR_IMG          | VARCHAR2(250)   | لا     | نعم       | لا     | صورة الوحدة |
| Inactive                | INACTIVE            | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |

---

## UnitDescriptionItemDetail (**IAS_MEASUR_DSC_ITM_DTL**)
| الاسم الجديد             | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-------------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode                | I_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| MeasureNo               | MEASUR_NO           | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الوحدة |
| MeasureArabicName       | MEASUR_L_NM         | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الوحدة عربي |
| MeasureEnglishName      | MEASUR_F_NM         | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الوحدة إنجليزي |
| DocumentSequence        | DOC_SEQ             | NUMBER          | لا     | نعم       | لا     | تسلسل المستند |
| AddedUserId             | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate               | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId           | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate             | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority          | PR_REP              | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount             | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal           | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal         | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| MeasureNoReference      | MEASUR_NO_REF       | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الوحدة المرجعية |
| MeasureImage            | MEASUR_IMG          | VARCHAR2(250)   | لا     | نعم       | لا     | صورة الوحدة |

---

## UnitConversion (**IAS_UNTS_CONV**)
| الاسم الجديد         | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ManualMeasureNo     | MSUR_MAN_NO         | NUMBER(15,0)    | لا     | نعم       | لا     | رقم تحويل الوحدة (رئيسي) |
| ManualMeasureCode   | MSUR_MAN_CODE       | VARCHAR2(10)    | لا     | نعم       | لا     | كود الوحدة الأساسية (من) |
| ObservedMeasureCode | MSUR_OBS_CODE       | VARCHAR2(10)    | لا     | نعم       | لا     | كود الوحدة المحولة (إلى) |
| ArgumentNo          | ARGMNT_NO           | NUMBER          | لا     | نعم       | لا     | رقم مرجعي أو معامل التحويل |
| AddedUserId         | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority      | PR_REP              | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal       | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal     | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## ItemUnitConnection (**IAS_CONN_ITM_MSUR_UNT**)
| الاسم الجديد         | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode            | I_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| ItemUnit            | ITM_UNT             | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف |
| PackSize            | P_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| DefaultUnit         | DFLT_UNIT           | NUMBER(1,0)     | لا     | نعم       | لا     | وحدة أساسية (1=نعم) |
| MeasureWeightCode   | MSUR_WT_CODE        | VARCHAR2(10)    | لا     | نعم       | لا     | كود وحدة الوزن |
| ArgumentNo          | ARGMNT_NO           | NUMBER          | لا     | نعم       | لا     | رقم معامل التحويل |
| MeasureQtyCode      | MSUR_QTY_CODE       | VARCHAR2(10)    | لا     | نعم       | لا     | كود وحدة الكمية |
| MinUnit             | MIN_UNT             | NUMBER(1,0)     | لا     | نعم       | لا     | وحدة أصغر (1=نعم) |
| Factor              | FACTOR              | VARCHAR2(1)     | لا     | نعم       | لا     | معامل التحويل أو دلالة الوحدة |
| UseFraction         | USE_FRACTION        | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بالكسر (1=نعم) |
| UpdateFlag          | UPD_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | علم التحديث |
| AddedUserId         | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority      | PR_REP              | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal       | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal     | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

**تم جلب جميع الحقول للجداول المطلوبة وشرحها بدقة من ملف SQL. إذا أردت جداول أخرى أو تصدير بصيغ أخرى أخبرني بذلك.**
