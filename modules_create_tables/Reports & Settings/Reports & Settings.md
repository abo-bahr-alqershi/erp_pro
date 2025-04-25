# 13. التقارير والإعدادات (Reports & Settings)
> **جميع الحقول للجداول المختارة: قوالب التقارير، معايير النظام، المحاسبة العامة**

---

## ReportTemplateMaster (**S_RPRT_USR_TMPLT_MST**)
| الاسم الجديد           | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                                 |
|-----------------------|---------------------|-----------------|--------|-----------|--------|--------------------------------------------|
| FormNo                | FORM_NO             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم النموذج                                |
| UserId                | U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم                               |
| TemplateNo            | TMPLT_NO            | NUMBER(38,0)    | لا     | نعم       | لا     | رقم القالب                                 |
| OrderNo               | ORDR_NO             | NUMBER(38,0)    | نعم    | لا        | لا     | رقم الترتيب                                |
| Notes                 | NOTES               | VARCHAR2(500)   | لا     | نعم       | لا     | ملاحظات                                   |
| Inactive              | INACTIVE            | NUMBER(1,0)     | نعم    | لا        | لا     | معطل                                       |
| InactiveReason        | INACTIVE_RES        | VARCHAR2(150)   | لا     | نعم       | لا     | سبب التعطيل                                |
| InactiveUserId        | INACTIVE_U_ID       | NUMBER(10,0)    | لا     | نعم       | لا     | المستخدم الذي عطل                           |
| InactiveDate          | INACTIVE_DATE       | DATE            | لا     | نعم       | لا     | تاريخ التعطيل                               |
| AddedUserId           | AD_U_ID             | NUMBER(10,0)    | نعم    | لا        | لا     | المستخدم الذي أضاف                           |
| AddedDate             | AD_DATE             | DATE            | نعم    | لا        | لا     | تاريخ الإضافة                                |
| AddedTerminal         | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة                           |
| UpdatedUserId         | UP_U_ID             | NUMBER(10,0)    | لا     | نعم       | لا     | المستخدم الذي عدل                            |
| UpdatedDate           | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل                              |
| UpdateCount           | UP_CNT              | NUMBER(30,0)    | لا     | نعم       | لا     | عدد مرات التحديث                             |
| UpdatedTerminal       | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل                            |
| TemplateName          | TMPLT_NM            | VARCHAR2(100)   | نعم    | لا        | لا     | اسم القالب                                   |
| DefaultFlag           | DFLT_FLG            | NUMBER(1,0)     | لا     | نعم       | لا     | علامة الافتراضي للقالب                        |
| GenerateForAllUsers   | GNR_FOR_ALL_USR_FLG | NUMBER(1,0)     | لا     | نعم       | لا     | توليد القالب لكل المستخدمين                   |

---

## ReportTemplateDetail (**S_RPRT_USR_TMPLT_DTL**)
| الاسم الجديد        | الاسم القديم   | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                     |
|--------------------|---------------|-----------------|--------|-----------|--------|-------------------------------|
| FormNo             | FORM_NO       | NUMBER(5,0)     | لا     | نعم       | لا     | رقم النموذج                    |
| UserId             | U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم                   |
| TemplateNo         | TMPLT_NO      | NUMBER(38,0)    | لا     | نعم       | لا     | رقم القالب                     |
| BlockName          | BLK_NM        | VARCHAR2(100)   | لا     | نعم       | لا     | اسم البلوك/الجزء              |
| ItemName           | ITM_NM        | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العنصر                     |
| Value              | VAL           | VARCHAR2(4000)  | لا     | نعم       | لا     | القيمة                          |
| SequenceNo         | SQ_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم التسلسل                     |
| Notes              | NOTES         | VARCHAR2(500)   | لا     | نعم       | لا     | ملاحظات                         |
| AddedUserId        | AD_U_ID       | NUMBER(5,0)     | نعم    | لا        | لا     | المستخدم الذي أضاف               |
| AddedDate          | AD_DATE       | DATE            | نعم    | لا        | لا     | تاريخ الإضافة                    |
| AddedTerminal      | AD_TRMNL_NM   | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة               |
| UpdatedUserId      | UP_U_ID       | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل                |
| UpdatedDate        | UP_DATE       | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل                  |
| UpdateCount        | UP_CNT        | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                 |
| UpdatedTerminal    | UP_TRMNL_NM   | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل                |

---

## ParameterGeneral (**IAS_PARA_GEN**)
| الاسم الجديد               | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                     |
|---------------------------|----------------------------|-----------------|--------|-----------|--------|-------------------------------|
| ParameterNo               | PARA_NO                    | NUMBER(1,0)     | لا     | نعم       | لا     | رقم السطر / المعيار           |
| CostCenterAvailable       | CC_AVAIL                   | NUMBER(1,0)     | نعم    | لا        | لا     | توفر مراكز التكلفة           |
| CostCenterPosting         | CC_POST                    | NUMBER(1,0)     | نعم    | لا        | لا     | ترحيل مراكز التكلفة          |
| UseProjects               | USE_PROJECTS               | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام المشاريع             |
| UseActivity               | USE_ACTVTY                 | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام الأنشطة              |
| TypeOfPosting             | TYPE_OF_POSTING            | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الترحيل                  |
| PostDiscountPerItems      | POST_DISC_PER_ITEMS        | NUMBER(1,0)     | نعم    | لا        | لا     | ترحيل الخصم لكل صنف          |
| UseExcel                  | USE_EXCEL                  | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام إكسل                 |
| PathExcel                 | PATH_EXCEL                 | VARCHAR2(100)   | لا     | نعم       | لا     | مسار ملفات الإكسل            |
| UseIndividualGLSystem     | USE_INDV_GL_SYSTEM         | NUMBER(1,0)     | نعم    | لا        | لا     | نظام محاسبة عام فردي         |
| UseIndividualInventorySystem | USE_INDV_INV_SYSTEM     | NUMBER(1,0)     | نعم    | لا        | لا     | نظام مخزون فردي              |
| SpecialProgram            | SP_PROGRAM                 | NUMBER(3,0)     | لا     | نعم       | لا     | برنامج خاص                   |
| UseVAT                    | USE_VAT                    | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام ضريبة القيمة المضافة |
| ActiveVATDate             | ACTIVE_VAT_DATE            | DATE            | لا     | نعم       | لا     | تاريخ تفعيل الضريبة          |
| UseUnposting              | USE_UNPOSTING              | NUMBER(1,0)     | نعم    | لا        | لا     | تفعيل إلغاء الترحيل          |
| HeadType                  | HEAD_TYPE                  | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الرأس                    |
| ConnectDetermineTerminal  | CONN_DETER_TRMNL           | NUMBER(1,0)     | نعم    | لا        | لا     | ربط الطرفيات                 |
| ConnectNotMoreOne         | CONN_NOT_MORE_ONE          | NUMBER(1,0)     | نعم    | لا        | لا     | عدم ربط أكثر من طرفية        |
| UseAuditDocument          | USE_AUDIT_DOC              | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام مستند تدقيق          |
| ShowEngineReport          | SHOW_ENGINE_REP            | NUMBER(1,0)     | نعم    | لا        | لا     | عرض تقارير المحرك            |
| ShowParameterReport       | SHOW_PARAMTR_REP           | NUMBER(1,0)     | نعم    | لا        | لا     | عرض تقارير المعايير          |
| ShowXlsButtonReport       | SHOW_XLSBTN_REP            | NUMBER(1,0)     | نعم    | لا        | لا     | زر إكسل في التقارير          |
| LastUpdate                | LAST_UPDATE                | DATE            | لا     | نعم       | لا     | آخر تحديث                    |
| UseVATProfit              | USE_VAT_PROFIT             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام ضريبة الأرباح        |
| VATProfitPercent          | VAT_PROFIT_PER             | NUMBER          | لا     | نعم       | لا     | نسبة ضريبة الأرباح           |
| MinProfitAmount           | MIN_PROFIT_AMT             | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للأرباح          |
| UseBalancedCostCenter     | USE_BALANCED_CC            | NUMBER(1,0)     | لا     | نعم       | لا     | توازن مراكز التكلفة          |
| UseBalancedBranch         | USE_BALANCED_BRN           | NUMBER(1,0)     | لا     | نعم       | لا     | توازن الفروع                 |
| InactiveUserFailEntryCount| INACTV_USR_FAIL_ENTR_CNT   | NUMBER(2,0)     | لا     | نعم       | لا     | عدد محاولات الدخول الفاشلة    |
| MinUserPasswordLength     | MIN_USR_PWD_LEN            | NUMBER(2,0)     | لا     | نعم       | لا     | الحد الأدنى لطول كلمة السر   |
| LastDateLogin             | LAST_DATE_LGN              | DATE            | لا     | نعم       | لا     | آخر دخول                     |
| MaxPostDate               | MAX_POST_DATE              | DATE            | لا     | نعم       | لا     | أقصى تاريخ للترحيل           |
| ProjectPosting            | PJ_POST                    | NUMBER(1,0)     | لا     | نعم       | لا     | ترحيل المشاريع                |
| ActivityPosting           | ACTV_POST                  | NUMBER(1,0)     | لا     | نعم       | لا     | ترحيل الأنشطة                 |
| EmployeeNoAuto            | EMP_NO_AUTO                | NUMBER(1,0)     | نعم    | لا        | لا     | توليد أرقام الموظفين آلياً   |
| EmployeeNoMaxLength       | EMP_NO_MAX_LEN             | NUMBER(2,0)     | نعم    | لا        | لا     | الحد الأعلى لطول رقم الموظف  |
| EmployeeNoMinLength       | EMP_NO_MIN_LEN             | NUMBER(2,0)     | نعم    | لا        | لا     | الحد الأدنى لطول رقم الموظف  |
| EmployeePrivilegeType     | EMP_PRV_TYP                | NUMBER(1,0)     | نعم    | لا        | لا     | نوع صلاحية الموظف            |
| ReportForceNo             | RPRT_FRC_NO                | NUMBER(1,0)     | لا     | نعم       | لا     | رقم التقرير الإجباري         |
| UsePriceIncludeVAT        | USE_PRICE_INCLUDE_VAT      | NUMBER(1,0)     | لا     | نعم       | لا     | تفعيل الأسعار شاملة الضريبة  |
| MobileFilePath            | MOB_FILE_PATH              | VARCHAR2(250)   | لا     | نعم       | لا     | مسار ملفات الجوال            |
| VATPeriodType             | VAT_PRD_TYP                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع فترة الضريبة              |
| NotAllowMoreBranchUserLightPriv | NOT_ALLW_MORE_BRN_USR_LGHT_PRV | NUMBER(1,0) | لا | نعم | لا | منع أكثر من فرع بصلاحية محدودة|
| LastNameStartEmployeeName | LST_NM_STRT_EMP_NM         | NUMBER(1,0)     | لا     | نعم       | لا     | ترتيب الاسم الأخير في اسم الموظف |
| NoCheckFccCode            | NO_CHK_F_CC_CODE           | NUMBER(1,0)     | لا     | نعم       | لا     |                 |
| AccountDetailSequence     | AC_DTL_SEQ                 | NUMBER(2,0)     | لا     | نعم       | لا     | تسلسل تفاصيل الحساب            |
| TaxPostMethod             | TAX_PST_MTHD               | NUMBER(2,0)     | لا     | نعم       | لا     | طريقة ترحيل الضرائب              |
| AddedUserId               | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف                 |
| AddedDate                 | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                        |
| UpdatedUserId             | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل                      |
| UpdatedDate               | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل                           |
| UpdateCount               | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                             |
| ReportPriority            | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                                 |
| AddedTerminal             | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة                                |
| UpdatedTerminal           | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل                                 |
| StartCreateViewYear       | STRT_CRT_VIEW_YEAR         | NUMBER(4,0)     | لا     | نعم       | لا     | سنة بدء إنشاء العرض                                 |
| TaxCodeLength             | TAX_CODE_LNGTH             | NUMBER(2,0)     | لا     | نعم       | لا     | طول كود الضريبة                                      |
| StartCreateViewYearInv    | STRT_CRT_VIEW_YEAR_INV     | NUMBER(4,0)     | لا     | نعم       | لا     | سنة بدء إنشاء العرض للمخزون                           |
| EmployeeNoSequenceField   | EMP_NO_SQ_FLD              | NUMBER(10,0)    | لا     | نعم       | لا     | رقم تسلسل الموظف                                      |
| DefaultExportDirPath      | DFLT_EXP_DIR_PATH          | VARCHAR2(255)   | لا     | نعم       | لا     | المسار الافتراضي للتصدير                               |
| DefaultExportDirPathDetail| DFLT_EXP_DIR_PATH_DTL      | VARCHAR2(4000)  | لا     | نعم       | لا     | تفاصيل مسار التصدير الافتراضي                             |
| WebDocumentLink           | WEB_DOC_LNK                | VARCHAR2(4000)  | لا     | نعم       | لا     | رابط مستند ويب                                            |
| BalanceBranchType         | BLNC_BRN_TYP               | NUMBER(2,0)     | لا     | نعم       | لا     | نوع توازن الفروع                                           |
| VATPostMethod             | VAT_PST_MTHD               | NUMBER(2,0)     | لا     | نعم       | لا     | طريقة ترحيل ضريبة القيمة المضافة                             |
| UseTDSFlag                | USE_TDS_FLG                | NUMBER(1,0)     | لا     | نعم       | لا     | تفعيل TDS                                                   |
| MinUserPwdLetter          | MIN_USR_PWD_LETTER         | NUMBER(2,0)     | لا     | نعم       | لا     | الحد الأدنى للأحرف في كلمة السر                               |
| MinUserPwdUpper           | MIN_USR_PWD_UPPER          | NUMBER(2,0)     | لا     | نعم       | لا     | الحد الأدنى للأحرف الكبيرة في كلمة السر                         |
| MinUserPwdLower           | MIN_USR_PWD_LOWER          | NUMBER(2,0)     | لا     | نعم       | لا     | الحد الأدنى للأحرف الصغيرة في كلمة السر                          |
| MinUserPwdDigit           | MIN_USR_PWD_DIGIT          | NUMBER(2,0)     | لا     | نعم       | لا     | الحد الأدنى للأرقام في كلمة السر                                  |
| MinUserPwdSpecial         | MIN_USR_PWD_SPECIAL        | NUMBER(2,0)     | لا     | نعم       | لا     | الحد الأدنى للرموز الخاصة في كلمة السر                              |
| UseConnectSDFA            | USE_CONN_SDFA              | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام ربط SDFA                                                |
| EmployeeNoSequenceType    | EMP_NO_SQ_TYP              | NUMBER(1,0)     | لا     | نعم       | لا     | نوع تسلسل الموظف                                                |
| UseDocApprovedByUserLevel | USE_DOC_APPRVD_BY_USR_LVL  | NUMBER(1,0)     | لا     | نعم       | لا     | اعتماد المستند من مستوى المستخدم                                  |
| UseSendWebMessage         | USE_SND_WEB_MSG            | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام إرسال الرسائل عبر الويب                                   |


---

## ParameterGL (**IAS_PARA_GL**)  
| الاسم الجديد                         | الاسم القديم                     | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل                                               |
|--------------------------------------|----------------------------------|------------------|--------|-----------|--------|--------------------------------------------------------|
| ParameterNo                          | PARA_NO                          | NUMBER(1,0)      | لا     | نعم       | لا     | رقم السطر / المعيار                                    |
| GenerateGLDocument                   | DOC_GEN_GL                       | NUMBER(1,0)      | نعم    | لا        | لا     | توليد مستند محاسبة عامة                                |
| AllowDocDeleteNo                     | ALLOW_DOC_DEL_NO                 | NUMBER(1,0)      | نعم    | لا        | لا     | السماح بحذف مستندات GL                                 |
| DateGenerateGL                       | DATE_GEN_GL                      | NUMBER(1,0)      | نعم    | لا        | لا     | توليد المستند بتاريخ معين                               |
| DateSettingGL                        | DATE_SETTING_GL                  | NUMBER(1,0)      | نعم    | لا        | لا     | إعدادات تاريخ المستند                                   |
| AccountCodeLength                    | A_CODE_LENGTH                    | NUMBER(2,0)      | نعم    | لا        | لا     | طول كود الحساب                                          |
| AccountCodeType                      | A_CODE_D_TYPE                    | NUMBER(1,0)      | نعم    | لا        | لا     | نوع كود الحساب                                          |
| CostCenterLength                     | CC_LENGTH                        | NUMBER(2,0)      | نعم    | لا        | لا     | طول كود مركز التكلفة                                    |
| CostCenterType                       | CC_D_TYPE                        | NUMBER(1,0)      | نعم    | لا        | لا     | نوع كود مركز التكلفة                                    |
| AccountSub                           | ACCOUNT_SUB                      | NUMBER(1,0)      | نعم    | لا        | لا     | مستوى الحساب التفصيلي                                   |
| JournalStandBy                       | J_STAND_BY                       | NUMBER(1,0)      | نعم    | لا        | لا     | تعليق القيد                                             |
| ForeignCurrency                      | FOR_CURRENCY                     | NUMBER(1,0)      | نعم    | لا        | لا     | السماح بالعملات الأجنبية                                |
| DecimalNo                            | NO_OF_DECIMAL                    | NUMBER(2,0)      | نعم    | لا        | لا     | عدد الكسور العشرية                                      |
| RequestRefNoGL                       | REQUEST_REFNO_GL                 | NUMBER(1,0)      | نعم    | لا        | لا     | طلب رقم مرجعي                                           |
| RequestDescGL                        | REQUEST_DESC_GL                  | NUMBER(1,0)      | نعم    | لا        | لا     | طلب وصف المستند                                         |
| CashReserve                          | CASH_RESERVE                     | NUMBER(1,0)      | نعم    | لا        | لا     | تفعيل احتياطي النقد                                     |
| HandleLocalAmount                    | HANDLY_LOCAL_AMT                 | NUMBER(1,0)      | نعم    | لا        | لا     | التعامل مع المبالغ المحلية                              |
| CurrencyType                         | CURR_TYPE                        | NUMBER(1,0)      | نعم    | لا        | لا     | نوع العملة                                              |
| UseCashIncome                        | USE_CASH_INCOME                  | NUMBER(1,0)      | نعم    | لا        | لا     | استخدام الدخل النقدي                                    |
| PostChequeType                       | POST_CHEQUE_TYPE                 | NUMBER(1,0)      | نعم    | لا        | لا     | نوع ترحيل الشيكات                                       |
| PostChequeTypeVendor                 | POST_CHEQ_TYPE_VNDR              | NUMBER(1,0)      | لا     | نعم       | لا     | نوع ترحيل شيكات الموردين                                |
| UseDeleteGL                          | USE_DEL_GL                       | NUMBER(1,0)      | نعم    | لا        | لا     | السماح بحذف قيد GL                                      |
| UseModifyGL                          | USE_MOD_GL                       | NUMBER(1,0)      | نعم    | لا        | لا     | السماح بتعديل قيد GL                                    |
| UseGuarantor                         | USE_GUARN                        | NUMBER(1,0)      | نعم    | لا        | لا     | تفعيل الضمانات                                          |
| ConnectAccountCostCenter             | CONN_AC_CC                       | NUMBER(1,0)      | نعم    | لا        | لا     | ربط الحساب بمركز التكلفة                                 |
| ConnectAccountProject                | CONN_AC_PJ                       | NUMBER(1,0)      | نعم    | لا        | لا     | ربط الحساب بالمشروع                                      |
| PostChequeTypeReceipt                | POST_CHEQ_TYPE_REC               | NUMBER(1,0)      | نعم    | لا        | لا     | نوع ترحيل شيكات القبض                                    |
| PostChequeTypePayment                | POST_CHEQ_TYPE_PAY               | NUMBER(1,0)      | نعم    | لا        | لا     | نوع ترحيل شيكات الصرف                                    |
| UseKIMB                              | USE_KIMB                         | NUMBER(1,0)      | نعم    | لا        | لا     | استخدام KIMB                                            |
| UseCashInJournal                     | USE_CASH_IN_JV                   | NUMBER(1,0)      | نعم    | لا        | لا     | استخدام النقد في القيود                                  |
| UseBankMediatorInJV                  | USE_BANK_MDTR_IN_JV              | NUMBER(1,0)      | نعم    | لا        | لا     | استخدام وسيط بنكي في القيود                               |
| UseInventoryAccountInJV              | USE_INVAC_IN_JV                  | NUMBER(1,0)      | نعم    | لا        | لا     | استخدام حساب المخزون في القيود                            |
| MultiFillJVNote                      | MULTI_FILL_JV_NOTE               | NUMBER(1,0)      | نعم    | لا        | لا     | ملاحظة تعبئة تلقائية                                     |
| ParentNotIncludeAccount              | A_PARENT_NOT_INCLUDE_AC          | NUMBER(1,0)      | نعم    | لا        | لا     | منع شمول الحسابات الرئيسية                                |
| ParentNotIncludeCostCntr             | C_PARENT_NOT_INCLUDE_CC          | NUMBER(1,0)      | نعم    | لا        | لا     | منع شمول مراكز التكلفة الرئيسية                           |
| NoteSerial                           | NOTE_SERIAL                      | NUMBER(1,0)      | نعم    | لا        | لا     | تسلسل الملاحظات                                           |
| GLLimitType                          | GL_LMT_TYPE                      | NUMBER(1,0)      | نعم    | لا        | لا     | نوع حد المحاسبة العامة                                     |
| DescIncludeCCName                    | DESC_INCLUDE_CC_NAME             | NUMBER(1,0)      | نعم    | لا        | لا     | وصف مركز التكلفة في البيان                                 |
| UseChequeJV                          | USE_CHEQ_JV                      | NUMBER(1,0)      | نعم    | لا        | لا     | استخدام الشيكات في القيد                                   |
| ProfitLossCloseType                  | PL_CLS_TYPE                      | NUMBER(1,0)      | نعم    | لا        | لا     | نوع إغلاق الأرباح والخسائر                                 |
| DiffCurrencyCloseType                | DIFF_CUR_CLS_TYPE                | NUMBER(1,0)      | نعم    | لا        | لا     | نوع إغلاق فروق العملة                                     |
| AllowDuplicateCashAc                 | ALLOW_DUP_CASH_AC                | NUMBER(1,0)      | نعم    | لا        | لا     | السماح بتكرار حسابات النقد                                 |
| AllowDuplicateBankAc                 | ALLOW_DUP_BANK_AC                | NUMBER(1,0)      | نعم    | لا        | لا     | السماح بتكرار حسابات البنوك                                |
| CashBankConnectBranch                | CSHBNK_CONN_BRN                  | NUMBER(1,0)      | نعم    | لا        | لا     | ربط النقد والبنك بالفرع                                    |
| UsePayVoucherMasterAcPriv            | USE_PAY_VCHR_MST_AC_PRV          | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام صلاحية الحساب في سند الدفع                         |
| UseReceiveVoucherMasterAcPriv        | USE_RCV_VCHR_MST_AC_PRV          | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام صلاحية الحساب في سند القبض                         |
| RequestCollectorNoReceipt            | REQUEST_COL_NO_REC               | NUMBER(1,0)      | لا     | نعم       | لا     | طلب رقم المحصل في سند القبض                                |
| RequestVoucherTypeNo                 | REQUEST_V_TYP_NO_VCHR            | NUMBER(1,0)      | لا     | نعم       | لا     | طلب نوع السند                                              |
| ConnectPaymentRequest                | CONN_PYMNT_REQUST                | NUMBER(1,0)      | لا     | نعم       | لا     | ربط سندات الدفع بطلبات دفع                                 |
| ConnectReceiptRequest                | CONN_RCPT_REQUST                 | NUMBER(1,0)      | لا     | نعم       | لا     | ربط سندات القبض بطلبات قبض                                 |
| RateType                             | P_RATE_TYPE                      | NUMBER(1,0)      | لا     | نعم       | لا     | نوع سعر العملة                                             |
| ReceiptSerialType                    | RCPT_SRL_TYP                     | NUMBER(2,0)      | لا     | نعم       | لا     | نوع تسلسل سند القبض                                        |
| ConnectCCProject                     | CONN_CC_PJ                       | NUMBER(1,0)      | لا     | نعم       | لا     | ربط مركز التكلفة بالمشروع                                  |
| ConnectProjectActivity                | CONN_PJ_ACTV                     | NUMBER(1,0)      | لا     | نعم       | لا     | ربط المشروع بالنشاط                                        |
| AllowVoucherZero                     | ALLOW_VCHR_ZERO                  | NUMBER(1,0)      | لا     | نعم       | لا     | السماح بقيد بقيمة صفرية                                    |
| SubAccountLevel                      | SUB_AC_LVL                       | NUMBER(2,0)      | لا     | نعم       | لا     | مستوى الحسابات الفرعية                                     |
| FillHoursPayFormMethod                | FILL_HRS_PAYFORM_MTHD            | NUMBER(1,0)      | لا     | نعم       | لا     | طريقة تعبئة الساعات بسند الدفع                              |
| FillHoursRecFormMethod                | FILL_HRS_RECFORM_MTHD            | NUMBER(1,0)      | لا     | نعم       | لا     | طريقة تعبئة الساعات بسند القبض                              |
| JournalRequestSequence                | JRNL_RQ_SEQ                      | NUMBER(1,0)      | لا     | نعم       | لا     | تسلسل طلبات القيد                                          |
| PayRequestSequence                    | PAY_RQ_SEQ                       | NUMBER(1,0)      | لا     | نعم       | لا     | تسلسل طلبات الدفع                                          |
| RecRequestSequence                    | REC_RQ_SEQ                       | NUMBER(1,0)      | لا     | نعم       | لا     | تسلسل طلبات القبض                                          |
| UseMultiCurrencyBudget                | USE_MULTI_CUR_BDGT               | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام الميزانية بعدة عملات                                |
| UseMultiCurrencyLimit                 | USE_MULTI_CUR_LMT                | NUMBER           | لا     | نعم       | لا     | حد تعدد العملات                                            |
| FillHoursJournalFormMethod            | FILL_HRS_JRNLFORM_MTHD           | NUMBER(1,0)      | لا     | نعم       | لا     | طريقة تعبئة الساعات بالقيد                                  |
| DuplicateChequeNoPayment              | DUP_CHQ_NO_PAYMNT                | NUMBER(1,0)      | لا     | نعم       | لا     | تكرار رقم الشيك في الصرف                                    |
| DefaultPostDisplayInStatement         | DFLT_POST_DSPLY_IN_ASTMT          | NUMBER(1,0)      | لا     | نعم       | لا     | عرض الترحيل الافتراضي في كشف الحساب                         |
| NotCloseDiffCurrencyPLAccount         | NOT_CLOSE_DIFF_CUUR_PL_ACC        | NUMBER(1,0)      | لا     | نعم       | لا     | عدم إغلاق حساب أرباح/خسائر فرق العملة                       |
| DescIncludeProjectName                | DESC_INCLUDE_PJ_NAME              | NUMBER(1,0)      | لا     | نعم       | لا     | وصف المشروع في البيان                                       |
| ShowCollectorNo                       | SHOW_COL_NO                       | NUMBER(1,0)      | لا     | نعم       | لا     | عرض رقم المحصل                                              |
| ShowRepCode                           | SHOW_REP_CODE                      | NUMBER(1,0)      | لا     | نعم       | لا     | عرض كود المندوب                                             |
| ConnectCashNoRepCode                  | CONN_CSHNO_REP_CODE                | NUMBER(1,0)      | لا     | نعم       | لا     | ربط رقم النقدية بكود المندوب                                 |
| ConnectCCodeRepCode                   | CONN_CCODE_REP_CODE                 | NUMBER(1,0)      | لا     | نعم       | لا     | ربط كود العميل بكود المندوب                                  |
| AllowDiffRateMasterDetail              | ALLW_DIFF_RATE_MST_DTL               | NUMBER(1,0)      | لا     | نعم       | لا     | السماح باختلاف السعر بين الرأس والتفاصيل                      |
| PostAccountDescInPayCheque             | POST_ACC_DSC_IN_PAY_CHQ                | NUMBER(1,0)      | لا     | نعم       | لا     | ترحيل وصف الحساب في شيك الدفع                                 |
| UseMultiRequestInJournal               | USE_MULTI_RQ_IN_JV                       | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام عدة طلبات في القيد                                    |
| CheckBudgetAmount                      | CHK_BGT_AMT                                 | NUMBER(1,0)      | لا     | نعم       | لا     | فحص مبلغ الميزانية                                           |
| CreateNoteMoveBudgetBranch              | CRT_NOTE_MOV_BGT_BRN                            | NUMBER(1,0)      | لا     | نعم       | لا     | إنشاء ملاحظة نقل ميزانية فرع                                 |
| ShowDocBranchNo                         | SHW_DOC_BRN_NO                                     | NUMBER(1,0)      | لا     | نعم       | لا     | عرض رقم الفرع في المستند                                      |
| UseAllAccountBudget                     | USE_ALL_ACC_BDGT                                   | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام جميع الحسابات في الميزانية                            |
| CallCostRepCode                         | CALL_CST_REPCODE                                  | NUMBER(1,0)      | لا     | نعم       | لا     | استدعاء كود المندوب في التكاليف                              |
| UseBudgetApproval                       | USE_BGT_APPRVL                                    | NUMBER(1,0)      | لا     | نعم       | لا     | تفعيل موافقة الميزانية                                       |
| UseBranchLimit                          | USE_BRN_LMT                                       | NUMBER(1,0)      | لا     | نعم       | لا     | حد الفروع                                                    |
| JournalSequenceType                     | JRNL_SEQ_TYP                                      | NUMBER(2,0)      | لا     | نعم       | لا     | نوع تسلسل القيد                                              |
| MandatoryReceiptRepCode                 | MNDTRY_RCPT_REP_CODE                             | NUMBER(1,0)      | لا     | نعم       | لا     | إلزام كود المندوب في سند القبض                                |
| AddFieldDetailCount                     | ADD_FLD_DTL_CNT                                   | NUMBER(1,0)      | لا     | نعم       | لا     | عدد الحقول الإضافية في التفاصيل                               |
| ConnectAccountActivity                  | CONN_AC_ACTV                                      | NUMBER(1,0)      | لا     | نعم       | لا     | ربط الحساب بالنشاط                                           |
| AddedUserId                             | AD_U_ID                                           | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف                                           |
| AddedDate                               | AD_DATE                                           | DATE             | لا     | نعم       | لا     | تاريخ الإضافة                                               |
| UpdatedUserId                           | UP_U_ID                                           | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل                                           |
| UpdatedDate                             | UP_DATE                                           | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل                                             |
| UpdateCount                             | UP_CNT                                            | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث                                            |
| ReportPriority                          | PR_REP                                            | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير                                              |
| AddedTerminal                           | AD_TRMNL_NM                                       | VARCHAR2(50)     | لا     | نعم       | لا     | الجهاز عند الإضافة                                          |
| UpdatedTerminal                         | UP_TRMNL_NM                                       | VARCHAR2(50)     | لا     | نعم       | لا     | الجهاز عند التعديل                                          |
| ExchangeCurrencySequence                | EXCHHG_CUR_SEQ                                    | NUMBER(2,0)      | لا     | نعم       | لا     | تسلسل العملة                                                |
| UseExpenseTax                           | USE_EXPNS_TAX                                     | NUMBER(1,0)      | لا     | نعم       | لا     | تفعيل ضريبة المصروفات                                      |
| UseMultiRequestInPayment                | USE_MULTI_RQ_IN_PYMNT                             | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام عدة طلبات في سند الدفع                              |
| UseMultiRequestInReceipt                | USE_MULTI_RQ_IN_RCPT                              | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام عدة طلبات في سند القبض                              |
| UseBankDepositAccountIntermediate        | USE_BNK_DPST_AC_INTRMDT                           | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام حساب وسيط للإيداع البنكي                            |

---

## ParameterInventory (**IAS_PARA_INV**)
| الاسم الجديد                  | الاسم القديم                    | النوع             | إجباري | يقبل فارغ | تلقائي | شرح الحقل                                               |
|------------------------------|-------------------------------|-------------------|--------|-----------|--------|--------------------------------------------------------|
| ParameterNo                  | PARA_NO                       | NUMBER(1,0)       | لا     | نعم       | لا     | رقم السطر / المعيار                                    |
| GenerateInventoryDocument    | DOC_GEN_INV                   | NUMBER(1,0)       | نعم    | لا        | لا     | توليد مستند مخزون                                      |
| AllowDocDeleteNo             | ALLOW_DOC_DEL_NO              | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بحذف مستندات المخزون                            |
| DateGenerateInventory        | DATE_GEN_INV                  | NUMBER(1,0)       | نعم    | لا        | لا     | توليد المستند بتاريخ معين                               |
| DateSettingInventory         | DATE_SETTING_INV              | NUMBER(1,0)       | نعم    | لا        | لا     | إعدادات تاريخ المستند                                   |
| LinkWithGL                   | LINK_WITH_GL                  | NUMBER(1,0)       | نعم    | لا        | لا     | الربط مع المحاسبة العامة                                |
| ItemCodeLength               | I_CODE_LEN                    | NUMBER(2,0)       | نعم    | لا        | لا     | طول كود الصنف                                          |
| ItemCodeType                 | I_CODE_D_TYPE                 | NUMBER(1,0)       | نعم    | لا        | لا     | نوع كود الصنف                                          |
| UseAltCode                   | USE_ALT_CODE                  | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام كود بديل                                       |
| UseExpireDate                | USE_EXPIRE_DATE               | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام تاريخ انتهاء الصلاحية                          |
| UseBatchNo                   | USE_BATCH_NO                  | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام رقم الدفعة                                     |
| UseMultiWarehouse            | USE_MULTI_WC                  | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام عدة مستودعات                                   |
| IncomingWarehouseType        | INCOMING_W_HOUSE_TYPE         | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مستودع الوارد                                      |
| OutgoingWarehouseType        | OUTGOING_W_HOUSE_TYPE         | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مستودع الصادر                                      |
| IncomingCostType             | INCOMING_CS_TYPE              | NUMBER(1,0)       | نعم    | لا        | لا     | نوع تكلفة الوارد                                       |
| OutgoingCostType             | OUTGOING_CS_TYPE              | NUMBER(1,0)       | نعم    | لا        | لا     | نوع تكلفة الصادر                                       |
| StockAdjustCostType          | STK_ADJUST_CS_TYPE            | NUMBER(1,0)       | نعم    | لا        | لا     | نوع تكلفة التسوية                                      |
| TransferCostType             | TR_CS_TYPE                    | NUMBER(1,0)       | نعم    | لا        | لا     | نوع تكلفة التحويل                                      |
| OutProjectType               | OUT_PJ_TYPE                   | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مشروع الصادر                                       |
| IncProjectType               | INC_PJ_TYPE                   | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مشروع الوارد                                       |
| StockProjectType             | STK_PJ_TYPE                   | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مشروع المخزون                                      |
| TransferProjectType          | TR_PJ_TYPE                    | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مشروع التحويل                                      |
| OutActivityType              | OUT_ACTV_TYPE                 | NUMBER(1,0)       | نعم    | لا        | لا     | نوع نشاط الصادر                                        |
| IncActivityType              | INC_ACTV_TYPE                 | NUMBER(1,0)       | نعم    | لا        | لا     | نوع نشاط الوارد                                        |
| StockActivityType            | STK_ACTV_TYPE                 | NUMBER(1,0)       | نعم    | لا        | لا     | نوع نشاط المخزون                                       |
| TransferActivityType         | TR_ACTV_TYPE                  | NUMBER(1,0)       | نعم    | لا        | لا     | نوع نشاط التحويل                                       |
| UseCosting                   | USE_COSTING                   | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل التكاليف                                        |
| CostingType                  | COSTING_TYPE                  | NUMBER(1,0)       | نعم    | لا        | لا     | نوع احتساب التكاليف                                    |
| WtAvgType                    | WTAVG_TYPE                    | NUMBER(1,0)       | نعم    | لا        | لا     | نوع المتوسط المرجح                                     |
| ItemPostingFlag              | ITEM_POSTING_FLAG             | NUMBER(1,0)       | نعم    | لا        | لا     | علم ترحيل الصنف                                        |
| UseNegativeInventory         | USE_NEGATIVE_INV              | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بالمخزون السالب                                 |
| ShowItemDescShort            | SHOW_I_DESC                   | NUMBER(1,0)       | نعم    | لا        | لا     | عرض وصف مختصر للصنف                                    |
| ShowItemDesc                 | SHOW_ITEM_DESC                | NUMBER(1,0)       | نعم    | لا        | لا     | عرض وصف الصنف الكامل                                   |
| DecimalNoInventory           | NO_OF_DECIMAL_INV             | NUMBER(2,0)       | نعم    | لا        | لا     | عدد الكسور العشرية                                     |
| UpdateBalance                | UPDATE_BALANCE                | NUMBER(1,0)       | نعم    | لا        | لا     | تحديث الرصيد                                          |
| UseSerialNo                  | USE_SERIALNO                  | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام الرقم التسلسلي                                 |
| UseConsignmentItem           | USE_CONS_ITM                  | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام أصناف الأمانة                                 |
| UseCompoundItems             | USE_COMPOUND_ITEMS            | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام الأصناف المركبة                                |
| IncomingSerial               | INCOMING_SERIAL               | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل الرقم التسلسلي للوارد                            |
| OutgoingSerial               | OUTGOING_SERIAL               | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل الرقم التسلسلي للصادر                            |
| TransferSerial               | TRANSFER_SERIAL               | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل الرقم التسلسلي للتحويل                            |
| ShowItemSize                 | SHOW_I_SIZE                   | NUMBER(1,0)       | نعم    | لا        | لا     | عرض حجم الصنف                                          |
| HideOutgoingAccount          | HIDE_OUTGOING_AC              | NUMBER(1,0)       | نعم    | لا        | لا     | إخفاء حساب الصادر                                      |
| RequestSerial                | REQUEST_SERIAL                | NUMBER(1,0)       | نعم    | لا        | لا     | طلب الرقم التسلسلي                                     |
| UseDuplicateItemManualInventory | USE_DUPITM_MANINV          | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتكرار الصنف في المخزون اليدوي                  |
| UseStandardItemCost          | USE_STANDARD_ITEM_COST        | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام التكلفة القياسية للصنف                          |
| UseRequestModifyPrice        | USE_REQ_MOD_PRICE             | NUMBER(1,0)       | لا     | نعم       | لا     | طلب تعديل السعر                                        |
| UseDeleteInventory           | USE_DEL_INV                   | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بحذف المستندات                                  |
| UseModifyInventory           | USE_MOD_INV                   | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتعديل المستندات                                |
| PriceType                    | PRICE_TYPE                    | NUMBER(1,0)       | نعم    | لا        | لا     | نوع التسعير                                            |
| ROIType                      | ROI_TYPE                      | NUMBER(1,0)       | نعم    | لا        | لا     | نوع العائد على الاستثمار                               |
| UseMinUnitPrice              | USE_MIN_UNIT_PRICE            | NUMBER(1,0)       | لا     | نعم       | لا     | استخدام الحد الأدنى لسعر الوحدة                        |
| GenerateItemCode             | GENERATE_I_CODE               | NUMBER(1,0)       | نعم    | لا        | لا     | توليد كود الصنف                                        |
| ConnectGroups                | CONN_GRPS                     | NUMBER(1,0)       | نعم    | لا        | لا     | ربط المجموعات                                          |
| ConnectDetailGroupByGroups   | CONN_DTL_GRP_BY_GRPS          | NUMBER(1,0)       | نعم    | لا        | لا     | ربط التفاصيل بالمجموعات                                |
| ConnectAssistantGroupByGroups| CONN_ASSTNT_GRP_BY_GRPS       | NUMBER(1,0)       | نعم    | لا        | لا     | ربط المساعدين بالمجموعات                               |
| InsertItemManual             | INSRT_ITM_MAN                 | NUMBER(1,0)       | نعم    | لا        | لا     | إدراج صنف يدوي                                         |
| StockCostFraction            | STKCOST_FRACTION              | NUMBER(2,0)       | نعم    | لا        | لا     | جزء تكلفة المخزون                                      |
| UseTransferExpense           | USE_TRNSFER_EXPENSE           | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل مصاريف التحويل                                  |
| AllowModifyReceivedQty       | ALLOW_MOD_REC_QTY             | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتعديل الكمية المستلمة                          |
| AllowModifyReceivedWarehouse | ALLOW_MOD_REC_WCODE           | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتعديل مستودع الاستلام                          |
| UseItemAttach                | USE_ITM_ATTACH                | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بالمرفقات للصنف                                 |
| ConnectRequestWarehouseTransfer | CONN_REQ_WHTRNSFR           | NUMBER(1,0)       | نعم    | لا        | لا     | ربط طلب تحويل المستودع                                 |
| ConnectRequestOutgoing       | CONN_REQ_OUTGOING             | NUMBER(1,0)       | نعم    | لا        | لا     | ربط طلب الصادر                                         |
| ConnectGoodsReceivingIncoming| CONN_GR_INCOMING              | NUMBER(1,0)       | نعم    | لا        | لا     | ربط الوارد باستلام البضائع                             |
| MinLimitCostPercent          | MIN_LMT_COST_PER              | NUMBER(3,0)       | لا     | نعم       | لا     | الحد الأدنى لنسبة التكلفة                              |
| MaxLimitCostPercent          | MAX_LMT_COST_PER              | NUMBER(3,0)       | لا     | نعم       | لا     | الحد الأعلى لنسبة التكلفة                              |
| MinLimitPricePercent         | MIN_LMT_PRICE_PER             | NUMBER(3,0)       | لا     | نعم       | لا     | الحد الأدنى لنسبة السعر                                |
| MaxLimitPricePercent         | MAX_LMT_PRICE_PER             | NUMBER(3,0)       | لا     | نعم       | لا     | الحد الأعلى لنسبة السعر                                |
| PriceCostType                | PRICE_CST_TYPE                | NUMBER(1,0)       | لا     | نعم       | لا     | نوع تكلفة التسعير                                      |
| RequestRefNoInventory        | REQUEST_REFNO_INV             | NUMBER(1,0)       | نعم    | لا        | لا     | طلب رقم مرجعي للمخزون                                  |
| RequestDescInventory         | REQUEST_DESC_INV              | NUMBER(1,0)       | نعم    | لا        | لا     | طلب وصف للمخزون                                        |
| GenerateBarcode              | GENERATE_BARCODE              | VARCHAR2(250)     | لا     | نعم       | لا     | توليد الباركود                                         |
| ConnectItemByAttachAuto      | CONN_ITEM_BY_ATTACH_AUTO      | NUMBER(1,0)       | نعم    | لا        | لا     | ربط الصنف تلقائياً عبر المرفقات                        |
| ConnectItemActivityByUserPriv| CONN_ITM_ACT_BY_USR_PRIV      | NUMBER(1,0)       | نعم    | لا        | لا     | ربط نشاط الصنف بصلاحية المستخدم                       |
| DealingUnderSelling          | DEALING_UNDER_SELLING         | NUMBER(1,0)       | نعم    | لا        | لا     | التعامل تحت البيع                                      |
| AllowUpdateTransferAccountCode| ALLOW_UPD_TR_A_CODE          | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتحديث كود الحساب في التحويل                    |
| AllowExceedTransferQty       | ALLOW_EXCEED_TR_QTY           | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتجاوز كمية التحويل                             |
| UseMultiWarehouseTransfer    | USE_MULTI_WHTRNS              | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام تحويل مستودعات متعدد                           |
| UseGoodOnConsignment         | USE_GOOD_ON_CONSIGNMENT       | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام بضائع الأمانة                                  |
| AllowDeleteReceivedItem      | ALLOW_DEL_REC_ITM             | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بحذف الصنف المستلم                              |
| ManualInventorySerial        | MAN_INV_SERAIL                | NUMBER(1,0)       | نعم    | لا        | لا     | تسلسل الجرد اليدوي                                     |
| UseWeightSystem              | USE_WT_SYS                    | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل نظام الأوزان                                     |
| DefaultWeightArgument        | DFLT_WT_ARGMNT                | NUMBER(1,0)       | نعم    | لا        | لا     | قيمة الوزن الافتراضية                                  |
| InventorySystemType          | INV_SYS_TYPE                  | NUMBER(1,0)       | نعم    | لا        | لا     | نوع نظام المخزون                                       |
| InventorySystemCloseType     | INV_SYS_CLOSE_TYPE            | NUMBER(1,0)       | نعم    | لا        | لا     | نوع إغلاق نظام المخزون                                  |
| InventoryCloseCostType       | INV_CLOSE_CST_TYPE            | NUMBER(1,0)       | نعم    | لا        | لا     | نوع تكلفة إغلاق المخزون                                 |
| UsePriceWarehouseTransReceiveCost | USE_PRICE_WHTRNS_REC_COST | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام سعر التحويل في تكلفة الاستلام                  |
| ConnectWarehouseCostCenterMandatory| CONN_WC_CC_MANDTRY        | NUMBER(1,0)       | نعم    | لا        | لا     | إلزامية ربط المستودع بمركز التكلفة                    |
| ShowParentItemOnly           | SHOW_PARENT_ITM_ONLY          | NUMBER(1,0)       | نعم    | لا        | لا     | عرض الأصناف الرئيسية فقط                                |
| ApprovedBarcodeSameBatchNo   | APPRVD_BRACODE_SAME_BATCHNO   | NUMBER            | لا     | نعم       | لا     | اعتماد الباركود لنفس رقم الدفعة                         |
| ApprovedBarcodeSameSerialNo  | APPRVD_BRACODE_SAME_SERIALNO  | NUMBER            | لا     | نعم       | لا     | اعتماد الباركود لنفس الرقم التسلسلي                     |
| NotInstallItemHasPrice       | NOT_INSTALL_ITEM_HAS_PRICE    | NUMBER(1,0)       | نعم    | لا        | لا     | عدم تثبيت الصنف عند وجود سعر                            |
| ConnectActivityByWarehouseCostCenter | CONN_ACTIVITY_BY_WCODE_CC_CODE | NUMBER(1,0) | نعم | لا | لا | ربط النشاط عبر المستودع ومركز التكلفة                  |
| PrintItemBarcodeNotPrice     | PRINT_ITM_BARCODE_NOT_PRICE   | NUMBER(1,0)       | نعم    | لا        | لا     | طباعة باركود الصنف بدون السعر                           |
| BatchNoColumnNo              | BATCHNO_COL_NO                | NUMBER(2,0)       | لا     | نعم       | لا     | رقم عمود رقم الدفعة                                     |
| BatchNameColumn1             | BATCH_NM_COL1                 | VARCHAR2(60)      | لا     | نعم       | لا     | اسم عمود الدفعة 1                                      |
| BatchNameColumn2             | BATCH_NM_COL2                 | VARCHAR2(60)      | لا     | نعم       | لا     | اسم عمود الدفعة 2                                      |
| BatchNameColumn3             | BATCH_NM_COL3                 | VARCHAR2(60)      | لا     | نعم       | لا     | اسم عمود الدفعة 3                                      |
| BatchNameColumn4             | BATCH_NM_COL4                 | VARCHAR2(60)      | لا     | نعم       | لا     | اسم عمود الدفعة 4                                      |
| BatchNameColumn5             | BATCH_NM_COL5                 | VARCHAR2(60)      | لا     | نعم       | لا     | اسم عمود الدفعة 5                                      |
| ShowBatchCol1InScreen        | SHOW_BAT_COL1_IN_SCREEN       | NUMBER(1,0)       | لا     | نعم       | لا     | عرض عمود الدفعة 1 في الشاشة                            |
| ShowBatchCol2InScreen        | SHOW_BAT_COL2_IN_SCREEN       | NUMBER(1,0)       | لا     | نعم       | لا     | عرض عمود الدفعة 2 في الشاشة                            |
| ShowBatchCol3InScreen        | SHOW_BAT_COL3_IN_SCREEN       | NUMBER(1,0)       | لا     | نعم       | لا     | عرض عمود الدفعة 3 في الشاشة                            |
| ShowBatchCol4InScreen        | SHOW_BAT_COL4_IN_SCREEN       | NUMBER(1,0)       | لا     | نعم       | لا     | عرض عمود الدفعة 4 في الشاشة                            |
| ShowBatchCol5InScreen        | SHOW_BAT_COL5_IN_SCREEN       | NUMBER(1,0)       | لا     | نعم       | لا     | عرض عمود الدفعة 5 في الشاشة                            |
| ActiveSerialNo               | ACTIVE_SERIALNO               | NUMBER(1,0)       | لا     | نعم       | لا     | تفعيل الرقم التسلسلي                                  |
| GenerateAutoItemBarcode      | GENERATE_AUTO_ITM_BARCODE     | NUMBER(1,0)       | لا     | نعم       | لا     | توليد باركود الصنف تلقائياً                            |
| UsePercentCostKitItem        | USE_PER_COST_KIT_ITM          | NUMBER(1,0)       | لا     | نعم       | لا     | استخدام النسبة المئوية لتكلفة الأصناف المجمعة          |
| InstallPosKitItemInStockAdj  | INSTALL_POS_KIT_ITM_IN_STK_ADJ| NUMBER(1,0)       | لا     | نعم       | لا     | إدراج أصناف التجميع في تسوية المخزون                   |
| SizeColumn1                  | SIZE_COL1                     | NUMBER(2,0)       | لا     | نعم       | لا     | عمود الحجم 1                                           |
| SizeColumn2                  | SIZE_COL2                     | NUMBER(2,0)       | لا     | نعم       | لا     | عمود الحجم 2                                           |
| SizeColumn3                  | SIZE_COL3                     | NUMBER(2,0)       | لا     | نعم       | لا     | عمود الحجم 3                                           |
| SizeColumn4                  | SIZE_COL4                     | NUMBER(2,0)       | لا     | نعم       | لا     | عمود الحجم 4                                           |
| SizeColumn5                  | SIZE_COL5                     | NUMBER(2,0)       | لا     | نعم       | لا     | عمود الحجم 5                                           |
| ItemNoColumn1                | ITEM_NO_COL1                  | NUMBER(1,0)       | لا     | نعم       | لا     | عمود رقم الصنف 1                                       |
| ItemNoColumn2                | ITEM_NO_COL2                  | NUMBER(1,0)       | لا     | نعم       | لا     | عمود رقم الصنف 2                                       |
| ItemNoColumn3                | ITEM_NO_COL3                  | NUMBER(1,0)       | لا     | نعم       | لا     | عمود رقم الصنف 3                                       |
| ItemNoColumn4                | ITEM_NO_COL4                  | NUMBER(1,0)       | لا     | نعم       | لا     | عمود رقم الصنف 4                                       |
| ItemNoColumn5                | ITEM_NO_COL5                  | NUMBER(1,0)       | لا     | نعم       | لا     | عمود رقم الصنف 5                                       |
| DuplicateItemTransferRecord  | DUP_ITEM_TR_REC               | NUMBER(1,0)       | لا     | نعم       | لا     | تكرار صنف في سجل التحويل                               |
| BarcodeFirst                 | BARCODE_FIRST                 | NUMBER(2,0)       | لا     | نعم       | لا     | أول باركود                                             |
| BarcodeSecond                | BARCODE_SECOND                | NUMBER(2,0)       | لا     | نعم       | لا     | ثاني باركود                                            |
| BarcodeThird                 | BARCODE_THIRD                 | NUMBER(2,0)       | لا     | نعم       | لا     | ثالث باركود                                            |
| BarcodeFourth                | BARCODE_FOURTH                | NUMBER(2,0)       | لا     | نعم       | لا     | رابع باركود                                            |
| BarcodeFifth                 | BARCODE_FIFTH                 | NUMBER(2,0)       | لا     | نعم       | لا     | خامس باركود                                            |
| BarcodeSixth                 | BARCODE_SIXTH                 | NUMBER(2,0)       | لا     | نعم       | لا     | سادس باركود                                            |
| BarcodeFirstLength           | BARCODE_FIRST_LENGTH          | NUMBER(2,0)       | لا     | نعم       | لا     | طول أول باركود                                         |
| BarcodeSecondLength          | BARCODE_SECOND_LENGTH         | NUMBER(2,0)       | لا     | نعم       | لا     | طول ثاني باركود                                        |
| BarcodeThirdLength           | BARCODE_THIRD_LENGTH          | NUMBER(2,0)       | لا     | نعم       | لا     | طول ثالث باركود                                        |
| BarcodeFourthLength          | BARCODE_FOURTH_LENGTH         | NUMBER(2,0)       | لا     | نعم       | لا     | طول رابع باركود                                        |
| BarcodeFifthLength           | BARCODE_FIFTH_LENGTH          | NUMBER(2,0)       | لا     | نعم       | لا     | طول خامس باركود                                        |
| BarcodeSixthLength           | BARCODE_SIXTH_LENGTH          | NUMBER(2,0)       | لا     | نعم       | لا     | طول سادس باركود                                        |
| BarcodeFirstDir              | BARCODE_FIRST_DIR             | NUMBER(1,0)       | لا     | نعم       | لا     | اتجاه أول باركود                                       |
| BarcodeSecondDir             | BARCODE_SECOND_DIR            | NUMBER(1,0)       | لا     | نعم       | لا     | اتجاه ثاني باركود                                      |
| BarcodeThirdDir              | BARCODE_THIRD_DIR             | NUMBER(1,0)       | لا     | نعم       | لا     | اتجاه ثالث باركود                                      |
| BarcodeFourthDir             | BARCODE_FOURTH_DIR            | NUMBER(1,0)       | لا     | نعم       | لا     | اتجاه رابع باركود                                      |
| BarcodeFifthDir              | BARCODE_FIFTH_DIR             | NUMBER(1,0)       | لا     | نعم       | لا     | اتجاه خامس باركود                                      |
| BarcodeSixthDir              | BARCODE_SIXTH_DIR             | NUMBER(1,0)       | لا     | نعم       | لا     | اتجاه سادس باركود                                      |
| ApproveDefaultPriceForAllLvl | APPV_DFLT_PRC_FOR_ALL_LVL     | NUMBER(1,0)       | لا     | نعم       | لا     | اعتماد السعر الافتراضي لكل المستويات                   |
| ManualInventoryByOne         | MAN_INV_BY_ONE                | NUMBER(1,0)       | لا     | نعم       | لا     | جرد يدوي لكل صنف                                       |
| CalculateLostDay             | CALC_LOST_DAY                 | NUMBER(1,0)       | لا     | نعم       | لا     | احتساب أيام الفاقد                                     |
| IncludeGroupCodeInItemCode   | INCLUDE_G_CODE_IN_ITM_CODE    | NUMBER(1,0)       | لا     | نعم       | لا     | تضمين كود المجموعة في كود الصنف                        |
| UseIncomeItemExpireDate      | USE_INCOM_ITM_EXPIRE_DATE     | NUMBER(1,0)       | لا     | نعم       | لا     | استخدام تاريخ انتهاء الصنف الوارد                      |
| ShowNoteExceedQtyInWarehouseTrans | SHOW_NOTE_EXCEED_QTY_IN_WHTRNS | NUMBER(1,0) | لا | نعم | لا | إظهار ملاحظة تجاوز الكمية في تحويل المستودع             |
| DuplicateItemInIncoming      | DUP_ITM_IN_INCOMING           | NUMBER(1,0)       | لا     | نعم       | لا     | تكرار الصنف في الوارد                                   |
| DuplicateItemInOutgoing      | DUP_ITM_IN_OUTGOING           | NUMBER(1,0)       | لا     | نعم       | لا     | تكرار الصنف في الصادر                                   |
| UseAutoReceiveWarehouseTransByWarehouse | USE_AUTO_REC_WHTRNS_BY_WCODE | NUMBER(1,0) | لا | نعم | لا | استلام تلقائي لتحويل المستودع حسب المستودع               |
| CheckWarehouseRequestInWarehouseTrans | CHK_WCODE_REQ_IN_WHTRNS      | NUMBER(1,0)       | لا     | نعم       | لا     | فحص طلب المستودع في تحويل المستودعات                    |
| BarcodeDataType               | BARCODE_DATA_TYPE             | NUMBER(1,0)       | لا     | نعم       | لا     | نوع بيانات الباركود                                     |
| InputUnitFactorWeight         | INPT_UNT_FACTOR_WT            | NUMBER            | لا     | نعم       | لا     | معامل الوزن لوحدة الإدخال                               |
| UseSeqItemAuto                | USE_SEQ_ITM_AUTO              | NUMBER(1,0)       | لا     | نعم       | لا     | تسلسل الصنف تلقائياً                                    |
| ShowItemBarcodeInventory      | SHOW_ITM_BARCODE_INV          | NUMBER(1,0)       | لا     | نعم       | لا     | عرض باركود الصنف في المخزون                             |
| UseOneBarcodeForItem          | USE_ONE_BARCODE_FOR_ITM       | NUMBER(1,0)       | لا     | نعم       | لا     | استخدام باركود واحد للصنف                                |
| ConnectSubGroups              | CONN_SUB_GRPS                 | NUMBER(1,0)       | لا     | نعم       | لا     | ربط المجموعات الفرعية                                   |
| ApproveItemNoBatchNoInBarcode | APPRV_ITMNO_BATCHNO_IN_BARCODE| NUMBER(1,0)       | لا     | نعم       | لا     | اعتماد رقم الصنف ورقم الدفعة في الباركود                 |
| GenerateBarcodeMinUnit        | GENERATE_BARCODE_MIN_UNIT     | NUMBER(1,0)       | لا     | نعم       | لا     | توليد باركود لوحدة الحد الأدنى                           |
| UseInventoryReevaluate        | USE_INV_REEVALUATE            | NUMBER(1,0)       | لا     | نعم       | لا     | إعادة تقييم المخزون                                     |
| ShowWeightUnitArgumentInTrans | SHOW_WT_UNT_ARGMNT_IN_TRNS    | NUMBER            | لا     | نعم       | لا     | عرض وحدة الوزن في التحويلات                              |
| DealWithItemUsed              | DEAL_WITH_ITEM_USED           | NUMBER(1,0)       | لا     | نعم       | لا     | التعامل مع الصنف المستخدم                                |
| MethodVATCalcItemUsed         | MTHD_VAT_CALC_ITM_USED        | NUMBER(1,0)       | لا     | نعم       | لا     | طريقة احتساب الضريبة للصنف المستخدم                     |
| ConnectItemByBatch            | CNCT_ITM_BY_BTCH              | NUMBER            | لا     | نعم       | لا     | ربط الصنف بالدفعة                                      |
| PrintPriceWithTax             | PRINT_PRICE_WITH_TAX           | NUMBER(1,0)       | لا     | نعم       | لا     | طباعة السعر مع الضريبة                                  |
| AddedUserId                   | AD_U_ID                       | NUMBER(5,0)       | لا     | نعم       | لا     | المستخدم الذي أضاف                                      |
| AddedDate                     | AD_DATE                        | DATE             | لا     | نعم       | لا     | تاريخ الإضافة                                          |
| UpdatedUserId                 | UP_U_ID                        | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل                                      |
| UpdatedDate                   | UP_DATE                        | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل                                        |
| UpdateCount                   | UP_CNT                         | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث                                       |
| ReportPriority                | PR_REP                         | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير                                         |
| AddedTerminal                 | AD_TRMNL_NM                    | VARCHAR2(50)     | لا     | نعم       | لا     | الجهاز عند الإضافة                                     |
| UpdatedTerminal               | UP_TRMNL_NM                    | VARCHAR2(50)     | لا     | نعم       | لا     | الجهاز عند التعديل                                     |
| ApproveKitItemPriceAssemble   | APPRVD_KIT_ITM_PRICE_ASSMBLE   | NUMBER(1,0)      | لا     | نعم       | لا     | اعتماد سعر أصناف التجميع                               |
| HideIncomingAccount           | HIDE_INCOMING_AC               | NUMBER(1,0)      | لا     | نعم       | لا     | إخفاء حساب الوارد                                      |
| ApproveBatchNoItemCodeSequence| APPRVD_BTCHNO_ITMCODE_SQ       | NUMBER(1,0)      | لا     | نعم       | لا     | اعتماد تسلسل رقم الدفعة مع كود الصنف                    |
| AssembleDocSerial             | ASSMBL_DOC_SRL                 | NUMBER(1,0)      | نعم    | لا        | لا     | تسلسل مستند التجميع                                    |
| StockAdjustmentSerial         | STK_ADJSTMNT_SRL               | NUMBER(1,0)      | نعم    | لا        | لا     | تسلسل مستند تسوية المخزون                              |
| UseQRCodeSerialNo             | USE_QR_CODE_SRL_NO             | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام الرقم التسلسلي في QR                            |
| UseItemPriceByExpireDate      | USE_ITM_PRICE_BY_EXPIRE_DATE   | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام سعر الصنف حسب تاريخ الانتهاء                     |
| UseItemPriceByBatchNo         | USE_ITM_PRICE_BY_BATCH_NO      | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام سعر الصنف حسب رقم الدفعة                         |
| WeightPrefix                  | WGHT_PRFX                      | VARCHAR2(3)      | لا     | نعم       | لا     | بادئة الوزن                                             |
| WeightBarcodeLength           | WGHT_BARCODE_LNGTH             | NUMBER(2,0)      | لا     | نعم       | لا     | طول باركود الوزن                                        |
| WeightItemLength              | WGHT_ITM_LNGTH                 | NUMBER(2,0)      | لا     | نعم       | لا     | طول الصنف في باركود الوزن                               |
| WeightValue                   | WGHT_VAL                       | NUMBER(5,0)      | لا     | نعم       | لا     | قيمة الوزن                                              |
| WeightFlag                    | WGHT_FLG                       | NUMBER(1,0)      | لا     | نعم       | لا     | تفعيل الوزن                                             |
| WeightIncludeItemUnit         | WGHT_INCLD_ITM_UNT             | NUMBER(1,0)      | لا     | نعم       | لا     | تضمين وحدة الصنف في الوزن                               |
| RemoveWeightDigit             | REMOVE_WGHT_DGT                | NUMBER(1,0)      | لا     | نعم       | لا     | إزالة رقم من الوزن                                      |
| UseCheckSum                   | USE_CHCK_SUM                    | NUMBER(1,0)     | لا     | نعم       | لا     | تفعيل CheckSum                                         |
| QRPrefixLength                | QR_PRFX_LNGTH                   | NUMBER(1,0)     | لا     | نعم       | لا     | طول بادئة QR                                           |
| QRGTINLengthArgument          | QR_GTIN_LNGTH_ARGMNT             | NUMBER(1,0)     | لا     | نعم       | لا     | معامل طول رقم GTIN في QR                               |
| NoOfBarcodeDigitInQRCode      | NO_OF_BARCODE_DIGIT_IN_QR_CODE   | NUMBER(2,0)     | لا     | نعم       | لا     | عدد أرقام الباركود في QR                               |
| QRGTINLength                  | QR_GTIN_LNGTH                    | NUMBER(3,0)     | لا     | نعم       | لا     | طول رقم GTIN في QR                                     |
| UseSerialNoForSalesOnly       | USE_SERIALNO_FOR_SALES_ONLY      | NUMBER(1,0)     | لا     | نعم       | لا     | تفعيل الرقم التسلسلي للبيع فقط                         |
| QRCodeMethodType              | QR_CODE_MTHD_TYP                 | NUMBER(1,0)     | لا     | نعم       | لا     | نوع طريقة QR                                           |
| NoOfManualQty                 | NO_OF_MAN_QTY                     | NUMBER(2,0)     | لا     | نعم       | لا     | عدد الكميات اليدوية                                    |
| UseBatchNoAutoSequence        | USE_BATCH_NO_AUTO_SQ              | NUMBER(1,0)     | لا     | نعم       | لا     | تسلسل تلقائي لرقم الدفعة                              |
| NotAllowDeleteDocConnectSerialNo | NOT_ALLW_DEL_DOC_CONN_SERIALNO | NUMBER(1,0)     | لا     | نعم       | لا     | منع حذف المستند المرتبط بالرقم التسلسلي                |
| AllowEnterPartQtySerialNo     | ALLW_ENTR_PART_QTY_SERIALNO      | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بإدخال جزء من الكمية للرقم التسلسلي             |
| UseKitItemWarehouseTypeOut    | USE_KIT_ITM_WC_TYP_OUT           | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام نوع مستودع للأصناف المجمعة الصادرة             |
| UseKitItemClassification      | USE_KIT_ITM_CLSSFCTN             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام تصنيف للأصناف المجمعة                          |
| UsePrepareQtyByBarcode        | USE_PRP_QTY_BY_BARCODE           | NUMBER(1,0)     | لا     | نعم       | لا     | تجهيز الكمية عبر الباركود                               |
| MandatoryEnterPartItemCodeSearch | MNDTRY_ENTR_PART_ITM_CODE_SRCH | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام إدخال جزء من كود الصنف للبحث                      |
| WeightValueService            | WGHT_VAL_SRVC                    | NUMBER(5,0)     | لا     | نعم       | لا     | قيمة الوزن للخدمة                                      |
| PriceIncludeVATServiceItem    | PRICE_INCLD_VAT_SRVC_ITM         | NUMBER(1,0)     | لا     | نعم       | لا     | السعر شامل الضريبة للصنف الخدمي                         |
| UsePreparationQty             | USE_PRPRTN_QTY                   | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام كمية التحضير                                   |
| UseSalesOrderMandatoryInOutgoing| USE_SO_MNDTRY_IN_OUTGOIN        | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام أمر البيع في الصادر                               |
| ShowGroupQtyLimitAlert        | SHW_GRP_QTY_LMT_ALRT             | NUMBER(1,0)     | لا     | نعم       | لا     | تنبيه حد كمية المجموعة                                 |
| AllowDuplicateItemUnitSize    | ALLW_DUP_ITM_UNT_SIZE            | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتكرار وحدة وحجم الصنف                           |
| ConnectCostCenterItemActivity | CONN_CC_ITM_ACTVTY               | NUMBER(1,0)     | لا     | نعم       | لا     | ربط النشاط بمركز التكلفة                                |
| ConnectActivityAccountItemActivity| CONN_ACTV_AC_ITM_ACTVTY       | NUMBER(1,0)     | لا     | نعم       | لا     | ربط نشاط الحساب بنشاط الصنف                             |
| CheckIncomingCostPercentOperation | CHK_INCMNG_CST_PER_OPRTN      | NUMBER(1,0)     | لا     | نعم       | لا     | فحص نسبة تكلفة الوارد حسب العملية                       |
| DuplicateItemInOpenStock      | DUP_ITM_IN_OPEN_STOCK            | NUMBER(1,0)     | لا     | نعم       | لا     | تكرار الصنف في المخزون المفتوح                         |
| UseItemBinMovement            | USE_ITM_BIN_MOV                  | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام بنية الصنف في الحركة                            |
| WeightCalcQtyByIncludePrice   | WGHT_CLC_QTY_BY_INCLD_PRICE      | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب الوزن حسب السعر                                  |
| WeightPriceForceLength        | WGHT_PRICE_FRC_LNGTH             | NUMBER(2,0)     | لا     | نعم       | لا     | طول السعر الإجباري للوزن                                |
| NotAllowPrintItemWithoutBarcode| NOT_ALLW_PRNT_ITM_WITHOT_BARC   | NUMBER(1,0)     | لا     | نعم       | لا     | منع طباعة صنف بدون باركود                               |


---

## ParameterAR (**IAS_PARA_AR**)
| الاسم الجديد                | الاسم القديم                   | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                    |
|----------------------------|-------------------------------|-----------------|--------|-----------|--------|------------------------------|
| ParameterNo                | PARA_NO                       | NUMBER(1,0)     | لا     | نعم       | لا     | رقم السطر / المعيار          |
| GenerateARDocument         | DOC_GEN_AR                    | NUMBER(1,0)     | نعم    | لا        | لا     | توليد مستند حسابات العملاء   |
| AllowDocDeleteNo           | ALLOW_DOC_DEL_NO              | NUMBER(1,0)     | نعم    | لا        | لا     | السماح بحذف مستندات AR       |
| DateGenerateAR             | DATE_GEN_AR                   | NUMBER(1,0)     | نعم    | لا        | لا     | توليد المستند بتاريخ معين     |
| DateSettingAR              | DATE_SETTING_AR               | NUMBER(1,0)     | نعم    | لا        | لا     | إعدادات تاريخ المستند         |
| CustomerCodeLength         | CUST_LENGTH                   | NUMBER(2,0)     | نعم    | لا        | لا     | طول كود العميل               |
| CustomerCodeType           | CUST_D_TYPE                   | NUMBER(1,0)     | نعم    | لا        | لا     | نوع كود العميل               |
| ARAccountLinkType          | AR_AC_LINK_TYPE               | NUMBER(1,0)     | نعم    | لا        | لا     | نوع ربط الحساب               |
| ARUseFreeQty               | AR_USE_FREE_QTY               | NUMBER(1,0)     | نعم    | لا        | لا     | تفعيل الكميات المجانية       |
| ARCostType                 | AR_CS_TYPE                    | NUMBER(1,0)     | نعم    | لا        | لا     | نوع تكلفة AR                 |
| ARProjectType              | AR_PJ_TYPE                    | NUMBER(1,0)     | نعم    | لا        | لا     | نوع مشروع AR                 |
| ARActivityType             | AR_ACTV_TYPE                  | NUMBER(1,0)     | نعم    | لا        | لا     | نوع النشاط                   |
| ARWarehouseType            | AR_WC_TYPE                    | NUMBER(1,0)     | نعم    | لا        | لا     | نوع مستودع AR                |
| InvoicingSerials           | INVOICING_SERIALS             | NUMBER(2,0)     | نعم    | لا        | لا     | تسلسل الفواتير               |
| InvoicingSerialsSR         | INVOICING_SERIALS_SR          | NUMBER(2,0)     | نعم    | لا        | لا     | تسلسل الفواتير SR            |
| ARQuoteSerial              | AR_QUOT_SERIAL                | NUMBER(1,0)     | نعم    | لا        | لا     | تسلسل عروض الأسعار           |
| ARSalesOrderSerial         | AR_SORDER_SERIAL              | NUMBER(1,0)     | نعم    | لا        | لا     | تسلسل أوامر البيع            |
| ShowDiscountPerItemsAR     | SHOW_DISC_PER_ITEMS_AR        | NUMBER(1,0)     | نعم    | لا        | لا     | عرض خصم لكل صنف              |
| MustReturnSameWarehouse    | MUST_RET_SAME_WCODE           | NUMBER(1,0)     | نعم    | لا        | لا     | إلزام إعادة لنفس المستودع     |
| ARLinkInventory            | AR_LINK_INV                   | NUMBER(1,0)     | نعم    | لا        | لا     | ربط AR بالمخزون              |
| DecimalNoAR                | NO_OF_DECIMAL_AR              | NUMBER(2,0)     | نعم    | لا        | لا     | عدد الكسور العشرية           |
| SalesDuplicateItem         | SALES_DUPLICATE_ITEM          | NUMBER(1,0)     | نعم    | لا        | لا     | السماح بتكرار الصنف في البيع  |
| UseReturnWithoutBillNo     | USE_RET_WITHOUT_BILLNO        | NUMBER(1,0)     | نعم    | لا        | لا     | السماح بالإرجاع بدون رقم فاتورة|
| FillSOWithoutPrice         | FILL_SO_WITHOUT_PRICE         | NUMBER(1,0)     | نعم    | لا        | لا     | تعبئة أمر البيع بدون سعر      |
| UseConcreteSystem          | USE_CNCRT_SYS                 | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام نظام الخرسانة        |
| UseShippingListAR          | USE_SHPNG_LST_AR              | NUMBER          | لا     | نعم       | لا     | استخدام قائمة الشحن          |
| PaidScreenType             | PAID_SCR_TYP                  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع شاشة الدفع               |
| SCItemType                 | SC_ITEM_TYPE                  | NUMBER(2,0)     | نعم    | لا        | لا     | نوع الصنف SC                 |
| UseOutBills                | USE_OUT_BILLS                 | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام فواتير الصادر        |
| SalesPostFreeQty           | SALES_POST_FREE_QTY           | NUMBER(1,0)     | نعم    | لا        | لا     | ترحيل الكمية المجانية        |
| SalesPostDiscount          | SALES_POST_DISCOUNT           | NUMBER(1,0)     | نعم    | لا        | لا     | ترحيل الخصم                   |
| PostOutBillsType           | POST_OUT_BILLS_TYPE           | NUMBER(1,0)     | نعم    | لا        | لا     | نوع ترحيل فواتير الصادر      |
| CustomerPriceFixed         | CUST_PRICE_FIXED              | NUMBER(1,0)     | نعم    | لا        | لا     | تثبيت سعر العميل             |
| SIHideDiscountPer          | SI_HIDE_DISC_PER              | NUMBER(1,0)     | نعم    | لا        | لا     | إخفاء نسبة الخصم في الفاتورة  |
| SIHideFreePer              | SI_HIDE_FREE_PER              | NUMBER(1,0)     | نعم    | لا        | لا     | إخفاء نسبة المجاني في الفاتورة|
| SalesDiscountWarehouse     | SALES_DISC_WCODE              | NUMBER(1,0)     | نعم    | لا        | لا     | خصم المستودع                  |
| SalesDiscountPeriodic      | SALES_DISC_PERIODIC           | NUMBER(1,0)     | نعم    | لا        | لا     | الخصم الدوري                  |
| SalesDiscountType          | SALES_DISC_TYPE               | NUMBER(2,0)     | نعم    | لا        | لا     | نوع الخصم                     |
| SalesFreeQtyType           | SALES_FREE_QTY_TYPE           | NUMBER(2,0)     | نعم    | لا        | لا     | نوع المجاني                   |
| SalesFreeQtyWarehouse      | SALES_FREE_QTY_WCODE          | NUMBER(1,0)     | نعم    | لا        | لا     | مجاني المستودع                |
| SalesFreeQtyPeriodic       | SALES_FREE_QTY_PERIODIC       | NUMBER(1,0)     | نعم    | لا        | لا     | مجاني دوري                    |
| ShowItemDescAR             | SHOW_I_DESC_AR                | NUMBER(1,0)     | نعم    | لا        | لا     | عرض وصف الصنف في AR           |
| ShowItemDesc               | SHOW_ITEM_DESC                | NUMBER(1,0)     | نعم    | لا        | لا     | عرض وصف الصنف الكامل          |
| PostRepCommission          | POST_REP_COMM                 | NUMBER(1,0)     | نعم    | لا        | لا     | ترحيل عمولة المندوب           |
| CreditLimitType            | CREDIT_LIMIT_TYPE             | NUMBER(1,0)     | نعم    | لا        | لا     | نوع حد الائتمان               |
| ItemDiscountType           | ITM_DISC_TYPE                 | NUMBER(1,0)     | نعم    | لا        | لا     | نوع خصم الصنف                 |
| UseStandBy                 | USE_STAND_BY                  | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام الاستعداد             |
| UseWorkOrder               | USE_WORK_ORDER                | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام أمر العمل             |
| UseReceiveCheck            | USE_REC_CHECK                 | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام شيك القبض             |
| ARWorkOrderSerial          | AR_WO_SERIAL                  | NUMBER(1,0)     | نعم    | لا        | لا     | تسلسل أوامر العمل             |
| SIRepCodeMandatory         | SI_REPCODE_MANDTRY            | NUMBER(1,0)     | نعم    | لا        | لا     | إلزام كود المندوب في الفاتورة  |
| SIRCodeMandatory           | SI_RCODE_MANDTRY              | NUMBER(1,0)     | نعم    | لا        | لا     | إلزام كود المنطقة في الفاتورة  |
| SIColMandatory             | SI_COL_MANDTRY                | NUMBER(1,0)     | نعم    | لا        | لا     | إلزام العمود في الفاتورة       |
| SIDriverMandatory          | SI_DRIVER_MANDTRY             | NUMBER(1,0)     | نعم    | لا        | لا     | إلزام السائق في الفاتورة       |
| SIAddFieldsMandatory       | SI_ADDFIELDS_MANDTRY          | NUMBER(1,0)     | نعم    | لا        | لا     | إلزام الحقول الإضافية في الفاتورة |
| UseBillNoRTSalePay         | USE_BILLNO_RTSALE_PY          | NUMBER(1,0)     | نعم    | لا        | لا     | استخدام رقم فاتورة البيع بالتجزئة للدفع|
| PaidInstallmentManual      | PAID_INSTLLMNT_MAN            | NUMBER(1,0)     | نعم    | لا        | لا     | دفع الأقساط يدويا             |
| UseDeleteAR                | USE_DEL_AR                    | NUMBER(1,0)     | نعم    | لا        | لا     | السماح بحذف مستندات AR         |
| UseModifyAR                | USE_MOD_AR                    | NUMBER(1,0)     | نعم    | لا        | لا     | السماح بتعديل مستندات AR        |
| RequestRefNoAR             | REQUEST_REFNO_AR              | NUMBER(1,0)     | نعم    | لا        | لا     | طلب رقم مرجعي                  |
| RequestDescAR              | REQUEST_DESC_AR               | NUMBER(1,0)     | نعم    | لا        | لا     | طلب وصف المستند                 |
| UseBillNoConn              | USE_BILLNO_CONN               | NUMBER(1,0)     | نعم    | لا        | لا     | ربط رقم الفاتورة                |
| LightPostType              | LGHT_POST_TYPE                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الترحيل السريع              |
| ShowItemBarcodeAR          | SHOW_ITM_BARCODE_AR           | NUMBER(1,0)     | لا     | نعم       | لا     | عرض باركود الصنف في AR           |
| CheckAllowItemDiscount     | CHK_ALLW_ITM_DSCNT            | NUMBER(1,0)     | لا     | نعم       | لا     | التحقق من السماح بخصم الصنف      |
| CheckLimitSalesOrder       | CHECK_LMT_SORDER              | NUMBER(1,0)     | نعم    | لا        | لا     | التحقق من حد أمر البيع           |
| CheckSalesOrderQty         | CHECK_SORDER_QTY              | NUMBER(1,0)     | نعم    | لا        | لا     | التحقق من كمية أمر البيع         |
| AddPurchaseOrderQty        | ADD_PORDER_QTY                | NUMBER          | نعم    | لا        | لا     | إضافة كمية أمر الشراء            |
| UseSaleInvoiceAsPOS        | USE_SALE_INVOICE_AS_POS       | NUMBER          | نعم    | لا        | لا     | استخدام فاتورة البيع كـ POS      |
| ShowSizeItemInBills        | SHOW_SIZE_ITEM_IN_BILLS       | NUMBER(1,0)     | لا     | نعم       | لا     | عرض حجم الصنف في الفواتير        |
| ShowWeightItemInBills      | SHOW_WEIGHT_ITEM_IN_BILLS     | NUMBER(1,0)     | لا     | نعم       | لا     | عرض وزن الصنف في الفواتير        |
| ShowSumQtyInSales          | SHOW_SUM_QTY_IN_SALES         | NUMBER(1,0)     | لا     | نعم       | لا     | عرض إجمالي الكمية في المبيعات    |
| UseLightWithoutStore       | USE_LGHT_WITHOUT_STORE        | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الترحيل السريع بدون مستودع|
| UseMandatoryDataMstSRPay   | USE_MNDATA_MST_SR_PY          | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام بيانات المستند في دفع SR   |
| DiscountCount              | DISC_COUNT                    | NUMBER(1,0)     | لا     | نعم       | لا     | عدد الخصومات                    |
| AddForceIntoDiscountInvoice| ADD_FRC_INTO_DISC_INVOICE     | NUMBER          | لا     | نعم       | لا     | إضافة إجباري في خصم الفاتورة    |
| CalcVATAmountType          | CALC_VAT_AMT_TYPE             | NUMBER(1,0)     | لا     | نعم       | لا     | نوع احتساب ضريبة القيمة المضافة  |
| AllowGroupCreditCardAmount | ALLOW_GRP_CR_CARD_AMT         | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بمجموع بطاقة الائتمان     |
| ReturnFreeQtyPer           | RET_FREE_QTY_PER              | NUMBER(1,0)     | لا     | نعم       | لا     | نسبة الكميات المجانية في المرتجع |
| PostAddDiscountItemType    | POST_ADD_DISC_ITM_TYPE        | NUMBER(1,0)     | لا     | نعم       | لا     | نوع إضافة خصم الصنف             |
| LightShowQtyAllWarehouse   | LGHT_SHOW_QTY_ALL_WCODE       | NUMBER(1,0)     | لا     | نعم       | لا     | عرض الكمية لكل المستودعات في الترحيل السريع|
| SalesReturnReasonMandatory | SR_RT_REASON_MANDTRY          | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام سبب المرتجع                |
| SIDueDateMandatory         | SI_DUE_DATE_MANDTRY           | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام تاريخ الاستحقاق في الفاتورة |
| SICheckAvailableQtySOrder  | SI_CHK_AVLQTY_SORDER          | NUMBER(1,0)     | لا     | نعم       | لا     | تحقق من توفر كمية أمر البيع       |
| CustomerSequenceType       | CST_SEQ_TYPE                  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع تسلسل العميل                 |
| AllowSOWIthoutStore        | ALLOW_SO_WITHOUT_STORE        | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بأمر بيع بدون مستودع      |
| MaxReserveSOItemDay        | MAX_RESERVE_SO_ITM_DAY        | NUMBER(5,0)     | لا     | نعم       | لا     | الحد الأعلى لأيام احتجاز أصناف أمر البيع|
| SOExpireDateMandatory      | SO_EXP_DATE_MANDTRY           | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام تاريخ انتهاء أمر البيع      |
| MaxProductExpireDateSO     | MAX_PRD_EXP_DATE_SO_DAY       | NUMBER(5,0)     | لا     | نعم       | لا     | الحد الأعلى لتاريخ انتهاء الصنف في أمر البيع|
| CheckLimitQuotationPremSI  | CHK_LMT_QUOT_PRM_SI           | NUMBER          | لا     | نعم       | لا     | التحقق من حد عرض السعر           |
| CheckStockQuotationPremSI  | CHK_STK_QUOT_PRM_SI           | NUMBER          | لا     | نعم       | لا     | التحقق من حد المخزون في عرض السعر |
| CheckLimitPriceMinusDiscSI | CHK_LMT_PRICE_MINUS_DISC_SI   | NUMBER          | لا     | نعم       | لا     | التحقق من الحد الأدنى للسعر بعد الخصم|
| LightPostSalesAvailableQty | LGHT_POST_SALES_AVLQTY        | NUMBER          | لا     | نعم       | لا     | ترحيل الكمية المتاحة للمبيعات    |
| CancelReservedSOTransBranch| CNCL_RSRVD_SO_TRNS_BRN_LGHT   | NUMBER(1,0)     | لا     | نعم       | لا     | إلغاء الحجز بين الفروع في الترحيل السريع|
| SCWarehouseType            | SC_WCODE_TYPE                 | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مستودع SC                   |
| ShowPaidScreen             | SHOW_PAID_SCR                 | NUMBER          | لا     | نعم       | لا     | عرض شاشة المدفوعات              |
| ConnectSOIncome            | CONN_SO_INC                   | NUMBER(1,0)     | لا     | نعم       | لا     | ربط أمر البيع بالإيراد           |
| UseSCProduct               | USE_SC_PRD                    | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام منتج SC                 |
| ShowSalesmanCommSI         | SHOW_SMAN_COMM_SI             | NUMBER          | لا     | نعم       | لا     | عرض عمولة المندوب في الفاتورة    |
| MaxProductReserveSO        | MAX_PRD_RESERVE_SO_DAY        | NUMBER(5,0)     | لا     | نعم       | لا     | الحد الأعلى لأيام حجز الصنف في أمر البيع|
| ARReceiptDocSerial         | AR_RCPT_DOC_SERIAL            | NUMBER(1,0)     | لا     | نعم       | لا     | تسلسل سند القبض في AR           |
| ARUsePaidReceipt           | AR_USE_PAID_RCPT              | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام سند القبض المدفوع        |
| AllowModifyWarehouseSOSales| ALLOW_MOD_WCODE_SO_SI         | NUMBER          | لا     | نعم       | لا     | السماح بتعديل مستودع أمر البيع في الفاتورة|
| AllowModifyPayTypeSOSales  | ALLOW_MOD_PAY_TYPE_SO_SI      | NUMBER          | لا     | نعم       | لا     | السماح بتعديل نوع الدفع في أمر البيع|
| CalcSIDiscountWithoutItemDiscount | CALC_SI_DISC_WITHOUT_ITM_DISC | NUMBER(1,0) | لا | نعم | لا | احتساب خصم الفاتورة بدون خصم الصنف|
| UseSalesmanSlicesCommAutoSI| USE_SMAN_SLICES_COMM_AUTO_SI  | NUMBER(1,0)     | لا     | نعم       | لا     | عمولة الشرائح تلقائية للمندوب    |
| ConnectSalesmanItemActivity| CONN_SMAN_ITM_ACTVTY          | NUMBER(1,0)     | لا     | نعم       | لا     | ربط المندوب بنشاط الصنف          |
| ConnectSalesmanWCCashCC    | CONN_SMAN_WC_CSH_CC           | NUMBER(1,0)     | لا     | نعم       | لا     | ربط المندوب بمركز التكلفة النقدي  |
| ConnectCustomerMultiSalesman| CONN_CST_MULTI_SMAN          | NUMBER(1,0)     | لا     | نعم       | لا     | ربط العميل بعدة مندوبي مبيعات    |
| ShowItemAvailableQtyOnly   | SHW_ITM_AVLQTY_ONLY           | NUMBER(1,0)     | لا     | نعم       | لا     | عرض الكمية المتاحة فقط للصنف      |
| ShowAddFieldInDetail       | SHW_ADD_FLD_IN_DTL            | NUMBER(2,0)     | لا     | نعم       | لا     | عرض حقل إضافي بالتفاصيل          |
| CopyPriceFromPrevBill      | COPY_PRICE_FROM_PREV_BILL     | NUMBER(1,0)     | لا     | نعم       | لا     | نسخ السعر من فاتورة سابقة        |
| MaxProductExpireDateSalesQuotation | MAX_PRD_EXP_DATE_SLS_QUOT_DAY | NUMBER(3,0) | لا | نعم | لا | الحد الأعلى لتاريخ انتهاء الصنف في عرض السعر|
| QuotationExpireDateMandatory | QUOT_EXP_DATE_MANDTRY        | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام تاريخ انتهاء عرض السعر      |
| UseChargeInstantTelecom    | USE_CHRG_INSTANT_TELECOM      | NUMBER          | لا     | نعم       | لا     | استخدام الشحن الفوري             |
| SIPayCashCustomerMandatory | SI_PAY_CSH_CST_MANDTRY        | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام دفع نقدي للعميل            |
| ConnectCustomerMultiCollector| CONN_CST_MULTI_COL          | NUMBER(1,0)     | لا     | نعم       | لا     | ربط العميل بعدة محصلين           |
| MandatoryConnectCustomerCollector| MNDTRY_CONN_CST_COL      | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام ربط العميل بالمحصل         |
| ConvertSIIncdpstAuto       | CNVRT_SI_INCDPST_AUTO         | NUMBER(1,0)     | لا     | نعم       | لا     | تحويل الفاتورة تلقائياً للإيداع   |
| UseApproveSalesManagerSO   | USE_APPRV_SLS_MNG_SO          | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام موافقة مدير المبيعات على أمر البيع|
| UseInsuranceSystem         | USE_INSRNCE_SYS               | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام نظام التأمين             |
| MandatoryRequestInAddDiscount| MNDTRY_REQ_IN_ADD_DISC      | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام طلب عند إضافة خصم          |
| ARAddDiscountSerial        | AR_ADD_DISC_SERIAL            | NUMBER(1,0)     | لا     | نعم       | لا     | تسلسل خصم AR                     |
| ARRqAddDiscountSerial      | AR_RQ_ADD_DISC_SERIAL         | NUMBER(1,0)     | لا     | نعم       | لا     | طلب تسلسل خصم AR                 |
| ConnectOutBillInventoryReceipt| CONN_OUT_BILL_INV_REC      | NUMBER(1,0)     | لا     | نعم       | لا     | ربط فاتورة الصادر بسند الاستلام   |
| SICustomerTelMandatory     | SI_CST_TEL_MANDTRY            | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام رقم هاتف العميل في الفاتورة |
| AREmpType                  | AR_EMP_TYPE                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الموظف                        |
| PostSalesmanCommVoucherReceipt| PST_SMAN_COMM_VCHR_RCPT    | NUMBER(1,0)     | لا     | نعم       | لا     | ترحيل عمولة المندوب بسند القبض     |
| UseMeasurementDiscountItem | USE_MEASUR_DSC_ITM            | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام خصم وحدة القياس           |
| ARUseReturnBillRqType      | AR_USE_RT_BILL_RQ_TYP         | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام نوع طلب مرتجع الفاتورة     |
| UseSubCustomer             | USE_SUB_CUSTOMER              | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام عميل فرعي                  |
| SICustomerNameMandatory    | SI_CST_NM_MANDTRY             | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام اسم العميل في الفاتورة       |
| ShowItemCommPer            | SHW_ITM_COMM_PER              | NUMBER(1,0)     | لا     | نعم       | لا     | عرض نسبة عمولة الصنف               |
| ShowAllItemUnitTrans       | SHW_ALL_ITM_UNT_TRNS          | NUMBER(1,0)     | لا     | نعم       | لا     | عرض كل وحدات الصنف في التحويل       |
| UseSOProportionQty         | USE_SO_PRPRTON_QTY            | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الكمية النسبية في أمر البيع  |
| CalcMeasurePrice           | CALC_MEASUR_PRICE             | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب سعر وحدة القياس              |
| UseCustomerCreditLimitLocal| USE_CST_CR_LMT_LOCAL          | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام حد الائتمان المحلي للعميل    |
| AddDiscountItemQtyPremDiscount| ADD_DSCNT_ITM_QT_PRM_DSCNT | NUMBER(1,0)     | لا     | نعم       | لا     | إضافة خصم على كمية الصنف            |
| BillLimitPrintSimpleForm   | BILL_LMT_PRNT_SMPL_FORM       | NUMBER          | لا     | نعم       | لا     | حد طباعة الفاتورة بالنموذج البسيط    |
| UseDiscountCardSales       | USE_DISC_CARD_SAL             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام بطاقة الخصم في المبيعات      |
| UsePointSystemSales        | USE_POINT_SYS_SAL             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام نظام النقاط في المبيعات      |
| LengthCashCustomerCode     | LNGTH_CSH_CSTMR_CODE          | NUMBER(2,0)     | لا     | نعم       | لا     | طول كود العميل النقدي               |
| LengthCashCustomerMobileNo | LNGTH_CSH_CSTMR_MOBIL_NO      | NUMBER(2,0)     | لا     | نعم       | لا     | طول رقم جوال العميل النقدي           |
| PointCalcType              | POINT_CALC_TYP                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حساب النقاط                     |
| PointApprovedByDay         | POINT_APRVD_BY_DAY            | NUMBER(3,0)     | لا     | نعم       | لا     | الموافقة على النقاط حسب اليوم        |
| PointAgeExpiredType        | POINT_AGE_EXPIRED_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع انتهاء صلاحية النقاط            |
| PointAgeExpiredPeriod      | POINT_AGE_EXPIRED_PRD         | NUMBER(3,0)     | لا     | نعم       | لا     | فترة انتهاء صلاحية النقاط           |
| CustomerNoteJoinPoint      | CUST_NOTE_JOIN_POINT          | VARCHAR2(500)   | لا     | نعم       | لا     | ملاحظة العميل عند الانضمام للنقاط   |
| CustomerNoteNotJoinPoint   | CUST_NOTE_NOT_JOIN_POINT      | VARCHAR2(500)   | لا     | نعم       | لا     | ملاحظة العميل عند عدم الانضمام      |
| SendMsgType                | SEND_MSG_TYP                  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع إرسال الرسائل                   |
| SendMsgCustomerType        | SEND_MSG_CST_TYP              | NUMBER(1,0)     | لا     | نعم       | لا     | نوع العميل في الرسائل               |
| MsgTxtCustomerBill         | MSG_TXT_CST_BILL              | VARCHAR2(1000)  | لا     | نعم       | لا     | نص الرسالة لفاتورة العميل           |
| MsgTxtCustomerRTBill       | MSG_TXT_CST_RTBILL            | VARCHAR2(1000)  | لا     | نعم       | لا     | نص رسالة مرتجع الفاتورة             |
| MsgTxtCustomerPoint        | MSG_TXT_CST_POINT             | VARCHAR2(1000)  | لا     | نعم       | لا     | نص رسالة نقاط العميل                |
| MsgTxtCustomerWelcome      | MSG_TXT_CST_WELCOME           | VARCHAR2(1000)  | لا     | نعم       | لا     | نص رسالة الترحيب بالعميل            |
| UseAssociationAccount      | USE_ASSCTN_ACCNT              | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام حساب الجمعية                |
| AddedUserId                | AD_U_ID                       | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف                   |
| AddedDate                  | AD_DATE                       | DATE            | لا     | نعم       | لا     | تاريخ الإضافة                        |
| UpdatedUserId              | UP_U_ID                       | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل                    |
| UpdatedDate                | UP_DATE                       | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل                      |
| UpdateCount                | UP_CNT                        | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                     |
| ReportPriority             | PR_REP                        | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                       |
| AddedTerminal              | AD_TRMNL_NM                   | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة                    |
| UpdatedTerminal            | UP_TRMNL_NM                   | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل                    |
| UseSalesOrderReservedTime  | USE_SO_RSRVD_TIME             | NUMBER          | لا     | نعم       | لا     | استخدام وقت الحجز في أوامر البيع      |
| DiscountAfterVATForceCategory | DSCNT_AFTR_VAT_FRC_CTGRY    | NUMBER          | لا     | نعم       | لا     | خصم بعد الضريبة حسب الفئة             |
| LinkWithScaleSO            | LNK_WITH_SCAL_SO              | NUMBER(1,0)     | لا     | نعم       | لا     | ربط مع الميزان في أوامر البيع         |
| PerDiffActualWeightQtySO   | PER_DIFF_ACTUL_WGHT_QTY_SO    | NUMBER          | لا     | نعم       | لا     | نسبة فرق الوزن الفعلي في أوامر البيع  |
| ReturnPeriod               | RETURN_PERIOD                 | NUMBER(5,0)     | لا     | نعم       | لا     | فترة السماح بالإرجاع                  |
| AllowDuplicateRefNo        | ALLW_DUP_REF_NO               | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتكرار الرقم المرجعي           |
| UseOutBillDirect           | USE_OUT_BILL_DIRECT           | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام فاتورة الصادر المباشر         |
| ShowNetPriceTrans          | SHOW_NET_PRICE_TRNS           | NUMBER(1,0)     | لا     | نعم       | لا     | عرض السعر الصافي في التحويلات         |
| UseConditionContract       | USE_CNDTN_CNTRCT              | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام عقود الشروط                   |
| UseInterfaceSalesRevenue   | USE_INTRFC_SAL_RVNU           | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الربط مع الإيرادات المبيعات    |
| UseSearchItemNameArabic    | USE_SRCH_ITM_NM_ARABIC        | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام البحث باسم الصنف عربي         |
| ARQuotationWarehouseType   | AR_QT_WC_TYP                  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مستودع عرض الأسعار               |
| CalcTaxDiscount2           | CLC_TAX_DSCNT2                | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب الضريبة على الخصم 2            |
| CalcTaxDiscount3           | CLC_TAX_DSCNT3                | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب الضريبة على الخصم 3            |
| ShowLevelPriceInTrans      | SHW_LVL_PRICE_IN_TRNS         | NUMBER(1,0)     | لا     | نعم       | لا     | عرض سعر المستوى في التحويلات          |
| UseBillsFollowUp           | USE_BILLS_FLLWUP              | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام متابعة الفواتير               |
| UseCustomerClaim           | USE_CSTMR_CLIM                | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مطالبات العملاء               |
| UseCalcTaxFreeQty          | USE_CLC_TAX_FREE_QTY          | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب الضريبة على الكمية المجانية    |
| ApproveFreeQtyDiscountReturnSI | APPRVD_FREEQTY_DSCNT_RTRN_SI | NUMBER(1,0)  | لا     | نعم       | لا     | اعتماد خصم الكميات المجانية على مرتجع الفاتورة|
| UseAutoReserveItemTransInput | USE_AUTO_RSRV_ITM_TRNS_INPT  | NUMBER(1,0)  | لا     | نعم       | لا     | استخدام الحجز التلقائي للمدخلات       |
| UseRequestItemCustomer     | USE_RQ_ITM_CSTMR              | NUMBER(1,0)     | لا     | نعم       | لا     | طلب الصنف للعميل                      |
| CheckCreditBankAmount      | CHK_CRD_BNK_AMT               | NUMBER(1,0)     | لا     | نعم       | لا     | فحص مبلغ البنك الائتماني               |
| TimeCheckCreditBankSecond  | TIME_CHK_CRD_BNK_SCND         | NUMBER(3,0)     | لا     | نعم       | لا     | وقت التحقق من البنك الائتماني (ثواني)   |
| UseAdvancePayment          | USE_ADVNC_PYMNT               | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الدفعات المقدمة                 |
| CalcTaxAdvancePayment      | CLC_TAX_ADVNC_PYMNT           | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب الضريبة على الدفعات المقدمة      |
| CheckPriceCostLimitSOSales | CHK_PRICE_COST_LMT_SO_SI      | NUMBER(1,0)     | لا     | نعم       | لا     | التحقق من حد السعر والتكلفة في أمر البيع|
| AllowUpdateReturnInsuranceSI | ALLW_UPD_RTRN_INSRNCE_SI    | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتحديث مرتجع التأمين في الفاتورة |
| UseSpecialSalesman         | USE_SP_SMAN                   | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مندوب مبيعات خاص               |
| UseScaleMovement           | USE_SCAL_MOVMNT               | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام حركة الميزان                    |
| LightOutBillType           | LGHT_OUT_BILL_TYP             | NUMBER(1,0)     | لا     | نعم       | لا     | نوع فاتورة الصادر في الترحيل السريع     |
| ApproveSONoBatchNoAuto     | APPRVD_SO_NO_BTCH_NO_AUTO     | NUMBER(1,0)     | لا     | نعم       | لا     | اعتماد رقم أمر البيع مع رقم الدفعة التلقائي|
| AllowEnterCustomerInLight  | ALLW_ENTR_CSTMR_IN_LGHT       | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بإدخال عميل في الترحيل السريع    |
| GrantCustomerPrivByBranch  | GRNT_CST_PRIV_BY_BRN          | NUMBER(1,0)     | لا     | نعم       | لا     | منح صلاحية العميل حسب الفرع             |
| CalcDiscountAutoModifyItemTotal | CLC_DSCNT_AUTO_MOD_ITM_TOT | NUMBER(1,0)  | لا     | نعم       | لا     | احتساب الخصم تلقائياً على إجمالي الصنف  |
| SICashCustomerMandatory    | SI_CSH_CST_MANDTRY            | NUMBER(1,0)     | لا     | نعم       | لا     | إلزام العميل النقدي في الفاتورة         |

---

## ParameterAP (**IAS_PARA_AP**)
| الاسم الجديد                         | الاسم القديم                        | النوع             | إجباري | يقبل فارغ | تلقائي | شرح الحقل                                      |
|--------------------------------------|-------------------------------------|-------------------|--------|-----------|--------|------------------------------------------------|
| ParameterNo                         | PARA_NO                             | NUMBER(1,0)       | لا     | نعم       | لا     | رقم السطر / المعيار                            |
| GenerateAPDocument                  | DOC_GEN_AP                          | NUMBER(1,0)       | نعم    | لا        | لا     | توليد مستند حسابات الموردين                     |
| AllowDocDeleteNo                    | ALLOW_DOC_DEL_NO                    | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بحذف مستندات AP                          |
| DateGenerateAP                      | DATE_GEN_AP                         | NUMBER(1,0)       | نعم    | لا        | لا     | توليد المستند بتاريخ معين                        |
| DateSettingAP                       | DATE_SETTING_AP                      | NUMBER(1,0)       | نعم    | لا        | لا     | إعدادات تاريخ المستند                            |
| VendorCodeLength                    | VENDOR_LENGTH                        | NUMBER(2,0)       | نعم    | لا        | لا     | طول كود المورد                                  |
| VendorCodeType                      | VENDOR_D_TYPE                        | NUMBER(1,0)       | نعم    | لا        | لا     | نوع كود المورد                                  |
| APAccountLinkType                   | AP_AC_LINK_TYPE                      | NUMBER(1,0)       | نعم    | لا        | لا     | نوع ربط الحساب                                  |
| APUseFreeQty                        | AP_USE_FREE_QTY                      | NUMBER(1,0)       | نعم    | لا        | لا     | تفعيل الكميات المجانية في الشراء                |
| ShowDiscountPerItemsAP              | SHOW_DISC_PER_ITEMS_AP               | NUMBER(1,0)       | نعم    | لا        | لا     | عرض الخصم لكل صنف في الشراء                      |
| ItemDiscountType                    | ITM_DISC_TYPE                        | NUMBER(1,0)       | نعم    | لا        | لا     | نوع خصم الصنف                                   |
| DiscountCount                       | DISC_COUNT                           | NUMBER(1,0)       | نعم    | لا        | لا     | عدد الخصومات                                    |
| APCostType                          | AP_CS_TYPE                           | NUMBER(1,0)       | نعم    | لا        | لا     | نوع تكلفة AP                                    |
| APProjectType                       | AP_PJ_TYPE                           | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مشروع AP                                    |
| APActivityType                      | AP_ACTV_TYPE                         | NUMBER(1,0)       | نعم    | لا        | لا     | نوع النشاط                                      |
| APWarehouseType                     | AP_WC_TYPE                           | NUMBER(1,0)       | نعم    | لا        | لا     | نوع مستودع AP                                   |
| APLinkInventory                     | AP_LINK_INV                          | NUMBER(1,0)       | نعم    | لا        | لا     | ربط AP بالمخزون                                 |
| DecimalNoAP                         | NO_OF_DECIMAL_AP                     | NUMBER(2,0)       | نعم    | لا        | لا     | عدد الكسور العشرية                              |
| LCType                              | LC_TYPE                              | NUMBER(1,0)       | نعم    | لا        | لا     | نوع الاعتماد المستندي                           |
| LCStatus                            | LC_STATUS                            | NUMBER(1,0)       | نعم    | لا        | لا     | حالة الاعتماد المستندي                           |
| PurchaseDiscountType                | PURCHASE_DISC_TYPE                   | NUMBER(1,0)       | نعم    | لا        | لا     | نوع خصم الشراء                                   |
| PurchaseFreeQtyCosting              | PUR_FREE_QTY_COSTING                 | NUMBER(1,0)       | نعم    | لا        | لا     | تكلفة الكمية المجانية                            |
| ShowGroupName                       | SHOW_G_NAME                          | NUMBER(1,0)       | نعم    | لا        | لا     | عرض اسم المجموعة                                |
| UseLocalGRN                         | USE_LOC_GRN                          | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام GRN محلي                                |
| UseDeleteAP                         | USE_DEL_AP                           | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بحذف مستندات AP                           |
| UseModifyAP                         | USE_MOD_AP                           | NUMBER(1,0)       | نعم    | لا        | لا     | السماح بتعديل مستندات AP                          |
| APPurchaseRequestSerial             | AP_PREQ_SERIAL                       | NUMBER(1,0)       | نعم    | لا        | لا     | تسلسل طلب الشراء                                 |
| APPurchaseOrderSerial               | AP_PO_SERIAL                         | NUMBER(1,0)       | نعم    | لا        | لا     | تسلسل أمر الشراء                                 |
| GRNSerial                           | GRN_SERIAL                           | NUMBER(1,0)       | نعم    | لا        | لا     | تسلسل الاستلام                                   |
| APPurchaseInvoiceSerial             | AP_PI_SERIAL                         | NUMBER(1,0)       | نعم    | لا        | لا     | تسلسل فاتورة الشراء                              |
| APPurchaseReturnInvoiceSerial       | AP_PRI_SERIAL                        | NUMBER(1,0)       | نعم    | لا        | لا     | تسلسل فاتورة مرتجع الشراء                         |
| UseBOE                              | USE_BOE                              | NUMBER(1,0)       | نعم    | لا        | لا     | استخدام سند الصرف                                 |
| ConnectPurchaseRequestPOPI          | CONN_PR_PO_PI                        | NUMBER(1,0)       | نعم    | لا        | لا     | ربط طلب الشراء بأمر الشراء والفاتورة               |
| ShowItemDescAP                      | SHOW_I_DESC_AP                       | NUMBER(1,0)       | نعم    | لا        | لا     | عرض وصف الصنف في AP                                |
| ShowItemDesc                        | SHOW_ITEM_DESC                        | NUMBER(1,0)      | نعم    | لا        | لا     | عرض وصف الصنف الكامل                               |
| RequestRefNoAP                      | REQUEST_REFNO_AP                      | NUMBER(1,0)      | نعم    | لا        | لا     | طلب رقم مرجعي                                     |
| RequestDescAP                       | REQUEST_DESC_AP                       | NUMBER(1,0)      | نعم    | لا        | لا     | طلب وصف المستند                                   |
| ShowWarehouseCodeInPreq             | SHOW_WCODE_IN_PREQ                     | NUMBER(1,0)     | نعم    | لا        | لا     | عرض كود المستودع في طلب الشراء                     |
| UserApprovedInPreq                  | USER_APPROVED_IN_PREQ                   | NUMBER(1,0)    | نعم    | لا        | لا     | موافقة المستخدم على طلب الشراء                     |
| InsertVendorItem                    | INSRT_VNDR_ITM                           | NUMBER(1,0)   | نعم    | لا        | لا     | إدراج صنف مورد                                    |
| FillLCInJV                          | FILL_LC_IN_JV                              | NUMBER(1,0)  | نعم    | لا        | لا     | تعبئة الاعتماد في القيد                            |
| PaidInstallmentManual               | PAID_INSTLLMNT_MAN                            | NUMBER(1,0)| نعم    | لا        | لا     | دفع الأقساط يدوياً                                |
| UsePINORTPRPY                       | USE_PINO_RT_PR_PY                                | NUMBER(1,0)| نعم    | لا        | لا     | استخدام رقم فاتورة مرتجع الدفع                     |
| Discount1NotAffectVendorTrans       | DISC1_NOT_EFFECT_VND_TRNS                           | NUMBER(1,0)| لا     | نعم       | لا     | خصم 1 لا يؤثر في معاملات المورد                    |
| Discount2NotAffectVendorTrans       | DISC2_NOT_EFFECT_VND_TRNS                           | NUMBER(1,0)| لا     | نعم       | لا     | خصم 2 لا يؤثر في معاملات المورد                    |
| Discount3NotAffectVendorTrans       | DISC3_NOT_EFFECT_VND_TRNS                           | NUMBER(1,0)| لا     | نعم       | لا     | خصم 3 لا يؤثر في معاملات المورد                    |
| APDiscountType                      | AP_DISC_TYPE                                       | NUMBER(1,0)| لا     | نعم       | لا     | نوع خصم AP                                        |
| VendorSerial                        | VENDOR_SERIAL                                      | NUMBER(1,0)| لا     | نعم       | لا     | تسلسل المورد                                      |
| ShowSumQty                          | SHOW_SUM_QTY                                       | NUMBER     | لا     | نعم       | لا     | عرض إجمالي الكمية                                 |
| AllowDuplicateItem                  | ALLOW_DUPL_ITM                                     | NUMBER(1,0)| لا     | نعم       | لا     | السماح بتكرار الصنف في الشراء                      |
| PurchaseManualMandatory             | PUR_MAN_MANDTRY                                    | NUMBER(1,0)| لا     | نعم       | لا     | إلزامية الشراء اليدوي                              |
| UseServiceBill                      | USE_SRVC_BILL                                      | NUMBER(1,0)| لا     | نعم       | لا     | استخدام فاتورة الخدمة                              |
| NotifyItemPreqNotProcessed          | NOTIFY_ITM_PRQST_NOT_PRCSS                         | NUMBER     | لا     | نعم       | لا     | تنبيه الأصناف غير المعالجة في طلب الشراء            |
| NotifyItemPOrderNotProcessed        | NOTIFY_ITM_PORDR_NOT_PRCSS                         | NUMBER     | لا     | نعم       | لا     | تنبيه الأصناف غير المعالجة في أمر الشراء            |
| UseAPCheckQty                       | USE_AP_CHECK_QTY                                   | NUMBER(1,0)| لا     | نعم       | لا     | فحص الكمية في AP                                   |
| UseKIMBAP                           | USE_KIMB_AP                                        | NUMBER(1,0)| لا     | نعم       | لا     | استخدام KIMB في AP                                 |
| EffectKIMBVendor                    | EFFCT_KIMB_VNDR                                    | NUMBER(1,0)| لا     | نعم       | لا     | تأثير KIMB على المورد                              |
| CalcVATAmountTypeAP                 | CALC_VAT_AMT_TYPE_AP                               | NUMBER(1,0)| لا     | نعم       | لا     | نوع احتساب ضريبة القيمة المضافة في AP               |
| ConnectItemWithMoreVendor           | CONN_ITM_WITH_MORE_VNDR                            | NUMBER(1,0)| لا     | نعم       | لا     | ربط الصنف بأكثر من مورد                            |
| AddItemPriceFromBill                | ADD_ITM_PRICE_FROM_BILL                            | NUMBER(1,0)| لا     | نعم       | لا     | إضافة سعر الصنف من الفاتورة                        |
| APUseServiceItem                    | AP_USE_SRVC_ITM                                    | NUMBER(1,0)| لا     | نعم       | لا     | استخدام صنف خدمة في AP                             |
| PurchaseOrderCheckMaxLimitCost      | PO_CHK_MAX_LMT_COST                                | NUMBER(1,0)| لا     | نعم       | لا     | فحص الحد الأعلى لتكلفة أمر الشراء                  |
| ShowTotalAmount                     | SHOW_TOT_AMT                                       | NUMBER(1,0)| لا     | نعم       | لا     | عرض إجمالي المبلغ                                  |
| ConnectContractPOType               | CONN_CNTRCT_PO_TYPE                                | NUMBER(1,0)| لا     | نعم       | لا     | ربط نوع العقد مع أمر الشراء                         |
| CheckItemConnectByVendor            | CHK_ITM_CONN_BY_VNDR                               | NUMBER(1,0)| لا     | نعم       | لا     | فحص ربط الصنف بالمورد                              |
| UseAPOtherCharge                    | USE_AP_OTHR_CHRG                                   | NUMBER     | لا     | نعم       | لا     | استخدام مصاريف أخرى في AP                          |
| ShowItemBarcodeAP                   | SHOW_ITM_BARCODE_AP                                | NUMBER(1,0)| لا     | نعم       | لا     | عرض باركود الصنف في AP                              |
| BillDueDateLastMonth                | BILL_DUE_DATE_LAST_MNTH                            | NUMBER(1,0)| لا     | نعم       | لا     | تاريخ استحقاق الفاتورة لآخر شهر                    |
| ShowAddFieldDetailCount             | SHW_ADD_FLD_DTL_CNT                                | NUMBER(2,0)| لا     | نعم       | لا     | عدد الحقول الإضافية في التفاصيل                     |
| ShowCostInPreqOrder                 | SHW_CST_IN_PRQST_ORDR                              | NUMBER(1,0)| لا     | نعم       | لا     | عرض التكلفة في طلب الشراء                           |
| UseReturnBillRequest                | USE_RT_BILL_RQST                                   | NUMBER(1,0)| لا     | نعم       | لا     | استخدام طلب فاتورة المرتجع                          |
| UseLocalGRNMoreOne                  | USE_LOC_GRN_MORE_ONE                               | NUMBER(1,0)| لا     | نعم       | لا     | السماح بأكثر من GRN محلي                            |
| RequestVendorBillNo                 | REQUEST_VNDR_BILL_NO                               | NUMBER(1,0)| لا     | نعم       | لا     | طلب رقم فاتورة المورد                               |
| UseAssignToUser                     | USE_ASSGN_TO_USR                                   | NUMBER(1,0)| لا     | نعم       | لا     | التعيين لمستخدم                                    |
| ShowFreeQtyProfit                   | SHOW_FREE_QTY_PROFT                                | NUMBER(1,0)| لا     | نعم       | لا     | عرض أرباح الكمية المجانية                           |
| CalcDiscountWithoutItemDiscount     | CLC_DISC_WITHOUT_ITM_DISC                          | NUMBER(1,0)| لا     | نعم       | لا     | احتساب الخصم بدون خصم الصنف                         |
| ShowTotalItemPriceByNet             | SHW_TOT_ITM_PRICE_BY_NET                           | NUMBER(1,0)| لا     | نعم       | لا     | عرض سعر الصنف الصافي                                |
| RequiredContainerNo                 | RQRD_CNTNR_NO                                      | NUMBER(1,0)| لا     | نعم       | لا     | رقم الحاوية المطلوب                                 |
| NotCheckLCBalanceInBillCost         | NOT_CHK_LC_BLNC_IN_BILL_CST                        | NUMBER(1,0)| لا     | نعم       | لا     | عدم فحص رصيد الاعتماد في تكلفة الفاتورة              |
| ConnectPurchaseOrderPIType          | CONN_PO_PI_TYP                                     | NUMBER(1,0)| لا     | نعم       | لا     | ربط نوع أمر الشراء بالفاتورة                        |
| UseVendorVATType                    | USE_VNDR_VAT_TYPE                                  | NUMBER(1,0)| لا     | نعم       | لا     | استخدام نوع ضريبة المورد                            |
| PriceVendorItemUnitType             | PRICE_VNDR_ITM_UNT_TYP                             | NUMBER(1,0)| لا     | نعم       | لا     | نوع وحدة سعر الصنف للمورد                           |
| AllowUpdateVendorInBill             | ALLW_UPDT_VNDR_INBILL                              | NUMBER     | لا     | نعم       | لا     | السماح بتحديث المورد في الفاتورة                     |
| AutoUpdateVendorPrice               | AUTO_UPDATE_VNDR_PRICE                             | NUMBER(1,0)| لا     | نعم       | لا     | التحديث التلقائي لسعر المورد                        |
| UseReturnWithoutPIBillNo            | USE_RET_WITHOUT_PI_BILLNO                          | NUMBER(1,0)| لا     | نعم       | لا     | السماح بالإرجاع بدون رقم فاتورة شراء                 |
| APItemChargeCalcType                | AP_ITEM_CHRG_CALC_TYPE                             | NUMBER(1,0)| لا     | نعم       | لا     | نوع حساب مصاريف الصنف في AP                         |
| APItemChargeWarehouseType           | AP_ITEM_CHRG_WCODE_TYPE                            | NUMBER(1,0)| لا     | نعم       | لا     | نوع مستودع مصاريف الصنف في AP                       |
| APItemChargeUsePeriod               | AP_ITEM_CHRG_USE_PRD                               | NUMBER(1,0)| لا     | نعم       | لا     | استخدام فترة مصاريف الصنف في AP                      |
| AllowedRePurchaseSerialNo           | ALLWD_RE_PUR_SERIALNO                              | NUMBER(1,0)| لا     | نعم       | لا     | السماح بإعادة الشراء بنفس الرقم التسلسلي              |
| UseShippingList                     | USE_SHPNG_LST                                      | NUMBER     | لا     | نعم       | لا     | استخدام قائمة الشحن                                  |
| APDiscountPeriod                    | AP_DISC_PRD                                        | NUMBER     | لا     | نعم       | لا     | فترة الخصم في AP                                     |
| AddedUserId                         | AD_U_ID                                            | NUMBER(5,0)| لا     | نعم       | لا     | المستخدم الذي أضاف                                   |
| AddedDate                           | AD_DATE                                            | DATE       | لا     | نعم       | لا     | تاريخ الإضافة                                        |
| UpdatedUserId                       | UP_U_ID                                            | NUMBER(5,0)| لا     | نعم       | لا     | المستخدم الذي عدل                                    |
| UpdatedDate                         | UP_DATE                                            | DATE       | لا     | نعم       | لا     | تاريخ آخر تعديل                                      |
| UpdateQtyPremSales                  | UPDATE_QT_PRM_SAL                                  | NUMBER     | لا     | نعم       | لا     | تحديث كمية الصنف حسب الخصم في المبيعات                |
| UpdateCount                         | UP_CNT                                             | NUMBER(10,0)| لا    | نعم       | لا     | عدد مرات التحديث                                     |
| ReportPriority                      | PR_REP                                             | NUMBER(10,0)| لا    | نعم       | لا     | أولوية التقرير                                       |
| AddedTerminal                       | AD_TRMNL_NM                                        | VARCHAR2(50)| لا    | نعم       | لا     | الجهاز عند الإضافة                                   |
| UpdatedTerminal                     | UP_TRMNL_NM                                        | VARCHAR2(50)| لا    | نعم       | لا     | الجهاز عند التعديل                                   |
| APItemChargeCalcAmountType          | AP_ITEM_CHRG_CALC_AMT_TYPE                         | NUMBER(1,0)| لا     | نعم       | لا     | نوع حساب مبلغ مصاريف الصنف                           |
| UsePostTaxDue                       | USE_POST_TAX_DUE                                   | NUMBER(1,0)| لا     | نعم       | لا     | تفعيل ترحيل الضريبة المستحقة                          |
| UseVendorPriceList                  | USE_VNDR_PRICE_LST                                 | NUMBER     | لا     | نعم       | لا     | استخدام قائمة أسعار المورد                            |
| ShowItemSize                        | SHOW_ITEM_SIZE                                     | NUMBER     | لا     | نعم       | لا     | عرض حجم الصنف في AP                                   |
| ConnectVendorPricePO                | CONN_VNDR_PRICE_PO                                | NUMBER     | لا     | نعم       | لا     | ربط سعر المورد بأمر الشراء                            |
| AddForceInvoicePI                   | ADD_FRC_INVOICE_PI                                | NUMBER(1,0)| لا     | نعم       | لا     | إضافة إجباري لرقم الفاتورة                            |
| UseArabicSearchICode                 | USE_ARBIC_SRCH_ICODE                             | NUMBER(1,0)| لا     | نعم       | لا     | استخدام البحث العربي للكود                             |
| UseSalesPriceAsPurchasePrice         | USE_SAL_PRICE_AS_PUR_PRICE                       | NUMBER(1,0)| لا     | نعم       | لا     | استخدام سعر البيع كسعر شراء                            |
| LevelNoPrice                        | LVL_NO_PRICE                                     | NUMBER(3,0)| لا     | نعم       | لا     | مستوى السعر                                           |
| UseVendorClaim                       | USE_VNDR_CLAIM                                   | NUMBER(1,0)| لا     | نعم       | لا     | تفعيل مطالبات المورد                                  |
| ReturnPIFreeQtyPer                   | RET_PI_FREE_QTY_PER                             | NUMBER(1,0)| لا     | نعم       | لا     | نسبة المجاني في مرتجع الفاتورة                        |
| UsePICalcTaxFreeQty                   | USE_PI_CLC_TAX_FREE_QTY                         | NUMBER(1,0)| لا     | نعم       | لا     | احتساب الضريبة على المجاني في فاتورة الشراء            |
| AddItemPriceFromPO                    | ADD_ITM_PRICE_FROM_PO                           | NUMBER(1,0)| لا     | نعم       | لا     | إضافة سعر الصنف من أمر الشراء                          |
| UseDelivered                          | USE_DELIVERD                                    | NUMBER(1,0)| لا     | نعم       | لا     | استخدام التوصيل                                       |
| ShowICodeVendorAP                     | SHOW_ICODE_VNDR_AP                              | NUMBER(1,0)| لا     | نعم       | لا     | عرض كود الصنف في AP                                    |

---

## NotificationSetting (**IAS_MOBILE_NTFCTN**)
| الاسم الجديد              | الاسم القديم       | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل                         |
|--------------------------|-------------------|-----------------|--------|-----------|--------|------------------------------------|
| SystemNo                 | SYS_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | رقم النظام                         |
| UserId                   | U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم                       |
| DeviceToken              | DVC_TOKEN         | VARCHAR2(300)   | لا     | نعم       | لا     | رمز الجهاز (token) للتنبيهات       |
| DeviceType               | DVS_TYP           | NUMBER          | لا     | نعم       | لا     | نوع الجهاز (موبايل، تابلت...)      |
| HandheldDeviceSerial     | HND_DVC_SRL       | VARCHAR2(60)    | لا     | نعم       | لا     | الرقم التسلسلي للجهاز المحمول      |
| UpdateCount              | UP_CNT            | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث                   |
| ReportPriority           | PR_REP            | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير                     |
| AddedTerminal            | AD_TRMNL_NM       | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة                  |
| UpdatedTerminal          | UP_TRMNL_NM       | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل                  |
| HandheldDeviceSerial2    | HND_DVS_SRL       | VARCHAR2(60)    | لا     | نعم       | لا     | الرقم التسلسلي الثاني (مكرر بالجدول)|

---

