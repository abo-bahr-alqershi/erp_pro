# 9. الضرائب والرسوم (Taxation)
> **جميع الحقول والشرح للجداول: أكواد الضرائب، تفاصيلها، إدخالاتها، الحركات، وربطها بالعناصر والفروع**

---

## TaxCodeMaster (**GNR_TAX_CODE_MST**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة الرئيسي |
| TaxArabicName    | TAX_L_NM         | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الضريبة عربي |
| TaxEnglishName   | TAX_F_NM         | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الضريبة إنجليزي |
| CalcDocType      | CLC_DOC_TYP      | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند المحسوب عليه الضريبة |
| AgencyCount      | AGNCY_CNT        | NUMBER(2,0)     | نعم    | لا        | لا     | عدد الجهات المرتبطة بالضريبة |
| Inactive         | INACTIVE         | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveUserId   | INACTIVE_U_ID    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل الضريبة |
| InactiveDate     | INACTIVE_DATE    | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason   | INACTIVE_RES     | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| DefaultFlag      | DFLT_FLG         | NUMBER(1,0)     | لا     | نعم       | لا     | ضريبة افتراضية (1=نعم) |
| TaxTypeCode      | TAX_TYP_CODE     | VARCHAR2(50)    | لا     | نعم       | لا     | كود نوع الضريبة |

---

## TaxCodeDetail (**GNR_TAX_CODE_DTL**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة الرئيسي |
| AgencyNo         | AGNCY_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| AgencyArabicName | AGNCY_L_NM       | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الجهة عربي |
| AgencyEnglishName| AGNCY_F_NM       | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الجهة إنجليزي |
| AccountCodeReceivable | AC_CODE_AR   | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب للمدين |
| AccountCodePayable | AC_CODE_AP     | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب للدائن |
| TaxPercent       | TAX_PRCNT        | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## TaxInput (**GNR_TAX_INPT**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| InputType        | INPT_TYP         | NUMBER(2,0)     | نعم    | لا        | لا     | نوع الإدخال |
| InputCode        | INPT_CODE        | VARCHAR2(60)    | نعم    | لا        | لا     | كود الإدخال أو رقم العملية |
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة |
| AgencyNo         | AGNCY_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| TaxPercent       | TAX_PRCNT        | NUMBER          | نعم    | لا        | لا     | نسبة الضريبة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## TaxInputMovement (**GNR_TAX_INPT_MOVMNT**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| DocType          | DOC_TYPE         | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند الرئيسي |
| BillDocType      | BILL_DOC_TYPE    | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| DocJVType        | DOC_JV_TYPE      | NUMBER(5,0)     | لا     | نعم       | لا     | نوع قيد اليومية |
| DocumentNo       | DOC_NO           | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial   | DOC_SER          | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل المستند |
| DocumentDate     | DOC_DATE         | DATE            | نعم    | لا        | لا     | تاريخ المستند |
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة |
| CalcTypeNo       | CLC_TYP_NO       | NUMBER(5,0)     | نعم    | لا        | لا     | كود نوع احتساب الضريبة |
| AgencyNo         | AGNCY_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| InputType        | INPT_TYP         | NUMBER(2,0)     | نعم    | لا        | لا     | نوع الإدخال |
| InputCode        | INPT_CODE        | VARCHAR2(60)    | نعم    | لا        | لا     | كود الإدخال |
| AccountCode      | A_CODE           | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب |
| CurrencyCode     | A_CY             | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| AccountRate      | AC_RATE          | NUMBER          | نعم    | لا        | لا     | سعر صرف الحساب |
| InputAmount      | INPT_AMT         | NUMBER          | لا     | نعم       | لا     | مبلغ الإدخال |
| TaxPercent       | TAX_PRCNT        | NUMBER          | نعم    | لا        | لا     | نسبة الضريبة |
| TaxAmount        | TAX_AMT          | NUMBER          | نعم    | لا        | لا     | مبلغ الضريبة |
| TaxAmountLocal   | TAX_AMT_L        | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة بالعملة المحلية |
| CostCenterCode   | CC_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo        | PJ_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo       | ACTV_NO          | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ReferenceNo      | REF_NO           | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| RecordNo         | RCRD_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| DocSequence      | DOC_SEQUENCE     | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| ExternalPost     | EXTERNAL_POST    | NUMBER(5,0)     | لا     | نعم       | لا     | ترحيل خارجي |
| CompanyNo        | CMP_NO           | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo         | BRN_NO           | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear       | BRN_YEAR         | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser       | BRN_USR          | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority   | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## TaxInputMovementBranch (**GNR_TAX_INPT_MOVMNT_BR**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| DocType          | DOC_TYPE         | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند الرئيسي |
| BillDocType      | BILL_DOC_TYPE    | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| DocJVType        | DOC_JV_TYPE      | NUMBER(5,0)     | لا     | نعم       | لا     | نوع قيد اليومية |
| DocumentNo       | DOC_NO           | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial   | DOC_SER          | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل المستند |
| DocumentDate     | DOC_DATE         | DATE            | نعم    | لا        | لا     | تاريخ المستند |
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة |
| CalcTypeNo       | CLC_TYP_NO       | NUMBER(5,0)     | نعم    | لا        | لا     | كود نوع احتساب الضريبة |
| AgencyNo         | AGNCY_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| InputType        | INPT_TYP         | NUMBER(2,0)     | نعم    | لا        | لا     | نوع الإدخال |
| InputCode        | INPT_CODE        | VARCHAR2(60)    | نعم    | لا        | لا     | كود الإدخال |
| AccountCode      | A_CODE           | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب |
| CurrencyCode     | A_CY             | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| AccountRate      | AC_RATE          | NUMBER          | نعم    | لا        | لا     | سعر صرف الحساب |
| InputAmount      | INPT_AMT         | NUMBER          | لا     | نعم       | لا     | مبلغ الإدخال |
| TaxPercent       | TAX_PRCNT        | NUMBER          | نعم    | لا        | لا     | نسبة الضريبة |
| TaxAmount        | TAX_AMT          | NUMBER          | نعم    | لا        | لا     | مبلغ الضريبة |
| TaxAmountLocal   | TAX_AMT_L        | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة بالعملة المحلية |
| CostCenterCode   | CC_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo        | PJ_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo       | ACTV_NO          | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ReferenceNo      | REF_NO           | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| RecordNo         | RCRD_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| DocSequence      | DOC_SEQUENCE     | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| ExternalPost     | EXTERNAL_POST    | NUMBER(5,0)     | لا     | نعم       | لا     | ترحيل خارجي |
| CompanyNo        | CMP_NO           | NUMBER(3,0)     | لا     | نعم       | لا     | رقم الشركة |
| BranchNo         | BRN_NO           | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear       | BRN_YEAR         | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser       | BRN_USR          | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |

---

## TaxItem (**GNR_TAX_ITM**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode         | I_CODE           | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة |
| AgencyNo         | AGNCY_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| TaxPercent       | TAX_PRCNT        | NUMBER          | نعم    | لا        | لا     | نسبة الضريبة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---


## TaxItemMovement (**GNR_TAX_ITM_MOVMNT**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocType            | DOC_TYPE           | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند الرئيسي |
| BillDocType        | BILL_DOC_TYPE      | NUMBER(5,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| DocJVType          | DOC_JV_TYPE        | NUMBER(5,0)     | لا     | نعم       | لا     | نوع قيد اليومية |
| DocumentNo         | DOC_NO             | NUMBER          | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial     | DOC_SER            | NUMBER          | نعم    | لا        | لا     | تسلسل المستند |
| DocumentDate       | DOC_DATE           | DATE            | نعم    | لا        | لا     | تاريخ المستند |
| TaxNo              | TAX_NO             | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة |
| CalcTypeNo         | CLC_TYP_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | كود نوع احتساب الضريبة |
| AgencyNo           | AGNCY_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| ItemCode           | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemUnit           | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize           | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| ItemPrice          | I_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر الصنف |
| DiscountAmount     | DISC_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| AccountCode        | A_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب |
| CurrencyCode       | A_CY               | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| AccountRate        | AC_RATE            | NUMBER          | نعم    | لا        | لا     | سعر صرف الحساب |
| TaxPercent         | TAX_PRCNT          | NUMBER          | نعم    | لا        | لا     | نسبة الضريبة |
| TaxAmount          | TAX_AMT            | NUMBER          | نعم    | لا        | لا     | مبلغ الضريبة |
| WarehouseCode      | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode     | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| RecordNo           | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| TaxAmountLocal     | TAX_AMT_L          | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة بالعملة المحلية |
| ItemQty            | I_QTY              | NUMBER          | لا     | نعم       | لا     | الكمية |
| FreeQty            | FREE_QTY           | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ReferenceNo        | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| StockCost          | STK_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون |
| StockRate          | STK_RATE           | NUMBER          | لا     | نعم       | لا     | معدل المخزون |
| DocSequence        | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| ExternalPost       | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | ترحيل خارجي |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount        | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority     | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CalcTaxFreeQtyFlag | CLC_TAX_FREE_QTY_FLG | NUMBER(1,0)   | لا     | نعم       | لا     | علم الكمية المعفاة من الضريبة |

---

## TaxItemMovementBranch (**GNR_TAX_ITM_MOVMNT_BR**)
| الاسم الجديد        | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocType            | DOC_TYPE           | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند الرئيسي |
| BillDocType        | BILL_DOC_TYPE      | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| DocJVType          | DOC_JV_TYPE        | NUMBER(5,0)     | لا     | نعم       | لا     | نوع قيد اليومية |
| DocumentNo         | DOC_NO             | NUMBER          | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial     | DOC_SER            | NUMBER          | نعم    | لا        | لا     | تسلسل المستند |
| DocumentDate       | DOC_DATE           | DATE            | نعم    | لا        | لا     | تاريخ المستند |
| TaxNo              | TAX_NO             | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة |
| CalcTypeNo         | CLC_TYP_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | كود نوع احتساب الضريبة |
| AgencyNo           | AGNCY_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الجهة |
| ItemCode           | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemUnit           | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize           | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| ItemPrice          | I_PRICE            | NUMBER          | نعم    | لا        | لا     | سعر الصنف |
| DiscountAmount     | DISC_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| AccountCode        | A_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب |
| CurrencyCode       | A_CY               | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| AccountRate        | AC_RATE            | NUMBER          | نعم    | لا        | لا     | سعر صرف الحساب |
| TaxPercent         | TAX_PRCNT          | NUMBER          | نعم    | لا        | لا     | نسبة الضريبة |
| TaxAmount          | TAX_AMT            | NUMBER          | نعم    | لا        | لا     | مبلغ الضريبة |
| WarehouseCode      | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode     | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| RecordNo           | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر |
| TaxAmountLocal     | TAX_AMT_L          | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة بالعملة المحلية |
| ItemQty            | I_QTY              | NUMBER          | لا     | نعم       | لا     | الكمية |
| FreeQty            | FREE_QTY           | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ReferenceNo        | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| StockCost          | STK_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون |
| StockRate          | STK_RATE           | NUMBER          | لا     | نعم       | لا     | معدل المخزون |
| DocSequence        | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| ExternalPost       | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | ترحيل خارجي |
| CompanyNo          | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount        | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority     | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal      | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CalcTaxFreeQtyFlag | CLC_TAX_FREE_QTY_FLG | NUMBER(1,0)   | لا     | نعم       | لا     | علم الكمية المعفاة من الضريبة |

---

## TaxSlice (**GNR_TAX_SLICE**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| SliceNo          | SLICE_NO         | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الشريحة الضريبية |
| SliceArabicName  | SLICE_L_NM       | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الشريحة عربي |
| SliceEnglishName | SLICE_F_NM       | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الشريحة إنجليزي |
| SlicePercent     | SLICE_PRCNT      | NUMBER          | نعم    | لا        | لا     | نسبة الشريحة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| DefaultFlag      | DFLT_FLG         | NUMBER(1,0)     | لا     | نعم       | لا     | شريحة افتراضية (1=نعم) |
| Inactive         | INACTIVE         | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveUserId   | INACTIVE_U_ID    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل الشريحة |
| InactiveDate     | INACTIVE_DATE    | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason   | INACTIVE_RES     | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |

---

## TaxTypeCalculationMaster (**GNR_TAX_TYP_CLC_MST**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| CalcTypeNo       | CLC_TYP_NO       | NUMBER(5,0)     | نعم    | لا        | لا     | رقم نوع احتساب الضريبة |
| CalcTypeArabicName| CLC_TYP_L_NM    | VARCHAR2(100)   | نعم    | لا        | لا     | اسم نوع الاحتساب عربي |
| CalcTypeEnglishName| CLC_TYP_F_NM   | VARCHAR2(100)   | لا     | نعم       | لا     | اسم نوع الاحتساب إنجليزي |
| CalcTypeDefaultFlag| CLC_TYP_DFLT_FLG| NUMBER         | لا     | نعم       | لا     | نوع افتراضي (1=نعم) |
| CalcTaxType      | CLC_TAX_TYP      | NUMBER(2,0)     | لا     | نعم       | لا     | نوع الضريبة |
| PurchaseExpense  | PUR_EXPNS        | NUMBER(1,0)     | لا     | نعم       | لا     | مصروفات الشراء |
| FASSystemFlag    | FAS_SYS_FLG      | NUMBER(1,0)     | لا     | نعم       | لا     | علم النظام FAS |
| REMSystemFlag    | REM_SYS_FLG      | NUMBER(1,0)     | لا     | نعم       | لا     | علم النظام REM |
| PMSSystemFlag    | PMS_SYS_FLG      | NUMBER(1,0)     | لا     | نعم       | لا     | علم النظام PMS |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CalcTypeNoExempt | CLC_TYP_NO_EXMPT | NUMBER(5,0)     | لا     | نعم       | لا     | نوع احتساب معفي |
| Inactive         | INACTIVE         | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveUserId   | INACTIVE_U_ID    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل النوع |
| InactiveDate     | INACTIVE_DATE    | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason   | INACTIVE_RES     | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| TransferPeriod   | TRNS_PRD         | NUMBER(1,0)     | لا     | نعم       | لا     | فترة التحويل |
| CalcTypeNoTransPeriod| CLC_TYP_NO_TRNSPRD | NUMBER(5,0) | لا     | نعم       | لا     | نوع احتساب فترة التحويل |
| TaxCode          | TAX_CODE         | VARCHAR2(50)    | لا     | نعم       | لا     | كود الضريبة |

---

## TaxTypeCalculationDetail (**GNR_TAX_TYP_CLC_DTL**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| CalcTypeNo       | CLC_TYP_NO       | NUMBER(5,0)     | نعم    | لا        | لا     | رقم نوع احتساب الضريبة |
| TaxNo            | TAX_NO           | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الضريبة المرتبط |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## TaxTypeCalculationBranch (**GNR_TAX_TYP_CLC_BRN**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| CalcTypeNo       | CLC_TYP_NO       | NUMBER(5,0)     | نعم    | لا        | لا     | رقم نوع احتساب الضريبة |
| BranchNo         | BRN_NO           | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| ActiveDate       | ACTV_DATE        | DATE            | نعم    | لا        | لا     | تاريخ التفعيل |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ExpireDate       | EXPIR_DATE       | DATE            | لا     | نعم       | لا     | تاريخ الانتهاء |
| TransferPeriod   | TRNS_PRD         | NUMBER(1,0)     | لا     | نعم       | لا     | فترة التحويل |
| StartTransferPeriod | STRT_TRNSPRD   | DATE            | لا     | نعم       | لا     | تاريخ بداية فترة التحويل |
| EndTransferPeriod   | END_TRNSPRD    | DATE            | لا     | نعم       | لا     | تاريخ نهاية فترة التحويل |

---


## ParameterGeneral (**IAS_PARA_GEN**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| ParameterNo | PARA_NO | NUMBER(1,0) | نعم | لا | لا | رقم السطر/المعيار |
| CostCenterAvailable | CC_AVAIL | NUMBER(1,0) | نعم | لا | لا | مراكز التكلفة فعّالة |
| CostCenterPosting | CC_POST | NUMBER(1,0) | نعم | لا | لا | ترحيل على مراكز التكلفة |
| UseProjects | USE_PROJECTS | NUMBER(1,0) | نعم | لا | لا | تفعيل المشاريع |
| UseActivity | USE_ACTVTY | NUMBER(1,0) | نعم | لا | لا | تفعيل الأنشطة |
| TypeOfPosting | TYPE_OF_POSTING | NUMBER(1,0) | نعم | لا | لا | نوع الترحيل |
| PostDiscountPerItems | POST_DISC_PER_ITEMS | NUMBER(1,0) | نعم | لا | لا | ترحيل خصم لكل صنف |
| UseExcel | USE_EXCEL | NUMBER(1,0) | لا | نعم | لا | استخدام التصدير إلى Excel |
| PathExcel | PATH_EXCEL | VARCHAR2(100) | لا | نعم | لا | مسار ملفات Excel |
| UseIndividualGLSystem | USE_INDV_GL_SYSTEM | NUMBER(1,0) | نعم | لا | لا | نظام الحسابات مستقل |
| UseIndividualInventorySystem | USE_INDV_INV_SYSTEM | NUMBER(1,0) | نعم | لا | لا | نظام المخزون مستقل |
| SpecialProgram | SP_PROGRAM | NUMBER(3,0) | لا | نعم | لا | رقم برنامج خاص |
| UseVAT | USE_VAT | NUMBER(1,0) | نعم | لا | لا | تفعيل ضريبة القيمة المضافة |
| ActiveVATDate | ACTIVE_VAT_DATE | DATE | لا | نعم | لا | تاريخ تفعيل القيمة المضافة |
| UseUnposting | USE_UNPOSTING | NUMBER(1,0) | نعم | لا | لا | السماح بإلغاء الترحيل |
| HeadType | HEAD_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع الرأس الرئيسي |
| TerminalConnectionDetermined | CONN_DETER_TRMNL | NUMBER(1,0) | نعم | لا | لا | تقييد الاتصال من جهاز واحد |
| TerminalNotMoreOne | CONN_NOT_MORE_ONE | NUMBER(1,0) | نعم | لا | لا | عدم السماح بأكثر من اتصال من نفس المستخدم |
| UseAuditDoc | USE_AUDIT_DOC | NUMBER(1,0) | نعم | لا | لا | تفعيل مراجعة المستندات |
| ShowEngineReport | SHOW_ENGINE_REP | NUMBER(1,0) | نعم | لا | لا | إظهار تقارير المحرك |
| ShowParameterReport | SHOW_PARAMTR_REP | NUMBER(1,0) | نعم | لا | لا | إظهار تقارير المعايير |
| ShowXLSButtonReport | SHOW_XLSBTN_REP | NUMBER(1,0) | نعم | لا | لا | إظهار زر إكسل في التقارير |
| LastUpdate | LAST_UPDATE | DATE | لا | نعم | لا | آخر تحديث |
| UseVATProfit | USE_VAT_PROFIT | NUMBER(1,0) | لا | نعم | لا | احتساب ضريبة الربح |
| VATProfitPercent | VAT_PROFIT_PER | NUMBER | لا | نعم | لا | نسبة ضريبة الربح |
| MinProfitAmount | MIN_PROFIT_AMT | NUMBER | لا | نعم | لا | أقل مبلغ ربح للضريبة |
| UseBalancedCostCenter | USE_BALANCED_CC | NUMBER(1,0) | لا | نعم | لا | تفعيل توازن مراكز التكلفة |
| UseBalancedBranch | USE_BALANCED_BRN | NUMBER(1,0) | لا | نعم | لا | تفعيل توازن الفروع |
| InactiveUserFailEntryCount | INACTV_USR_FAIL_ENTR_CNT | NUMBER(2,0) | لا | نعم | لا | عدد محاولات الدخول الخاطئة لتعطيل المستخدم |
| MinUserPasswordLength | MIN_USR_PWD_LEN | NUMBER(2,0) | لا | نعم | لا | الحد الأدنى لطول كلمة المرور |
| LastLoginDate | LAST_DATE_LGN | DATE | لا | نعم | لا | آخر تاريخ دخول |
| MaxPostDate | MAX_POST_DATE | DATE | لا | نعم | لا | آخر تاريخ ترحيل مسموح |
| ProjectPosting | PJ_POST | NUMBER(1,0) | لا | نعم | لا | تفعيل ترحيل المشاريع |
| ActivityPosting | ACTV_POST | NUMBER(1,0) | لا | نعم | لا | تفعيل ترحيل الأنشطة |
| EmployeeAutoNo | EMP_NO_AUTO | NUMBER(1,0) | نعم | لا | لا | ترقيم الموظفين تلقائي |
| EmployeeNoMaxLength | EMP_NO_MAX_LEN | NUMBER(2,0) | نعم | لا | لا | الحد الأعلى لطول رقم الموظف |
| EmployeeNoMinLength | EMP_NO_MIN_LEN | NUMBER(2,0) | نعم | لا | لا | الحد الأدنى لطول رقم الموظف |
| EmployeePrivilegeType | EMP_PRV_TYP | NUMBER(1,0) | نعم | لا | لا | نوع صلاحيات الموظف |
| ReportForceNo | RPRT_FRC_NO | NUMBER(1,0) | لا | نعم | لا | رقم إجباري للتقرير |
| UsePriceIncludeVAT | USE_PRICE_INCLUDE_VAT | NUMBER(1,0) | لا | نعم | لا | الأسعار شاملة الضريبة |
| MobileFilePath | MOB_FILE_PATH | VARCHAR2(250) | لا | نعم | لا | مسار ملفات الموبايل |
| VATPeriodType | VAT_PRD_TYP | NUMBER(1,0) | لا | نعم | لا | نوع فترة الضريبة |
| NotAllowMoreBranchUserPrivilege | NOT_ALLW_MORE_BRN_USR_LGHT_PRV | NUMBER(1,0) | لا | نعم | لا | عدم السماح بعدة فروع لنفس المستخدم |
| LastNameStartEmployeeName | LST_NM_STRT_EMP_NM | NUMBER(1,0) | لا | نعم | لا | اللقب يبدأ باسم الموظف |
| NoCheckCostCenterCode | NO_CHK_F_CC_CODE | NUMBER(1,0) | لا | نعم | لا | لا يتحقق من كود مركز التكلفة |
| AccountDetailSequence | AC_DTL_SEQ | NUMBER(2,0) | لا | نعم | لا | تسلسل التفاصيل المحاسبية |
| TaxPostMethod | TAX_PST_MTHD | NUMBER(2,0) | لا | نعم | لا | طريقة ترحيل الضرائب |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف السطر |
| AddedDate | AD_DATE | DATE | لا | نعم | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل السطر |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| StartCreateViewYear | STRT_CRT_VIEW_YEAR | NUMBER(4,0) | لا | نعم | لا | أول سنة عرض افتراضية |
| TaxCodeLength | TAX_CODE_LNGTH | NUMBER(2,0) | لا | نعم | لا | طول كود الضريبة |
| StartCreateViewYearInv | STRT_CRT_VIEW_YEAR_INV | NUMBER(4,0) | لا | نعم | لا | أول سنة عرض افتراضية للمخزون |
| EmployeeNoSequenceField | EMP_NO_SQ_FLD | NUMBER(10,0) | لا | نعم | لا | رقم تسلسل الموظف |
| DefaultExportDirPath | DFLT_EXP_DIR_PATH | VARCHAR2(255) | لا | نعم | لا | مسار تصدير افتراضي |
| DefaultExportDirPathDtl | DFLT_EXP_DIR_PATH_DTL | VARCHAR2(4000) | لا | نعم | لا | مسار تصدير تفصيلي |
| WebDocLink | WEB_DOC_LNK | VARCHAR2(4000) | لا | نعم | لا | رابط وثيقة الويب |
| BranchBalanceType | BLNC_BRN_TYP | NUMBER(2,0) | لا | نعم | لا | نوع توازن الفروع |
| VATPostMethod | VAT_PST_MTHD | NUMBER(2,0) | لا | نعم | لا | طريقة ترحيل الضريبة |
| UseTDSFlag | USE_TDS_FLG | NUMBER(1,0) | لا | نعم | لا | تفعيل TDS |
| MinUserPasswordLetter | MIN_USR_PWD_LETTER | NUMBER(2,0) | لا | نعم | لا | الحد الأدنى للحروف في كلمة المرور |
| MinUserPasswordUpper | MIN_USR_PWD_UPPER | NUMBER(2,0) | لا | نعم | لا | الحد الأدنى للحروف الكبيرة في كلمة المرور |
| MinUserPasswordLower | MIN_USR_PWD_LOWER | NUMBER(2,0) | لا | نعم | لا | الحد الأدنى للحروف الصغيرة في كلمة المرور |
| MinUserPasswordDigit | MIN_USR_PWD_DIGIT | NUMBER(2,0) | لا | نعم | لا | الحد الأدنى للأرقام في كلمة المرور |
| MinUserPasswordSpecial | MIN_USR_PWD_SPECIAL | NUMBER(2,0) | لا | نعم | لا | الحد الأدنى للرموز في كلمة المرور |
| UseConnectionSDFA | USE_CONN_SDFA | NUMBER(1,0) | لا | نعم | لا | ربط SDFA |
| EmployeeNoSequenceType | EMP_NO_SQ_TYP | NUMBER(1,0) | لا | نعم | لا | نوع تسلسل الموظف |
| UseDocApprovedByUserLevel | USE_DOC_APPRVD_BY_USR_LVL | NUMBER(1,0) | لا | نعم | لا | تفعيل اعتماد المستند حسب مستوى المستخدم |
| UseSendWebMsg | USE_SND_WEB_MSG | NUMBER(1,0) | لا | نعم | لا | تفعيل إرسال رسائل ويب |


---

## ParameterGL (**IAS_PARA_GL**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| ParameterNo | PARA_NO | NUMBER(1,0) | نعم | لا | لا | رقم السطر/المعيار |
| GenerateGLDocument | DOC_GEN_GL | NUMBER(1,0) | نعم | لا | لا | توليد سند محاسبي تلقائي |
| AllowDocDeleteNo | ALLOW_DOC_DEL_NO | NUMBER(1,0) | نعم | لا | لا | السماح بحذف المستندات |
| DateGenerateGL | DATE_GEN_GL | NUMBER(1,0) | نعم | لا | لا | توليد سند بتاريخ معين |
| DateSettingGL | DATE_SETTING_GL | NUMBER(1,0) | نعم | لا | لا | إعدادات تاريخ السند |
| AccountCodeLength | A_CODE_LENGTH | NUMBER(2,0) | نعم | لا | لا | طول كود الحساب |
| AccountCodeType | A_CODE_D_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع كود الحساب |
| CostCenterLength | CC_LENGTH | NUMBER(2,0) | نعم | لا | لا | طول كود مركز التكلفة |
| CostCenterCodeType | CC_D_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع كود مركز التكلفة |
| AccountSub | ACCOUNT_SUB | NUMBER(1,0) | نعم | لا | لا | تفعيل الحساب الفرعي |
| JournalStandBy | J_STAND_BY | NUMBER(1,0) | نعم | لا | لا | القيود قيد الانتظار |
| ForCurrency | FOR_CURRENCY | NUMBER(1,0) | نعم | لا | لا | تفعيل العملات |
| NoOfDecimal | NO_OF_DECIMAL | NUMBER(2,0) | نعم | لا | لا | عدد الكسور العشرية |
| RequestRefNoGL | REQUEST_REFNO_GL | NUMBER(1,0) | نعم | لا | لا | طلب رقم مرجعي |
| RequestDescGL | REQUEST_DESC_GL | NUMBER(1,0) | نعم | لا | لا | طلب وصف السند |
| CashReserve | CASH_RESERVE | NUMBER(1,0) | نعم | لا | لا | احتياطي النقدية |
| HandleLocalAmount | HANDLY_LOCAL_AMT | NUMBER(1,0) | نعم | لا | لا | التعامل بالعملة المحلية |
| CurrencyType | CURR_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع العملة |
| UseCashIncome | USE_CASH_INCOME | NUMBER(1,0) | نعم | لا | لا | استخدام الدخل النقدي |
| PostChequeType | POST_CHEQUE_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع ترحيل الشيكات |
| PostChequeTypeVendor | POST_CHEQ_TYPE_VNDR | NUMBER(1,0) | لا | نعم | لا | نوع ترحيل الشيكات للمورد |
| UseDeleteGL | USE_DEL_GL | NUMBER(1,0) | نعم | لا | لا | السماح بحذف القيود |
| UseModifyGL | USE_MOD_GL | NUMBER(1,0) | نعم | لا | لا | السماح بتعديل القيود |
| UseGuaranty | USE_GUARN | NUMBER(1,0) | نعم | لا | لا | استخدام الضمانات |
| ConnectAccountCostCenter | CONN_AC_CC | NUMBER(1,0) | نعم | لا | لا | ربط الحساب بمركز التكلفة |
| ConnectAccountProject | CONN_AC_PJ | NUMBER(1,0) | نعم | لا | لا | ربط الحساب بالمشروع |
| PostChequeTypeReceivable | POST_CHEQ_TYPE_REC | NUMBER(1,0) | نعم | لا | لا | نوع ترحيل الشيكات للمدين |
| PostChequeTypePayable | POST_CHEQ_TYPE_PAY | NUMBER(1,0) | لا | نعم | لا | نوع ترحيل الشيكات للدائن |
| UseKIMB | USE_KIMB | NUMBER(1,0) | نعم | لا | لا | تفعيل KIMB |
| UseCashInJV | USE_CASH_IN_JV | NUMBER(1,0) | نعم | لا | لا | تفعيل النقدية في القيد |
| UseBankMediatorInJV | USE_BANK_MDTR_IN_JV | NUMBER(1,0) | نعم | لا | لا | تفعيل وسيط البنك في القيد |
| UseInventoryAccountInJV | USE_INVAC_IN_JV | NUMBER(1,0) | نعم | لا | لا | تفعيل حساب المخزون في القيد |
| MultiFillJVNote | MULTI_FILL_JV_NOTE | NUMBER(1,0) | نعم | لا | لا | تعبئة ملاحظات القيد المتعددة |
| ParentNotIncludeAccount | A_PARENT_NOT_INCLUDE_AC | NUMBER(1,0) | نعم | لا | لا | الحساب الرئيسي لا يشمل الفرعي |
| ParentNotIncludeCostCenter | C_PARENT_NOT_INCLUDE_CC | NUMBER(1,0) | نعم | لا | لا | مركز التكلفة الرئيسي لا يشمل الفرعي |
| NoteSerial | NOTE_SERIAL | NUMBER(1,0) | نعم | لا | لا | تسلسل ملاحظات السند |
| GLLimitType | GL_LMT_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع حد الحساب |
| DescIncludeCCName | DESC_INCLUDE_CC_NAME | NUMBER(1,0) | نعم | لا | لا | إدراج اسم مركز التكلفة في الوصف |
| UseChequeInJV | USE_CHEQ_JV | NUMBER(1,0) | نعم | لا | لا | تفعيل الشيكات في القيد |
| PLCloseType | PL_CLS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع إغلاق الأرباح والخسائر |
| DiffCurrencyCloseType | DIFF_CUR_CLS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع إغلاق اختلاف العملة |
| AllowDuplicateCashAccount | ALLOW_DUP_CASH_AC | NUMBER(1,0) | نعم | لا | لا | السماح بتكرار حساب النقدية |
| AllowDuplicateBankAccount | ALLOW_DUP_BANK_AC | NUMBER(1,0) | نعم | لا | لا | السماح بتكرار حساب البنك |
| CashBankConnectBranch | CSHBNK_CONN_BRN | NUMBER(1,0) | نعم | لا | لا | ربط النقدية والبنك بالفرع |
| UsePayVoucherMasterAccountPrivilege | USE_PAY_VCHR_MST_AC_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية سند دفع رئيسي للحساب |
| UseReceiveVoucherMasterAccountPrivilege | USE_RCV_VCHR_MST_AC_PRV | NUMBER(1,0) | لا | نعم | لا | صلاحية سند قبض رئيسي للحساب |
| RequestColumnNoReceive | REQUEST_COL_NO_REC | NUMBER(1,0) | لا | نعم | لا | طلب رقم العمود للقبض |
| RequestVoucherTypeNo | REQUEST_V_TYP_NO_VCHR | NUMBER(1,0) | لا | نعم | لا | طلب نوع سند |
| ConnectPaymentRequest | CONN_PYMNT_REQUST | NUMBER(1,0) | لا | نعم | لا | ربط طلب الدفع |
| ConnectReceiptRequest | CONN_RCPT_REQUST | NUMBER(1,0) | لا | نعم | لا | ربط طلب القبض |
| PaymentRateType | P_RATE_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع سعر الصرف للدفع |
| ReceiptSerialType | RCPT_SRL_TYP | NUMBER(2,0) | لا | نعم | لا | نوع تسلسل سند القبض |
| ConnectCostCenterProject | CONN_CC_PJ | NUMBER(1,0) | لا | نعم | لا | ربط مركز التكلفة بالمشروع |
| ConnectProjectActivity | CONN_PJ_ACTV | NUMBER(1,0) | لا | نعم | لا | ربط المشروع بالنشاط |
| AllowVoucherZero | ALLOW_VCHR_ZERO | NUMBER(1,0) | لا | نعم | لا | السماح بسندات بقيمة صفرية |
| SubAccountLevel | SUB_AC_LVL | NUMBER(2,0) | لا | نعم | لا | مستوى الحسابات الفرعية |
| FillHoursPayFormMethod | FILL_HRS_PAYFORM_MTHD | NUMBER(1,0) | لا | نعم | لا | طريقة تعبئة نموذج الدفع بالساعات |
| FillHoursReceiptFormMethod | FILL_HRS_RECFORM_MTHD | NUMBER(1,0) | لا | نعم | لا | طريقة تعبئة نموذج القبض بالساعات |
| JournalRequestSeq | JRNL_RQ_SEQ | NUMBER(1,0) | لا | نعم | لا | تسلسل طلب القيد |
| PaymentRequestSeq | PAY_RQ_SEQ | NUMBER(1,0) | لا | نعم | لا | تسلسل طلب الدفع |
| ReceiptRequestSeq | REC_RQ_SEQ | NUMBER(1,0) | لا | نعم | لا | تسلسل طلب القبض |
| UseMultiCurrencyBudget | USE_MULTI_CUR_BDGT | NUMBER(1,0) | لا | نعم | لا | ميزانية بعدة عملات |
| UseMultiCurrencyLimit | USE_MULTI_CUR_LMT | NUMBER | لا | نعم | لا | حد بعدة عملات |
| FillHoursJournalFormMethod | FILL_HRS_JRNLFORM_MTHD | NUMBER(1,0) | لا | نعم | لا | طريقة تعبئة نموذج القيد بالساعات |
| DuplicateChequeNoPayment | DUP_CHQ_NO_PAYMNT | NUMBER(1,0) | لا | نعم | لا | السماح بتكرار رقم الشيك للدفع |
| DefaultPostDisplayInStatement | DFLT_POST_DSPLY_IN_ASTMT | NUMBER(1,0) | لا | نعم | لا | عرض الترحيل الافتراضي في كشف الحساب |
| NotCloseDiffCurrencyPLAccount | NOT_CLOSE_DIFF_CUUR_PL_ACC | NUMBER(1,0) | لا | نعم | لا | عدم إغلاق أرباح/خسائر العملة المختلفة |
| DescIncludeProjectName | DESC_INCLUDE_PJ_NAME | NUMBER(1,0) | لا | نعم | لا | إدراج اسم المشروع في الوصف |
| ShowColumnNo | SHOW_COL_NO | NUMBER(1,0) | لا | نعم | لا | عرض رقم العمود |
| ShowRepCode | SHOW_REP_CODE | NUMBER(1,0) | لا | نعم | لا | عرض كود المندوب |
| ConnectCashNoRepCode | CONN_CSHNO_REP_CODE | NUMBER(1,0) | لا | نعم | لا | ربط النقدية بكود المندوب |
| ConnectCostCodeRepCode | CONN_CCODE_REP_CODE | NUMBER(1,0) | لا | نعم | لا | ربط مركز التكلفة بكود المندوب |
| AllowDiffRateMasterDetail | ALLW_DIFF_RATE_MST_DTL | NUMBER(1,0) | لا | نعم | لا | السماح باختلاف السعر بين الرئيس والتفصيلي |
| PostAccountDescInPayCheque | POST_ACC_DSC_IN_PAY_CHQ | NUMBER(1,0) | لا | نعم | لا | ترحيل وصف الحساب في شيك الدفع |
| UseMultiRequestInJV | USE_MULTI_RQ_IN_JV | NUMBER(1,0) | لا | نعم | لا | استخدام أكثر من طلب في القيد |
| CheckBudgetAmount | CHK_BGT_AMT | NUMBER(1,0) | لا | نعم | لا | التحقق من مبلغ الميزانية |
| CreateNoteMoveBudgetBranch | CRT_NOTE_MOV_BGT_BRN | NUMBER(1,0) | لا | نعم | لا | إنشاء ملاحظة عند نقل الميزانية بين الفروع |
| ShowDocBranchNo | SHW_DOC_BRN_NO | NUMBER(1,0) | لا | نعم | لا | عرض رقم فرع المستند |
| UseAllAccountBudget | USE_ALL_ACC_BDGT | NUMBER(1,0) | لا | نعم | لا | استخدام جميع الحسابات في الميزانية |
| CallCustomerRepCode | CALL_CST_REPCODE | NUMBER(1,0) | لا | نعم | لا | استدعاء كود مندوب العملاء |
| UseBudgetApproval | USE_BGT_APPRVL | NUMBER(1,0) | لا | نعم | لا | استخدام اعتماد الميزانية |
| UseBranchLimit | USE_BRN_LMT | NUMBER(1,0) | لا | نعم | لا | تفعيل حد الفرع |
| JournalSeqType | JRNL_SEQ_TYP | NUMBER(2,0) | لا | نعم | لا | نوع تسلسل القيد |
| MandatoryReceiptRepCode | MNDTRY_RCPT_REP_CODE | NUMBER(1,0) | لا | نعم | لا | إلزامي كود مندوب في القبض |
| AddFieldDetailCount | ADD_FLD_DTL_CNT | NUMBER(1,0) | لا | نعم | لا | عدد الحقول التفصيلية الإضافية |
| ConnectAccountActivity | CONN_AC_ACTV | NUMBER(1,0) | لا | نعم | لا | ربط الحساب بالنشاط |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف السطر |
| AddedDate | AD_DATE | DATE | لا | نعم | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل السطر |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| ExchangeCurrencySeq | EXCHHG_CUR_SEQ | NUMBER(2,0) | لا | نعم | لا | تسلسل العملة للصرف |
| UseExpenseTax | USE_EXPNS_TAX | NUMBER(1,0) | لا | نعم | لا | استخدام ضريبة المصروفات |
| UseMultiRequestInPayment | USE_MULTI_RQ_IN_PYMNT | NUMBER(1,0) | لا | نعم | لا | استخدام أكثر من طلب في الدفع |
| UseMultiRequestInReceipt | USE_MULTI_RQ_IN_RCPT | NUMBER(1,0) | لا | نعم | لا | استخدام أكثر من طلب في القبض |
| UseBankDepositAccountIntermediate | USE_BNK_DPST_AC_INTRMDT | NUMBER(1,0) | لا | نعم | لا | تفعيل حساب وسيط للإيداع البنكي |

---


## ParameterInventory (**IAS_PARA_INV**)
| الاسم الجديد | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---|---|---|---|---|---|---|
| ParameterNo | PARA_NO | NUMBER(1,0) | نعم | لا | لا | رقم السطر/المعيار |
| GenerateInventoryDocument | DOC_GEN_INV | NUMBER(1,0) | نعم | لا | لا | توليد مستند مخزون تلقائي |
| AllowDocDeleteNo | ALLOW_DOC_DEL_NO | NUMBER(1,0) | نعم | لا | لا | السماح بحذف مستندات المخزون |
| DateGenerateInventory | DATE_GEN_INV | NUMBER(1,0) | نعم | لا | لا | توليد المستند بتاريخ معين |
| DateSettingInventory | DATE_SETTING_INV | NUMBER(1,0) | نعم | لا | لا | إعدادات تاريخ المستند |
| LinkWithGL | LINK_WITH_GL | NUMBER(1,0) | نعم | لا | لا | ربط مع الحسابات العامة |
| ItemCodeLength | I_CODE_LEN | NUMBER(2,0) | نعم | لا | لا | طول كود الصنف |
| ItemCodeType | I_CODE_D_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع كود الصنف |
| UseAltCode | USE_ALT_CODE | NUMBER(1,0) | نعم | لا | لا | استخدام كود بديل للصنف |
| UseExpireDate | USE_EXPIRE_DATE | NUMBER(1,0) | نعم | لا | لا | استخدام تاريخ الصلاحية |
| UseBatchNo | USE_BATCH_NO | NUMBER(1,0) | نعم | لا | لا | استخدام الدفعات |
| UseMultiWarehouse | USE_MULTI_WC | NUMBER(1,0) | نعم | لا | لا | استخدام مستودعات متعددة |
| IncomingWarehouseType | INCOMING_W_HOUSE_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مستودع الوارد |
| OutgoingWarehouseType | OUTGOING_W_HOUSE_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مستودع الصادر |
| IncomingCostType | INCOMING_CS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع تكلفة الوارد |
| OutgoingCostType | OUTGOING_CS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع تكلفة الصادر |
| StockAdjustCostType | STK_ADJUST_CS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع تكلفة تسوية المخزون |
| TransferCostType | TR_CS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع تكلفة التحويل |
| OutProjectType | OUT_PJ_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مشروع الصادر |
| IncProjectType | INC_PJ_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مشروع الوارد |
| StockProjectType | STK_PJ_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مشروع المخزون |
| TransferProjectType | TR_PJ_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مشروع التحويل |
| OutActivityType | OUT_ACTV_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع نشاط الصادر |
| IncActivityType | INC_ACTV_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع نشاط الوارد |
| StockActivityType | STK_ACTV_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع نشاط المخزون |
| TransferActivityType | TR_ACTV_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع نشاط التحويل |
| UseCosting | USE_COSTING | NUMBER(1,0) | نعم | لا | لا | استخدام احتساب التكلفة |
| CostingType | COSTING_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع احتساب التكلفة |
| WeightedAvgType | WTAVG_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع المتوسط المرجح |
| ItemPostingFlag | ITEM_POSTING_FLAG | NUMBER(1,0) | نعم | لا | لا | علم ترحيل الصنف |
| UseNegativeInventory | USE_NEGATIVE_INV | NUMBER(1,0) | نعم | لا | لا | السماح بجرد سلبي |
| ShowItemDesc | SHOW_I_DESC | NUMBER(1,0) | نعم | لا | لا | عرض وصف الصنف |
| ShowItemDescription | SHOW_ITEM_DESC | NUMBER(1,0) | نعم | لا | لا | عرض وصف الصنف |
| NoOfDecimalInv | NO_OF_DECIMAL_INV | NUMBER(2,0) | نعم | لا | لا | عدد الكسور العشرية في المخزون |
| UpdateBalance | UPDATE_BALANCE | NUMBER(1,0) | نعم | لا | لا | تحديث الرصيد تلقائيا |
| UseSerialNo | USE_SERIALNO | NUMBER(1,0) | نعم | لا | لا | استخدام الرقم التسلسلي |
| UseConsignmentItem | USE_CONS_ITM | NUMBER(1,0) | نعم | لا | لا | تفعيل أصناف الأمانة |
| UseCompoundItems | USE_COMPOUND_ITEMS | NUMBER(1,0) | نعم | لا | لا | تفعيل الأصناف المركبة |
| IncomingSerial | INCOMING_SERIAL | NUMBER(1,0) | نعم | لا | لا | استخدام الرقم التسلسلي للوارد |
| OutgoingSerial | OUTGOING_SERIAL | NUMBER(1,0) | نعم | لا | لا | استخدام الرقم التسلسلي للصادر |
| TransferSerial | TRANSFER_SERIAL | NUMBER(1,0) | نعم | لا | لا | استخدام الرقم التسلسلي للتحويل |
| ShowItemSize | SHOW_I_SIZE | NUMBER(1,0) | نعم | لا | لا | عرض حجم الصنف |
| HideOutgoingAccount | HIDE_OUTGOING_AC | NUMBER(1,0) | نعم | لا | لا | إخفاء حساب الصادر |
| RequestSerial | REQUEST_SERIAL | NUMBER(1,0) | نعم | لا | لا | طلب الرقم التسلسلي للصنف |
| UseDuplicateItemManualInventory | USE_DUPITM_MANINV | NUMBER(1,0) | نعم | لا | لا | السماح بتكرار الصنف في الجرد اليدوي |
| UseStandardItemCost | USE_STANDARD_ITEM_COST | NUMBER(1,0) | نعم | لا | لا | استخدام تكلفة معيارية للصنف |
| UseRequestModifyPrice | USE_REQ_MOD_PRICE | NUMBER(1,0) | لا | نعم | لا | السماح بتعديل السعر عند الطلب |
| UseDeleteInventory | USE_DEL_INV | NUMBER(1,0) | نعم | لا | لا | السماح بحذف مستندات المخزون |
| UseModifyInventory | USE_MOD_INV | NUMBER(1,0) | نعم | لا | لا | السماح بتعديل مستندات المخزون |
| PriceType | PRICE_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع التسعير |
| ROIType | ROI_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع العائد على الاستثمار |
| UseMinUnitPrice | USE_MIN_UNIT_PRICE | NUMBER(1,0) | لا | نعم | لا | تفعيل حد أدنى لسعر الوحدة |
| GenerateItemCode | GENERATE_I_CODE | NUMBER(1,0) | نعم | لا | لا | توليد كود الصنف تلقائيًا |
| ConnectGroups | CONN_GRPS | NUMBER(1,0) | نعم | لا | لا | ربط المجموعات |
| ConnectDetailGroupByGroups | CONN_DTL_GRP_BY_GRPS | NUMBER(1,0) | نعم | لا | لا | ربط تفصيل المجموعات |
| ConnectAssistantGroupByGroups | CONN_ASSTNT_GRP_BY_GRPS | NUMBER(1,0) | نعم | لا | لا | ربط مجموعة المساعد |
| InsertItemManual | INSRT_ITM_MAN | NUMBER(1,0) | نعم | لا | لا | إدخال يدوي للصنف |
| StockCostFraction | STKCOST_FRACTION | NUMBER(2,0) | نعم | لا | لا | عدد الكسور في تكلفة المخزون |
| UseTransferExpense | USE_TRNSFER_EXPENSE | NUMBER(1,0) | نعم | لا | لا | استخدام مصروفات التحويل |
| AllowModifyReceiveQty | ALLOW_MOD_REC_QTY | NUMBER(1,0) | نعم | لا | لا | السماح بتعديل كمية الاستلام |
| AllowModifyReceiveWarehouse | ALLOW_MOD_REC_WCODE | NUMBER(1,0) | نعم | لا | لا | السماح بتعديل مستودع الاستلام |
| UseItemAttach | USE_ITM_ATTACH | NUMBER(1,0) | نعم | لا | لا | تفعيل إرفاق ملف للصنف |
| ConnectRequestWarehouseTransfer | CONN_REQ_WHTRNSFR | NUMBER(1,0) | نعم | لا | لا | ربط طلب التحويل |
| ConnectRequestOutgoing | CONN_REQ_OUTGOING | NUMBER(1,0) | نعم | لا | لا | ربط طلب الصادر |
| ConnectGroupIncoming | CONN_GR_INCOMING | NUMBER(1,0) | نعم | لا | لا | ربط المجموعة في الوارد |
| MinLimitCostPercent | MIN_LMT_COST_PER | NUMBER(3,0) | لا | نعم | لا | أقل نسبة تكلفة مئوية |
| MaxLimitCostPercent | MAX_LMT_COST_PER | NUMBER(3,0) | لا | نعم | لا | أعلى نسبة تكلفة مئوية |
| MinLimitPricePercent | MIN_LMT_PRICE_PER | NUMBER(3,0) | لا | نعم | لا | أقل نسبة سعر مئوية |
| MaxLimitPricePercent | MAX_LMT_PRICE_PER | NUMBER(3,0) | لا | نعم | لا | أعلى نسبة سعر مئوية |
| PriceCostType | PRICE_CST_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع تكلفة التسعير |
| RequestRefNoInventory | REQUEST_REFNO_INV | NUMBER(1,0) | نعم | لا | لا | طلب رقم مرجعي في المخزون |
| RequestDescInventory | REQUEST_DESC_INV | NUMBER(1,0) | نعم | لا | لا | طلب وصف الصنف في المستند |
| GenerateBarcode | GENERATE_BARCODE | VARCHAR2(250) | لا | نعم | لا | توليد الباركود للصنف |
| ConnectItemByAttachAuto | CONN_ITEM_BY_ATTACH_AUTO | NUMBER(1,0) | لا | نعم | لا | ربط الصنف تلقائياً عند الإرفاق |
| ConnectItemActivityByUserPrivilege | CONN_ITM_ACT_BY_USR_PRIV | NUMBER(1,0) | لا | نعم | لا | ربط نشاط الصنف بصلاحية المستخدم |
| DealingUnderSelling | DEALING_UNDER_SELLING | NUMBER(1,0) | لا | نعم | لا | السماح بالبيع المؤجل |
| AllowUpdateTransactionAccount | ALLOW_UPD_TR_A_CODE | NUMBER(1,0) | لا | نعم | لا | السماح بتعديل حساب الحركة |
| AllowExceedTransactionQty | ALLOW_EXCEED_TR_QTY | NUMBER(1,0) | لا | نعم | لا | السماح بتجاوز الكمية في الحركة |
| UseMultiWarehouseTransfer | USE_MULTI_WHTRNS | NUMBER(1,0) | لا | نعم | لا | تفعيل التحويل بين مستودعات متعددة |
| UseGoodOnConsignment | USE_GOOD_ON_CONSIGNMENT | NUMBER(1,0) | لا | نعم | لا | تفعيل بضاعة الأمانة |
| AllowDeleteReceiveItem | ALLOW_DEL_REC_ITM | NUMBER(1,0) | لا | نعم | لا | السماح بحذف الصنف المستلم |
| ManualInventorySerial | MAN_INV_SERAIL | NUMBER(1,0) | لا | نعم | لا | تفعيل جرد يدوي متسلسل |
| UseWeightSystem | USE_WT_SYS | NUMBER(1,0) | لا | نعم | لا | تفعيل نظام الوزن |
| DefaultWeightArgument | DFLT_WT_ARGMNT | NUMBER(1,0) | لا | نعم | لا | معامل الوزن الافتراضي |
| InventorySystemType | INV_SYS_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع نظام المخزون |
| InventorySystemCloseType | INV_SYS_CLOSE_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع إغلاق نظام المخزون |
| InventoryCloseCostType | INV_CLOSE_CST_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع إغلاق تكلفة المخزون |
| UsePriceWarehouseTransferReceiveCost | USE_PRICE_WHTRNS_REC_COST | NUMBER(1,0) | لا | نعم | لا | تفعيل سعر التحويل بناءً على تكلفة الاستلام |
| ConnectWarehouseCostCenterMandatory | CONN_WC_CC_MANDTRY | NUMBER(1,0) | لا | نعم | لا | ربط المستودع بمركز التكلفة إلزامي |
| ShowParentItemOnly | SHOW_PARENT_ITM_ONLY | NUMBER(1,0) | لا | نعم | لا | عرض الأصناف الرئيسية فقط |
| ApprovedBarcodeSameBatchNo | APPRVD_BRACODE_SAME_BATCHNO | NUMBER | لا | نعم | لا | اعتماد نفس الباركود لنفس رقم الدفعة |
| ApprovedBarcodeSameSerialNo | APPRVD_BRACODE_SAME_SERIALNO | NUMBER | لا | نعم | لا | اعتماد نفس الباركود لنفس الرقم التسلسلي |
| NotInstallItemHasPrice | NOT_INSTALL_ITEM_HAS_PRICE | NUMBER(1,0) | لا | نعم | لا | السماح بسعر لأصناف غير مركبة |
| ConnectActivityByWarehouseCCCode | CONN_ACTIVITY_BY_WCODE_CC_CODE | NUMBER(1,0) | لا | نعم | لا | ربط النشاط بالكود والمستودع ومركز التكلفة |
| PrintItemBarcodeNotPrice | PRINT_ITM_BARCODE_NOT_PRICE | NUMBER(1,0) | لا | نعم | لا | طباعة باركود الصنف بدون السعر |
| BatchNoColumnNo | BATCHNO_COL_NO | NUMBER(2,0) | لا | نعم | لا | عدد أعمدة الدفعات |
| BatchNameColumn1 | BATCH_NM_COL1 | VARCHAR2(60) | لا | نعم | لا | اسم عمود الدفعة 1 |
| BatchNameColumn2 | BATCH_NM_COL2 | VARCHAR2(60) | لا | نعم | لا | اسم عمود الدفعة 2 |
| BatchNameColumn3 | BATCH_NM_COL3 | VARCHAR2(60) | لا | نعم | لا | اسم عمود الدفعة 3 |
| BatchNameColumn4 | BATCH_NM_COL4 | VARCHAR2(60) | لا | نعم | لا | اسم عمود الدفعة 4 |
| BatchNameColumn5 | BATCH_NM_COL5 | VARCHAR2(60) | لا | نعم | لا | اسم عمود الدفعة 5 |
| ShowBatchCol1InScreen | SHOW_BAT_COL1_IN_SCREEN | NUMBER(1,0) | لا | نعم | لا | عرض عمود الدفعة 1 في الشاشة |
| ShowBatchCol2InScreen | SHOW_BAT_COL2_IN_SCREEN | NUMBER(1,0) | لا | نعم | لا | عرض عمود الدفعة 2 في الشاشة |
| ShowBatchCol3InScreen | SHOW_BAT_COL3_IN_SCREEN | NUMBER(1,0) | لا | نعم | لا | عرض عمود الدفعة 3 في الشاشة |
| ShowBatchCol4InScreen | SHOW_BAT_COL4_IN_SCREEN | NUMBER(1,0) | لا | نعم | لا | عرض عمود الدفعة 4 في الشاشة |
| ShowBatchCol5InScreen | SHOW_BAT_COL5_IN_SCREEN | NUMBER(1,0) | لا | نعم | لا | عرض عمود الدفعة 5 في الشاشة |
| ActiveSerialNo | ACTIVE_SERIALNO | NUMBER(1,0) | لا | نعم | لا | تفعيل الرقم التسلسلي |
| GenerateAutoItemBarcode | GENERATE_AUTO_ITM_BARCODE | NUMBER(1,0) | لا | نعم | لا | توليد باركود الصنف تلقائيًا |
| UsePercentCostKitItem | USE_PER_COST_KIT_ITM | NUMBER(1,0) | لا | نعم | لا | استخدام نسبة تكلفة في أصناف الكيت |
| InstallPosKitItemInStockAdjust | INSTALL_POS_KIT_ITM_IN_STK_ADJ | NUMBER(1,0) | لا | نعم | لا | تركيب أصناف الكيت في تسوية المخزون |
| SizeCol1 | SIZE_COL1 | NUMBER(2,0) | لا | نعم | لا | حجم عمود 1 |
| SizeCol2 | SIZE_COL2 | NUMBER(2,0) | لا | نعم | لا | حجم عمود 2 |
| SizeCol3 | SIZE_COL3 | NUMBER(2,0) | لا | نعم | لا | حجم عمود 3 |
| SizeCol4 | SIZE_COL4 | NUMBER(2,0) | لا | نعم | لا | حجم عمود 4 |
| SizeCol5 | SIZE_COL5 | NUMBER(2,0) | لا | نعم | لا | حجم عمود 5 |
| ItemNoCol1 | ITEM_NO_COL1 | NUMBER(1,0) | لا | نعم | لا | رقم الصنف عمود 1 |
| ItemNoCol2 | ITEM_NO_COL2 | NUMBER(1,0) | لا | نعم | لا | رقم الصنف عمود 2 |
| ItemNoCol3 | ITEM_NO_COL3 | NUMBER(1,0) | لا | نعم | لا | رقم الصنف عمود 3 |
| ItemNoCol4 | ITEM_NO_COL4 | NUMBER(1,0) | لا | نعم | لا | رقم الصنف عمود 4 |
| ItemNoCol5 | ITEM_NO_COL5 | NUMBER(1,0) | لا | نعم | لا | رقم الصنف عمود 5 |
| DuplicateItemTransactionReceive | DUP_ITEM_TR_REC | NUMBER(1,0) | لا | نعم | لا | تكرار الصنف في الاستلام |
| BarcodeFirst | BARCODE_FIRST | NUMBER(2,0) | لا | نعم | لا | أول باركود |
| BarcodeSecond | BARCODE_SECOND | NUMBER(2,0) | لا | نعم | لا | ثاني باركود |
| BarcodeThird | BARCODE_THIRD | NUMBER(2,0) | لا | نعم | لا | ثالث باركود |
| BarcodeFourth | BARCODE_FOURTH | NUMBER(2,0) | لا | نعم | لا | رابع باركود |
| BarcodeFifth | BARCODE_FIFTH | NUMBER(2,0) | لا | نعم | لا | خامس باركود |
| BarcodeSixth | BARCODE_SIXTH | NUMBER(2,0) | لا | نعم | لا | سادس باركود |
| BarcodeFirstLength | BARCODE_FIRST_LENGTH | NUMBER(2,0) | لا | نعم | لا | طول أول باركود |
| BarcodeSecondLength | BARCODE_SECOND_LENGTH | NUMBER(2,0) | لا | نعم | لا | طول ثاني باركود |
| BarcodeThirdLength | BARCODE_THIRD_LENGTH | NUMBER(2,0) | لا | نعم | لا | طول ثالث باركود |
| BarcodeFourthLength | BARCODE_FOURTH_LENGTH | NUMBER(2,0) | لا | نعم | لا | طول رابع باركود |
| BarcodeFifthLength | BARCODE_FIFTH_LENGTH | NUMBER(2,0) | لا | نعم | لا | طول خامس باركود |
| BarcodeSixthLength | BARCODE_SIXTH_LENGTH | NUMBER(2,0) | لا | نعم | لا | طول سادس باركود |
| BarcodeFirstDir | BARCODE_FIRST_DIR | NUMBER(1,0) | لا | نعم | لا | اتجاه أول باركود |
| BarcodeSecondDir | BARCODE_SECOND_DIR | NUMBER(1,0) | لا | نعم | لا | اتجاه ثاني باركود |
| BarcodeThirdDir | BARCODE_THIRD_DIR | NUMBER(1,0) | لا | نعم | لا | اتجاه ثالث باركود |
| BarcodeFourthDir | BARCODE_FOURTH_DIR | NUMBER(1,0) | لا | نعم | لا | اتجاه رابع باركود |
| BarcodeFifthDir | BARCODE_FIFTH_DIR | NUMBER(1,0) | لا | نعم | لا | اتجاه خامس باركود |
| BarcodeSixthDir | BARCODE_SIXTH_DIR | NUMBER(1,0) | لا | نعم | لا | اتجاه سادس باركود |
| ApprovedDefaultPriceForAllLevel | APPV_DFLT_PRC_FOR_ALL_LVL | NUMBER(1,0) | لا | نعم | لا | اعتماد سعر افتراضي لكل المستويات |
| ManualInventoryByOne | MAN_INV_BY_ONE | NUMBER(1,0) | لا | نعم | لا | الجرد اليدوي لكل صنف على حدة |
| CalcLostDay | CALC_LOST_DAY | NUMBER(1,0) | لا | نعم | لا | احتساب أيام الفاقد |
| IncludeGroupCodeInItemCode | INCLUDE_G_CODE_IN_ITM_CODE | NUMBER(1,0) | لا | نعم | لا | إدراج كود المجموعة في كود الصنف |
| UseIncomingItemExpireDate | USE_INCOM_ITM_EXPIRE_DATE | NUMBER(1,0) | لا | نعم | لا | استخدام تاريخ انتهاء الصنف في الوارد |
| ShowNoteExceedQtyInWarehouseTransfer | SHOW_NOTE_EXCEED_QTY_IN_WHTRNS | NUMBER(1,0) | لا | نعم | لا | عرض ملاحظة عند تجاوز الكمية في التحويل |
| DuplicateItemInIncoming | DUP_ITM_IN_INCOMING | NUMBER(1,0) | لا | نعم | لا | السماح بتكرار الصنف في الوارد |
| DuplicateItemInOutgoing | DUP_ITM_IN_OUTGOING | NUMBER(1,0) | لا | نعم | لا | السماح بتكرار الصنف في الصادر |
| UseAutoReceiveWarehouseTransferByWarehouseCode | USE_AUTO_REC_WHTRNS_BY_WCODE | NUMBER(1,0) | لا | نعم | لا | استلام تلقائي في التحويل بناءً على المستودع |
| CheckWarehouseCodeRequiredInWarehouseTransfer | CHK_WCODE_REQ_IN_WHTRNS | NUMBER(1,0) | لا | نعم | لا | تحقق من إلزامية كود المستودع في التحويل |
| BarcodeDataType | BARCODE_DATA_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع بيانات الباركود |
| InputUnitFactorWeight | INPT_UNT_FACTOR_WT | NUMBER | لا | نعم | لا | معامل وحدة الإدخال للوزن |
| UseSequenceItemAuto | USE_SEQ_ITM_AUTO | NUMBER(1,0) | لا | نعم | لا | توليد تسلسل تلقائي للصنف |
| ShowItemBarcodeInventory | SHOW_ITM_BARCODE_INV | NUMBER(1,0) | لا | نعم | لا | عرض باركود الصنف في المخزون |
| UseOneBarcodeForItem | USE_ONE_BARCODE_FOR_ITM | NUMBER(1,0) | لا | نعم | لا | استخدام باركود واحد للصنف |
| ConnectSubGroups | CONN_SUB_GRPS | NUMBER(1,0) | لا | نعم | لا | ربط المجموعات الفرعية |
| ApprovedItemNoBatchNoInBarcode | APPRV_ITMNO_BATCHNO_IN_BARCODE | NUMBER(1,0) | لا | نعم | لا | اعتماد رقم الصنف ورقم الدفعة في الباركود |
| GenerateBarcodeMinUnit | GENERATE_BARCODE_MIN_UNIT | NUMBER(1,0) | لا | نعم | لا | توليد باركود لوحدة الحد الأدنى |
| UseInventoryReevaluate | USE_INV_REEVALUATE | NUMBER(1,0) | لا | نعم | لا | إعادة تقييم المخزون |
| ShowWeightUnitArgumentInTrans | SHOW_WT_UNT_ARGMNT_IN_TRNS | NUMBER | لا | نعم | لا | عرض وحدة الوزن والمعامل في الحركات |
| DealWithItemUsed | DEAL_WITH_ITEM_USED | NUMBER(1,0) | لا | نعم | لا | التعامل مع الأصناف المستعملة |
| MethodVATCalcItemUsed | MTHD_VAT_CALC_ITM_USED | NUMBER(1,0) | لا | نعم | لا | طريقة احتساب الضريبة للأصناف المستعملة |
| ConnectItemByBatch | CNCT_ITM_BY_BTCH | NUMBER | لا | نعم | لا | ربط الصنف بالدفعة |
| PrintPriceWithTax | PRINT_PRICE_WITH_TAX | NUMBER(1,0) | لا | نعم | لا | طباعة السعر مع الضريبة |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف السطر |
| AddedDate | AD_DATE | DATE | لا | نعم | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل السطر |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| ApprovedKitItemPriceAssemble | APPRVD_KIT_ITM_PRICE_ASSMBLE | NUMBER(1,0) | لا | نعم | لا | اعتماد سعر أصناف الكيت عند التجميع |
| HideIncomingAccount | HIDE_INCOMING_AC | NUMBER(1,0) | لا | نعم | لا | إخفاء حساب الوارد |
| ApprovedBatchNoItemCodeSequence | APPRVD_BTCHNO_ITMCODE_SQ | NUMBER(1,0) | لا | نعم | لا | اعتماد تسلسل رقم الدفعة وكود الصنف |
| AssembleDocSerial | ASSMBL_DOC_SRL | NUMBER(1,0) | نعم | لا | لا | تسلسل مستند التجميع |
| StockAdjustmentSerial | STK_ADJSTMNT_SRL | NUMBER(1,0) | نعم | لا | لا | تسلسل تسوية المخزون |
| UseQRCodeSerialNo | USE_QR_CODE_SRL_NO | NUMBER(1,0) | لا | نعم | لا | تفعيل تسلسل رقم QR |
| UseItemPriceByExpireDate | USE_ITM_PRICE_BY_EXPIRE_DATE | NUMBER(1,0) | لا | نعم | لا | استخدام سعر الصنف بناء على تاريخ الانتهاء |
| UseItemPriceByBatchNo | USE_ITM_PRICE_BY_BATCH_NO | NUMBER(1,0) | لا | نعم | لا | استخدام سعر الصنف بناء على رقم الدفعة |
| WeightPrefix | WGHT_PRFX | VARCHAR2(3) | لا | نعم | لا | بادئة الوزن في الباركود |
| WeightBarcodeLength | WGHT_BARCODE_LNGTH | NUMBER(2,0) | لا | نعم | لا | طول باركود الوزن |
| WeightItemLength | WGHT_ITM_LNGTH | NUMBER(2,0) | لا | نعم | لا | طول كود صنف الوزن |
| WeightValue | WGHT_VAL | NUMBER(5,0) | لا | نعم | لا | قيمة الوزن |
| WeightFlag | WGHT_FLG | NUMBER(1,0) | لا | نعم | لا | علامة الوزن |
| WeightIncludeItemUnit | WGHT_INCLD_ITM_UNT | NUMBER(1,0) | لا | نعم | لا | إدراج الوحدة في الوزن |
| RemoveWeightDigit | REMOVE_WGHT_DGT | NUMBER(1,0) | لا | نعم | لا | إزالة رقم من الوزن |
| UseCheckSum | USE_CHCK_SUM | NUMBER(1,0) | لا | نعم | لا | تفعيل Checksum |
| QRPrefixLength | QR_PRFX_LNGTH | NUMBER(1,0) | لا | نعم | لا | طول بادئة QR |
| QRGTINLengthArgument | QR_GTIN_LNGTH_ARGMNT | NUMBER(1,0) | لا | نعم | لا | طول GTIN في QR |
| NumberOfBarcodeDigitInQRCode | NO_OF_BARCODE_DIGIT_IN_QR_CODE | NUMBER(2,0) | لا | نعم | لا | عدد أرقام الباركود في QR |
| QRGTINLength | QR_GTIN_LNGTH | NUMBER(3,0) | لا | نعم | لا | طول GTIN في QR |
| UseSerialNoForSalesOnly | USE_SERIALNO_FOR_SALES_ONLY | NUMBER(1,0) | لا | نعم | لا | تفعيل الرقم التسلسلي في المبيعات فقط |
| QRCodeMethodType | QR_CODE_MTHD_TYP | NUMBER(1,0) | لا | نعم | لا | نوع طريقة QR |
| NumberOfManualQty | NO_OF_MAN_QTY | NUMBER(2,0) | لا | نعم | لا | عدد الكميات اليدوية |
| UseBatchNoAutoSequence | USE_BATCH_NO_AUTO_SQ | NUMBER(1,0) | لا | نعم | لا | توليد تسلسل تلقائي للدفعات |
| NotAllowDeleteDocConnectSerialNo | NOT_ALLW_DEL_DOC_CONN_SERIALNO | NUMBER(1,0) | لا | نعم | لا | عدم السماح بحذف المستندات المرتبطة بالرقم التسلسلي |
| AllowEnterPartQtySerialNo | ALLW_ENTR_PART_QTY_SERIALNO | NUMBER(1,0) | لا | نعم | لا | السماح بإدخال كمية جزئية للرقم التسلسلي |
| UseKitItemWarehouseTypeOut | USE_KIT_ITM_WC_TYP_OUT | NUMBER(1,0) | لا | نعم | لا | نوع مستودع أصناف الكيت الصادر |
| UseKitItemClassification | USE_KIT_ITM_CLSSFCTN | NUMBER(1,0) | لا | نعم | لا | تصنيف أصناف الكيت |
| UsePreparationQtyByBarcode | USE_PRP_QTY_BY_BARCODE | NUMBER(1,0) | لا | نعم | لا | استخدام كمية التحضير حسب الباركود |
| MandatoryEnterPartItemCodeSearch | MNDTRY_ENTR_PART_ITM_CODE_SRCH | NUMBER(1,0) | لا | نعم | لا | إلزامي إدخال جزء من كود الصنف للبحث |
| WeightValueService | WGHT_VAL_SRVC | NUMBER(5,0) | لا | نعم | لا | قيمة الوزن للخدمة |
| PriceIncludeVATServiceItem | PRICE_INCLD_VAT_SRVC_ITM | NUMBER(1,0) | لا | نعم | لا | السعر شامل الضريبة للصنف الخدمي |
| UsePreparationQty | USE_PRPRTN_QTY | NUMBER(1,0) | لا | نعم | لا | تفعيل كمية التحضير |
| UseSOMandatoryInOutgoing | USE_SO_MNDTRY_IN_OUTGOIN | NUMBER(1,0) | لا | نعم | لا | إلزامية أمر البيع في الصادر |
| ShowGroupQtyLimitAlert | SHW_GRP_QTY_LMT_ALRT | NUMBER(1,0) | لا | نعم | لا | تنبيه عند تجاوز حد كمية المجموعة |
| AllowDuplicateItemUnitSize | ALLW_DUP_ITM_UNT_SIZE | NUMBER(1,0) | لا | نعم | لا | السماح بتكرار وحدة وحجم الصنف |
| ConnectCostCenterItemActivity | CONN_CC_ITM_ACTVTY | NUMBER(1,0) | لا | نعم | لا | ربط مركز التكلفة بنشاط الصنف |
| ConnectActivityAccountItemActivity | CONN_ACTV_AC_ITM_ACTVTY | NUMBER(1,0) | لا | نعم | لا | ربط الحساب بالنشاط للصنف |
| CheckIncomingCostPercentOperation | CHK_INCMNG_CST_PER_OPRTN | NUMBER(1,0) | لا | نعم | لا | التحقق من نسبة تكلفة الوارد للعملية |
| DuplicateItemInOpenStock | DUP_ITM_IN_OPEN_STOCK | NUMBER(1,0) | لا | نعم | لا | تكرار الصنف في المخزون الافتتاحي |
| UseItemBinMovement | USE_ITM_BIN_MOV | NUMBER(1,0) | لا | نعم | لا | استخدام حركة الصنف في الصناديق |
| WeightCalcQtyByIncludePrice | WGHT_CLC_QTY_BY_INCLD_PRICE | NUMBER(1,0) | لا | نعم | لا | احتساب كمية الوزن حسب السعر |
| WeightPriceForceLength | WGHT_PRICE_FRC_LNGTH | NUMBER(2,0) | لا | نعم | لا | إجبار الطول لسعر الوزن |
| NotAllowPrintItemWithoutBarcode | NOT_ALLW_PRNT_ITM_WITHOT_BARC | NUMBER(1,0) | لا | نعم | لا | عدم السماح بطباعة صنف بدون باركود |

---

## ParameterAP (**IAS_PARA_AP**)

> **الحقل | الاسم القديم | النوع | إجباري | يقبل فارغ | تلقائي | شرح الحقل**

| ParameterNo | PARA_NO | NUMBER(1,0) | نعم | لا | لا | رقم السطر/المعيار |
| GenerateAPDocument | DOC_GEN_AP | NUMBER(1,0) | نعم | لا | لا | توليد مستند موردين تلقائي |
| AllowDocDeleteNo | ALLOW_DOC_DEL_NO | NUMBER(1,0) | نعم | لا | لا | السماح بحذف مستندات الموردين |
| DateGenerateAP | DATE_GEN_AP | NUMBER(1,0) | نعم | لا | لا | توليد المستند بتاريخ معين |
| DateSettingAP | DATE_SETTING_AP | NUMBER(1,0) | نعم | لا | لا | إعدادات تاريخ المستند |
| VendorLength | VENDOR_LENGTH | NUMBER(2,0) | نعم | لا | لا | طول كود المورد |
| VendorCodeType | VENDOR_D_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع كود المورد |
| APAccountLinkType | AP_AC_LINK_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع ربط حساب المورد |
| APUseFreeQty | AP_USE_FREE_QTY | NUMBER(1,0) | نعم | لا | لا | تفعيل الكمية المجانية للمورد |
| ShowDiscountPerItemsAP | SHOW_DISC_PER_ITEMS_AP | NUMBER(1,0) | نعم | لا | لا | عرض الخصم لكل صنف |
| ItemDiscountType | ITM_DISC_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع خصم الصنف |
| DiscountCount | DISC_COUNT | NUMBER(1,0) | نعم | لا | لا | عدد الخصومات |
| APCostType | AP_CS_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع تكلفة المورد |
| APProjectType | AP_PJ_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مشروع المورد |
| APActivityType | AP_ACTV_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع نشاط المورد |
| APWarehouseType | AP_WC_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع مستودع المورد |
| APLinkInventory | AP_LINK_INV | NUMBER(1,0) | نعم | لا | لا | ربط الفواتير مع المخزون |
| NoOfDecimalAP | NO_OF_DECIMAL_AP | NUMBER(2,0) | نعم | لا | لا | عدد الكسور العشرية في الموردين |
| LCType | LC_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع خط الاعتماد |
| LCStatus | LC_STATUS | NUMBER(1,0) | نعم | لا | لا | حالة خط الاعتماد |
| PurchaseDiscountType | PURCHASE_DISC_TYPE | NUMBER(1,0) | نعم | لا | لا | نوع خصم الشراء |
| PurchaseFreeQtyCosting | PUR_FREE_QTY_COSTING | NUMBER(1,0) | نعم | لا | لا | احتساب تكلفة الكمية المجانية |
| ShowGroupName | SHOW_G_NAME | NUMBER(1,0) | نعم | لا | لا | عرض اسم المجموعة |
| UseLocalGRN | USE_LOC_GRN | NUMBER(1,0) | نعم | لا | لا | استخدام GRN المحلي |
| UseDeleteAP | USE_DEL_AP | NUMBER(1,0) | نعم | لا | لا | السماح بحذف مستندات الموردين |
| UseModifyAP | USE_MOD_AP | NUMBER(1,0) | نعم | لا | لا | السماح بتعديل مستندات الموردين |
| APPreqSerial | AP_PREQ_SERIAL | NUMBER(1,0) | نعم | لا | لا | تسلسل طلب الشراء |
| APPOSerial | AP_PO_SERIAL | NUMBER(1,0) | نعم | لا | لا | تسلسل أمر الشراء |
| GRNSerial | GRN_SERIAL | NUMBER(1,0) | نعم | لا | لا | تسلسل استلام البضاعة |
| APISerial | AP_PI_SERIAL | NUMBER(1,0) | نعم | لا | لا | تسلسل فاتورة الشراء |
| APRISerial | AP_PRI_SERIAL | NUMBER(1,0) | نعم | لا | لا | تسلسل فاتورة مرتجع الشراء |
| UseBOE | USE_BOE | NUMBER(1,0) | نعم | لا | لا | تفعيل سندات BOE |
| ConnectPRPOPI | CONN_PR_PO_PI | NUMBER(1,0) | نعم | لا | لا | ربط طلب الشراء بأمر الشراء بالفاتورة |
| ShowItemDescAP | SHOW_I_DESC_AP | NUMBER(1,0) | نعم | لا | لا | عرض وصف الصنف في AP |
| ShowItemDescription | SHOW_ITEM_DESC | NUMBER(1,0) | نعم | لا | لا | عرض وصف الصنف |
| RequestRefNoAP | REQUEST_REFNO_AP | NUMBER(1,0) | نعم | لا | لا | طلب رقم مرجعي في AP |
| RequestDescAP | REQUEST_DESC_AP | NUMBER(1,0) | نعم | لا | لا | طلب وصف في AP |
| ShowWarehouseCodeInPreq | SHOW_WCODE_IN_PREQ | NUMBER(1,0) | نعم | لا | لا | عرض كود المستودع في طلب الشراء |
| UserApprovedInPreq | USER_APPROVED_IN_PREQ | NUMBER(1,0) | نعم | لا | لا | اعتماد المستخدم في طلب الشراء |
| InsertVendorItem | INSRT_VNDR_ITM | NUMBER(1,0) | نعم | لا | لا | إدخال صنف المورد |
| FillLCInJV | FILL_LC_IN_JV | NUMBER(1,0) | نعم | لا | لا | تعبئة LC في القيد |
| PaidInstallmentManual | PAID_INSTLLMNT_MAN | NUMBER(1,0) | نعم | لا | لا | دفع الأقساط يدويًا |
| UsePINoReturnPricePay | USE_PINO_RT_PR_PY | NUMBER(1,0) | نعم | لا | لا | استخدام رقم فاتورة الشراء في الدفع |
| Discount1NotEffectVendorTransaction | DISC1_NOT_EFFECT_VND_TRNS | NUMBER(1,0) | لا | نعم | لا | الخصم 1 لا يؤثر على معاملات المورد |
| Discount2NotEffectVendorTransaction | DISC2_NOT_EFFECT_VND_TRNS | NUMBER(1,0) | لا | نعم | لا | الخصم 2 لا يؤثر على معاملات المورد |
| Discount3NotEffectVendorTransaction | DISC3_NOT_EFFECT_VND_TRNS | NUMBER(1,0) | لا | نعم | لا | الخصم 3 لا يؤثر على معاملات المورد |
| APDiscountType | AP_DISC_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع خصم المورد |
| VendorSerial | VENDOR_SERIAL | NUMBER(1,0) | لا | نعم | لا | تسلسل المورد |
| ShowSumQty | SHOW_SUM_QTY | NUMBER | لا | نعم | لا | عرض إجمالي الكمية |
| AllowDuplicateItem | ALLOW_DUPL_ITM | NUMBER(1,0) | لا | نعم | لا | السماح بتكرار الصنف |
| PurchaseManualMandatory | PUR_MAN_MANDTRY | NUMBER(1,0) | لا | نعم | لا | إلزامية الشراء يدويًا |
| UseServiceBill | USE_SRVC_BILL | NUMBER(1,0) | لا | نعم | لا | استخدام فاتورة خدمة |
| NotifyItemPreqNotProcessed | NOTIFY_ITM_PRQST_NOT_PRCSS | NUMBER | لا | نعم | لا | تنبيه صنف لم يتم معالجته في الطلب |
| NotifyItemPOrderNotProcessed | NOTIFY_ITM_PORDR_NOT_PRCSS | NUMBER | لا | نعم | لا | تنبيه صنف لم يتم معالجته في أمر الشراء |
| UseAPCheckQty | USE_AP_CHECK_QTY | NUMBER(1,0) | لا | نعم | لا | التحقق من الكمية في AP |
| UseKIMBAP | USE_KIMB_AP | NUMBER(1,0) | لا | نعم | لا | تفعيل KIMB الموردين |
| EffectKIMBVendor | EFFCT_KIMB_VNDR | NUMBER(1,0) | لا | نعم | لا | تأثير KIMB على المورد |
| CalcVATAmountTypeAP | CALC_VAT_AMT_TYPE_AP | NUMBER(1,0) | لا | نعم | لا | نوع احتساب ضريبة القيمة المضافة في AP |
| ConnectItemWithMoreVendor | CONN_ITM_WITH_MORE_VNDR | NUMBER(1,0) | لا | نعم | لا | ربط الصنف مع أكثر من مورد |
| AddItemPriceFromBill | ADD_ITM_PRICE_FROM_BILL | NUMBER(1,0) | لا | نعم | لا | إضافة سعر الصنف من الفاتورة |
| APUseServiceItem | AP_USE_SRVC_ITM | NUMBER(1,0) | لا | نعم | لا | استخدام الصنف الخدمي في AP |
| POCheckMaxLimitCost | PO_CHK_MAX_LMT_COST | NUMBER(1,0) | لا | نعم | لا | التحقق من الحد الأعلى لتكلفة أمر الشراء |
| ShowTotalAmount | SHOW_TOT_AMT | NUMBER(1,0) | لا | نعم | لا | عرض المبلغ الإجمالي |
| ConnectContractPOType | CONN_CNTRCT_PO_TYPE | NUMBER(1,0) | لا | نعم | لا | ربط نوع العقد بأمر الشراء |
| CheckItemConnectByVendor | CHK_ITM_CONN_BY_VNDR | NUMBER(1,0) | لا | نعم | لا | التحقق من ربط الصنف بالمورد |
| UseAPOtherCharge | USE_AP_OTHR_CHRG | NUMBER | لا | نعم | لا | استخدام مصاريف أخرى في AP |
| ShowItemBarcodeAP | SHOW_ITM_BARCODE_AP | NUMBER(1,0) | لا | نعم | لا | عرض باركود الصنف في AP |
| BillDueDateLastMonth | BILL_DUE_DATE_LAST_MNTH | NUMBER(1,0) | لا | نعم | لا | تاريخ استحقاق الفاتورة نهاية الشهر |
| ShowAddFieldDetailCount | SHW_ADD_FLD_DTL_CNT | NUMBER(2,0) | لا | نعم | لا | عدد الحقول الإضافية |
| ShowCostInPreqOrder | SHW_CST_IN_PRQST_ORDR | NUMBER(1,0) | لا | نعم | لا | عرض التكلفة في طلب الشراء |
| UseReturnBillRequest | USE_RT_BILL_RQST | NUMBER(1,0) | لا | نعم | لا | استخدام طلب فاتورة المرتجع |
| UseLocalGRNMoreOne | USE_LOC_GRN_MORE_ONE | NUMBER(1,0) | لا | نعم | لا | استخدام أكثر من GRN محلي |
| RequestVendorBillNo | REQUEST_VNDR_BILL_NO | NUMBER(1,0) | لا | نعم | لا | طلب رقم فاتورة المورد |
| UseAssignToUser | USE_ASSGN_TO_USR | NUMBER(1,0) | لا | نعم | لا | الربط بالمستخدم |
| ShowFreeQtyProfit | SHOW_FREE_QTY_PROFT | NUMBER(1,0) | لا | نعم | لا | عرض ربح الكمية المجانية |
| CalcDiscountWithoutItemDiscount | CLC_DISC_WITHOUT_ITM_DISC | NUMBER(1,0) | لا | نعم | لا | احتساب الخصم بدون خصم الصنف |
| ShowTotalItemPriceByNet | SHW_TOT_ITM_PRICE_BY_NET | NUMBER(1,0) | لا | نعم | لا | عرض سعر الصنف الصافي فقط |
| RequiredContainerNo | RQRD_CNTNR_NO | NUMBER(1,0) | لا | نعم | لا | رقم الحاوية إلزامي |
| NotCheckLCBalanceInBillCost | NOT_CHK_LC_BLNC_IN_BILL_CST | NUMBER(1,0) | لا | نعم | لا | عدم التحقق من رصيد خط الاعتماد في التكلفة |
| ConnectPOPIType | CONN_PO_PI_TYP | NUMBER(1,0) | لا | نعم | لا | ربط نوع أمر الشراء بنوع الفاتورة |
| UseVendorVATType | USE_VNDR_VAT_TYPE | NUMBER(1,0) | لا | نعم | لا | تفعيل نوع ضريبة المورد |
| PriceVendorItemUnitType | PRICE_VNDR_ITM_UNT_TYP | NUMBER(1,0) | لا | نعم | لا | نوع سعر وحدة الصنف للمورد |
| AllowUpdateVendorInBill | ALLW_UPDT_VNDR_INBILL | NUMBER | لا | نعم | لا | السماح بتحديث المورد في الفاتورة |
| AutoUpdateVendorPrice | AUTO_UPDATE_VNDR_PRICE | NUMBER(1,0) | لا | نعم | لا | تحديث سعر المورد تلقائيًا |
| UseReturnWithoutPIBillNo | USE_RET_WITHOUT_PI_BILLNO | NUMBER(1,0) | لا | نعم | لا | السماح بالإرجاع بدون رقم فاتورة الشراء |
| APItemChargeCalcType | AP_ITEM_CHRG_CALC_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع احتساب رسوم الصنف في AP |
| APItemChargeWarehouseType | AP_ITEM_CHRG_WCODE_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع مستودع رسوم الصنف |
| APItemChargeUsePeriod | AP_ITEM_CHRG_USE_PRD | NUMBER(1,0) | لا | نعم | لا | استخدام فترة رسوم الصنف |
| AllowRePurchaseSerialNo | ALLWD_RE_PUR_SERIALNO | NUMBER(1,0) | لا | نعم | لا | السماح بإعادة الشراء بنفس الرقم التسلسلي |
| UseShippingList | USE_SHPNG_LST | NUMBER | لا | نعم | لا | استخدام قائمة الشحن |
| APDiscountPeriod | AP_DISC_PRD | NUMBER | لا | نعم | لا | فترة الخصم في AP |
| AddedUserId | AD_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي أضاف السطر |
| AddedDate | AD_DATE | DATE | لا | نعم | لا | تاريخ الإضافة |
| UpdatedUserId | UP_U_ID | NUMBER(5,0) | لا | نعم | لا | المستخدم الذي عدل السطر |
| UpdatedDate | UP_DATE | DATE | لا | نعم | لا | تاريخ آخر تعديل |
| UpdateQtyPromotionSale | UPDATE_QT_PRM_SAL | NUMBER | لا | نعم | لا | تحديث كمية العرض الترويجي |
| UpdateCount | UP_CNT | NUMBER(10,0) | لا | نعم | لا | عدد مرات التحديث |
| ReportPriority | PR_REP | NUMBER(10,0) | لا | نعم | لا | أولوية التقرير |
| AddedTerminal | AD_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM | VARCHAR2(50) | لا | نعم | لا | اسم الجهاز عند التعديل |
| APItemChargeCalcAmountType | AP_ITEM_CHRG_CALC_AMT_TYPE | NUMBER(1,0) | لا | نعم | لا | نوع احتساب مبلغ رسوم الصنف |
| UsePostTaxDue | USE_POST_TAX_DUE | NUMBER(1,0) | لا | نعم | لا | تفعيل ترحيل الضريبة المستحقة |
| UseVendorPriceList | USE_VNDR_PRICE_LST | NUMBER | لا | نعم | لا | استخدام قائمة أسعار المورد |
| ShowItemSize | SHW_ITEM_SIZE | NUMBER | لا | نعم | لا | عرض حجم الصنف |
| ConnectVendorPricePO | CONN_VNDR_PRICE_PO | NUMBER | لا | نعم | لا | ربط سعر المورد بأمر الشراء |
| AddForceInvoicePI | ADD_FRC_INVOICE_PI | NUMBER(1,0) | لا | نعم | لا | إضافة فاتورة إجبارية |
| UseArabicSearchItemCode | USE_ARBIC_SRCH_ICODE | NUMBER(1,0) | لا | نعم | لا | البحث عن كود الصنف بالعربي |
| UseSalePriceAsPurchasePrice | USE_SAL_PRICE_AS_PUR_PRICE | NUMBER(1,0) | لا | نعم | لا | استخدام سعر البيع كسعر شراء |
| LevelNoPrice | LVL_NO_PRICE | NUMBER(3,0) | لا | نعم | لا | رقم مستوى السعر |
| UseVendorClaim | USE_VNDR_CLAIM | NUMBER(1,0) | لا | نعم | لا | استخدام مطالبات المورد |
| ReturnPIFreeQtyPercent | RET_PI_FREE_QTY_PER | NUMBER(1,0) | لا | نعم | لا | نسبة الكمية المجانية في مرتجع الشراء |
| UsePICalcTaxFreeQty | USE_PI_CLC_TAX_FREE_QTY | NUMBER(1,0) | لا | نعم | لا | احتساب الكمية المعفاة من الضريبة في PI |
| AddItemPriceFromPO | ADD_ITM_PRICE_FROM_PO | NUMBER(1,0) | لا | نعم | لا | إضافة سعر الصنف من أمر الشراء |
| UseDelivered | USE_DELIVERD | NUMBER(1,0) | لا | نعم | لا | تفعيل خاصية التسليم |
| ShowItemCodeVendorAP | SHOW_ICODE_VNDR_AP | NUMBER(1,0) | لا | نعم | لا | عرض كود الصنف في AP |

---
