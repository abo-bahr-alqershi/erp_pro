# 16. جداول غير مصنفة (Uncategorized)

---

## ALL_BRANCHES
| الاسم الجديد    | الاسم القديم  | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                  |
|----------------|--------------|-----------------|--------|-----------|--------|----------------------------|
| CompanyGroup   | CMP_GRP      | NUMBER(1,0)     | لا     | نعم       | لا     | مجموعة الشركة              |
| CompanyNo      | CMP_NO       | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة                 |
| BranchNo       | BRN_NO       | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع                  |
| BranchYear     | BRN_YEAR     | NUMBER(4,0)     | لا     | نعم       | لا     | سنة الفرع                  |
| BranchUser     | BRN_USR      | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع               |
| BranchNameL    | BRN_LNAME    | VARCHAR2(40)    | لا     | نعم       | لا     | اسم الفرع طويل             |
| BranchNameF    | BRN_FNAME    | VARCHAR2(40)    | لا     | نعم       | لا     | اسم الفرع مختصر            |

---

## APX_FVRT_SCR
| الاسم الجديد      | الاسم القديم   | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                          |
|------------------|---------------|-----------------|--------|-----------|--------|------------------------------------|
| ScreenNo         | SCR_NO        | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الشاشة                         |
| UserId           | U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم                       |
| OrderNo          | ORDR_NO       | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الترتيب                        |
| UpdateCount      | UP_CNT        | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                   |
| ReportPriority   | PR_REP        | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                     |
| AddedTerminal    | AD_TRMNL_NM   | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                       |
| UpdatedTerminal  | UP_TRMNL_NM   | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                       |

---

## APX_SCR
| الاسم الجديد          | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                       |
|----------------------|-----------------|-----------------|--------|-----------|--------|----------------------------------|
| ScreenNo             | SCR_NO          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الشاشة                      |
| LabelNo              | LABEL_NO        | NUMBER(10,0)    | لا     | نعم       | لا     | رقم التسمية                     |
| ParentScreenNo       | SCR_PARNT_NO    | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الشاشة الأب                  |
| Inactive             | INACTIVE        | NUMBER(1,0)     | لا     | نعم       | لا     | غير نشطة                        |
| OrderNo              | ORDR_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الترتيب                     |
| ScreenType           | SCR_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع الشاشة                      |
| FileName             | FILE_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الملف                       |
| ScreenIcon           | SCR_ICON        | VARCHAR2(100)   | لا     | نعم       | لا     | أيقونة الشاشة                   |
| DefaultFlag          | DFLT_FLG        | NUMBER(1,0)     | لا     | نعم       | لا     | علم افتراضي                     |
| MobileFileName       | MOB_FILE_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | اسم ملف الموبايل                |
| MobileScreenIcon     | MOB_SCR_ICON    | VARCHAR2(100)   | لا     | نعم       | لا     | أيقونة شاشة الموبايل            |
| UpdateCount          | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                |
| ReportPriority       | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                  |
| AddedTerminal        | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                    |
| UpdatedTerminal      | UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                    |

---

## APX_SCR_PRV
| الاسم الجديد      | الاسم القديم   | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                        |
|------------------|---------------|-----------------|--------|-----------|--------|----------------------------------|
| ScreenNo         | SCR_NO        | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الشاشة                       |
| UserId           | U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم                     |
| IncludeFlag      | INC_FLG       | NUMBER(1,0)     | لا     | نعم       | لا     | علم التضمين/الصلاحية             |
| AddedDate        | AD_DATE       | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                     |
| AddedUserId      | AD_U_ID       | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف                |
| UpdateCount      | UP_CNT        | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                  |
| ReportPriority   | PR_REP        | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                    |
| AddedTerminal    | AD_TRMNL_NM   | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز الإضافة                      |
| UpdatedTerminal  | UP_TRMNL_NM   | VARCHAR2(50)    | لا     | نعم       | لا     | جهاز التعديل                      |

---

## ARS_ANSWR_QUESTNNR_DTL  <!-- تفاصيل إجابات الاستبيانات أو النماذج -->
| الاسم الجديد         | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل                     |
|---------------------|---------------------|------------------|--------|-----------|--------|-------------------------------|
| RecordNo            | RCRD_NO             | NUMBER           | لا     | نعم       | لا     | رقم السجل                     |
| ModelNo             | MODL_NO             | NUMBER(5,0)      | نعم    | لا        | لا     | رقم النموذج/الاستبيان         |
| AnswerNo            | ANSWR_NO            | NUMBER(15,0)     | نعم    | لا        | لا     | رقم الإجابة                   |
| AnswerLName         | ANSWR_L_NAME        | VARCHAR2(1000)   | نعم    | لا        | لا     | اسم الإجابة الطويل            |
| AnswerFName         | ANSWR_F_NAME        | VARCHAR2(1000)   | لا     | نعم       | لا     | اسم الإجابة المختصر           |
| AddedUserId         | AD_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف            |
| AddedDate           | AD_DATE             | DATE             | لا     | نعم       | لا     | تاريخ الإضافة                 |
| UpdatedUserId       | UP_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل             |
| UpdatedDate         | UP_DATE             | DATE             | لا     | نعم       | لا     | تاريخ التعديل                 |
| UpdateCount         | UP_CNT              | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث              |
| ReportPriority      | PR_REP              | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير                |
| AddedTerminal       | AD_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | جهاز الإضافة                  |
| UpdatedTerminal     | UP_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | جهاز التعديل                  |

---

## ARS_ANSWR_QUESTNNR_MST  <!-- رؤوس الاستبيانات أو النماذج -->
| الاسم الجديد         | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|---------------------|---------------------|------------------|--------|-----------|--------|------------------------------|
| ModelNo             | MODL_NO             | NUMBER(5,0)      | لا     | نعم       | لا     | رقم النموذج/الاستبيان        |
| ModelLName          | MODL_L_NAME         | VARCHAR2(100)    | لا     | نعم       | لا     | الاسم الطويل للنموذج         |
| ModelFName          | MODL_F_NAME         | VARCHAR2(100)    | لا     | نعم       | لا     | الاسم المختصر للنموذج        |
| AddedUserId         | AD_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف           |
| AddedDate           | AD_DATE             | DATE             | لا     | نعم       | لا     | تاريخ الإضافة                |
| UpdatedUserId       | UP_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل            |
| UpdatedDate         | UP_DATE             | DATE             | لا     | نعم       | لا     | تاريخ التعديل                |
| ReportPriority      | PR_REP              | NUMBER(6,0)      | لا     | نعم       | لا     | أولوية التقرير               |
| UpdateCount         | UP_CNT              | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث             |
| AddedTerminal       | AD_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | جهاز الإضافة                 |
| UpdatedTerminal     | UP_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | جهاز التعديل                 |

---

## ARS_AUTO_SLS_ORDR_DTL  <!-- تفاصيل أوامر البيع الآليّة -->
| الاسم الجديد         | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|---------------------|---------------------|------------------|--------|-----------|--------|------------------------------|
| DocumentNo          | DOC_NO              | NUMBER(15,0)     | نعم    | لا        | لا     | رقم المستند/الأمر            |
| DocumentSerial      | DOC_SRL             | NUMBER(38,0)     | نعم    | لا        | لا     | رقم تسلسل المستند            |
| ItemCode            | I_CODE              | VARCHAR2(30)     | نعم    | لا        | لا     | كود الصنف                    |
| ItemUnit            | ITM_UNT             | VARCHAR2(10)     | لا     | نعم       | لا     | وحدة الصنف                   |
| ItemQty             | I_QTY               | NUMBER           | لا     | نعم       | لا     | كمية الصنف                   |

---

## ARS_AUTO_SLS_ORDR_MST  <!-- رؤوس أوامر البيع الآليّة -->
| الاسم الجديد         | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|---------------------|---------------------|------------------|--------|-----------|--------|------------------------------|
| DocumentNo          | DOC_NO              | NUMBER(15,0)     | نعم    | لا        | لا     | رقم المستند/الأمر            |
| DocumentSerial      | DOC_SRL             | NUMBER(38,0)     | لا     | نعم       | لا     | رقم تسلسل المستند            |
| CustomerCode        | C_CODE              | VARCHAR2(15)     | لا     | نعم       | لا     | كود العميل                   |
| DocumentSerialRef   | DOC_SRL_REF         | NUMBER(38,0)     | لا     | نعم       | لا     | تسلسل المرجع                 |
| AddedUserId         | AD_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف           |
| AddedDate           | AD_DATE             | DATE             | لا     | نعم       | لا     | تاريخ الإضافة                |
| ProcessFlag         | PRCSS_FLG           | NUMBER           | لا     | نعم       | لا     | علم المعالجة                 |
| DocumentDate        | DOC_DATE            | DATE             | لا     | نعم       | لا     | تاريخ المستند                |
| DocumentNoRef       | DOC_NO_REF          | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند المرجعي          |


---

## ARS_CODE_DTL  <!-- تفاصيل أكواد النظام (إجرائية أو فرعية) -->
| الاسم الجديد       | الاسم القديم       | النوع             | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|-------------------|-------------------|-------------------|--------|-----------|--------|------------------------------|
| CodeType          | CODE_TYP          | NUMBER(5,0)       | نعم    | لا        | لا     | نوع الكود                    |
| CodeNo            | CODE_NO           | NUMBER(5,0)       | نعم    | لا        | لا     | رقم الكود                    |
| CodeLName         | CODE_L_NM         | VARCHAR2(60)      | نعم    | لا        | لا     | اسم الكود الطويل             |
| CodeFName         | CODE_F_NM         | VARCHAR2(60)      | لا     | نعم       | لا     | اسم الكود المختصر            |
| OrderNo           | ORDR_NO           | NUMBER(10,0)      | لا     | نعم       | لا     | رقم الترتيب                  |
| Notes             | NOTES             | VARCHAR2(250)     | لا     | نعم       | لا     | ملاحظات                      |
| Inactive          | INACTIVE          | NUMBER(1,0)       | لا     | نعم       | لا     | غير نشط                      |
| InactiveReason    | INACTIVE_RES      | VARCHAR2(250)     | لا     | نعم       | لا     | سبب التعطيل                  |
| InactiveDate      | INACTIVE_DATE     | DATE              | لا     | نعم       | لا     | تاريخ التعطيل                |
| InactiveUserId    | INACTIVE_U_ID     | NUMBER(5,0)       | لا     | نعم       | لا     | المستخدم الذي قام بالتعطيل    |
| AddedUserId       | AD_U_ID           | NUMBER(5,0)       | نعم    | لا        | لا     | المستخدم الذي أضاف           |
| AddedDate         | AD_DATE           | DATE              | نعم    | لا        | لا     | تاريخ الإضافة                |
| UpdatedUserId     | UP_U_ID           | NUMBER(5,0)       | لا     | نعم       | لا     | المستخدم الذي عدل            |
| UpdatedDate       | UP_DATE           | DATE              | لا     | نعم       | لا     | تاريخ التعديل                |
| UpdateCount       | UP_CNT            | NUMBER(10,0)      | لا     | نعم       | لا     | عدد مرات التحديث             |
| AddedTerminal     | AD_TRMNL_NM       | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز الإضافة                 |
| UpdatedTerminal   | UP_TRMNL_NM       | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز التعديل                 |

---

## ARS_CODE_MST  <!-- رؤوس أكواد النظام (إجرائية أو فرعية) -->
| الاسم الجديد       | الاسم القديم       | النوع             | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|-------------------|-------------------|-------------------|--------|-----------|--------|------------------------------|
| CodeType          | CODE_TYP          | NUMBER(5,0)       | نعم    | لا        | لا     | نوع الكود                    |
| TypeLName         | TYP_L_NM          | VARCHAR2(60)      | نعم    | لا        | لا     | اسم نوع الكود الطويل         |
| TypeFName         | TYP_F_NM          | VARCHAR2(60)      | نعم    | لا        | لا     | اسم نوع الكود المختصر        |
| OrderNo           | ORDR_NO           | NUMBER(10,0)      | لا     | نعم       | لا     | رقم الترتيب                  |
| AddedTerminal     | AD_TRMNL_NM       | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز الإضافة                 |
| UpdatedTerminal   | UP_TRMNL_NM       | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز التعديل                 |
| UpdateCount       | UP_CNT            | NUMBER(10,0)      | لا     | نعم       | لا     | عدد مرات التحديث             |
| ReportPriority    | PR_REP            | NUMBER(10,0)      | لا     | نعم       | لا     | أولوية التقرير               |
| Inactive          | INACTIVE          | NUMBER(1,0)       | لا     | نعم       | لا     | غير نشط                      |

---

## ARS_NEWS_CSS  <!-- نشرات أو أخبار النظام -->
| الاسم الجديد        | الاسم القديم        | النوع             | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|--------------------|--------------------|-------------------|--------|-----------|--------|------------------------------|
| NewsNo             | NEWS_NO            | NUMBER(38,0)      | لا     | نعم       | لا     | رقم النشرة                   |
| NewsLDesc          | NEWS_L_DSC         | VARCHAR2(1000)    | لا     | نعم       | لا     | وصف النشرة الطويل            |
| NewsFDesc          | NEWS_F_DSC         | VARCHAR2(1000)    | لا     | نعم       | لا     | وصف النشرة المختصر           |
| FromDate           | F_DATE             | DATE              | لا     | نعم       | لا     | تاريخ البدء                   |
| ToDate             | T_DATE             | DATE              | لا     | نعم       | لا     | تاريخ الانتهاء                |
| Inactive           | INACTIVE           | NUMBER(1,0)       | لا     | نعم       | لا     | غير نشط                      |
| BranchNo           | BRN_NO             | NUMBER(6,0)       | نعم    | لا        | لا     | رقم الفرع                     |
| ImagePath          | IMG_PATH           | VARCHAR2(250)     | لا     | نعم       | لا     | مسار الصورة                   |
| YouTubeLink        | LNK_YOUTUBE        | VARCHAR2(250)     | لا     | نعم       | لا     | رابط يوتيوب                   |
| NewsDesc           | NEWS_DSC           | VARCHAR2(3000)    | لا     | نعم       | لا     | شرح أو وصف النشرة             |
| WebSiteLink        | LNK_WEB_SITE       | VARCHAR2(250)     | لا     | نعم       | لا     | رابط الموقع                    |
| AddedUserId        | AD_U_ID            | NUMBER(5,0)       | لا     | نعم       | لا     | المستخدم الذي أضاف            |
| AddedDate          | AD_DATE            | DATE              | لا     | نعم       | لا     | تاريخ الإضافة                 |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز الإضافة                  |
| UpdatedUserId      | UP_U_ID            | NUMBER(5,0)       | لا     | نعم       | لا     | المستخدم الذي عدل             |
| UpdatedDate        | UP_DATE            | DATE              | لا     | نعم       | لا     | تاريخ التعديل                 |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز التعديل                  |
| UpdateCount        | UP_CNT             | NUMBER(10,0)      | لا     | نعم       | لا     | عدد مرات التحديث              |
| ReportPriority     | PR_REP             | NUMBER(10,0)      | لا     | نعم       | لا     | أولوية التقرير                |

---

## ARS_PARA_CSS  <!-- إعدادات أو معايير خاصة بالنظام أو الوحدة -->
| الاسم الجديد                 | الاسم القديم                    | النوع             | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|-----------------------------|---------------------------------|-------------------|--------|-----------|--------|------------------------------|
| ParameterNo                 | PARA_NO                         | NUMBER(1,0)       | لا     | نعم       | لا     | رقم السطر / المعيار          |
| ShowPostedOnlyCostStmt      | SHW_PSTD_ONLY_CST_STMNT         | NUMBER(1,0)       | لا     | نعم       | لا     | عرض فقط البيانات المرحّلة    |
| AutoApproved                | AUTO_APPROVD                    | NUMBER(1,0)       | لا     | نعم       | لا     | موافقة تلقائية              |
| CurrencyCode                | CUR_CODE                        | VARCHAR2(7)       | لا     | نعم       | لا     | كود العملة                  |
| SOExpireAfterDay            | SO_EXPIRE_AFTR_DAY              | NUMBER(3,0)       | لا     | نعم       | لا     | انتهاء أمر البيع بعد أيام    |
| QTExpireAfterDay            | QT_EXPIRE_AFTR_DAY              | NUMBER(3,0)       | لا     | نعم       | لا     | انتهاء عرض السعر بعد أيام    |
| ReservedPeriodDay           | RSRVD_PRD_DAY                   | NUMBER(5,0)       | لا     | نعم       | لا     | فترة الحجز (أيام)           |
| SOType                      | SO_TYPE                         | NUMBER(5,0)       | لا     | نعم       | لا     | نوع أمر البيع               |
| SODesc                      | SO_DSC                          | VARCHAR2(1000)    | لا     | نعم       | لا     | وصف أمر البيع               |
| QTType                      | QT_TYPE                         | NUMBER(5,0)       | لا     | نعم       | لا     | نوع عرض السعر               |
| QTDesc                      | QT_DSC                          | VARCHAR2(1000)    | لا     | نعم       | لا     | وصف عرض السعر               |
| CostCenterCode              | CC_CODE                         | VARCHAR2(30)      | لا     | نعم       | لا     | كود مركز التكلفة            |
| ProjectNo                   | PJ_NO                           | VARCHAR2(15)      | لا     | نعم       | لا     | رقم المشروع                 |
| ActivityNo                  | ACTV_NO                         | VARCHAR2(15)      | لا     | نعم       | لا     | رقم النشاط                  |
| WarehouseCode               | W_CODE                          | VARCHAR2(10)      | لا     | نعم       | لا     | كود المستودع                |
| BranchUser                  | BRN_USR                         | NUMBER(3,0)       | لا     | نعم       | لا     | مستخدم الفرع                |
| UpdatedUserId               | UP_U_ID                         | NUMBER(5,0)       | لا     | نعم       | لا     | المستخدم الذي عدل           |
| UpdatedDate                 | UP_DATE                         | DATE              | لا     | نعم       | لا     | تاريخ التعديل               |
| CompanyNo                   | CMP_NO                          | NUMBER(3,0)       | نعم    | لا        | لا     | رقم الشركة                  |
| BranchYear                  | BRN_YEAR                        | NUMBER(4,0)       | لا     | نعم       | لا     | سنة الفرع                   |
| BranchNo                    | BRN_NO                          | NUMBER(6,0)       | نعم    | لا        | لا     | رقم الفرع                   |
| UpdateCount                 | UP_CNT                          | NUMBER(10,0)      | لا     | نعم       | لا     | عدد مرات التحديث            |
| ReportPriority              | PR_REP                          | NUMBER(10,0)      | لا     | نعم       | لا     | أولوية التقرير              |
| AddedTerminal               | AD_TRMNL_NM                     | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز الإضافة                |
| UpdatedTerminal             | UP_TRMNL_NM                     | VARCHAR2(50)      | لا     | نعم       | لا     | جهاز التعديل                |
| NewItemPeriodDay            | NEW_ITM_PRD_DAY                 | NUMBER(5,0)       | لا     | نعم       | لا     | فترة الصنف الجديد (أيام)    |
| ItemNotStorePeriodDay       | ITM_NOT_STORE_PRD_DAY           | NUMBER(5,0)       | لا     | نعم       | لا     | فترة عدم تخزين الصنف        |
| ConnectCostItemActivity     | CONN_CST_ITM_ACTVTY             | NUMBER(1,0)       | لا     | نعم       | لا     | ربط مركز التكلفة بالنشاط    |
| SOQtyStoreMethod            | SO_QTY_STORE_MTHD               | NUMBER(2,0)       | لا     | نعم       | لا     | طريقة تخزين كمية أمر البيع   |
| CostLimitSOUnprocessed      | CST_LMT_SO_UNPRCSSD             | NUMBER(5,0)       | لا     | نعم       | لا     | حد التكلفة للأوامر غير المعالجة |

---
