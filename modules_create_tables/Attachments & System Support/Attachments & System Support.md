# 14. ملفات ودعم النظام (Attachments, System Support)
> **جميع الحقول للجداول المختارة دون أي نقص أو اختصار**

---

## AttachmentMaster (**IAS_ATTACH_MST**)
| الاسم الجديد       | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                  |
|-------------------|------------------|-----------------|--------|-----------|--------|----------------------------|
| AttachmentNo      | ATTCH_NO         | NUMBER(1,0)     | لا     | نعم       | لا     | رقم المرفق الرئيسي         |
| ArabicName        | ATTCH_A_NAME     | VARCHAR2(30)    | لا     | نعم       | لا     | اسم المرفق بالعربي         |
| EnglishName       | ATTCH_E_NAME     | VARCHAR2(30)    | لا     | نعم       | لا     | اسم المرفق بالانجليزي      |
| Optional          | OPTIONAL         | NUMBER          | لا     | نعم       | لا     | هل المرفق اختياري          |
| ConnectCustomer   | CONN_C_CODE      | NUMBER          | لا     | نعم       | لا     | ربط بالعميل (إن وجد)       |
| AddedUserId       | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف         |
| AddedDate         | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة              |
| UpdatedUserId     | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل          |
| UpdatedDate       | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ التعديل              |
| UpdateCount       | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث           |
| ReportPriority    | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير             |
| AddedTerminal     | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم جهاز الإضافة           |
| UpdatedTerminal   | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم جهاز التعديل           |

---

## AttachmentDetail (**IAS_ATTACH_DTL**)
| الاسم الجديد          | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|----------------------|--------------------|-----------------|--------|-----------|--------|------------------------------|
| AttachmentNo         | ATTCH_NO           | NUMBER(1,0)     | لا     | نعم       | لا     | رقم المرفق الرئيسي           |
| AttachmentDescNo     | ATTCH_DESC_NO      | NUMBER(3,0)     | لا     | نعم       | لا     | رقم وصف المرفق               |
| ArabicDescName       | ATTCH_DESC_A_NAME  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم وصف المرفق بالعربي       |
| EnglishDescName      | ATTCH_DESC_E_NAME  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم وصف المرفق بالانجليزي    |
| AddedUserId          | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف           |
| AddedDate            | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                |
| UpdatedUserId        | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل            |
| UpdatedDate          | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التعديل                |
| UpdateCount          | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث             |

---

## FileType (**S_LIB_FILE**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|---------------------|--------------------|-----------------|--------|-----------|--------|------------------------------|
| FileName            | FILE_NAME          | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الملف/نوع الملف          |
| LibVersionUpdate    | LIB_VERSION_UPDT   | VARCHAR2(100)   | لا     | نعم       | لا     | إصدار المكتبة/التحديث        |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التعديل الأخير          |
| UpdatedUserId       | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل             |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                  |
| CreatedDate         | CREATED_DATE       | DATE            | لا     | نعم       | لا     | تاريخ الإنشاء                 |
| AccessedDate        | ACCESSED_DATE      | DATE            | لا     | نعم       | لا     | تاريخ آخر وصول                |
| ModifiedDate        | MODIFIED_DATE      | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل فعلي          |
| FileSize            | FILE_SIZE          | NUMBER          | لا     | نعم       | لا     | حجم الملف                     |

---

## SequenceControl (**S_SEQ_CTL**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|--------------------|--------------------|-----------------|--------|-----------|--------|------------------------------|
| SequenceTableName  | S_TAB_NAME         | VARCHAR2(30)    | نعم    | لا        | لا     | اسم الجدول المؤثر على التسلسل|
| SequenceColumnName | S_COL_NAME         | VARCHAR2(30)    | نعم    | لا        | لا     | اسم العمود المؤثر في التسلسل |
| SequenceType       | S_SEQ_TYP          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع التسلسل                  |
| SequenceCol1       | S_COL1             | VARCHAR2(30)    | لا     | نعم       | لا     | عمود إضافي 1                 |
| SequenceCol2       | S_COL2             | VARCHAR2(30)    | لا     | نعم       | لا     | عمود إضافي 2                 |
| SequenceCol3       | S_COL3             | VARCHAR2(30)    | لا     | نعم       | لا     | عمود إضافي 3                 |
| SequenceCol4       | S_COL4             | VARCHAR2(30)    | لا     | نعم       | لا     | عمود إضافي 4                 |
| SequenceCol5       | S_COL5             | VARCHAR2(30)    | لا     | نعم       | لا     | عمود إضافي 5                 |
| SequenceCol6       | S_COL6             | VARCHAR2(30)    | لا     | نعم       | لا     | عمود إضافي 6                 |
| IncrementByValue   | S_INCRBY_VAL       | NUMBER(3,0)     | لا     | نعم       | لا     | مقدار الزيادة                |
| InitValue          | S_INIT_VAL         | NUMBER(3,0)     | لا     | نعم       | لا     | القيمة الابتدائية            |
| SequenceConcat     | S_SEQ_CONC         | VARCHAR2(300)   | لا     | نعم       | لا     | محتوى تسلسلي مركب            |
| TriggerName        | TRIG_NAME          | VARCHAR2(50)    | لا     | نعم       | لا     | اسم التريجر المتعلق          |
| OnlyIfNull         | ONLY_IF_NULL       | NUMBER(1,0)     | لا     | نعم       | لا     | فقط إذا كان فارغ             |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                   |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع                    |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | نعم    | لا        | لا     | سنة الفرع                    |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع                 |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                 |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                 |

---

## SequenceValues (**S_SEQ_VALUES**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|--------------------|--------------------|-----------------|--------|-----------|--------|------------------------------|
| SequenceTableName  | S_TAB_NAME         | VARCHAR2(30)    | لا     | نعم       | لا     | اسم الجدول المؤثر على التسلسل|
| SequenceColumnName | S_COL_NAME         | VARCHAR2(30)    | لا     | نعم       | لا     | اسم العمود المؤثر في التسلسل |
| SequenceValue1     | S_VAL1             | NUMBER(20,0)    | لا     | نعم       | لا     | قيمة تسلسلية 1              |
| SequenceValue2     | S_VAL2             | NUMBER(20,0)    | لا     | نعم       | لا     | قيمة تسلسلية 2              |
| SequenceValue3     | S_VAL3             | NUMBER(20,0)    | لا     | نعم       | لا     | قيمة تسلسلية 3              |
| SequenceValue4     | S_VAL4             | NUMBER(20,0)    | لا     | نعم       | لا     | قيمة تسلسلية 4              |
| SequenceValue5     | S_VAL5             | NUMBER(20,0)    | لا     | نعم       | لا     | قيمة تسلسلية 5              |
| SequenceValue6     | S_VAL6             | NUMBER(20,0)    | لا     | نعم       | لا     | قيمة تسلسلية 6              |
| IncrementByValue   | S_INCRBY_VAL       | NUMBER(3,0)     | لا     | نعم       | لا     | مقدار الزيادة                |
| InitValue          | S_INIT_VAL         | NUMBER(3,0)     | لا     | نعم       | لا     | القيمة الابتدائية            |
| SequenceValue      | S_SEQ_VAL          | NUMBER(20,0)    | لا     | نعم       | لا     | القيمة الحالية للتسلسل        |
| SequenceType       | S_SEQ_TYP          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع التسلسل                  |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                   |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع                    |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع                    |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع                 |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                 |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                 |

---

## Note (**NOTE**)
| الاسم الجديد          | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                           |
|----------------------|--------------------|-----------------|--------|-----------|--------|--------------------------------------|
| NoteType             | NOTE_TYPE          | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الملاحظة                        |
| NoteTypeNo           | NOTE_TYPE_NO       | NUMBER(3,0)     | لا     | نعم       | لا     | رقم نوع الملاحظة                    |
| NoteNo               | NOTE_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الملاحظة                        |
| NoteSerial           | NOTE_SER           | NUMBER(38,0)    | لا     | نعم       | لا     | التسلسل                             |
| NoteDate             | NOTE_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الملاحظة                      |
| AccountCode          | A_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب                          |
| AccountDetailCode    | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب التفصيلي                 |
| AccountDetailType    | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع الحساب التفصيلي                 |
| AccountCurrency      | A_CY               | VARCHAR2(7)     | لا     | نعم       | لا     | عملة الحساب                         |
| CustomerCode         | C_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل                          |
| VendorCode           | V_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد                          |
| Processed            | PROCESSED          | NUMBER(1,0)     | لا     | نعم       | لا     | تمت معالجتها                        |
| Approved             | APPROVED           | NUMBER(1,0)     | لا     | نعم       | لا     | تمت الموافقة                         |
| ApprovedUserId       | APRV_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الموافق                |
| ApprovedDate         | APRV_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الموافقة                       |
| ApprovedDesc         | APRV_DSC           | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الموافقة                        |
| CostCenterCode       | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | كود مركز التكلفة                    |
| ProjectNo            | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع                         |
| ActivityNo           | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط                          |
| Field1               | FIELD1             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 1                         |
| Field2               | FIELD2             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 2                         |
| Field3               | FIELD3             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 3                         |
| Field4               | FIELD4             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 4                         |
| Field5               | FIELD5             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 5                         |
| Field6               | FIELD6             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 6                         |
| Field7               | FIELD7             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 7                         |
| Field8               | FIELD8             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 8                         |
| Field9               | FIELD9             | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 9                         |
| Field10              | FIELD10            | VARCHAR2(100)   | لا     | نعم       | لا     | حقل إضافي 10                        |
| AddedDate            | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                        |
| AddedUserId          | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف                   |
| UpdatedDate          | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل                      |
| UpdatedUserId        | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل                    |
| UpdateCount          | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                     |
| ReportPriority       | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                       |
| CompanyNo            | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                            |
| BranchNo             | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع                             |
| BranchYear           | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع                             |
| BranchUser           | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع                          |
| AddedTerminal        | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                           |
| UpdatedTerminal      | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                           |
| ExternalPost         | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الترحيل الخارجي (إذا وجد)          |

---

## NoteDetail (**NOTE_DETAIL**)
| الاسم الجديد          | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|----------------------|--------------------|-----------------|--------|-----------|--------|------------------------------|
| NoteType             | NOTE_TYPE          | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الملاحظة                 |
| NoteTypeNo           | NOTE_TYPE_NO       | NUMBER(3,0)     | لا     | نعم       | لا     | رقم نوع الملاحظة             |
| NoteNo               | NOTE_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الملاحظة                 |
| NoteSerial           | NOTE_SER           | NUMBER(38,0)    | لا     | نعم       | لا     | التسلسل                      |
| NoteDesc             | NOTE_DESC          | VARCHAR2(250)   | لا     | نعم       | لا     | وصف الملاحظة                 |
| NoteAmount           | NOTE_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ الملاحظة                |
| NoteAmountForeign    | NOTE_AMTF          | NUMBER          | لا     | نعم       | لا     | مبلغ الملاحظة بالعملة الأجنبية|
| NoteRate             | NOTE_RATE          | NUMBER          | لا     | نعم       | لا     | سعر التحويل/سعر الصرف        |
| CompanyNo            | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                   |
| BranchNo             | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع                    |
| BranchYear           | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع                    |
| BranchUser           | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع                 |
| UpdateCount          | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث             |
| ExternalPost         | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الترحيل الخارجي (إذا وجد)|

---

## AuditLog (**IAS_LOGS**)
| الاسم الجديد          | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|----------------------|--------------------|-----------------|--------|-----------|--------|------------------------------|
| SystemName           | F_SYS              | VARCHAR2(15)    | لا     | نعم       | لا     | اسم النظام أو الوحدة         |
| DocumentType         | DOC_TYPE           | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند/الإجراء          |
| DocumentSerial       | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسل المستند            |
| DocumentDate         | DOC_DATE           | DATE            | لا     | نعم       | لا     | تاريخ المستند                 |
| LogDate              | LOG_DATE           | DATE            | لا     | نعم       | لا     | تاريخ السجل/الإجراء           |
| LogDesc              | LOG_DESC           | VARCHAR2(250)   | لا     | نعم       | لا     | وصف السجل/الإجراء             |
| CompanyNo            | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                    |
| BranchNo             | BRN_NO             | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع                     |
| BranchYear           | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع                     |
| BranchUser           | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع                  |
| UpdateCount          | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث              |
| ReportPriority       | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                |
| AddedTerminal        | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                  |
| UpdatedTerminal      | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                  |

---

## SystemLog (**S_LOGS**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|------------------|------------------|-----------------|--------|-----------|--------|------------------------------|
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف           |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                 |
| FormNo           | FORM_NO          | NUMBER          | لا     | نعم       | لا     | رقم النموذج/الشاشة           |
| LogCount         | LOG_CNT          | NUMBER          | لا     | نعم       | لا     | عدد السجلات                  |
| LogDesc          | LOG_DESC         | VARCHAR2(4000)  | لا     | نعم       | لا     | وصف السجل/العملية           |

---

## Backup (**BACKUP**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|------------------|------------------|-----------------|--------|-----------|--------|------------------------------|
| BackupNo         | BK_NO            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم النسخة الاحتياطية        |
| BackupName       | BK_NAME          | VARCHAR2(100)   | لا     | نعم       | لا     | اسم النسخة الاحتياطية        |
| FileName         | FILE_NAME        | VARCHAR2(100)   | لا     | نعم       | لا     | اسم ملف النسخة الاحتياطية    |
| BackupDate       | BK_DATE          | DATE            | لا     | نعم       | لا     | تاريخ النسخة الاحتياطية      |
| EncryptPassword  | ENC_PASSWD       | VARCHAR2(30)    | لا     | نعم       | لا     | كلمة مرور التشفير (إن وجدت)  |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف           |
| CompanyNo        | CMP_NO           | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                   |
| BranchNo         | BRN_NO           | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع                    |
| BranchYear       | BRN_YEAR         | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع                    |
| BranchUser       | BRN_USR          | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع                 |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                 |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                 |

---

