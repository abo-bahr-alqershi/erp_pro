# 7. المستخدمين والصلاحيات (Users & Permissions)
> **جميع الحقول والشرح للجداول: المستخدمين، بيانات المستخدم الإضافية، مجموعات المستخدمين، الصلاحيات**

---

## User (**USER_R**)
| الاسم الجديد            | الاسم القديم              | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------|--------------------------|-----------------|--------|-----------|--------|-----------|
| UserId                 | U_ID                     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم |
| UserArabicName         | U_A_NAME                 | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المستخدم عربي |
| UserEnglishName        | U_E_NAME                 | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المستخدم إنجليزي |
| UserManager            | U_MNG                    | NUMBER(5,0)     | لا     | نعم       | لا     | رقم مستخدم المدير |
| GroupNo                | GROUP_NO                 | NUMBER(5,0)     | لا     | نعم       | لا     | رقم مجموعة المستخدم |
| Password               | PASSWORD                 | VARCHAR2(20)    | نعم    | لا        | لا     | كلمة المرور |
| Password2              | PASSWORD2                | VARCHAR2(20)    | لا     | نعم       | لا     | كلمة مرور ثانوية/احتياطية |
| StartDate              | S_SDATE                  | DATE            | لا     | نعم       | لا     | بداية الصلاحية |
| EndDate                | S_EDATE                  | DATE            | لا     | نعم       | لا     | نهاية الصلاحية |
| StartTime              | S_STIME                  | VARCHAR2(10)    | لا     | نعم       | لا     | بداية وقت الدخول |
| EndTime                | S_ETIME                  | VARCHAR2(10)    | لا     | نعم       | لا     | نهاية وقت الدخول |
| LoginMethod            | LGN_METHOD               | NUMBER(1,0)     | لا     | نعم       | لا     | طريقة الدخول |
| DayActive              | DAYACTIVE                | NUMBER(3,0)     | لا     | نعم       | لا     | أيام السماح للدخول |
| Inactive               | INACTIVE                 | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate           | INACTIVE_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveUserId         | INACTIVE_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل الحساب |
| InactiveReason         | INACTIVE_RES             | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| AccountCode            | A_CODE                   | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي |
| UserType               | USER_TYPE                | NUMBER(2,0)     | لا     | نعم       | لا     | نوع المستخدم |
| AdminUser              | ADMIN_USER               | NUMBER(1,0)     | لا     | نعم       | لا     | مستخدم إداري (1=نعم) |
| ChangePasswordAfterLogin| CHNG_PASSWD_AFTR_LGN    | NUMBER(1,0)     | لا     | نعم       | لا     | تغيير كلمة المرور بعد الدخول |
| UserOnline             | USER_ONLINE              | NUMBER(1,0)     | لا     | نعم       | لا     | متصل حاليا (1=نعم) |
| ConnectWebSystem       | CONN_WEB_SYS             | NUMBER(1,0)     | لا     | نعم       | لا     | متصل عبر الويب |
| UpdatePasswordCount    | UPD_PWD_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عداد تغيير كلمة المرور |
| ScreenThemeNo          | SCR_THEME_NO             | NUMBER          | لا     | نعم       | لا     | رقم سمة الشاشة |
| PrinterBarcodeDefaultName| PRINTER_BARCODE_DFLT_NM| VARCHAR2(250)   | لا     | نعم       | لا     | اسم طابعة الباركود الافتراضية |
| PrinterBarcodePath     | PRINTER_BARCODE_PATH     | VARCHAR2(250)   | لا     | نعم       | لا     | مسار طابعة الباركود الافتراضية |
| HRSUserWebSystem       | HRS_USER_WEB_SYSTEM      | NUMBER(1,0)     | لا     | نعم       | لا     | مستخدم ويب خاص بالموارد البشرية |
| TerminalName           | TRMNL_NAME               | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز |
| TerminalLogin          | TRMNL_LGN                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم دخول الجهاز |
| Occupation             | OCCUPATION               | VARCHAR2(30)    | لا     | نعم       | لا     | الوظيفة |
| LoginField             | LOGIN                    | VARCHAR2(30)    | لا     | نعم       | لا     | اسم الدخول |
| LogoutField            | LOGOUT                   | VARCHAR2(30)    | لا     | نعم       | لا     | اسم الخروج |
| LoggedOn               | LOGGED_ON                | NUMBER(1,0)     | لا     | نعم       | لا     | قيد الدخول حاليا |
| LoginCount             | LOGIN_CNT                | NUMBER(38,0)    | لا     | نعم       | لا     | عدد مرات الدخول |
| BranchNo               | CONN_BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع |
| ConnectionType         | CONNECTION_TYPE          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الاتصال |
| MachineNo              | MACHINE_NO               | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الجهاز |
| WarehouseCodeDefault   | W_CODE_DEF               | NUMBER(10,0)    | لا     | نعم       | لا     | كود المخزن الافتراضي |
| CostCenterCodeDefault  | CC_CODE_DEF              | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة الافتراضي |
| CashNoDefault          | CASH_NO_DEF              | NUMBER(10,0)    | لا     | نعم       | لا     | رقم صندوق النقد الافتراضي |
| CashNo                 | CASH_NO                  | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الصندوق المرتبط |
| EmployeeNo             | EMP_NO                   | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف |
| RepCode                | REP_CODE                 | VARCHAR2(15)    | لا     | نعم       | لا     | كود المندوب |
| LoanAccountCode        | LOAN_A_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب السلف |
| LoanAccountCodeDetail  | LOAN_A_CODE_DTL          | VARCHAR2(15)    | لا     | نعم       | لا     | كود حساب سلف فرعي |
| InheritUserId          | INHRT_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | يرث صلاحيات من مستخدم آخر |
| UseResolutionScreen    | USE_RSLTN_SCR            | NUMBER(1,0)     | لا     | نعم       | لا     | يستخدم شاشة دقة معينة |
| WarehouseKeeper        | WCODE_KEEPER             | NUMBER(1,0)     | لا     | نعم       | لا     | أمين مستودع (1=نعم) |
| CollectorNo            | COL_NO                   | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحصل |
| VerificationType       | VRFCTN_TYP               | NUMBER(1,0)     | لا     | نعم       | لا     | نوع التحقق |
| PDAName                | PDA_NM                   | VARCHAR2(50)    | لا     | نعم       | لا     | اسم جهاز PDA |
| WordPath               | WORD_PATH                | VARCHAR2(250)   | لا     | نعم       | لا     | مسار ملفات Word |
| ExcelPath              | EXCEL_PATH               | VARCHAR2(250)   | لا     | نعم       | لا     | مسار ملفات Excel |
| RMSType                | RMS_USR_TYP              | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مستخدم RMS |
| AddedUserId            | AD_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate              | AD_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId          | UP_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate            | UP_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount            | UP_CNT                   | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority         | PR_REP                   | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal          | AD_TRMNL_NM              | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal        | UP_TRMNL_NM              | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| LowLevelPrice          | LOW_LVL_PRICE            | NUMBER(3,0)     | لا     | نعم       | لا     | أقل مستوى سعر |
| HighLevelPrice         | HIGH_LVL_PRICE           | NUMBER(3,0)     | لا     | نعم       | لا     | أعلى مستوى سعر |
| DefaultLevelPrice      | DFLT_LVL_PRICE           | NUMBER(3,0)     | لا     | نعم       | لا     | مستوى السعر الافتراضي |
| RMSUserDefaultBillDocType| RMS_USR_DFLT_BILL_DOC_TYP| NUMBER         | لا     | نعم       | لا     | نوع مستند افتراضي لـ RMS |
| RMSDefaultHall         | RMS_DFLT_HALL            | NUMBER(6,0)     | لا     | نعم       | لا     | قاعة افتراضية لـ RMS |
| ImageEditorPath        | IMG_EDTR_PATH            | VARCHAR2(250)   | لا     | نعم       | لا     | مسار محرر الصور |
| ExplorerPath           | EXPROLR_PATH             | VARCHAR2(250)   | لا     | نعم       | لا     | مسار Explorer |
| DefaultVATPriceType    | DFLT_CLC_VAT_PRICE_TYP   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع احتساب الضريبة الافتراضي |
| MobileNo               | MOBILE_NO                | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الجوال |
| CSSUserFlag            | CSS_USR_FLG              | NUMBER(1,0)     | لا     | نعم       | لا     | علم مستخدم CSS |
| DriverNo               | DRIVER_NO                | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السائق |
| ExcCashAccountCode     | EXCSS_A_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب صندوق إضافي |
| ExcCashAccountDetail   | EXCSS_A_CODE_DTL         | VARCHAR2(15)    | لا     | نعم       | لا     | كود حساب صندوق إضافي فرعي |

---

## UserHead (**IAS_USER_HEAD**)
| الاسم الجديد            | الاسم القديم              | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------|--------------------------|-----------------|--------|-----------|--------|-----------|
| UserId                 | U_ID                     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم |
| BranchYear             | BRN_YEAR                 | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| CompanyNo              | CMP_NO                   | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo               | BRN_NO                   | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| CompanyArabicName      | CMP_ANAME                | VARCHAR2(40)    | نعم    | لا        | لا     | اسم الشركة عربي |
| CompanyEnglishName     | CMP_ENAME                | VARCHAR2(40)    | لا     | نعم       | لا     | اسم الشركة إنجليزي |
| BranchArabicDesc       | BRN_ADES                 | VARCHAR2(40)    | نعم    | لا        | لا     | وصف الفرع عربي |
| BranchEnglishDesc      | BRN_EDES                 | VARCHAR2(40)    | لا     | نعم       | لا     | وصف الفرع إنجليزي |
| BranchArabicAddress    | BRN_AADD                 | VARCHAR2(40)    | لا     | نعم       | لا     | عنوان الفرع عربي |
| BranchEnglishAddress   | BRN_EADD                 | VARCHAR2(40)    | لا     | نعم       | لا     | عنوان الفرع إنجليزي |
| BranchArabicTel        | BRN_ATELE                | VARCHAR2(40)    | لا     | نعم       | لا     | هاتف الفرع عربي |
| BranchEnglishTel       | BRN_ETELE                | VARCHAR2(40)    | لا     | نعم       | لا     | هاتف الفرع إنجليزي |
| BranchArabicFax        | BRN_AFAX                 | VARCHAR2(40)    | لا     | نعم       | لا     | فاكس الفرع عربي |
| BranchEnglishFax       | BRN_EFAX                 | VARCHAR2(40)    | لا     | نعم       | لا     | فاكس الفرع إنجليزي |
| BranchArabicBox        | BRN_ABOX                 | VARCHAR2(40)    | لا     | نعم       | لا     | صندوق بريد الفرع عربي |
| BranchEnglishBox       | BRN_EBOX                 | VARCHAR2(40)    | لا     | نعم       | لا     | صندوق بريد الفرع إنجليزي |
| CompanyImage           | CMP_IMG                  | VARCHAR2(30)    | لا     | نعم       | لا     | صورة الشركة |
| AddedUserId            | AD_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate              | AD_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId          | UP_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate            | UP_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| BranchUser             | BRN_USR                  | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount            | UP_CNT                   | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority         | PR_REP                   | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal          | AD_TRMNL_NM              | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal        | UP_TRMNL_NM              | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReportHeaderType       | RPRT_HDR_TYP             | NUMBER(2,0)     | لا     | نعم       | لا     | نوع رأس التقرير |
| ReportHeaderImage      | RPRT_HDR_IMG             | BLOB            | لا     | نعم       | لا     | صورة رأس التقرير |
| ReportHeaderImageName  | RPRT_HDR_IMG_NM          | VARCHAR2(200)   | لا     | نعم       | لا     | اسم ملف صورة رأس التقرير |
| ReportHeaderImageNameH | RPRT_HDR_IMG_NM_H        | VARCHAR2(200)   | لا     | نعم       | لا     | اسم ملف صورة رأس التقرير (رمز) |

---

## UserGroup (**IAS_USER_GROUP**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| GroupNo          | GROUP_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المجموعة |
| GroupArabicName  | GROUP_A_NAME     | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المجموعة عربي |
| GroupEnglishName | GROUP_E_NAME     | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المجموعة إنجليزي |
| AdminUser        | ADMIN_USER       | NUMBER(1,0)     | لا     | نعم       | لا     | مجموعة إدارية (1=نعم) |
| RestGroup        | REST_GRP         | NUMBER(1,0)     | لا     | نعم       | لا     | مجموعة فرعية أو مخصصة (1=نعم) |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority   | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## Privilege (**PRIVILEGE**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| UserId           | U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم |
| FormNo           | FORM_NO          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الشاشة أو النموذج |
| IncludeFlag      | INCLUDE_FLAG     | NUMBER(1,0)     | لا     | نعم       | لا     | الصلاحية مدرجة (1=نعم) |
| AddFlag          | AD_FLAG          | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية إضافة |
| DeleteFlag       | DEL_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية حذف |
| ModifyFlag       | MOD_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية تعديل |
| ViewFlag         | VIEW_FLAG        | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية استعراض |
| PrintFlag        | PRINT_FLAG       | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية طباعة |
| ViewReportFlag   | VWREP_FLAG       | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية استعراض تقارير |
| VerifyFlag       | VRFY_FLAG        | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية اعتماد |
| PostFlag         | PST_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية ترحيل/اعتماد نهائي |
| FormOrderNo      | F_ORDER_NO       | NUMBER(5,0)     | لا     | نعم       | لا     | رقم ترتيب الشاشة |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |

---

## PrivilegeCostCenter (**PRIVILEGE_CC**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| UserId           | U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم |
| CostCenterCode   | CC_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| AddFlag          | ADD_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية إضافة |
| ViewFlag         | VIEW_FLAG        | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية استعراض |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |

---


## PrivilegeFixed (**PRIVILEGE_FIXED**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-------------|-------------|-------|--------|-----------|--------|-----------|
| UserId | U_ID | NUMBER(5,0) | لا | نعم | لا | رقم المستخدم |
| CreditLimitType | CRLIMIT_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع حد الائتمان |
| ManualPayment | PMANUAL | NUMBER(1,0) | لا | نعم | لا | السماح بالدفع اليدوي |
| InvoiceDiscountLimit | INV_DIS_LMT | NUMBER | لا | نعم | لا | حد الخصم على الفاتورة |
| HideCost | HIDE_COST | NUMBER(1,0) | لا | نعم | لا | إخفاء التكلفة |
| PriceLimitType | PLIMIT_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع حد السعر |
| PayAvailableQty | PAY_AVL_QTY | NUMBER(1,0) | لا | نعم | لا | السماح بدفع الكمية المتاحة |
| PayItemMinQty | PAY_ITM_MIN_QTY | NUMBER(1,0) | لا | نعم | لا | دفع أقل كمية للصنف |
| InvoiceReport | INV_REP | NUMBER(1,0) | لا | نعم | لا | صلاحية تقارير الفواتير |
| LowPrice | L_PRICE | NUMBER(1,0) | لا | نعم | لا | صلاحية أقل سعر |
| HighPrice | H_PRICE | NUMBER(1,0) | لا | نعم | لا | صلاحية أعلى سعر |
| ShowMainAccReport | SHOW_MAIN_ACC_REP | NUMBER(1,0) | لا | نعم | لا | عرض تقارير الحسابات الرئيسية |
| UpdateFreeQty | AR_UPDATE_FREE_QTY | NUMBER(1,0) | لا | نعم | لا | تحديث الكمية المجانية |
| UpdateItemAllowDiscount | AR_UPDATE_ITM_ALLOW_DISC | NUMBER(1,0) | لا | نعم | لا | تحديث سماح خصم على الصنف |
| UseSOinSI | USE_SO_IN_SI | NUMBER(1,0) | لا | نعم | لا | استخدام أمر بيع في فاتورة بيع |
| UpdateBillsData | UPDATE_BILLS_DATA | NUMBER(1,0) | لا | نعم | لا | تحديث بيانات الفواتير |
| UpdateKimbAmount | UPDATE_KIMB_AMT | NUMBER(1,0) | لا | نعم | لا | تحديث مبلغ الكيمب |
| PrintDoc | PRINT_DOC | NUMBER(1,0) | لا | نعم | لا | طباعة المستند |
| UserViewDocEntry | USER_VIEW_DOC_ENTR | NUMBER(1,0) | لا | نعم | لا | استعراض إدخال المستند |
| ShowARReportDay | SHOW_AR_REP_DAY | NUMBER(5,0) | لا | نعم | لا | عرض تقارير العملاء اليومية |
| AllowBillFQtyOnly | ALLOW_BILL_FQTY_ONLY | NUMBER(1,0) | لا | نعم | لا | السماح بفواتير الكمية المجانية فقط |
| AllowEnterZeroCost | ALLOW_ENTER_ZERO_COST | NUMBER(1,0) | لا | نعم | لا | السماح بإدخال تكلفة صفرية |
| PriceLimitPrivilege | PRICE_LMT_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية حد السعر |
| CheckCreditPeriod | CHECK_CREDIT_PERIOD | NUMBER(1,0) | لا | نعم | لا | التحقق من فترة الائتمان |
| FillOutBillsOnce | FILL_OUTBILLS_ONCE | NUMBER(1,0) | لا | نعم | لا | تعبئة الفواتير دفعة واحدة |
| SelectDocType | SLCT_DOC_TYPE | NUMBER(1,0) | لا | نعم | لا | اختيار نوع المستند |
| AccLimitPrivilege | ACC_LMT_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية حد الحساب |
| ShowStockCostInQtyDisc | SHOW_STKCOST_INQTY_DISC_FQTY | NUMBER(1,0) | لا | نعم | لا | إظهار تكلفة المخزون في الخصم |
| PayVoucherMasterAccPrivilege | PAY_VCHR_MST_AC_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية سند دفع رئيسي للحساب |
| ReceiveVoucherMasterAccPrivilege | RCV_VCHR_MST_AC_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية سند قبض رئيسي للحساب |
| AllowModifyFieldName | ALLOW_MOD_FLD_NAME | NUMBER(1,0) | لا | نعم | لا | السماح بتعديل اسم الحقل |
| CheckCustomerBlacklist | CHECK_CST_BLK_LST | NUMBER(1,0) | لا | نعم | لا | التحقق من القائمة السوداء للعملاء |
| ModifyItemDiscount | MOD_ITM_DISC | NUMBER(1,0) | لا | نعم | لا | تعديل خصم الصنف |
| MaxDiscountItemPercent | MAX_DISC_ITM_PER | NUMBER | لا | نعم | لا | أعلى نسبة خصم للصنف |
| UpdateDocHoursPeriod | UPD_DOC_HRS_PRD | NUMBER | لا | نعم | لا | فترة تحديث المستند بالساعات |
| UpdateDocDayPeriod | UPD_DOC_DAY_PRD | NUMBER(3,0) | لا | نعم | لا | فترة تحديث المستند بالأيام |
| DeleteDocHoursPeriod | DEL_DOC_HRS_PRD | NUMBER | لا | نعم | لا | فترة حذف المستند بالساعات |
| DeleteDocDayPeriod | DEL_DOC_DAY_PRD | NUMBER(3,0) | لا | نعم | لا | فترة حذف المستند بالأيام |
| AllowImportXLS | ALLOW_IMP_XLS | NUMBER(1,0) | لا | نعم | لا | السماح بالاستيراد من إكسل |
| AllowCallReportButton | ALLOW_CALL_REP_BTN | NUMBER(1,0) | لا | نعم | لا | السماح بزر استدعاء التقرير |
| UpdateItemNotAllowDiscount | AR_UPDATE_ITM_NOT_ALLOW_DISC | NUMBER(1,0) | لا | نعم | لا | تحديث عدم السماح بالخصم على الصنف |
| InvoiceAdditionalDiscountLimit | INV_ADD_DIS_LMT | NUMBER | لا | نعم | لا | حد الخصم الإضافي على الفاتورة |
| CheckPrivilegeAccountsReport | CHK_PRIV_ACS_REP | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية تقارير الحسابات |
| CheckPrivilegeCostCentersReport | CHK_PRIV_CCS_REP | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية تقارير مراكز التكلفة |
| CheckPrivilegeProjectsReport | CHK_PRIV_PJS_REP | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية تقارير المشاريع |
| CheckPrivilegeBranchReport | CHK_PRIV_BRN_REP | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية تقارير الفروع |
| CheckReturnPercent | CHECK_RET_PER | NUMBER(1,0) | لا | نعم | لا | التحقق من نسبة المرتجع |
| UpdateSIPayType | UPD_SI_PAY_TYPE | NUMBER(1,0) | لا | نعم | لا | تحديث نوع الدفع في فاتورة البيع |
| ChangePricePI | CHANGE_PRICE_PI | NUMBER(1,0) | لا | نعم | لا | تغيير سعر أمر الشراء |
| AddDiscountInCreditPeriodOnly | ADD_DISC_IN_CR_PRD_ONLY | NUMBER(1,0) | لا | نعم | لا | السماح بالخصم في فترة الائتمان فقط |
| CheckPrivilegeAccountsStatement | CHK_PRIV_ACS_ASTMNT | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية كشف الحساب |
| CheckPrivilegeCostCentersStatement | CHK_PRIV_CCS_ASTMNT | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية كشف مراكز التكلفة |
| CheckPrivilegeProjectsStatement | CHK_PRIV_PJS_ASTMNT | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية كشف المشاريع |
| AllowPrintDocBeforeAudit | ALLOW_PRNTDOC_BFR_AUDIT_REF | NUMBER(1,0) | لا | نعم | لا | السماح بالطباعة قبل المراجعة |
| AllowCancelAuditRef | ALLOW_CANCEL_AUDIT_REF | NUMBER(1,0) | لا | نعم | لا | السماح بإلغاء مراجعة الحساب |
| UseInstallJV | USE_INSTALL_JV | NUMBER(1,0) | لا | نعم | لا | استخدام قيد اليومية التقسيطي |
| UseInstallReceipt | USE_INSTALL_RCPT | NUMBER(1,0) | لا | نعم | لا | استخدام سند قبض تقسيطي |
| UseInstallPayment | USE_INSTALL_PYMNT | NUMBER(1,0) | لا | نعم | لا | استخدام سند دفع تقسيطي |
| AllowUpdateAutoDate | ALLOW_UPDATE_AUTO_DATE | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث التاريخ تلقائيا |
| AllowUpdateOrderPriceInBill | ALLOW_UPDATE_ORDR_PRICE_INBILL | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث سعر الطلب في الفاتورة |
| ShowAvailableQtyInReq | SHOW_AVL_QTY_IN_REQ | NUMBER(1,0) | لا | نعم | لا | عرض الكمية المتاحة في الطلب |
| ShowAvailableQtyInTransfer | SHOW_AVL_QTY_IN_TR | NUMBER(1,0) | لا | نعم | لا | عرض الكمية المتاحة في النقل |
| AllowShowJournal | ALLOW_SHOW_JRNL | NUMBER(1,0) | لا | نعم | لا | السماح بعرض اليومية |
| InvoiceDiscountLimitItem | INV_DIS_LMT_ITM | NUMBER | لا | نعم | لا | حد الخصم على الصنف |
| UseReturnWithTransfer | USE_RET_WHTRNS | NUMBER(1,0) | لا | نعم | لا | استخدام مرتجع مع تحويل |
| CheckPrivilegeActivityStatement | CHK_PRIV_ACTV_ASTMNT | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية كشف النشاط |
| CheckPrivilegeActivityReport | CHK_PRIV_ACTV_REP | NUMBER(1,0) | لا | نعم | لا | التحقق من صلاحية تقارير النشاط |
| ExceedAmountContractInBill | EXCD_AMT_CNTRCT_IN_BILL | NUMBER(1,0) | لا | نعم | لا | السماح بتجاوز مبلغ العقد في الفاتورة |
| ShowStockCostARReport | AR_SHOW_STK_CST_REP | NUMBER(1,0) | لا | نعم | لا | عرض تكلفة المخزون في تقرير العملاء |
| AllowDeleteItemFromPOSBill | ALLOW_DEL_ITM_FROM_POS_BILL | NUMBER(1,0) | لا | نعم | لا | السماح بحذف الصنف من فاتورة نقاط البيع |
| AllowSalesDueDebit | AR_ALLOW_SALES_DUE_DR | NUMBER(1,0) | لا | نعم | لا | السماح بمبيعات دائنة للمدين |
| AllowSalesPrevDebit | AR_ALLOW_SALES_PRV_DR | NUMBER(1,0) | لا | نعم | لا | السماح بمبيعات سابقة للمدين |
| CheckProductAfterDue | AR_CHK_PRD_AFTR_DUE | NUMBER(1,0) | لا | نعم | لا | التحقق من المنتج بعد الاستحقاق |
| UseBalancedACYJV | USE_BALANCED_ACY_JV | NUMBER(1,0) | لا | نعم | لا | استخدام اليومية المتوازنة |
| AllowCopyPriceLevel | ALLOW_COPY_PRICE_LVL | NUMBER(1,0) | لا | نعم | لا | السماح بنسخ مستوى السعر |
| AllowChangePOSQty | ALLOW_CHANGE_POS_QTY | NUMBER(1,0) | لا | نعم | لا | السماح بتغيير الكمية في نقاط البيع |
| AllowUpdateFillQtyPO | AP_ALLOW_UPDAE_FILL_QTY | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث كمية أمر الشراء |
| PriceLimitPercent | PLIMIT_PER | NUMBER | لا | نعم | لا | نسبة حد السعر |
| CreditLimitPercent | CRLIMIT_PER | NUMBER | لا | نعم | لا | نسبة حد الائتمان |
| AllowHungBills | ALLOW_HUNG_BILLS | NUMBER(1,0) | لا | نعم | لا | السماح بالفواتير المعلقة |
| UseUndoCtrlU | USE_UNDO_CTRLU | NUMBER(1,0) | لا | نعم | لا | استخدام أمر التراجع Ctrl+U |
| ReturnBillNo | RTN_BILL_NO | NUMBER(1,0) | لا | نعم | لا | رقم فاتورة المرتجع |
| PrintPrevBill | PRINT_PREV_BILL | NUMBER(1,0) | لا | نعم | لا | طباعة الفاتورة السابقة |
| CheckPrivilegeBranchStatement | CHK_PRIV_BRN_ASTMNT | NUMBER(1,0) | لا | نعم | لا | التحقق من كشف الفروع |
| PaymentForVendorZeroCredit | PAYMNT_FOR_VNDR_ZERO_CR | NUMBER(1,0) | لا | نعم | لا | السماح بدفع للمورد برصيد صفر |
| NotAllowModifyDetailDocAfterSave | NOT_ALLW_MOD_DTL_DOC_AFTR_SAVE | NUMBER(1,0) | لا | نعم | لا | عدم السماح بتعديل تفاصيل المستند بعد الحفظ |
| FillStockCostIntoPriceSI | FILL_STKCOST_INTO_PRICE_SI | NUMBER(1,0) | لا | نعم | لا | تعبئة تكلفة المخزون في سعر البيع |
| AllowUpdateDiscountReturnBill | ALLOW_UPD_DISC_RTBILL | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث خصم فاتورة المرتجع |
| ShowGLCashReportDay | SHOW_GL_CASH_REP_DAY | NUMBER(5,0) | لا | نعم | لا | عرض تقرير النقدية العام يوميا |
| ShowAmountQtyStaticARReport | SHW_AMT_QTY_STATC_AR_REP | NUMBER(1,0) | لا | نعم | لا | عرض الكمية والثمن الثابت في تقرير العملاء |
| AllowUpdateQtyWeight | ALLOW_UPD_QTY_WT | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث كمية الوزن |
| EnterPriceManualSR | AR_ENTR_PRICE_MANUAL_SR | NUMBER(1,0) | لا | نعم | لا | إدخال السعر يدويا في المرتجع |
| AllowDiscountItemQutPrmSI | AR_ALLOW_DISC_ITM_QUT_PRM_SI | NUMBER(1,0) | لا | نعم | لا | السماح بخصم الصنف في العروض الترويجية |
| AllowFillSerialNo | ALLOW_FILL_SERIALNO | NUMBER(1,0) | لا | نعم | لا | السماح بتعبئة الرقم التسلسلي |
| BudgetLimitPrivilege | BGT_LMT_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية حد الميزانية |
| AllowUnapproved | ALLOW_UNAPPROVED | NUMBER(1,0) | لا | نعم | لا | السماح بحالة غير معتمد |
| UseHidePriceItemBarcode | USE_HIDE_PRICE_ITM_BARCODE | NUMBER(1,0) | لا | نعم | لا | إخفاء سعر الصنف في الباركود |
| ARMaxInstallment | AR_MAX_INSTLMNT | NUMBER(2,0) | لا | نعم | لا | الحد الأعلى للأقساط في العملاء |
| AllowModifyPercentPriceFromCost | ALLOW_MOD_PRCNT_PRICE_FROM_CST | NUMBER(1,0) | لا | نعم | لا | السماح بتعديل نسبة السعر من التكلفة |
| ARMaxAddFreeQtyItemPercent | AR_MAX_ADD_FREE_QTY_ITM_PER | NUMBER | لا | نعم | لا | الحد الأعلى للكمية المجانية للصنف |
| ARAutoPrintSIAfterSave | AR_AUTO_PRNT_SI_AFTR_SAVE | NUMBER(1,0) | لا | نعم | لا | طباعة فاتورة البيع تلقائياً بعد الحفظ |
| ARAutoPrintSRAfterSave | AR_AUTO_PRNT_SR_AFTR_SAVE | NUMBER(1,0) | لا | نعم | لا | طباعة فاتورة المرتجع تلقائياً بعد الحفظ |
| UserShowMsgBeforeSave | USR_SHW_MSG_B4SAVE | NUMBER(1,0) | لا | نعم | لا | إظهار رسالة للمستخدم قبل الحفظ |
| UseWOinSI | USE_WO_IN_SI | NUMBER(1,0) | لا | نعم | لا | استخدام أمر عمل في فاتورة بيع |
| AllowUpdateStandbySIOnly | ALLW_UPD_STANDBY_SI_ONLY | NUMBER(1,0) | لا | نعم | لا | السماح بالتعديل فقط في الفواتير قيد الانتظار |
| DisplayPrivilegeAccountStatement | DSPLY_PRV_AC_STMNT | NUMBER(1,0) | لا | نعم | لا | عرض صلاحية كشف الحساب |
| AllowUpdateCustomerSequence | ALLW_UPD_CST_SEQ | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث تسلسل العملاء |
| ModifyMobileVoucherRcvDoc | MOD_MBL_VCHR_RCV_DOC | NUMBER(1,0) | لا | نعم | لا | تعديل سند قبض الجوال |
| AllowUpdateVATPercent | ALLOW_UPD_VAT_PER | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث نسبة الضريبة |
| UseTrailerLoadInSI | USE_TRL_LOAD_IN_SI | NUMBER(1,0) | لا | نعم | لا | استخدام تحميل المقطورة في فاتورة البيع |
| AllowExceedVendorPrice | ALLOW_EXCD_VNDR_PRICE | NUMBER(1,0) | لا | نعم | لا | السماح بتجاوز سعر المورد |
| UseFreeRMSInvoice | USE_FREE_RMS_INVC | NUMBER(1,0) | لا | نعم | لا | السماح بالفواتير المجانية في RMS |
| AllowChangeDeliveryServiceAmount | ALLW_CHNG_DLVRY_SRVC_AMT | NUMBER | لا | نعم | لا | السماح بتغيير مبلغ خدمة التوصيل |
| UpdateMaxLimitPossible | UPD_MAX_LMT_PSBL | NUMBER(1,0) | لا | نعم | لا | تحديث الحد الأعلى الممكن |
| AllowChangeRentPrice | ALLW_CHNG_RNT_PRICE | NUMBER(1,0) | لا | نعم | لا | السماح بتغيير سعر التأجير |
| AllowUnpostRent | ALLOW_UNPST_RNT | NUMBER(1,0) | لا | نعم | لا | السماح بإلغاء ترحيل التأجير |
| AllowPostRentPeriod | ALLOW_PST_RNT_PRD | NUMBER(1,0) | لا | نعم | لا | السماح بترحيل فترة التأجير |
| AllowUpdateDischargeDate | ALLOW_UPD_DSCHRG_DATE | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث تاريخ الخروج |
| AllowUpdateTransferDate | ALLOW_UPD_TRNSFR_DATE | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث تاريخ التحويل |
| AllowOutPatientNoZeroBalance | ALLOW_OUT_PTNT_NO_ZERO_BLNC | NUMBER(1,0) | لا | نعم | لا | السماح لمريض خارجي برصيد صفر |
| AllowCancelDischargePatient | ALLOW_CNCL_DSCHRG_PTNT | NUMBER(1,0) | لا | نعم | لا | السماح بإلغاء خروج المريض |
| AllowOutPatientNoOrderExcept | ALLOW_OUT_PTNT_NO_ORDR_EXC | NUMBER(1,0) | لا | نعم | لا | السماح لمريض خارجي بدون أمر استثناء |
| AllowPrintResultUnverified | ALLOW_PRNT_RSLT_UNVRFD | NUMBER(1,0) | لا | نعم | لا | السماح بطباعة النتائج غير المعتمدة |
| AllowUpdatePaymentInAdmission | ALLOW_UPD_PYMNT_IN_ADMT | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث الدفع في القبول |
| NotShowKitItemContent | NOT_SHW_KIT_ITM_CNTNT | NUMBER(1,0) | لا | نعم | لا | عدم إظهار محتوى مجموعة الأصناف |
| AddedDate | AD_DATE | DATE | لا | نعم | لا | تاريخ الإضافة |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف السطر |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل السطر |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| UseStaffFeedingRMSInvoice | USE_STAFF_FEEDING_RMS_INVC | NUMBER(1,0) | لا | نعم | لا | استخدام فواتير إطعام الموظفين في RMS |
| UseDamageRMSInvoice | USE_DAMGE_RMS_INVC | NUMBER(1,0) | لا | نعم | لا | استخدام فواتير تلف RMS |
| UseHospitalityRMSInvoice | USE_HSPTLTY_RMS_INVC | NUMBER(1,0) | لا | نعم | لا | استخدام فواتير ضيافة RMS |
| AllowDeleteHungBills | ALLOW_DEL_HUNG_BILLS | NUMBER | لا | نعم | لا | السماح بحذف الفواتير المعلقة |
| NotAllowUpdateCustomerCodePatientBills | NOT_ALLOW_UP_C_CODE_PTNT_BILLS | NUMBER(1,0) | لا | نعم | لا | عدم السماح بتحديث كود العميل لفواتير المرضى |
| AllowApprovedPosReturnBill | ALLW_APRVD_POS_RTBILL | NUMBER | لا | نعم | لا | السماح بمرتجع نقاط البيع المعتمد |
| AllowPrintLastBill | ALLW_PRNT_LAST_BILL | NUMBER | لا | نعم | لا | السماح بطباعة آخر فاتورة |
| AllowChangePIPRCConnectIncome | ALLW_CHNG_PI_PRC_CNCT_INCM | NUMBER(1,0) | لا | نعم | لا | السماح بتغيير سعر أمر الشراء المرتبط بالدخل |
| AllowOutBillCustomerLargerBalance | ALLOW_OUT_BILL_CST_LRGR_BLNC | NUMBER(1,0) | لا | نعم | لا | السماح بفواتير العملاء برصيد أكبر |
| AllowUpdateBedPrice | ALLOW_UPD_BED_PRICE | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث سعر السرير |
| ShowDoctorPercentInBill | SHOW_DCTR_PRCNT_IN_BILL | NUMBER(1,0) | لا | نعم | لا | عرض نسبة الطبيب في الفاتورة |
| AllowEnterWeightManualSO | ALLW_ENTR_WGHT_MNUL_SO | NUMBER(1,0) | لا | نعم | لا | السماح بإدخال الوزن يدويا في أمر البيع |
| AllowUpdateStockExchangeRateTransfer | ALLW_UPD_STK_EX_RATE_IN_TRNS | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث سعر صرف المخزون في التحويل |
| AllowExceedMaxProductReturnInsurance | ALLW_EXCD_MAX_PRD_RTRN_INSRNC | NUMBER(1,0) | لا | نعم | لا | السماح بتجاوز حد مرتجع التأمين |
| AllowPrintLastRMSInvoice | ALLW_PRNT_LST_RMS_INVC | NUMBER(1,0) | لا | نعم | لا | السماح بطباعة آخر فاتورة RMS |
| UpdatePIPayType | UPD_PI_PAY_TYPE | NUMBER(1,0) | لا | نعم | لا | تحديث نوع الدفع في أمر الشراء |
| ShowPriceInOutBill | SHOW_PRICE_IN_OUTBILL | NUMBER(1,0) | لا | نعم | لا | عرض السعر في فاتورة الصادر |
| AllowDeleteItemFromRMSBill | ALLOW_DEL_ITM_FROM_RMS_BILL | NUMBER(1,0) | لا | نعم | لا | السماح بحذف صنف من فاتورة RMS |
| ShowAvailableQtyInManualInventory | SHOW_AVL_QTY_IN_MAN_INV | NUMBER(1,0) | لا | نعم | لا | عرض الكمية المتاحة في الجرد اليدوي |
| AllowDrugOrderWithoutQtyCheck | ALLOW_DRG_ORDR_WITHOUT_QTY_CHK | NUMBER(1,0) | لا | نعم | لا | السماح بأمر دواء بدون تحقق من الكمية |
| CheckBalancePatientAdmissionCashInBill | CHK_BLNC_PTNT_ADMT_CSH_IN_BILL | NUMBER(1,0) | لا | نعم | لا | التحقق من رصيد القبول النقدي في الفاتورة |
| AllowReturnBillOtherCashier | ALLW_RTRN_BILL_OTHR_CSHR | NUMBER(1,0) | لا | نعم | لا | السماح بمرتجع من كاشير آخر |
| RemoveAllowUpdateVoucherDesc | REM_ALLW_UPDT_VCHR_DSC | NUMBER(1,0) | لا | نعم | لا | إزالة السماح بتحديث وصف السند |
| OpenSystemMoreOnce | OPN_SYS_MORE_ONCE | NUMBER | لا | نعم | لا | فتح النظام أكثر من مرة |
| GLSShowBalanceInTrans | GLS_SHW_BLNC_IN_TRNS | NUMBER(1,0) | لا | نعم | لا | عرض الرصيد في التحويلات |
| AllowModifyDocAfterPrint | ALLW_MOD_DOC_AFTR_PRNT | NUMBER(1,0) | لا | نعم | لا | السماح بتعديل المستند بعد الطباعة |
| AllowDeleteDocAfterPrint | ALLW_DEL_DOC_AFTR_PRNT | NUMBER(1,0) | لا | نعم | لا | السماح بحذف المستند بعد الطباعة |
| UseReserveSalesQtyNoOutInInvoice | USE_RSRV_SLS_QTY_NO_OUT_IN_INV | NUMBER(1,0) | لا | نعم | لا | استخدام حجز كمية البيع بدون إخراج في الفاتورة |
| MRP_MPS_IssueExternalWO | MRP_MPS_ISU_EXTRNL_WO | NUMBER(1,0) | لا | نعم | لا | إصدار أمر عمل خارجي في تخطيط الاحتياجات |
| MRP_CreateMultiReceiveTransfer | MRP_CRT_MULTI_RCV_TRNS | NUMBER(1,0) | لا | نعم | لا | إنشاء تحويل استلام متعدد في MRP |
| MRP_SFC_IssueExternalTransfer | MRP_SFC_ISU_EXTRNL_TRN | NUMBER(1,0) | لا | نعم | لا | إصدار تحويل خارجي في SFC |
| MRP_MPS_ApproveWO | MRP_MPS_PR_WO_APPROVE | NUMBER(1,0) | لا | نعم | لا | اعتماد أمر العمل في MPS |
| MRP_SFC_ApproveMRQ | MRP_SFC_PR_MRQ_APPROVE | NUMBER(1,0) | لا | نعم | لا | اعتماد MRQ في SFC |
| MRP_SFC_ApproveMRC | MRP_SFC_PR_MRC_APPROVE | NUMBER(1,0) | لا | نعم | لا | اعتماد MRC في SFC |
| MRP_SFC_ApproveSFC | MRP_SFC_PR_SFC_APPROVE | NUMBER(1,0) | لا | نعم | لا | اعتماد SFC في SFC |
| MRP_SFC_ApproveMDV | MRP_SFC_PR_MDV_APPROVE | NUMBER(1,0) | لا | نعم | لا | اعتماد MDV في SFC |
| MRP_SFC_ApproveMRT | MRP_SFC_PR_MRT_APPROVE | NUMBER(1,0) | لا | نعم | لا | اعتماد MRT في SFC |
| RMSLimitTimeCancelOrder | RMS_LMT_TM_CNCL_ORDR | NUMBER(5,0) | لا | نعم | لا | حد زمني لإلغاء الطلب في RMS |
| RMSAllowMinusChefQty | RMS_ALLW_MINUS_CHF_QTY | NUMBER(1,0) | لا | نعم | لا | السماح بكمية شيف سالبة في RMS |
| RMSAllowCancelUnderProcessQty | RMS_ALLW_CNCL_UNDR_PRCSS_QTY | NUMBER(1,0) | لا | نعم | لا | السماح بإلغاء الكمية قيد التنفيذ في RMS |
| AllowUpdatePOToBillType | ALLW_UPDT_PO_TO_BILL_TYP | NUMBER | لا | نعم | لا | السماح بتحديث نوع أمر الشراء للفاتورة |
| AllowUpdateQuoteToPOType | ALLW_UPDT_QUOT_TO_PO_TYP | NUMBER | لا | نعم | لا | السماح بتحديث نوع عرض السعر لأمر الشراء |
| PurchaseByPurchaseUnitOnly | PUR_BY_PUR_UNIT_ONLY | NUMBER | لا | نعم | لا | الشراء بوحدة الشراء فقط |
| ShowItemDiscountAvgAPSI | SHW_ITM_DISC_AVG_AP_SI | NUMBER(1,0) | لا | نعم | لا | عرض متوسط خصم الصنف في المشتريات |
| AllowSaleNewExpDate | ALLW_SAL_NEW_EXPDATE | NUMBER(1,0) | لا | نعم | لا | السماح بتاريخ انتهاء جديد للمبيعات |
| AllowEnterFreeQtySO | ALLW_ENTR_FREE_QTY_SO | NUMBER(1,0) | لا | نعم | لا | السماح بإدخال كمية مجانية في أمر البيع |
| ShowStockCostProfitMarginSale | SHW_STKCST_PRFT_MRGN_SAL | NUMBER(1,0) | لا | نعم | لا | عرض هامش ربح تكلفة المخزون في المبيعات |
| UseSearchItemNameArabic | USE_SRCH_ITM_NM_ARABIC | NUMBER(1,0) | لا | نعم | لا | استخدام البحث باسم الصنف عربي |
| SearchItemCriteria | SRCH_ITM_CRTRIA | NUMBER(1,0) | لا | نعم | لا | معيار بحث الصنف |
| UseArchiveFileInDB | USE_ARCHV_FILE_IN_DB | NUMBER(1,0) | لا | نعم | لا | استخدام أرشفة الملفات في قاعدة البيانات |
| AllowFillAllItemToReturnBill | ALLW_FILL_ALL_ITM_TO_RTBILL | NUMBER(1,0) | لا | نعم | لا | السماح بتعبئة جميع الأصناف في المرتجع |
| PrintCountForBill | PRNT_CNT_FOR_BILL | NUMBER(2,0) | لا | نعم | لا | عدد مرات الطباعة للفاتورة |
| AllowExceedLimitSaleItem | ALLW_EXCD_LMT_SAL_ITM | NUMBER(1,0) | لا | نعم | لا | السماح بتجاوز حد بيع الصنف |
| ShowBalanceInCashInventory | SHW_BLNC_IN_CSH_INVNTRY | NUMBER(1,0) | لا | نعم | لا | عرض الرصيد في جرد الصندوق |
| GLSAllowUpdateRepresentativesCommission | GLS_ALLW_UPDT_REPRS_COMM | NUMBER(1,0) | لا | نعم | لا | السماح بتحديث عمولة المندوبين |
| GLSStatementHideOpenBalance | GLS_STMNT_HIDE_OPN_BLNC | NUMBER(1,0) | لا | نعم | لا | إخفاء الرصيد الافتتاحي في كشف الحساب |
| MRPVaryProductCostPrivilege | MRP_VARY_PRDCT_CST_PRIV | NUMBER(1,0) | لا | نعم | لا | صلاحية تغيير تكلفة المنتج في MRP |
| ShowAlertScreenAfterLogin | SHW_ALRT_SCR_AFTR_LGN | NUMBER(1,0) | لا | نعم | لا | عرض شاشة تنبيه بعد الدخول |
| AllowPrintPriceWithTax | ALLW_PRNT_PRICE_WITH_TAX | NUMBER(1,0) | لا | نعم | لا | السماح بطباعة السعر مع الضريبة |
| HAddPercentCompensateQty | H_ADD_PER_CMPNS_QTY | NUMBER(3,0) | لا | نعم | لا | نسبة تعويض الكمية |
| AllowDecreaseQty | ALLW_DECRS_QTY | NUMBER | لا | نعم | لا | السماح بإنقاص الكمية |
| MRPSFCAllowActualProductLessStd | MRP_SFC_ALLW_ACT_PRD_LESS_STD | NUMBER(1,0) | لا | نعم | لا | السماح بمنتج فعلي أقل من المعياري في SFC |
| AllowExportXLS | ALLOW_EXP_XLS | NUMBER(1,0) | لا | نعم | لا | السماح بالتصدير إلى إكسل |
| OutItemSerialWithBarcode | OUT_ITM_SRL_WITH_BARCODE | NUMBER(1,0) | لا | نعم | لا | صرف الصنف بالرقم التسلسلي مع الباركود |
| MandatoryBillNoPayment | MNDTRY_BILL_NO_PAYMNT | NUMBER(1,0) | لا | نعم | لا | إلزامية رقم فاتورة الدفع |

---

## PrivilegeGeneralControl (**PRIVILEGE_GC**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| UserId           | U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم |
| GeneralCode      | G_CODE           | VARCHAR2(10)    | لا     | نعم       | لا     | كود عام أو رمز تحكم |
| AddFlag          | ADD_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية إضافة |
| ViewFlag         | VIEW_FLAG        | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية استعراض |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |

---

## PrivilegeWarehouse (**PRIVILEGE_WH**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| UserId           | U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم |
| WarehouseCode    | W_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| AddFlag          | ADD_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية إضافة |
| ViewFlag         | VIEW_FLAG        | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية استعراض |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| TransferWarehouseFlag | TRNSFR_WCODE_FLG | NUMBER(1,0) | لا | نعم | لا | علم تحويل المستودع |

---

## EmployeePrivilege (**IAS_EMP_PRV**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| EmployeeNo       | EMP_NO           | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف |
| PrivilegeCode    | PRV_CODE         | NUMBER(5,0)     | لا     | نعم       | لا     | كود الصلاحية |
| AddFlag          | ADD_FLAG         | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية إضافة |
| ViewFlag         | VIEW_FLAG        | NUMBER(1,0)     | لا     | نعم       | لا     | صلاحية استعراض |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |

---

## UserLoginHistory (**IAS_USR_LGN_HSTRY**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| UserId           | U_ID             | NUMBER(5,0)     | نعم    | لا        | لا     | رقم المستخدم |
| TerminalName     | TRMNL_NM         | VARCHAR2(30)    | لا     | نعم       | لا     | اسم الجهاز |
| LoginType        | LGN_TYP          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الدخول (1=دخول/0=خروج) |
| LoginOutDate     | LGN_OUT_DATE     | DATE            | نعم    | لا        | لا     | تاريخ ووقت الدخول أو الخروج |
| LanguageNo       | LNG_NO           | NUMBER(3,0)     | لا     | نعم       | لا     | رقم اللغة |
| CompanyNo        | CMP_NO           | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo         | BRN_NO           | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear       | BRN_YEAR         | NUMBER(4,0)     | نعم    | لا        | لا     | السنة المالية للفرع |
| BranchUser       | BRN_USR          | NUMBER(3,0)     | نعم    | لا        | لا     | مستخدم الفرع |
| ApplicationNo    | APPL_NO          | NUMBER          | لا     | نعم       | لا     | رقم التطبيق |
| HistoryNo        | HSTRY_NO         | NUMBER          | لا     | نعم       | لا     | رقم التسلسل في السجل |

---


---

## UserTerminal (**IAS_USER_HEAD**)
| الاسم الجديد                | الاسم القديم              | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|--------------------------|------------------|--------|-----------|--------|-----------|
| UserId                     | U_ID                     | NUMBER(5,0)      | لا     | نعم       | لا     | رقم المستخدم المرتبط بالطرفية أو الجهاز |
| BranchYear                 | BRN_YEAR                 | NUMBER(4,0)      | لا     | نعم       | لا     | السنة المالية للفرع |
| CompanyNo                  | CMP_NO                   | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                   | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع |
| CompanyArabicName          | CMP_ANAME                | VARCHAR2(40)     | نعم    | لا        | لا     | اسم الشركة عربي |
| CompanyEnglishName         | CMP_ENAME                | VARCHAR2(40)     | لا     | نعم       | لا     | اسم الشركة إنجليزي |
| BranchArabicDesc           | BRN_ADES                 | VARCHAR2(40)     | نعم    | لا        | لا     | وصف الفرع عربي |
| BranchEnglishDesc          | BRN_EDES                 | VARCHAR2(40)     | لا     | نعم       | لا     | وصف الفرع إنجليزي |
| BranchArabicAddress        | BRN_AADD                 | VARCHAR2(40)     | لا     | نعم       | لا     | عنوان الفرع عربي |
| BranchEnglishAddress       | BRN_EADD                 | VARCHAR2(40)     | لا     | نعم       | لا     | عنوان الفرع إنجليزي |
| BranchArabicTel            | BRN_ATELE                | VARCHAR2(40)     | لا     | نعم       | لا     | هاتف الفرع عربي |
| BranchEnglishTel           | BRN_ETELE                | VARCHAR2(40)     | لا     | نعم       | لا     | هاتف الفرع إنجليزي |
| BranchArabicFax            | BRN_AFAX                 | VARCHAR2(40)     | لا     | نعم       | لا     | فاكس الفرع عربي |
| BranchEnglishFax           | BRN_EFAX                 | VARCHAR2(40)     | لا     | نعم       | لا     | فاكس الفرع إنجليزي |
| BranchArabicBox            | BRN_ABOX                 | VARCHAR2(40)     | لا     | نعم       | لا     | صندوق بريد الفرع عربي |
| BranchEnglishBox           | BRN_EBOX                 | VARCHAR2(40)     | لا     | نعم       | لا     | صندوق بريد الفرع إنجليزي |
| CompanyImage               | CMP_IMG                  | VARCHAR2(30)     | لا     | نعم       | لا     | صورة الشركة |
| AddedUserId                | AD_U_ID                  | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                  | DATE             | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                  | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                  | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل |
| BranchUser                 | BRN_USR                  | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount                | UP_CNT                   | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                   | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal              | AD_TRMNL_NM              | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM              | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReportHeaderType           | RPRT_HDR_TYP             | NUMBER(2,0)      | لا     | نعم       | لا     | نوع رأس التقرير |
| ReportHeaderImage          | RPRT_HDR_IMG             | BLOB             | لا     | نعم       | لا     | صورة رأس التقرير (شعار الشركة/الفرع) |
| ReportHeaderImageName      | RPRT_HDR_IMG_NM          | VARCHAR2(200)    | لا     | نعم       | لا     | اسم ملف صورة رأس التقرير |
| ReportHeaderImageNameH     | RPRT_HDR_IMG_NM_H        | VARCHAR2(200)    | لا     | نعم       | لا     | اسم ملف صورة رأس التقرير (رمز/اختصار) |

---
