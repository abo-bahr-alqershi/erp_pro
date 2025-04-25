# 1. المحاسبة والقيود (Accounting & Journals)

> جميع جداول قسم المحاسبة والقيود مع جميع الحقول.  
> كل حقل بالاسم الجديد (مقترح)، الاسم القديم، نوع الحقل، إجباري/يقبل فارغ/تلقائي/قيمة افتراضية، مع شرح مفصل بالعربي عن وظيفة الحقل ودوره.

---

## Account (**ACCOUNT**)
| الاسم الجديد           | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                         |
|-----------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|------------------------------------|
| AccountCode           | A_CODE                | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز الحساب الرئيسي، معرف فريد للحساب يستخدم في جميع العمليات المحاسبية |
| AccountName           | A_NAME                | VARCHAR2(100)   | نعم    | لا        | لا     |                   | اسم الحساب باللغة العربية، يظهر في التقارير وشجرة الحسابات           |
| AccountNameEng        | A_NAME_ENG            | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم الحساب بالإنجليزية، للعرض في الأنظمة متعددة اللغات                |
| AccountLevel          | A_LEVEL               | NUMBER(5,0)     | نعم    | لا        | لا     |                   | مستوى الحساب في الشجرة (مثلاً: 1=رئيسي، 2=فرعي...الخ)                 |
| AccountParent         | A_PARENT              | VARCHAR2(30)    | نعم    | لا        | لا     |                   | رمز الحساب الأب، يحدد التسلسل الهرمي للحسابات                          |
| ASM                   | A_S_M                 | NUMBER(5,0)     | نعم    | لا        | لا     |                   | نوع الحساب (1=تجميعي/رئيسي، 2=تحليلي/فرعي)                            |
| AccountGrouping       | A_GROUPING            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم مجموعة الحساب المستخدمة في التقارير أو التصنيفات                   |
| AccountReport         | A_REPORT              | NUMBER(5,0)     | نعم    | لا        | لا     |                   | نوع التقرير الذي يظهر الحساب فيه (ميزانية، أرباح وخسائر، ...الخ)        |
| AccountAnalysis       | A_ANALYSIS            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم تحليلي إضافي للحساب (للاستخدامات الخاصة أو الربط مع أنظمة أخرى)     |
| AccountClassNo        | CLASS_NO              | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم تصنيف الحساب (حسب تصنيفات المؤسسة)                                 |
| AccountClosed         | AC_CLOSE              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل الحساب مغلق (1=نعم/0=لا)، يمنع الحركات عليه إذا كان مغلقاً           |
| DebitOrCredit         | DR                    | NUMBER(1,0)     | لا     | نعم       | لا     |                   | نوع الحساب الافتراضي: مدين (1) أو دائن (0)                             |
| CurrencyDiffCode      | CURDIF_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود حساب فروق العملة المرتبط بهذا الحساب                                |
| UseCostCenter         | USE_CC                | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل الحساب يتطلب إدخال مركز تكلفة عند ترحيل القيود                       |
| UseProject            | USE_PJ                | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل الحساب يتطلب إدخال رقم مشروع عند تسجيل القيود                         |
| ConnectionPeriod      | CONN_PRD              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل الحساب مرتبط بفترة زمنية محددة (مثلاً: حسابات دورية)                  |
| FavoriteAccount       | FAV_AC                | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل الحساب مفضل للظهور في القوائم المختصرة أو البحث السريع                |
| FlowType              | FLOW_TYPE             | NUMBER(1,0)     | لا     | نعم       | لا     |                   | نوع تدفق الأموال لهذا الحساب (داخلي/خارجي...)                           |
| InactiveReason        | INACTIVE_RES          | VARCHAR2(250)   | لا     | نعم       | لا     |                   | سبب إيقاف الحساب (عند جعله غير نشط)                                     |
| InactiveDate          | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     |                   | تاريخ إيقاف تفعيل الحساب                                                |
| ConfirmLastDate       | CONF_LAST_DATE        | DATE            | لا     | نعم       | لا     |                   | آخر تاريخ تم فيه تأكيد الحساب أو مراجعة رصيده                            |
| AccountOpNo           | AC_OP_NO              | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العملية المرتبط بالحساب (للربط مع سجلات العمليات أو التسويات)         |
| AccountExpenseType    | AC_EXP_TYPE           | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع المصروف المرتبط بالحساب (إن وجد)                                     |
| UseExpenseBranch      | USE_EXP_BRN           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل يجب تحديد الفرع عند تسجيل المصروف على هذا الحساب                        |
| ImportedXls           | IMP_XLS               | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يوضح أن الحساب مستورد من ملف Excel                                    |
| AccountDtlType        | AC_DTL_TYP            | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل الإضافية المرتبطة بالحساب                                    |
| UseActivity           | USE_ACTV              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | هل الحساب مرتبط بنشاط معين (يجب إدخال النشاط عند استخدامه)                |
| AddedByUserId         | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أنشأ الحساب                                            |
| AddedDate             | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ إنشاء الحساب                                                      |
| UpdatedByUserId       | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدّل الحساب                                           |
| UpdatedDate           | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل على الحساب                                              |
| UpdateCount           | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التحديث/التعديل على الحساب                                     |
| ReportPriority        | PR_REP                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية ظهور الحساب في التقارير                                         |
| AddedTerminal         | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز الذي أُنشئ الحساب منه                                        |
| UpdatedTerminal       | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز الذي تم تعديل الحساب منه                                     |
| UseTDSFlag            | USE_TDS_FLG           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم خاص بضرائب الاستقطاع عند المنبع (TDS)                               |
| AdvExpRevenueFlag     | ADVNC_EXPNS_RVNU_FLG  | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يحدد ما إذا كان الحساب مرتبط بمصروفات/إيرادات مقدمة                 |

---

## AccountCurrency (**ACCOUNT_CURR**)
| الاسم الجديد      | الاسم القديم      | النوع         | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                       |
|------------------|------------------|--------------|--------|-----------|--------|-------------------|----------------------------------|
| AccountCode      | A_CODE           | VARCHAR2(30) | لا     | نعم       | لا     |                   | رمز الحساب الرئيسي المرتبط بهذه العملة                              |
| CurrencyCode     | A_CY             | VARCHAR2(7)  | لا     | نعم       | لا     |                   | رمز العملة (مثال: SAR, USD)                                        |
| Inactive         | INACTIVE         | NUMBER(1,0)  | لا     | نعم       | لا     |                   | علم يحدد إذا كانت هذه العملة مفعلة أم لا للحساب                     |
| Used             | USED             | NUMBER(1,0)  | لا     | نعم       | لا     |                   | علم يحدد إذا تم استخدام هذه العملة ضمن عمليات الحساب                |
| AddedByUserId    | AD_U_ID          | NUMBER(5,0)  | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف ربط العملة بالحساب                           |
| AddedDate        | AD_DATE          | DATE         | لا     | نعم       | لا     |                   | تاريخ إضافة العملة للحساب                                          |
| UpdatedByUserId  | UP_U_ID          | NUMBER(5,0)  | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدّل بيانات العملة للحساب                         |
| UpdatedDate      | UP_DATE          | DATE         | لا     | نعم       | لا     |                   | تاريخ آخر تعديل على العملة للحساب                                   |
| UpdateCount      | UP_CNT           | NUMBER(10,0) | لا     | نعم       | لا     |                   | عدد مرات التحديث/التعديل                                            |

---

## AccountGrouping (**ACCOUNT_GROUPING**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                      |
|------------------|------------------|-----------------|--------|-----------|--------|-------------------|-------------------------------|
| GroupNo          | GROUP_NO         | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المجموعة الفريد، يستخدم لتجميع الحسابات في تصنيفات معينة    |
| GroupName        | GROUP_NAME       | VARCHAR2(100)   | نعم    | لا        | لا     |                   | اسم المجموعة بالعربي، يظهر في التقارير والقوائم                  |
| GroupEName       | GROUP_E_NAME     | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم المجموعة بالإنجليزية، لدعم أنظمة متعددة اللغات               |
| AddedByUserId    | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف المجموعة                                  |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     |                   | تاريخ إضافة المجموعة                                              |
| UpdatedByUserId  | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدّل بيانات المجموعة                           |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل على المجموعة                                      |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل على بيانات المجموعة                              |
| ReportPriority   | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية الظهور في التقارير                                         |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز الذي أُنشئت منه المجموعة                               |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز الذي تم تعديل المجموعة منه                             |

---

## AccountReportType (**ACCOUNT_REPORT_TYPE**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                  |
|------------------|------------------|-----------------|--------|-----------|--------|-------------------|---------------------------|
| ReportType       | REPORT_TYPE      | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم نوع التقرير لتمييز أنواع التقارير المحاسبية    |
| ReportName       | REPORT_NAME      | VARCHAR2(60)    | نعم    | لا        | لا     |                   | اسم التقرير بالعربي، يظهر في النماذج والتقارير      |
| ReportEName      | REPORT_E_NAME    | VARCHAR2(60)    | لا     | نعم       | لا     |                   | اسم التقرير بالإنجليزي، لدعم التقارير متعددة اللغات |
| ReportBS         | REPORT_BS        | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم لتحديد ما إذا كان التقرير ميزانية عمومية أم لا  |
| AddedByUserId    | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف نوع التقرير                   |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     |                   | تاريخ إضافة نوع التقرير                              |
| UpdatedByUserId  | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدّل نوع التقرير                   |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     |                   | تاريخ التعديل                                         |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                                      |
| ReportPriority   | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية ظهور نوع التقرير في القوائم                   |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند إضافة نوع التقرير                     |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند تعديل نوع التقرير                      |

---

## AccountType (**ACCOUNT_TYPES**)
| الاسم الجديد         | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                        |
|---------------------|---------------------|-----------------|--------|-----------|--------|-------------------|-----------------------------------|
| AccountType         | ACCOUNT_TYPE        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم نوع الحساب (أصل، التزام، ...الخ) |
| AccountTypeName     | ACCOUNT_NAME        | VARCHAR2(60)    | نعم    | لا        | لا     |                   | اسم نوع الحساب بالعربي               |
| AccountTypeEName    | ACCOUNT_E_NAME      | VARCHAR2(60)    | لا     | نعم       | لا     |                   | اسم نوع الحساب بالإنجليزي            |
| AffectedByTrans     | AFFECTED_BY_TRANS   | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم لتحديد إذا كان الحساب يتأثر بالحركات|
| AddedByUserId       | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف نوع الحساب     |
| AddedDate           | AD_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ إضافة نوع الحساب                |
| UpdatedByUserId     | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدّل نوع الحساب      |
| UpdatedDate         | UP_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ التعديل                         |
| UpdateCount         | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                      |
| ReportPriority      | PR_REP              | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية ظهور نوع الحساب                |
| AddedTerminal       | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند إضافة نوع الحساب       |
| UpdatedTerminal     | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند تعديل نوع الحساب        |



---

## JournalVoucherType (**GLS_VCHR_TYP_ACNT**)
| الاسم الجديد      | الاسم القديم      | النوع          | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                           |
|------------------|------------------|---------------|--------|-----------|--------|-------------------|--------------------------------------|
| VoucherType      | V_TYPE           | NUMBER(5,0)   | لا     | نعم       | لا     |                   | رقم/نوع السند المحاسبي الرئيسي       |
| VoucherTypeNo    | V_TYPE_NO        | NUMBER(2,0)   | لا     | نعم       | لا     |                   | رقم فرعي لنوع السند                  |
| AccountCode      | AC_CODE          | VARCHAR2(30)  | لا     | نعم       | لا     |                   | كود الحساب الافتراضي لهذا السند      |
| AccountDtlCode   | AC_CODE_DTL      | VARCHAR2(30)  | لا     | نعم       | لا     |                   | كود التفاصيل للحساب                  |
| AccountDtlType   | AC_DTL_TYP       | NUMBER(2,0)   | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                  |

---

## JournalVoucherTypePrivilege (**GLS_VCHR_TYP_PRV**)
| الاسم الجديد      | الاسم القديم      | النوع          | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                           |
|------------------|------------------|---------------|--------|-----------|--------|-------------------|--------------------------------------|
| VoucherType      | V_TYP            | NUMBER(4,0)   | لا     | نعم       | لا     |                   | رقم نوع السند                        |
| VoucherTypeNo    | V_TYP_NO         | NUMBER(4,0)   | لا     | نعم       | لا     |                   | رقم فرعي لنوع السند                  |
| UserId           | U_ID             | NUMBER(5,0)   | لا     | نعم       | لا     |                   | رقم المستخدم                         |
| AddFlag          | ADD_FLAG         | NUMBER(1,0)   | لا     | نعم       | لا     |                   | صلاحية الإضافة (1=يستطيع إضافة)     |
| ViewFlag         | VIEW_FLAG        | NUMBER(1,0)   | لا     | نعم       | لا     |                   | صلاحية العرض (1=يستطيع عرض)         |
| AddedDate        | AD_DATE          | DATE          | لا     | نعم       | لا     |                   | تاريخ الإضافة                        |
| AddedByUserId    | AD_U_ID          | NUMBER(5,0)   | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر          |
| UpdatedDate      | UP_DATE          | DATE          | لا     | نعم       | لا     |                   | تاريخ التعديل                        |
| UpdatedByUserId  | UP_U_ID          | NUMBER(5,0)   | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر           |

---

## JournalDetail (**DETAIL_JOURNAL_V**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                         |
|--------------------|--------------------|-----------------|--------|-----------|--------|-------------------|------------------------------------|
| JVType             | JV_TYPE            | NUMBER(4,0)     | نعم    | لا        | لا     |                   | رقم نوع القيد المحاسبي              |
| JDocNo             | J_DOC_NO           | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم المستند المحاسبي                |
| JSerial            | J_SER              | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للسطر                |
| AccountCode        | A_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     |                   | كود الحساب                          |
| AccountDtlCode     | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل للحساب                  |
| AccountDtlSub      | AC_CODE_DTL_SUB    | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل الفرعية للحساب           |
| AccountDtlType     | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                  |
| CurrencyCode       | A_CY               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                           |
| JDesc              | J_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف السطر المحاسبي                    |
| JAmount            | J_AMT              | NUMBER          | لا     | نعم       | لا     |                   | المبلغ المحاسبي بالعملة المحلية        |
| JAmountForeign     | J_AMT_F            | NUMBER          | لا     | نعم       | لا     |                   | المبلغ بالعملة الأجنبية                |
| AccountRate        | AC_RATE            | NUMBER          | لا     | نعم       | لا     |                   | سعر صرف الحساب                        |
| CostCenterCode     | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود مركز التكلفة                      |
| ProjectNo          | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع المرتبط بالسطر             |
| ActivityNo         | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                             |
| CCode              | C_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود العميل                             |
| VCode              | V_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود المورد                              |
| ReportCode         | REP_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير                             |
| CollectorNo        | COL_NO             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل                              |
| LCNo               | LC_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم الاعتماد المستندي                   |
| GRNo               | GR_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم أمر التوريد/الإصدار                 |
| CashBankNo         | CSH_BNK_NO         | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم الصندوق أو البنك                     |
| RecordNo           | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم السطر في القيد                       |
| RecordNoOrd        | RCRD_NO_ORD        | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم السطر الترتيبي                        |
| DocTypeRef         | DOC_TYPE_REF       | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع المستند المرجعي                        |
| DocJVTypeRef       | DOC_JV_TYPE_REF    | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع القيد المرجعي                          |
| DocNoRef           | DOC_NO_REF         | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم المستند المرجعي                         |
| DocSerRef          | DOC_SER_REF        | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للمستند المرجعي               |
| DocDueDate         | DOC_DUE_DATE       | DATE            | لا     | نعم       | لا     |                   | تاريخ الاستحقاق للمستند المرجعي               |
| BillNo             | BILL_NO            | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم الفاتورة                                 |
| BillSer            | BILL_SER           | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للفاتورة                        |
| CashierNo          | CASHIER_NO         | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم أمين الصندوق                                 |
| INo                | I_NO               | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العنصر                                     |
| WONo               | WO_NO              | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم أمر العمل                                  |
| WOSer              | WO_SER             | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي لأمر العمل                       |
| RefNo              | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                                 |
| ContractNo         | CNTRCT_NO          | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العقد                                       |
| ContractSerial     | CNTRCT_SRL         | NUMBER          | لا     | نعم       | لا     |                   | السيريال للعقد                                  |
| ContractBatch      | CNTRCT_BTCH        | NUMBER(6,0)     | لا     | نعم       | لا     |                   | دفعة العقد                                      |
| ChequeNo           | CHEQUE_NO          | NUMBER(20,0)    | لا     | نعم       | لا     |                   | رقم الشيك                                       |
| NoteNo             | NOTE_NO            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رقم الإشعار/الملاحظة                             |
| DocSequence        | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند                                   |
| ExternalPost       | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                              |
| DocBranchNo        | DOC_BRN_NO         | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم فرع المستند                                  |
| Note               | NOTE               | VARCHAR2(150)   | لا     | نعم       | لا     |                   | ملاحظات                                         |
| DocSequenceRef     | DOC_SEQUENCE_REF   | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند المرجعي                            |
| RecordNoRef        | RCRD_NO_REF        | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم السطر المرجعي                                 |
| AddedByUserId      | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أنشأ السطر                       |
| AddedDate          | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                     |
| UpdatedByUserId    | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                        |
| UpdatedDate        | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                                   |
| UpdateCount        | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                                   |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم الشركة                                        |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     |                   | رقم الفرع                                         |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     |                   | سنة الفرع                                         |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                      |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                             |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                             |
| CalcTypeNoTax      | CLC_TYP_NO_TAX     | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع الحساب الضريبي                                 |
| TaxPercent         | TAX_PRCNT          | NUMBER          | لا     | نعم       | لا     |                   | نسبة الضريبة                                       |
| TaxAmount          | TAX_AMT            | NUMBER          | لا     | نعم       | لا     |                   | مبلغ الضريبة                                       |
| HrsDocTypeRef      | HRS_DOC_TYP_REF    | NUMBER          | لا     | نعم       | لا     |                   | نوع المستند للموارد البشرية                        |
| HrsDocSerRef       | HRS_DOC_SRL_REF    | NUMBER          | لا     | نعم       | لا     |                   | الرقم التسلسلي للمستند للموارد البشرية             |
| HrsDocNoRef        | HRS_DOC_NO_REF     | NUMBER          | لا     | نعم       | لا     |                   | رقم المستند للموارد البشرية                        |
| Fld1               | FLD1               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                         |
| Fld2               | FLD2               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                         |
| Fld3               | FLD3               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                         |
| Fld4               | FLD4               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                         |
| Fld5               | FLD5               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                         |

---



## JournalDetailBranch (**DETAIL_JOURNAL_V_BR**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                         |
|--------------------|--------------------|-----------------|--------|-----------|--------|-------------------|------------------------------------|
| JVType             | JV_TYPE            | NUMBER(4,0)     | نعم    | لا        | لا     |                   | رقم نوع القيد المحاسبي              |
| JDocNo             | J_DOC_NO           | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم المستند المحاسبي                |
| JSerial            | J_SER              | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للسطر                |
| AccountCode        | A_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     |                   | كود الحساب                          |
| AccountDtlCode     | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل للحساب                  |
| AccountDtlType     | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                  |
| CurrencyCode       | A_CY               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                           |
| JDesc              | J_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف السطر المحاسبي                    |
| JAmount            | J_AMT              | NUMBER          | لا     | نعم       | لا     |                   | المبلغ المحاسبي بالعملة المحلية        |
| JAmountForeign     | J_AMT_F            | NUMBER          | لا     | نعم       | لا     |                   | المبلغ بالعملة الأجنبية                |
| AccountRate        | AC_RATE            | NUMBER          | لا     | نعم       | لا     |                   | سعر صرف الحساب                        |
| CostCenterCode     | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود مركز التكلفة                      |
| ProjectNo          | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع المرتبط بالسطر             |
| ActivityNo         | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                             |
| CCode              | C_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود العميل                             |
| VCode              | V_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود المورد                              |
| ReportCode         | REP_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير                             |
| CollectorNo        | COL_NO             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل                              |
| LCNo               | LC_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم الاعتماد المستندي                   |
| GRNo               | GR_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم أمر التوريد/الإصدار                 |
| CashBankNo         | CSH_BNK_NO         | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم الصندوق أو البنك                     |
| RecordNo           | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم السطر في القيد                       |
| RecordNoOrd        | RCRD_NO_ORD        | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم السطر الترتيبي                        |
| DocTypeRef         | DOC_TYPE_REF       | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع المستند المرجعي                        |
| DocJVTypeRef       | DOC_JV_TYPE_REF    | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع القيد المرجعي                          |
| DocNoRef           | DOC_NO_REF         | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم المستند المرجعي                         |
| DocSerRef          | DOC_SER_REF        | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للمستند المرجعي               |
| DocDueDate         | DOC_DUE_DATE       | DATE            | لا     | نعم       | لا     |                   | تاريخ الاستحقاق للمستند المرجعي               |
| BillNo             | BILL_NO            | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم الفاتورة                                 |
| BillSer            | BILL_SER           | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للفاتورة                        |
| CashierNo          | CASHIER_NO         | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم أمين الصندوق                                 |
| INo                | I_NO               | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العنصر                                     |
| WONo               | WO_NO              | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم أمر العمل                                  |
| WOSer              | WO_SER             | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي لأمر العمل                       |
| RefNo              | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                                 |
| ChequeNo           | CHEQUE_NO          | NUMBER(20,0)    | لا     | نعم       | لا     |                   | رقم الشيك                                       |
| NoteNo             | NOTE_NO            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رقم الإشعار/الملاحظة                             |
| DocSequence        | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند                                   |
| ExternalPost       | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                              |
| DocBranchNo        | DOC_BRN_NO         | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم فرع المستند                                  |
| Note               | NOTE               | VARCHAR2(150)   | لا     | نعم       | لا     |                   | ملاحظات                                         |
| AddedByUserId      | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أنشأ السطر                       |
| AddedDate          | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                     |
| UpdatedByUserId    | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                        |
| UpdatedDate        | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                                   |
| UpdateCount        | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                                   |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم الشركة                                        |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم الفرع                                         |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     |                   | سنة الفرع                                         |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                      |
| ContractNo         | CNTRCT_NO          | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العقد                                         |
| ContractSerial     | CNTRCT_SRL         | NUMBER          | لا     | نعم       | لا     |                   | السيريال للعقد                                    |
| ContractBatch      | CNTRCT_BTCH        | NUMBER(6,0)     | لا     | نعم       | لا     |                   | دفعة العقد                                        |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                             |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                             |

---

## MasterJournal (**MASTER_JOURNAL_V**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                         |
|--------------------|--------------------|-----------------|--------|-----------|--------|-------------------|------------------------------------|
| JVType             | JV_TYPE            | NUMBER(4,0)     | نعم    | لا        | لا     |                   | نوع القيد الرئيسي                  |
| JDocNo             | J_DOC_NO           | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم المستند الرئيسي                |
| JSerial            | J_SER              | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي                      |
| JPost              | J_POST             | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حالة الترحيل (1=مرحل)              |
| JDate              | J_DATE             | DATE            | نعم    | لا        | لا     |                   | تاريخ القيد                         |
| BatchVal           | BATCH_VAL          | NUMBER          | لا     | نعم       | لا     |                   | قيمة الدفعة                         |
| RefNo              | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                     |
| RevrsJrnl          | REVRS_JRNL         | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يوضح إذا كان القيد عكسي          |
| PeriodicalJrnl     | PERIODICAL_JRNL    | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يوضح إذا كان القيد دوري          |
| CashReserve        | CASH_RESERVE       | NUMBER(1,0)     | لا     | نعم       | لا     |                   | احتياطي نقدي                        |
| StandBy            | STAND_BY           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | قيد احتياطي                          |
| LinkUse            | LINK_USE           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | استخدام الربط                         |
| AttachNo           | ATTACH_NO          | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم المرفق                             |
| BenName            | BEN_NAME           | VARCHAR2(150)   | لا     | نعم       | لا     |                   | اسم المستفيد                          |
| RecName            | REC_NAME           | VARCHAR2(150)   | لا     | نعم       | لا     |                   | اسم المستلم                            |
| TDesc              | T_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف القيد الرئيسي                       |
| AuditRef           | AUDIT_REF          | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مرجع التدقيق                             |
| AuditRefDesc       | AUDIT_REF_DESC     | VARCHAR2(500)   | لا     | نعم       | لا     |                   | وصف مرجع التدقيق                           |
| AuditRefUserId     | AUDIT_REF_U_ID     | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لمرجع التدقيق                    |
| AuditRefDate       | AUDIT_REF_DATE     | DATE            | لا     | نعم       | لا     |                   | تاريخ مرجع التدقيق                              |
| ReportPriority     | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير                                   |
| ClsZeroAcBlc       | CLS_ZERO_AC_BLNC   | NUMBER(1,0)     | لا     | نعم       | لا     |                   | إغلاق الأرصدة الصفرية                           |
| ExternalPost       | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                              |
| AddedByUserId      | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر                       |
| AddedDate          | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                     |
| UpdatedByUserId    | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                        |
| UpdatedDate        | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                                   |
| UpdateCount        | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                                   |
| PostUserId         | POST_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي رحل                              |
| PostDate           | POST_DATE          | DATE            | لا     | نعم       | لا     |                   | تاريخ الترحيل                                      |
| UnpostUserId       | UNPOST_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي ألغى الترحيل                      |
| UnpostDate         | UNPOST_DATE        | DATE            | لا     | نعم       | لا     |                   | تاريخ إلغاء الترحيل                                 |
| Field1             | FIELD1             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field2             | FIELD2             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field3             | FIELD3             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field4             | FIELD4             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field5             | FIELD5             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field6             | FIELD6             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field7             | FIELD7             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field8             | FIELD8             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field9             | FIELD9             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| Field10            | FIELD10            | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                           |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم الشركة                                          |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     |                   | رقم الفرع                                           |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     |                   | سنة الفرع                                           |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                        |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                             |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                             |


---

## MasterJournalBranch (**MASTER_JOURNAL_V_BR**)
| الاسم الجديد         | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل             |
|---------------------|---------------------|-----------------|--------|-----------|--------|-------------------|-----------------------|
| JVType              | JV_TYPE             | NUMBER(4,0)     | نعم    | لا        | لا     |                   | رقم نوع القيد الرئيسي للفرع |
| JDocNo              | J_DOC_NO            | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم المستند الرئيسي للفرع    |
| JSerial             | J_SER               | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للسطر         |
| JPost               | J_POST              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حالة الترحيل (1=مرحل)        |
| JDate               | J_DATE              | DATE            | نعم    | لا        | لا     |                   | تاريخ القيد                   |
| BatchVal            | BATCH_VAL           | NUMBER          | لا     | نعم       | لا     |                   | قيمة الدفعة                   |
| RefNo               | REF_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي               |
| RevrsJrnl           | REVRS_JRNL          | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يوضح إذا كان القيد عكسي    |
| PeriodicalJrnl      | PERIODICAL_JRNL     | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يوضح إذا كان القيد دوري    |
| CashReserve         | CASH_RESERVE        | NUMBER(1,0)     | لا     | نعم       | لا     |                   | احتياطي نقدي                  |
| StandBy             | STAND_BY            | NUMBER(1,0)     | لا     | نعم       | لا     |                   | قيد احتياطي                   |
| LinkUse             | LINK_USE            | NUMBER(1,0)     | لا     | نعم       | لا     |                   | استخدام الربط                  |
| AttachNo            | ATTACH_NO           | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم المرفق                     |
| BenName             | BEN_NAME            | VARCHAR2(150)   | لا     | نعم       | لا     |                   | اسم المستفيد                   |
| RecName             | REC_NAME            | VARCHAR2(150)   | لا     | نعم       | لا     |                   | اسم المستلم                    |
| TDesc               | T_DESC              | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف القيد                      |
| AuditRef            | AUDIT_REF           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مرجع التدقيق                   |
| AuditRefDesc        | AUDIT_REF_DESC      | VARCHAR2(500)   | لا     | نعم       | لا     |                   | وصف مرجع التدقيق               |
| AuditRefUserId      | AUDIT_REF_U_ID      | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لمرجع التدقيق      |
| AuditRefDate        | AUDIT_REF_DATE      | DATE            | لا     | نعم       | لا     |                   | تاريخ مرجع التدقيق              |
| ReportPriority      | PR_REP              | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير                  |
| ClsZeroAcBlc        | CLS_ZERO_AC_BLNC    | NUMBER(1,0)     | لا     | نعم       | لا     |                   | إغلاق الأرصدة الصفرية           |
| ExternalPost        | EXTERNAL_POST       | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي              |
| AddedByUserId       | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر      |
| AddedDate           | AD_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                    |
| UpdatedByUserId     | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر       |
| UpdatedDate         | UP_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                   |
| UpdateCount         | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                  |
| PostUserId          | POST_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي رحل             |
| PostDate            | POST_DATE           | DATE            | لا     | نعم       | لا     |                   | تاريخ الترحيل                     |
| UnpostUserId        | UNPOST_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي ألغى الترحيل     |
| UnpostDate          | UNPOST_DATE         | DATE            | لا     | نعم       | لا     |                   | تاريخ إلغاء الترحيل                |
| Field1              | FIELD1              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field2              | FIELD2              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field3              | FIELD3              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field4              | FIELD4              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field5              | FIELD5              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field6              | FIELD6              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field7              | FIELD7              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field8              | FIELD8              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field9              | FIELD9              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| Field10             | FIELD10             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                         |
| CompanyNo           | CMP_NO              | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم الشركة                        |
| BranchNo            | BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم الفرع                         |
| BranchYear          | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     |                   | سنة الفرع                         |
| BranchUser          | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                      |
| AddedTerminal       | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة             |
| UpdatedTerminal     | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل             |


---

## OpenBalance (**OPEN_BAL**)
| الاسم الجديد             | الاسم القديم            | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                  |
|-------------------------|------------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------------|
| AccountCode             | A_CODE                 | VARCHAR2(30)    | نعم    | لا        | لا     |                   | رمز الحساب                                 |
| AccountDtlCode          | AC_CODE_DTL            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز التفاصيل للحساب                         |
| AccountDtlSub           | AC_CODE_DTL_SUB        | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز التفاصيل الفرعية                        |
| AccountDtlType          | AC_DTL_TYP             | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                         |
| CurrencyCode            | A_CY                   | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                                  |
| CostCenterCode          | CC_CODE                | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود مركز التكلفة                            |
| FromCostCenterCode      | FROM_CC_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | مركز التكلفة المحول منه                     |
| LCNo                    | LC_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم الاعتماد المستندي                       |
| ProjectNo               | PJ_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع                                 |
| ActivityNo              | ACTV_NO                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                                  |
| ReportCode              | REP_CODE               | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير                                 |
| Amount                  | J_AMT                  | NUMBER          | لا     | نعم       | لا     |                   | المبلغ                                      |
| AmountForeign           | J_AMT_F                | NUMBER          | لا     | نعم       | لا     |                   | المبلغ بالعملة الأجنبية                     |
| AccountRate             | AC_RATE                | NUMBER          | لا     | نعم       | لا     |                   | سعر الصرف                                   |
| Verify                  | VERIFY                 | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم التحقق                                  |
| OB_PY                   | OB_PY                  | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم الرصيد الافتتاحي للسنة السابقة           |
| CollectorNo             | COL_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل                                  |
| DocSequence             | DOC_SEQUENCE           | NUMBER(38,0)    | نعم    | لا        | لا     |                   | تسلسل المستند                               |
| ExternalPost            | EXTERNAL_POST          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                          |
| FBranchNo               | F_BRN_NO               | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم الفرع المحول منه                         |
| ValueDate               | VALUE_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ القيمة                                 |
| AddedByUserId           | AD_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر                  |
| AddedDate               | AD_DATE                | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                 |
| UpdatedByUserId         | UP_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                   |
| UpdatedDate             | UP_DATE                | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                               |
| CompanyNo               | CMP_NO                 | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم الشركة                                   |
| BranchNo                | BRN_NO                 | NUMBER(6,0)     | نعم    | لا        | لا     |                   | رقم الفرع                                    |
| BranchYear              | BRN_YEAR               | NUMBER(4,0)     | لا     | نعم       | لا     |                   | السنة المالية للفرع                           |
| BranchUser              | BRN_USR                | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                 |
| UpdateCount             | UP_CNT                 | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                              |
| ReportPriority          | PR_REP                 | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير                               |
| AddedTerminal           | AD_TRMNL_NM            | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                        |
| UpdatedTerminal         | UP_TRMNL_NM            | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                        |
| RefNo                   | REF_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                               |
| AccountDesc             | AC_DSC                 | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف أو ملاحظات للحساب                         |

---

## Vouchers (**VOUCHERS**)
| الاسم الجديد         | الاسم القديم          | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| VoucherType         | VOUCHER_TYPE         | NUMBER(1,0)     | نعم    | لا        | لا     |                   | نوع السند                             |
| VoucherPayType      | VOUCHER_PAY_TYPE     | NUMBER(1,0)     | نعم    | لا        | لا     |                   | نوع الدفع للسند                        |
| VoucherNo           | VOUCHER_NO           | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم السند                              |
| CashNo              | CASH_NO              | NUMBER(10,0)    | نعم    | لا        | لا     |                   | رقم الصندوق                             |
| CurrencyCode        | A_CY                 | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                              |
| VoucherSerial       | V_SER                | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للسند                     |
| VoucherDate         | VOUCHER_DATE         | DATE            | نعم    | لا        | لا     |                   | تاريخ إصدار السند                        |
| CashAmount          | CASH_AMT             | NUMBER          | لا     | نعم       | لا     |                   | قيمة النقدية                              |
| CashAmountForeign   | CASH_AMTF            | NUMBER          | لا     | نعم       | لا     |                   | قيمة النقدية بالعملة الأجنبية              |
| ExchangeRate        | EX_RATE              | NUMBER          | لا     | نعم       | لا     |                   | سعر الصرف                                 |
| VoucherPost         | VOUCHER_POST         | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حالة الترحيل                              |
| RefNo               | REF_NO               | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                            |
| RefName             | REF_NAME             | VARCHAR2(60)    | لا     | نعم       | لا     |                   | اسم المرجع                                 |
| Description         | A_DESC               | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف السند                                   |
| RecipientName       | REC_NAME             | VARCHAR2(150)   | لا     | نعم       | لا     |                   | اسم المستلم                                 |
| StandBy             | STAND_BY             | NUMBER(1,0)     | لا     | نعم       | لا     |                   | سند احتياطي                                  |
| Transfer            | TRANSFER             | NUMBER          | لا     | نعم       | لا     |                   | علم التحويل                                  |
| ChequeType          | CHEQ_TYPE            | NUMBER          | لا     | نعم       | لا     |                   | نوع الشيك                                     |
| CollectorNo         | COL_NO               | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل                                    |
| CostCenterCode      | CC_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود مركز التكلفة                               |
| ProjectNo           | PJ_NO                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع                                    |
| ActivityNo          | ACTV_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                                     |
| AttachNo            | ATTACH_NO            | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم المرفق                                     |
| ReportPriority      | PR_REP               | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير                                 |
| CommPercent         | COMM_PER             | NUMBER(7,4)     | لا     | نعم       | لا     |                   | نسبة العمولة                                   |
| VoucherNoPY         | VOUCHER_NO_PY        | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم السند للسنة السابقة                        |
| VoucherDatePY       | VOUCHER_DATE_PY      | DATE            | لا     | نعم       | لا     |                   | تاريخ السند للسنة السابقة                      |
| MoveChequePY        | MOVE_CHEQ_PY         | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حركة الشيك السنة السابقة                       |
| MoveChequeCY        | MOVE_CHEQ_CY         | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حركة الشيك السنة الحالية                       |
| VoucherTypeNo       | V_TYPE_NO            | NUMBER(2,0)     | لا     | نعم       | لا     |                   | رقم نوع السند                                 |
| ExternalPost        | EXTERNAL_POST        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                            |
| AuditRef            | AUDIT_REF            | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مرجع التدقيق                                   |
| AuditRefDesc        | AUDIT_REF_DESC       | VARCHAR2(500)   | لا     | نعم       | لا     |                   | وصف مرجع التدقيق                               |
| AuditRefUserId      | AUDIT_REF_U_ID       | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لمرجع التدقيق                      |
| AuditRefDate        | AUDIT_REF_DATE       | DATE            | لا     | نعم       | لا     |                   | تاريخ مرجع التدقيق                              |
| Field1              | FIELD1               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field2              | FIELD2               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field3              | FIELD3               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field4              | FIELD4               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field5              | FIELD5               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field6              | FIELD6               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field7              | FIELD7               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field8              | FIELD8               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field9              | FIELD9               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| Field10             | FIELD10              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                       |
| PostUserId          | POST_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي رحل السند                      |
| PostDate            | POST_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الترحيل                                   |
| UnpostUserId        | UNPOST_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي ألغى الترحيل                    |
| UnpostDate          | UNPOST_DATE          | DATE            | لا     | نعم       | لا     |                   | تاريخ إلغاء الترحيل                              |
| DocSequence         | DOC_SEQUENCE         | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند                                    |
| DocBranchNo         | DOC_BRN_NO           | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم فرع المستند                                   |
| AddedByUserId       | AD_U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر                       |
| AddedDate           | AD_DATE              | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                      |
| UpdatedByUserId     | UP_U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                        |
| UpdatedDate         | UP_DATE              | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                                    |
| UpdateCount         | UP_CNT               | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                                   |
| CompanyNo           | CMP_NO               | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم الشركة                                         |
| BranchNo            | BRN_NO               | NUMBER(6,0)     | نعم    | لا        | لا     |                   | رقم الفرع                                          |
| BranchYear          | BRN_YEAR             | NUMBER(4,0)     | لا     | نعم       | لا     |                   | السنة المالية للفرع                                |
| BranchUser          | BRN_USR              | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                       |
| AddedTerminal       | AD_TRMNL_NM          | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                             |
| UpdatedTerminal     | UP_TRMNL_NM          | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                             |
| DocSerExternal      | DOC_SER_EXTRNL       | VARCHAR2(256)   | لا     | نعم       | لا     |                   | الرقم الخارجي للسيريال                             |
| ReportCode          | REP_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير                                        |
| AccountDtlCode      | AC_CODE_DTL          | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل للحساب                                |
| AccountDtlType      | AC_DTL_TYP           | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                                |

---



## VouchersBranch (**VOUCHERS_BR**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| VoucherType         | VOUCHER_TYPE          | NUMBER(1,0)     | نعم    | لا        | لا     |                   | نوع السند                             |
| VoucherPayType      | VOUCHER_PAY_TYPE      | NUMBER(1,0)     | نعم    | لا        | لا     |                   | نوع دفع السند                         |
| VoucherNo           | VOUCHER_NO            | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم السند                             |
| CashNo              | CASH_NO               | NUMBER(10,0)    | نعم    | لا        | لا     |                   | رقم الصندوق                           |
| CurrencyCode        | A_CY                  | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                            |
| VoucherSerial       | V_SER                 | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للسند                  |
| VoucherDate         | VOUCHER_DATE          | DATE            | نعم    | لا        | لا     |                   | تاريخ إصدار السند                     |
| CashAmount          | CASH_AMT              | NUMBER          | لا     | نعم       | لا     |                   | قيمة النقدية                          |
| CashAmountForeign   | CASH_AMTF             | NUMBER          | لا     | نعم       | لا     |                   | قيمة النقدية بالعملة الأجنبية          |
| ExchangeRate        | EX_RATE               | NUMBER          | لا     | نعم       | لا     |                   | سعر الصرف                             |
| VoucherPost         | VOUCHER_POST          | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حالة الترحيل                          |
| RefNo               | REF_NO                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                       |
| RefName             | REF_NAME              | VARCHAR2(60)    | لا     | نعم       | لا     |                   | اسم المرجع                            |
| Description         | A_DESC                | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف السند                             |
| RecipientName       | REC_NAME              | VARCHAR2(150)   | لا     | نعم       | لا     |                   | اسم المستلم                           |
| StandBy             | STAND_BY              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | سند احتياطي                           |
| Transfer            | TRANSFER              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم التحويل                           |
| ChequeType          | CHEQ_TYPE             | NUMBER          | لا     | نعم       | لا     |                   | نوع الشيك                             |
| CollectorNo         | COL_NO                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل                            |
| CostCenterCode      | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود مركز التكلفة                      |
| ProjectNo           | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع                           |
| ActivityNo          | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                            |
| AttachNo            | ATTACH_NO             | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم المرفق                            |
| ReportPriority      | PR_REP                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير                        |
| CommPercent         | COMM_PER              | NUMBER(7,4)     | لا     | نعم       | لا     |                   | نسبة العمولة                          |
| VoucherNoPY         | VOUCHER_NO_PY         | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم السند للسنة السابقة                |
| VoucherDatePY       | VOUCHER_DATE_PY       | DATE            | لا     | نعم       | لا     |                   | تاريخ السند للسنة السابقة              |
| MoveChequePY        | MOVE_CHEQ_PY          | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حركة الشيك السنة السابقة               |
| MoveChequeCY        | MOVE_CHEQ_CY          | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حركة الشيك السنة الحالية               |
| VoucherTypeNo       | V_TYPE_NO             | NUMBER(2,0)     | لا     | نعم       | لا     |                   | رقم نوع السند                         |
| ExternalPost        | EXTERNAL_POST         | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                    |
| AuditRef            | AUDIT_REF             | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مرجع التدقيق                          |
| AuditRefDesc        | AUDIT_REF_DESC        | VARCHAR2(500)   | لا     | نعم       | لا     |                   | وصف مرجع التدقيق                      |
| AuditRefUserId      | AUDIT_REF_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لمرجع التدقيق             |
| AuditRefDate        | AUDIT_REF_DATE        | DATE            | لا     | نعم       | لا     |                   | تاريخ مرجع التدقيق                     |
| Field1              | FIELD1                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field2              | FIELD2                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field3              | FIELD3                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field4              | FIELD4                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field5              | FIELD5                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field6              | FIELD6                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field7              | FIELD7                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field8              | FIELD8                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field9              | FIELD9                | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| Field10             | FIELD10               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                              |
| PostUserId          | POST_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي رحل السند             |
| PostDate            | POST_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ الترحيل                           |
| UnpostUserId        | UNPOST_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي ألغى الترحيل           |
| UnpostDate          | UNPOST_DATE           | DATE            | لا     | نعم       | لا     |                   | تاريخ إلغاء الترحيل                      |
| DocSequence         | DOC_SEQUENCE          | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند                            |
| DocBranchNo         | DOC_BRN_NO            | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم فرع المستند                           |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر               |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                              |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                            |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                           |
| CompanyNo           | CMP_NO                | NUMBER(2,0)     | لا     | نعم       | لا     |                   | رقم الشركة                                 |
| BranchNo            | BRN_NO                | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم الفرع                                  |
| BranchYear          | BRN_YEAR              | NUMBER(4,0)     | لا     | نعم       | لا     |                   | السنة المالية للفرع                        |
| BranchUser          | BRN_USR               | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                               |
| AddedTerminal       | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                      |
| UpdatedTerminal     | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                      |

---

## VoucherDetail (**VOUCHER_DETAIL**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| VoucherType         | VOUCHER_TYPE          | NUMBER(1,0)     | نعم    | لا        | لا     |                   | نوع السند                             |
| VoucherPayType      | VOUCHER_PAY_TYPE      | NUMBER(1,0)     | نعم    | لا        | لا     |                   | نوع الدفع للسند                        |
| VoucherNo           | VOUCHER_NO            | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم السند                              |
| CashNo              | CASH_NO               | NUMBER(10,0)    | نعم    | لا        | لا     |                   | رقم الصندوق                             |
| VoucherSerial       | V_SER                 | NUMBER(38,0)    | نعم    | لا        | لا     |                   | الرقم التسلسلي للسند                    |
| AccountCode         | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     |                   | كود الحساب                              |
| AccountDtlCode      | AC_CODE_DTL           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل للحساب                      |
| AccountDtlSub       | AC_CODE_DTL_SUB       | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل الفرعية للحساب               |
| AccountDtlSubEnd    | AC_CODE_DTL_SUB_END   | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل الفرعية النهائية             |
| AccountDtlSubDrComm | AC_CODE_DTL_SUB_DR_COMM| VARCHAR2(30)   | لا     | نعم       | لا     |                   | كود التفاصيل الفرعية للخصم                |
| AccountDtlType      | AC_DTL_TYP            | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                      |
| CurrencyCode        | A_CY                  | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                               |
| AccountDesc         | AC_DESC               | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف السطر المحاسبي                        |
| Amount              | AC_AMT                | NUMBER          | لا     | نعم       | لا     |                   | المبلغ بالعملة المحلية                     |
| AmountForeign       | AC_AMTF               | NUMBER          | لا     | نعم       | لا     |                   | المبلغ بالعملة الأجنبية                    |
| ExchangeRate        | EX_RATE               | NUMBER          | لا     | نعم       | لا     |                   | سعر الصرف                                 |
| CostCenterCode      | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     |                   | مركز التكلفة                              |
| ProjectNo           | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع                               |
| ActivityNo          | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                                |
| CCode               | C_CODE                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود العميل                                |
| VCode               | V_CODE                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود المورد                                 |
| ReportCode          | REP_CODE              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير                                |
| CashBankNo          | CSH_BNK_NO            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم الصندوق أو البنك                        |
| ChequeNo            | CHEQUE_NO             | NUMBER(20,0)    | لا     | نعم       | لا     |                   | رقم الشيك                                   |
| ValueDate           | VALUE_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ القيمة                                 |
| ChequePost          | CHEQUE_POST           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حالة الترحيل للشيك                            |
| ChequeValued        | CHEQUE_VALUED         | NUMBER(1,0)     | لا     | نعم       | لا     |                   | حالة القيمة للشيك                              |
| Endorsement         | ENDRSMNT              | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم التظهير                                   |
| NoteNo              | NOTE_NO               | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رقم الملاحظة                                   |
| BankNo              | BANK_NO               | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم البنك                                      |
| BankName            | BANK_NM               | VARCHAR2(60)    | لا     | نعم       | لا     |                   | اسم البنك                                      |
| BankBranchNo        | BANK_BRN_NO           | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم فرع البنك                                   |
| AccountCodeEnd      | A_CODE_END            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز الحساب النهائي                              |
| CCodeEnd            | C_CODE_END            | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود العميل النهائي                               |
| VCodeEnd            | V_CODE_END            | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود المورد النهائي                                |
| ReturnReason        | RETURN_RES            | VARCHAR2(250)   | لا     | نعم       | لا     |                   | سبب الإرجاع                                       |
| LCNo                | LC_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم الاعتماد المستندي                             |
| CINo                | CI_NO                 | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم الاعتماد المستندي                              |
| CISerial            | CI_SER                | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للاعتماد المستندي                     |
| HRSPayNo            | HRS_PAY_NO            | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم سند صرف الموارد البشرية                           |
| KNo                 | K_NO                  | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم الكمبيالة                                        |
| KSerial             | K_SER                 | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للكمبيالة                                 |
| BillNo              | BILL_NO               | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم الفاتورة                                            |
| BillSerial          | BILL_SER              | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للفاتورة                                   |
| INo                 | I_NO                  | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العنصر                                               |
| WONo                | WO_NO                 | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم أمر العمل                                            |
| WOSerial            | WO_SER                | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي لأمر العمل                                   |
| ContractNo          | CNTRCT_NO             | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم العقد                                                 |
| ContractSerial      | CNTRCT_SRL            | NUMBER          | لا     | نعم       | لا     |                   | الرقم التسلسلي للعقد                                       |
| ContractBatch       | CNTRCT_BTCH           | NUMBER(6,0)     | لا     | نعم       | لا     |                   | دفعة العقد                                                |
| ReportCommAmount    | REP_COMM_AMT          | NUMBER          | لا     | نعم       | لا     |                   | مبلغ العمولة للتقرير                                      |
| RefNo               | REF_NO                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                                           |
| RecordNo            | RCRD_NO               | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم السطر في القيد                                         |
| ConnVoucherNo       | CONN_V_NO             | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم السند المرتبط                                          |
| ConnVoucherSerial   | CONN_V_SER            | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للسند المرتبط                               |
| ConnVoucherAmount   | CONN_V_AMT            | NUMBER          | لا     | نعم       | لا     |                   | مبلغ السند المرتبط                                         |
| ExternalPost        | EXTERNAL_POST         | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                                        |
| BlmntDate           | BLMNT_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ التسوية                                             |
| DocSequenceRef      | DOC_SEQUENCE_REF      | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند المرجعي                                     |
| DocSequence         | DOC_SEQUENCE          | NUMBER(38,0)    | لا     | نعم       | لا     |                   | تسلسل المستند                                             |
| CashierNo           | CASHIER_NO            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم أمين الصندوق                                          |
| Note                | NOTE                  | VARCHAR2(150)   | لا     | نعم       | لا     |                   | ملاحظات                                                   |
| AccountCodeDrComm   | AC_CODE_DR_COMM       | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز حساب الخصم                                            |
| AccountDtlCodeDrComm| AC_CODE_DTL_DR_COMM   | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود تفاصيل حساب الخصم                                     |
| AccountDtlTypeDrComm| AC_DTL_TYP_DR_COMM    | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع تفاصيل حساب الخصم                                     |
| OtrAmtLocal         | OTR_AMT_L             | NUMBER          | لا     | نعم       | لا     |                   | مبلغ آخر بالعملة المحلية                                   |
| OtrAmtForeign       | OTR_AMT_F             | NUMBER          | لا     | نعم       | لا     |                   | مبلغ آخر بالعملة الأجنبية                                  |
| AuditRef            | AUDIT_REF             | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مرجع التدقيق                                              |
| AuditRefDesc        | AUDIT_REF_DESC        | VARCHAR2(500)   | لا     | نعم       | لا     |                   | وصف مرجع التدقيق                                          |
| AuditRefUserId      | AUDIT_REF_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لمرجع التدقيق                                 |
| AuditRefDate        | AUDIT_REF_DATE        | DATE            | لا     | نعم       | لا     |                   | تاريخ مرجع التدقيق                                        |
| AccountDtlTypeEnd   | AC_DTL_TYP_END        | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع تفاصيل الحساب النهائي                                  |
| AccountDtlCodeEnd   | AC_CODE_DTL_END       | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود تفاصيل الحساب النهائي                                  |
| DocTypeRef          | DOC_TYPE_REF          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع المستند المرجعي                                        |
| DocJVTypeRef        | DOC_JV_TYPE_REF       | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع القيد المرجعي                                          |
| DocNoRef            | DOC_NO_REF            | NUMBER(15,0)    | لا     | نعم       | لا     |                   | رقم المستند المرجعي                                        |
| DocSerRef           | DOC_SER_REF           | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الرقم التسلسلي للمستند المرجعي                             |
| DocBranchNo         | DOC_BRN_NO            | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم فرع المستند                                            |
| PostUserId          | POST_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي رحل                                       |
| PostDate            | POST_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ الترحيل                                              |
| UnpostUserId        | UNPOST_U_ID           | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي ألغى الترحيل                              |
| UnpostDate          | UNPOST_DATE           | DATE            | لا     | نعم       | لا     |                   | تاريخ إلغاء الترحيل                                         |
| FContractDate       | F_CNTRCT_DATE         | DATE            | لا     | نعم       | لا     |                   | تاريخ البداية للعقد                                         |
| TContractDate       | T_CNTRCT_DATE         | DATE            | لا     | نعم       | لا     |                   | تاريخ النهاية للعقد                                         |
| FContractDateAH     | F_CNTRCT_DATE_AH      | VARCHAR2(10)    | لا     | نعم       | لا     |                   | تاريخ البداية الهجري للعقد                                   |
| TContractDateAH     | T_CNTRCT_DATE_AH      | VARCHAR2(10)    | لا     | نعم       | لا     |                   | تاريخ النهاية الهجري للعقد                                   |
| CRDCardNo           | CRD_CARD_NO           | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم البطاقة المصرفية                                         |
| CRDAcodeRecLetter   | CRD_ACODE_REC_LETTER  | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز الحساب للرسالة المصرفية                                   |
| CRDCommAccount      | CRD_COMM_AC           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | حساب عمولة البطاقة المصرفية                                   |
| CRDCommCalcType     | CRD_COMM_CALC_TYP     | NUMBER(1,0)     | لا     | نعم       | لا     |                   | نوع حساب العمولة                                             |
| CRDCommPercent      | CRD_COMM_PER          | NUMBER          | لا     | نعم       | لا     |                   | نسبة العمولة                                                 |
| CRDVatCommPercent   | CRD_VAT_COMM_PER      | NUMBER          | لا     | نعم       | لا     |                   | نسبة ضريبة القيمة المضافة للعمولة                             |
| CRDDuePeriod        | CRD_DUE_PRD           | NUMBER          | لا     | نعم       | لا     |                   | فترة استحقاق البطاقة المصرفية                                 |
| CRDPrssesNo         | CRD_PRSSES_NO         | NUMBER(20,0)    | لا     | نعم       | لا     |                   | رقم العملية المصرفية                                          |
| Fld1                | FLD1                  | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                                    |
| Fld2                | FLD2                  | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                                    |
| Fld3                | FLD3                  | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                                    |
| Fld4                | FLD4                  | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                                    |
| Fld5                | FLD5                  | VARCHAR2(60)    | لا     | نعم       | لا     |                   | حقل إضافي                                                    |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر                                   |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                                 |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                                    |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                                               |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                                              |
| CompanyNo           | CMP_NO                | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم الشركة                                                    |
| BranchNo            | BRN_NO                | NUMBER(6,0)     | نعم    | لا        | لا     |                   | رقم الفرع                                                     |
| BranchYear          | BRN_YEAR              | NUMBER(4,0)     | لا     | نعم       | لا     |                   | السنة المالية للفرع                                           |
| BranchUser          | BRN_USR               | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                                  |
| CRDCommAmtLocal     | CRD_COMM_AMT_L        | NUMBER          | لا     | نعم       | لا     |                   | مبلغ عمولة البطاقة المحلية                                     |
| CRDVatCommAmtLocal  | CRD_VAT_COMM_AMT_L    | NUMBER          | لا     | نعم       | لا     |                   | مبلغ ضريبة العمولة المحلية                                     |
| CRDWthdrwAmtLocal   | CRD_WTHDRW_AMT_L      | NUMBER          | لا     | نعم       | لا     |                   | مبلغ السحب المحلي                                              |
| CRDCardType         | CRD_CARD_TYP          | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع البطاقة المصرفية                                           |
| EndorsementDate     | ENDRSMNT_DATE         | DATE            | لا     | نعم       | لا     |                   | تاريخ التظهير                                                 |
| EndorsementPost     | ENDRSMNT_POST         | NUMBER(2,0)     | لا     | نعم       | لا     |                   | حالة الترحيل للتظهير                                           |
| EndorsementPostUser | ENDRSMNT_POST_U_ID    | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لترحيل التظهير                                    |
| EndorsementUnpostUser| ENDRSMNT_UNPOST_U_ID | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم لإلغاء ترحيل التظهير                              |
| EndorsementPostDate | ENDRSMNT_POST_DATE    | DATE            | لا     | نعم       | لا     |                   | تاريخ ترحيل التظهير                                            |
| EndorsementUnpostDate| ENDRSMNT_UNPOST_DATE | DATE            | لا     | نعم       | لا     |                   | تاريخ إلغاء ترحيل التظهير                                      |
| EndorsementAuditRefUser| ENDRSMNT_AUDIT_REF_U_ID| NUMBER(5,0) | لا     | نعم       | لا     |                   | رقم المستخدم لمرجع تدقيق التظهير                               |
| EndorsementAuditRef | ENDRSMNT_AUDIT_REF    | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مرجع تدقيق التظهير                                             |
| EndorsementAuditRefDesc| ENDRSMNT_AUDIT_REF_DESC| VARCHAR2(500)| لا     | نعم       | لا     |                   | وصف مرجع تدقيق التظهير                                         |
| EndorsementUAuditRefDate| ENDRSMNT_UAUDIT_REF_DATE| DATE      | لا     | نعم       | لا     |                   | تاريخ تدقيق المستخدم التظهير                                   |
| EndorsementAuditRefDate| ENDRSMNT_AUDIT_REF_DATE | DATE       | لا     | نعم       | لا     |                   | تاريخ مرجع تدقيق التظهير                                       |
| CalcTypeNoTax       | CLC_TYP_NO_TAX        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع الحساب الضريبي                                             |
| TaxPercent          | TAX_PRCNT             | NUMBER          | لا     | نعم       | لا     |                   | نسبة الضريبة                                                   |
| TaxAmount           | TAX_AMT               | NUMBER          | لا     | نعم       | لا     |                   | مبلغ الضريبة                                                   |
| CRDCommAmt          | CRD_COMM_AMT          | NUMBER          | لا     | نعم       | لا     |                   | مبلغ عمولة البطاقة                                             |
| CRDVatCommAmt       | CRD_VAT_COMM_AMT      | NUMBER          | لا     | نعم       | لا     |                   | مبلغ ضريبة العمولة                                             |
| CRDAcyMaxComm       | CRD_ACY_MAX_COMM      | VARCHAR2(10)    | لا     | نعم       | لا     |                   | الحد الأقصى للعمولة بالعملة                                    |
| CRDWthdrwAmt        | CRD_WTHDRW_AMT        | NUMBER          | لا     | نعم       | لا     |                   | مبلغ السحب                                                     |
| CRDPrcssMaxCommAmt  | CRD_PRCSS_MAX_COMM_AMT| NUMBER          | لا     | نعم       | لا     |                   | الحد الأقصى لمبلغ العمولة للمعاملة                              |


---

## OpenBalance (**OPEN_BAL**)
| الاسم الجديد             | الاسم القديم            | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                  |
|-------------------------|------------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------------|
| AccountCode             | A_CODE                 | VARCHAR2(30)    | نعم    | لا        | لا     |                   | رمز الحساب                                 |
| AccountDtlCode          | AC_CODE_DTL            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز التفاصيل للحساب                         |
| AccountDtlSub           | AC_CODE_DTL_SUB        | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رمز التفاصيل الفرعية                        |
| AccountDtlType          | AC_DTL_TYP             | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                         |
| CurrencyCode            | A_CY                   | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                                  |
| CostCenterCode          | CC_CODE                | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود مركز التكلفة                            |
| FromCostCenterCode      | FROM_CC_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | مركز التكلفة المحول منه                     |
| LCNo                    | LC_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم الاعتماد المستندي                       |
| ProjectNo               | PJ_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع                                 |
| ActivityNo              | ACTV_NO                | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط                                  |
| ReportCode              | REP_CODE               | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير                                 |
| Amount                  | J_AMT                  | NUMBER          | لا     | نعم       | لا     |                   | المبلغ                                      |
| AmountForeign           | J_AMT_F                | NUMBER          | لا     | نعم       | لا     |                   | المبلغ بالعملة الأجنبية                     |
| AccountRate             | AC_RATE                | NUMBER          | لا     | نعم       | لا     |                   | سعر الصرف                                   |
| Verify                  | VERIFY                 | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم التحقق                                  |
| OB_PY                   | OB_PY                  | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم الرصيد الافتتاحي للسنة السابقة           |
| CollectorNo             | COL_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل                                  |
| DocSequence             | DOC_SEQUENCE           | NUMBER(38,0)    | نعم    | لا        | لا     |                   | تسلسل المستند                               |
| ExternalPost            | EXTERNAL_POST          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | علم الترحيل الخارجي                          |
| FBranchNo               | F_BRN_NO               | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم الفرع المحول منه                         |
| ValueDate               | VALUE_DATE             | DATE            | لا     | نعم       | لا     |                   | تاريخ القيمة                                 |
| AddedByUserId           | AD_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر                  |
| AddedDate               | AD_DATE                | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                                 |
| UpdatedByUserId         | UP_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر                   |
| UpdatedDate             | UP_DATE                | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                               |
| CompanyNo               | CMP_NO                 | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم الشركة                                   |
| BranchNo                | BRN_NO                 | NUMBER(6,0)     | نعم    | لا        | لا     |                   | رقم الفرع                                    |
| BranchYear              | BRN_YEAR               | NUMBER(4,0)     | لا     | نعم       | لا     |                   | السنة المالية للفرع                           |
| BranchUser              | BRN_USR                | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستخدم الفرع                                 |
| UpdateCount             | UP_CNT                 | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                              |
| ReportPriority          | PR_REP                 | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير                               |
| AddedTerminal           | AD_TRMNL_NM            | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة                        |
| UpdatedTerminal         | UP_TRMNL_NM            | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل                        |
| RefNo                   | REF_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم مرجعي إضافي                               |
| AccountDesc             | AC_DSC                 | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف أو ملاحظات للحساب                         |

---

## ExchangeRate (**EX_RATE**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| ExchangeDate        | EX_DATE               | DATE            | نعم    | لا        | لا     |                   | تاريخ سعر الصرف                       |
| CurrencyCode        | EX_CY                 | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                            |
| Rate                | EX_RATE               | NUMBER          | نعم    | لا        | لا     |                   | سعر الصرف                             |
| BaseCurrency        | BASE_CY               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة الأساسية                   |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر              |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                         |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر                |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                        |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                       |

---

## IASCurrencyValue (**IAS_CURRENCY_VALUE**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| CurrencyCode        | CY_CODE               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                            |
| ValueDate           | VALUE_DATE            | DATE            | نعم    | لا        | لا     |                   | تاريخ السعر                            |
| Value               | VALUE                 | NUMBER          | نعم    | لا        | لا     |                   | قيمة سعر العملة                        |
| BaseCurrency        | BASE_CY               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة الأساسية                     |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر                |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                           |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر                  |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                          |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                         |

---

## IASPeriodExchangeRate (**IAS_PERIOD_EX_RATE**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| PeriodNo            | PERIOD_NO             | NUMBER(5,0)     | نعم    | لا        | لا     |                   | رقم الفترة                             |
| CurrencyCode        | CY_CODE               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                             |
| Rate                | RATE                  | NUMBER          | نعم    | لا        | لا     |                   | سعر الصرف للفترة                       |
| BaseCurrency        | BASE_CY               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة الأساسية                     |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر                |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                           |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر                  |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                          |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                         |

---

## IASPeriodExchangeRateDay (**IAS_PERIOD_EX_RATE_DAY**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                            |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|---------------------------------------|
| PeriodNo            | PERIOD_NO             | NUMBER(5,0)     | نعم    | لا        | لا     |                   | رقم الفترة                             |
| CurrencyCode        | CY_CODE               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                             |
| RateDate            | RATE_DATE             | DATE            | نعم    | لا        | لا     |                   | تاريخ سعر الصرف                         |
| Rate                | RATE                  | NUMBER          | نعم    | لا        | لا     |                   | سعر الصرف في اليوم المحدد                |
| BaseCurrency        | BASE_CY               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة الأساسية                     |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر                |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                           |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر                  |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                          |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                         |

---

## IASCurrDiffTmp (**IAS_CUR_DIFF_TMP**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                        |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|-----------------------------------|
| UserId              | U_ID                  | NUMBER(5,0)     | نعم    | لا        | لا     |                   | رقم المستخدم                      |
| AccountCode         | A_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     |                   | رمز الحساب                         |
| AccountDtlCode      | AC_CODE_DTL           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود التفاصيل للحساب                |
| AccountDtlType      | AC_DTL_TYP            | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع التفاصيل للحساب                |
| CurrencyCode        | CY_CODE               | VARCHAR2(7)     | نعم    | لا        | لا     |                   | رمز العملة                         |
| Amount              | AMT                   | NUMBER          | نعم    | لا        | لا     |                   | المبلغ                             |
| AmountForeign       | AMT_F                 | NUMBER          | نعم    | لا        | لا     |                   | المبلغ بالعملة الأجنبية            |
| AccountRate         | AC_RATE               | NUMBER          | لا     | نعم       | لا     |                   | سعر الصرف                          |

---

## GLSTaxAccount (**GLS_TAX_ACC**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                        |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|-----------------------------------|
| TaxAccountNo        | TAX_ACC_NO            | NUMBER(10,0)    | نعم    | لا        | لا     |                   | رقم الحساب الضريبي                |
| AccountCode         | AC_CODE               | VARCHAR2(30)    | نعم    | لا        | لا     |                   | رمز الحساب                         |
| TaxType             | TAX_TYPE              | NUMBER(2,0)     | نعم    | لا        | لا     |                   | نوع الضريبة                        |
| TaxPercent          | TAX_PRCNT             | NUMBER          | نعم    | لا        | لا     |                   | نسبة الضريبة                       |
| TaxAccountDesc      | TAX_ACC_DESC          | VARCHAR2(250)   | لا     | نعم       | لا     |                   | وصف الحساب الضريبي                  |
| AddedByUserId       | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر            |
| AddedDate           | AD_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة                       |
| UpdatedByUserId     | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر              |
| UpdatedDate         | UP_DATE               | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل                      |
| UpdateCount         | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل                     |

---

## AuditTrail (**AUD**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                        |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|-----------------------------------|
| OperationId         | OPERATION_ID          | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم العملية                        |
| OperationType       | OPERATION_TYPE        | NUMBER(2,0)     | نعم    | لا        | لا     |                   | نوع العملية (إضافة, تعديل, حذف...)  |
| TableName           | TABLE_NAME            | VARCHAR2(50)    | نعم    | لا        | لا     |                   | اسم الجدول المتأثر                  |
| RecordId            | RECORD_ID             | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم السجل                           |
| FieldName           | FIELD_NAME            | VARCHAR2(50)    | نعم    | لا        | لا     |                   | اسم الحقل المتأثر                    |
| OldValue            | OLD_VALUE             | VARCHAR2(2000)  | لا     | نعم       | لا     |                   | القيمة القديمة للحقل                 |
| NewValue            | NEW_VALUE             | VARCHAR2(2000)  | لا     | نعم       | لا     |                   | القيمة الجديدة للحقل                 |
| OperationDate       | OPERATION_DATE        | DATE            | نعم    | لا        | لا     |                   | تاريخ العملية                        |
| OperationUserId     | OPERATION_USER_ID     | NUMBER(5,0)     | نعم    | لا        | لا     |                   | رقم المستخدم المنفذ للعملية           |
| OperationTerminal   | OPERATION_TERMINAL    | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز المنفذ للعملية             |

---

## IASAuditDoc (**IAS_AUDIT_DOC**)
| الاسم الجديد         | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                        |
|---------------------|-----------------------|-----------------|--------|-----------|--------|-------------------|-----------------------------------|
| AuditDocNo          | AUDIT_DOC_NO          | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم الوثيقة التدقيقية             |
| TableName           | TABLE_NAME            | VARCHAR2(50)    | نعم    | لا        | لا     |                   | اسم الجدول                        |
| RecordId            | RECORD_ID             | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم السجل                          |
| FieldName           | FIELD_NAME            | VARCHAR2(50)    | نعم    | لا        | لا     |                   | اسم الحقل                          |
| OldValue            | OLD_VALUE             | VARCHAR2(2000)  | لا     | نعم       | لا     |                   | القيمة القديمة للحقل               |
| NewValue            | NEW_VALUE             | VARCHAR2(2000)  | لا     | نعم       | لا     |                   | القيمة الجديدة للحقل               |
| AuditDate           | AUDIT_DATE            | DATE            | نعم    | لا        | لا     |                   | تاريخ التدقيق                      |
| AuditUserId         | AUDIT_USER_ID         | NUMBER(5,0)     | نعم    | لا        | لا     |                   | رقم المستخدم المدقق                |
| AuditTerminal       | AUDIT_TERMINAL        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز المدقق                  |

---

