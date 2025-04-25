# 8. المشاريع والعقود (Projects & Contracts)
> **جميع الحقول والشرح للجداول: المشاريع، مجموعات المشاريع، العقود وتفاصيلها وتجديداتها**

---

## Project (**IAS_PROJECTS**)
| الاسم الجديد        | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|------------------|--------|-----------|--------|-----------|
| ProjectNo          | PJ_NO               | VARCHAR2(15)     | لا     | نعم       | لا     | رقم المشروع |
| ProjectCode        | PJ_CODE             | VARCHAR2(30)     | لا     | نعم       | لا     | كود المشروع |
| ProjectArabicName  | PJ_A_NAME           | VARCHAR2(100)    | نعم    | لا        | لا     | اسم المشروع عربي |
| ProjectEnglishName | PJ_E_NAME           | VARCHAR2(100)    | لا     | نعم       | لا     | اسم المشروع إنجليزي |
| ProjectParent      | PJ_PARENT           | VARCHAR2(15)     | نعم    | لا        | لا     | مشروع رئيسي (رقم مشروع الأب) |
| ProjectLevel       | PJ_LEVEL            | NUMBER(5,0)      | لا     | نعم       | لا     | مستوى المشروع |
| IsSubProject       | PJ_SUB              | NUMBER(1,0)      | نعم    | لا        | لا     | مشروع فرعي (1=نعم) |
| GroupNo            | GROUP_NO            | NUMBER(5,0)      | لا     | نعم       | لا     | رقم مجموعة المشاريع |
| Inactive           | INACTIVE            | NUMBER(1,0)      | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveUserId     | INACTIVE_U_ID       | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عطل المشروع |
| InactiveDate       | INACTIVE_DATE       | DATE             | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason     | INACTIVE_RES        | VARCHAR2(250)    | لا     | نعم       | لا     | سبب التعطيل |
| ImportFromXLS      | IMP_XLS             | NUMBER(1,0)      | لا     | نعم       | لا     | تم استيراده من إكسل |
| StartDate          | START_DATE          | DATE             | لا     | نعم       | لا     | تاريخ بداية المشروع |
| EndDate            | END_DATE            | DATE             | لا     | نعم       | لا     | تاريخ نهاية المشروع |
| Address            | ADDRESS             | VARCHAR2(250)    | لا     | نعم       | لا     | عنوان المشروع |
| ProjectAdmin       | PJ_ADMIN            | VARCHAR2(100)    | لا     | نعم       | لا     | مدير المشروع |
| ProjectDescription | PJ_DESC             | VARCHAR2(1000)   | لا     | نعم       | لا     | وصف المشروع |
| ProjectNotes       | PJ_NOTES            | VARCHAR2(4000)   | لا     | نعم       | لا     | ملاحظات المشروع |
| CurrencyCode       | CUR_CODE            | VARCHAR2(7)      | لا     | نعم       | لا     | رمز العملة |
| ProjectCost        | PJ_COST             | NUMBER           | لا     | نعم       | لا     | تكلفة المشروع |
| ExchangeRate       | EX_RATE             | NUMBER           | لا     | نعم       | لا     | سعر الصرف |
| CountryNo          | CNTRY_NO            | NUMBER(4,0)      | لا     | نعم       | لا     | رقم الدولة |
| CityNo             | CITY_NO             | NUMBER(10,0)     | لا     | نعم       | لا     | رقم المدينة |
| ProvinceNo         | PROV_NO             | NUMBER(10,0)     | لا     | نعم       | لا     | رقم المحافظة |
| RegionCode         | R_CODE              | NUMBER(10,0)     | لا     | نعم       | لا     | كود المنطقة |
| BidDate            | BID_DATE            | DATE             | لا     | نعم       | لا     | تاريخ المناقصة |
| ContractSpecsDate  | CONTRACT_SPS_DATE   | DATE             | لا     | نعم       | لا     | تاريخ مواصفات العقد |
| CustomerCode       | C_CODE              | VARCHAR2(15)     | لا     | نعم       | لا     | كود العميل |
| ProjectManagerCode | COD_NO_PJ_MNGR      | NUMBER(5,0)      | لا     | نعم       | لا     | كود مدير المشروع |
| ProjectType        | COD_TYP             | NUMBER(3,0)      | لا     | نعم       | لا     | نوع المشروع |
| ProjectGroupSpecialCode | COD_NO_PJ_G_SPCL | NUMBER(5,0)     | لا     | نعم       | لا     | كود مجموعة المشاريع الخاصة |
| ProjectSpecialCode | COD_NO_PJ_SPCL      | NUMBER(5,0)      | لا     | نعم       | لا     | كود مشروع خاص |
| ProjectStatus      | PJ_ST               | NUMBER(2,0)      | لا     | نعم       | لا     | حالة المشروع |
| PMSConditionNo     | PMS_COND_NO         | NUMBER(5,0)      | لا     | نعم       | لا     | كود شرط PMS |
| Field1             | FIELD1              | VARCHAR2(60)     | لا     | نعم       | لا     | حقل مرن 1 |
| ...                | FIELD2 - FIELD40    | انظر ملف SQL     | لا     | نعم       | لا     | ... |
| UseActivity        | USE_ACTV            | NUMBER(1,0)      | لا     | نعم       | لا     | استخدام النشاط |
| AccountsCostFlag   | ACCNTS_COST_FLG     | NUMBER(1,0)      | لا     | نعم       | لا     | علم حساب التكلفة |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE             | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority     | PR_REP              | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| MaxExecutionPercent| MAX_EXECT_PCNT      | NUMBER(5,2)      | لا     | نعم       | لا     | الحد الأقصى لنسبة التنفيذ |

---

## ProjectGroup (**IAS_PROJECTS_GROUP**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| GroupNo          | GROUP_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المجموعة |
| GroupArabicName  | GROUP_A_NAME     | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المجموعة عربي |
| GroupEnglishName | GROUP_E_NAME     | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المجموعة إنجليزي |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority   | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## ContractMaster (**IAS_AR_CNTRCT_MST**)
| الاسم الجديد        | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|------------------|--------|-----------|--------|-----------|
| DocumentNo         | DOC_NO              | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند الرئيسي |
| DocumentSerial     | DOC_SRL             | NUMBER(38,0)     | نعم    | لا        | لا     | تسلسل المستند |
| ContractNo         | CNTRCT_NO           | VARCHAR2(60)     | نعم    | لا        | لا     | رقم العقد |
| ContractDate       | CNTRCT_DATE         | DATE             | نعم    | لا        | لا     | تاريخ العقد |
| ContractFromDate   | CNTRCT_F_DATE       | DATE             | لا     | نعم       | لا     | تاريخ بداية العقد |
| ContractToDate     | CNTRCT_T_DATE       | DATE             | لا     | نعم       | لا     | تاريخ نهاية العقد |
| CustomerCode       | C_CODE              | VARCHAR2(15)     | نعم    | لا        | لا     | كود العميل أو المورد |
| CustomerName       | CSTMR_NM            | VARCHAR2(60)     | لا     | نعم       | لا     | اسم العميل أو المورد |
| ContractAmount     | CNTRCT_AMT          | NUMBER           | لا     | نعم       | لا     | مبلغ العقد |
| ContractCurrency   | CNTRCT_A_CY         | VARCHAR2(7)      | لا     | نعم       | لا     | عملة العقد |
| ContractRate       | CNTRCT_RATE         | NUMBER           | لا     | نعم       | لا     | سعر صرف العقد |
| ContractType       | CNTRCT_TYPE         | NUMBER(1,0)      | لا     | نعم       | لا     | نوع العقد |
| ContractDesc       | CNTRCT_DESC         | VARCHAR2(500)    | لا     | نعم       | لا     | وصف العقد |
| ContractNote       | CNTRCT_NOTE         | VARCHAR2(2000)   | لا     | نعم       | لا     | ملاحظات العقد |
| ContractRenewAmount| CNTRCT_RENEW_AMT    | NUMBER           | لا     | نعم       | لا     | مبلغ التجديد |
| DiscountAmount     | DISC_AMT            | NUMBER           | لا     | نعم       | لا     | إجمالي الخصم |
| DiscountAmountMaster| DISC_AMT_MST       | NUMBER           | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail| DISC_AMT_DTL       | NUMBER           | لا     | نعم       | لا     | خصم تفصيلي |
| ContractRenewNo    | CNTRCT_NO_RENEW     | VARCHAR2(60)     | لا     | نعم       | لا     | رقم عقد التجديد |
| ContractRenewSerial| CNTRCT_SER_RENEW    | VARCHAR2(60)     | لا     | نعم       | لا     | تسلسل التجديد |
| VATAmount          | VAT_AMT             | NUMBER           | لا     | نعم       | لا     | مبلغ الضريبة |
| ExportFlag         | EXPORT              | NUMBER(1,0)      | لا     | نعم       | لا     | علم التصدير (1=نعم) |
| ContractStatus     | CNTRCT_STAT         | NUMBER(1,0)      | لا     | نعم       | لا     | حالة العقد |
| AmountReminderNotify| AMT_REM_NOTIFY     | NUMBER           | لا     | نعم       | لا     | تنبيه مبلغ متبقي |
| DayExpireNotify    | DAY_EXPIR_NOTIFY    | NUMBER           | لا     | نعم       | لا     | تنبيه بعدد أيام انتهاء |
| AllowExceedAmount  | ALOW_EXCD_AMT       | NUMBER(1,0)      | لا     | نعم       | لا     | السماح بتجاوز المبلغ |
| PercentExceed      | PER_EXCD            | NUMBER           | لا     | نعم       | لا     | نسبة التجاوز المسموح |
| ReferenceNo        | REF_NO              | VARCHAR2(15)     | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)     | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO               | VARCHAR2(15)     | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO             | VARCHAR2(15)     | لا     | نعم       | لا     | رقم النشاط |
| Processed          | PROCESSED           | NUMBER(1,0)      | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| Inactive           | INACTIVE            | NUMBER(1,0)      | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveUserId     | INACTIVE_U_ID       | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عطل العقد |
| InactiveDate       | INACTIVE_DATE       | DATE             | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason     | INACTIVE_RES        | VARCHAR2(250)    | لا     | نعم       | لا     | سبب التعطيل |
| Approved           | APPROVED            | NUMBER(1,0)      | لا     | نعم       | لا     | تم الاعتماد (1=نعم) |
| ApprovedUserId     | APRV_U_ID           | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي اعتمد |
| ApprovedDate       | APRV_DATE           | DATE             | لا     | نعم       | لا     | تاريخ الاعتماد |
| ApprovedDesc       | APRV_DSC            | VARCHAR2(500)    | لا     | نعم       | لا     | وصف الاعتماد أو ملاحظات الاعتماد |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE             | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount        | UP_CNT              | NUMBER(6,0)      | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority     | PR_REP              | NUMBER(6,0)      | لا     | نعم       | لا     | أولوية التقرير |
| CompanyNo          | CMP_NO              | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)      | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CalculateTaxTypeNo | CLC_TYP_NO_TAX      | NUMBER(5,0)      | لا     | نعم       | لا     | نوع احتساب الضريبة |
| CalculateTaxFreeQtyFlag| CLC_TAX_FREE_QTY_FLG | NUMBER(1,0) | لا | نعم | لا | علم الكمية المعفاة من الضريبة |
| AdvancePaymentPercentContract | ADVNC_PYMNT_PRCNT_CNTRCT | NUMBER | لا | نعم | لا | نسبة الدفعة المقدمة من العقد |
| AddedDateClock     | AD_DATE_CLK         | DATE             | لا     | نعم       | لا     | تاريخ الإضافة (بتدقيق الساعة) |
| CalculateVATPriceType | CLC_VAT_PRICE_TYP | NUMBER(1,0)      | لا     | نعم       | لا     | نوع احتساب الضريبة المضافة |
| DiscountAmountMasterVAT | DISC_AMT_MST_VAT | NUMBER          | لا     | نعم       | لا     | خصم رئيسي بعد الضريبة |
| ContractType5      | CNTRCT_TYP          | NUMBER(5,0)      | لا     | نعم       | لا     | نوع عقد إضافي/توسعة/خدمة... |

---

## ContractDetail (**IAS_AR_CNTRCT_DTL**)
| الاسم الجديد        | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|------------------|--------|-----------|--------|-----------|
| DocumentNo         | DOC_NO              | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند الرئيسي |
| DocumentSerial     | DOC_SRL             | NUMBER(38,0)     | نعم    | لا        | لا     | تسلسل المستند |
| ContractNo         | CNTRCT_NO           | VARCHAR2(60)     | نعم    | لا        | لا     | رقم العقد |
| RecordNo           | RCRD_NO             | NUMBER           | نعم    | لا        | لا     | رقم السطر |
| ItemCode           | I_CODE              | VARCHAR2(30)     | نعم    | لا        | لا     | كود الصنف |
| ItemName           | I_NAME              | VARCHAR2(60)     | لا     | نعم       | لا     | اسم الصنف |
| ItemQty            | I_QTY               | NUMBER           | لا     | نعم       | لا     | الكمية المتعاقد عليها |
| PackSize           | P_SIZE              | NUMBER           | نعم    | لا        | لا     | حجم العبوة |
| PackQty            | P_QTY               | NUMBER           | نعم    | لا        | لا     | كمية العبوة |
| ItemPrice          | I_PRICE             | NUMBER           | لا     | نعم       | لا     | سعر الوحدة |
| ItemUnit           | ITM_UNT             | VARCHAR2(10)     | لا     | نعم       | لا     | وحدة الصنف |
| DiscountAmountMaster | DIS_AMT_MST       | NUMBER           | لا     | نعم       | لا     | خصم رئيسي |
| DiscountPercent    | DIS_PER             | NUMBER           | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmountDetail | DIS_AMT_DTL       | NUMBER           | لا     | نعم       | لا     | خصم تفصيلي |
| DiscountAmount     | DIS_AMT             | NUMBER           | لا     | نعم       | لا     | إجمالي الخصم |
| Inactive           | INACTIVE            | NUMBER(1,0)      | لا     | نعم       | لا     | معطل (1=نعم) |
| FreeQty            | FREE_QTY            | NUMBER           | لا     | نعم       | لا     | كمية مجانية |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)     | لا     | نعم       | لا     | مركز التكلفة |
| VATAmount          | VAT_AMT             | NUMBER           | لا     | نعم       | لا     | مبلغ الضريبة |
| VATPercent         | VAT_PER             | NUMBER           | لا     | نعم       | لا     | نسبة الضريبة |
| ItemPriceVAT       | I_PRICE_VAT         | NUMBER           | لا     | نعم       | لا     | سعر الوحدة بعد الضريبة |
| ItemDescription    | ITEM_DESC           | VARCHAR2(250)    | لا     | نعم       | لا     | وصف الصنف |
| CompanyNo          | CMP_NO              | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)      | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount        | UP_CNT              | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث |
| ProjectNo          | PJ_NO               | VARCHAR2(15)     | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO             | VARCHAR2(15)     | لا     | نعم       | لا     | رقم النشاط |
| FieldDtl1 - FieldDtl10 | FIELD_DTL1-10    | VARCHAR2(60)     | لا     | نعم       | لا     | حقول مرنة إضافية |
| WarehouseCode      | W_CODE              | NUMBER(10,0)     | لا     | نعم       | لا     | كود المستودع |
| LevelNo            | LEV_NO              | NUMBER(3,0)      | لا     | نعم       | لا     | رقم المستوى |
| DiscountAmountDetailVAT | DIS_AMT_DTL_VAT | NUMBER           | لا     | نعم       | لا     | خصم تفصيلي بعد الضريبة |
| ItemPriceLevelNo   | I_PRICE_LEV_NO      | NUMBER           | لا     | نعم       | لا     | سعر المستوى |
| VATAmountDiscountDetailVAT | VAT_AMT_DIS_DTL_VAT | NUMBER      | لا     | نعم       | لا     | ضريبة الخصم التفصيلي بعد الضريبة |
| DiscountAmountMasterVAT | DIS_AMT_MST_VAT | NUMBER           | لا     | نعم       | لا     | خصم رئيسي بعد الضريبة |
| VATAmountDiscountMasterVAT | VAT_AMT_DIS_MST_VAT | NUMBER      | لا     | نعم       | لا     | ضريبة الخصم الرئيسي بعد الضريبة |
| ArgumentNo         | ARGMNT_NO           | NUMBER           | لا     | نعم       | لا     | رقم معامل أو مرجع إضافي |
| ItemHeight         | I_HEIGHT            | NUMBER           | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemLength         | I_LENGTH            | NUMBER           | لا     | نعم       | لا     | طول الصنف |
| ItemNumber         | I_NUMBER            | NUMBER           | لا     | نعم       | لا     | رقم الصنف التسلسلي |
| ItemWidth          | I_WIDTH             | NUMBER           | لا     | نعم       | لا     | عرض الصنف |
| WeightQty          | WT_QTY              | NUMBER           | لا     | نعم       | لا     | كمية الوزن |
| WeightUnit         | WT_UNT              | VARCHAR2(10)     | لا     | نعم       | لا     | وحدة الوزن |

---

## ContractBatch (**IAS_AR_CNTRCT_BTCH**)
| الاسم الجديد        | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|------------------|--------|-----------|--------|-----------|
| ContractBatchNo    | CNTRCT_BTCH_NO      | NUMBER(30,0)     | نعم    | لا        | لا     | رقم دفعة العقد |
| ContractBatchDate  | CNTRCT_BTCH_DATE    | DATE             | نعم    | لا        | لا     | تاريخ الدفعة |
| ContractNo         | CNTRCT_NO           | VARCHAR2(60)     | نعم    | لا        | لا     | رقم العقد |
| DocumentNo         | DOC_NO              | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند الرئيسي |
| DocumentSerial     | DOC_SRL             | NUMBER(38,0)     | نعم    | لا        | لا     | تسلسل المستند |
| RecordNo           | RCRD_NO             | NUMBER           | نعم    | لا        | لا     | رقم السطر |
| Amount             | AMT                 | NUMBER           | نعم    | لا        | لا     | مبلغ الدفعة |
| Processed          | PROCESSED           | NUMBER(1,0)      | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| CompanyNo          | CMP_NO              | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)      | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount        | UP_CNT              | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| AdvancePayment     | ADVNC_PYMNT         | NUMBER(1,0)      | لا     | نعم       | لا     | دفعة مقدمة (1=نعم) |
| ProcessedFlagGLS   | PRCSSD_FLG_GLS      | NUMBER(1,0)      | لا     | نعم       | لا     | علم المعالجة في القيود |

---

## ContractRenew (**IAS_AR_CNTRCT_RENEW**)
| الاسم الجديد        | الاسم القديم         | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|------------------|--------|-----------|--------|-----------|
| RecordNo           | RCRD_NO             | NUMBER           | نعم    | لا        | لا     | رقم السطر |
| ContractNo         | CNTRCT_NO           | VARCHAR2(60)     | نعم    | لا        | لا     | رقم العقد |
| DocumentNo         | DOC_NO              | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند الرئيسي |
| DocumentSerial     | DOC_SRL             | NUMBER(38,0)     | نعم    | لا        | لا     | تسلسل المستند |
| ContractNewDate    | CNTRCT_NEW_DATE     | DATE             | لا     | نعم       | لا     | تاريخ التجديد الجديد |
| IncreaseType       | INCRS_TYPE          | NUMBER           | لا     | نعم       | لا     | نوع الزيادة |
| ContractFromDate   | CNTRCT_F_DATE       | DATE             | لا     | نعم       | لا     | تاريخ بداية العقد بعد التجديد |
| ContractToDate     | CNTRCT_T_DATE       | DATE             | لا     | نعم       | لا     | تاريخ نهاية العقد بعد التجديد |
| ContractAmount     | CNTRCT_AMT          | NUMBER           | لا     | نعم       | لا     | مبلغ العقد بعد التجديد |
| ContractDesc       | CNTRCT_DESC         | VARCHAR2(150)    | لا     | نعم       | لا     | وصف التجديد |
| ReferenceNo        | REF_NO              | VARCHAR2(15)     | لا     | نعم       | لا     | رقم مرجعي إضافي |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE             | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount        | UP_CNT              | NUMBER(6,0)      | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority     | PR_REP              | NUMBER(6,0)      | لا     | نعم       | لا     | أولوية التقرير |
| CompanyNo          | CMP_NO              | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)      | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

