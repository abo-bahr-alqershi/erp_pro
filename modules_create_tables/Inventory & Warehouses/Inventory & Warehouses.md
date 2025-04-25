# 2. المخزون والمستودعات (Inventory & Warehouses)
> جميع جداول قسم المخزون والمستودعات مع جميع الحقول.  
> كل حقل بالاسم الجديد (مقترح)، الاسم القديم، نوع الحقل، إجباري/يقبل فارغ/تلقائي/قيمة افتراضية، مع شرح مفصل بالعربي عن وظيفة الحقل ودوره.

---

## WAREHOUSE_DETAILS  
| الاسم الجديد           | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل |
|-----------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-----------|
| WarehouseCode         | W_CODE             | NUMBER(10,0)    | نعم    | لا        | لا     |                   | الرقم التعريفي للمستودع. |
| WarehouseName         | W_NAME             | VARCHAR2(100)   | نعم    | لا        | لا     |                   | اسم المستودع بالعربي. |
| WarehouseEName        | W_E_NAME           | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم المستودع بالإنجليزي. |
| Location              | LOCATION           | VARCHAR2(100)   | لا     | نعم       | لا     |                   | العنوان الجغرافي أو الإداري للمستودع. |
| TelNo                 | TEL_NO             | VARCHAR2(30)    | لا     | نعم       | لا     |                   | رقم هاتف المستودع. |
| Inactive              | INACTIVE           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يحدد إن كان المستودع غير نشط (1=نعم). |
| WarehouseKeeper       | WH_KEEPER          | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم أمين المستودع. |
| WarehouseGroupCode    | WHG_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     |                   | كود مجموعة المستودعات التابع لها المستودع. |
| WarehouseType         | W_TYPE             | NUMBER(1,0)     | لا     | نعم       | لا     |                   | نوع المستودع (رئيسي/فرعي/خدمي). |
| UseBOE                | USE_BOE            | NUMBER(1,0)     | لا     | نعم       | لا     |                   | استخدام إذن التخزين (1=يستخدم). |
| NoSale                | NO_SALE            | NUMBER(1,0)     | لا     | نعم       | لا     |                   | يمنع البيع من المستودع (1=نعم). |
| CheckAvailableQty     | CHK_AVL_QTY        | NUMBER(1,0)     | لا     | نعم       | لا     |                   | التحقق من الكمية المتاحة قبل العمليات. |
| TransferAccountCode   | TR_A_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود الحساب المستخدم في التحويلات. |
| CostCenterCode        | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     |                   | مركز التكلفة الافتراضي للمستودع. |
| CountryNo             | CNTRY_NO           | NUMBER(4,0)     | لا     | نعم       | لا     |                   | رقم الدولة التي يتبع لها المستودع. |
| GPS                   | GPS                | VARCHAR2(100)   | لا     | نعم       | لا     |                   | إحداثيات GPS الخاصة بالموقع. |
| ProvinceNo            | PROV_NO            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحافظة أو المنطقة. |
| CityNo                | CITY_NO            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المدينة. |
| RegionCode            | R_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المنطقة أو الحي. |
| WarehouseSerial       | W_SER              | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم تسلسلي داخلي للمستودع. |
| ConnectedBranchNo     | CONN_BRN_NO        | NUMBER(6,0)     | لا     | نعم       | لا     |                   | رقم الفرع المتصل بالمستودع. |
| ActivityNo            | ACTIVITY_NO        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم النشاط المرتبط بالمستودع. |
| MainWarehouseCode     | MAIN_WCODE         | NUMBER          | لا     | نعم       | لا     |                   | كود المستودع الرئيسي (إذا كان فرعيًا). |
| DBLinkName            | DB_LINK_NAME       | VARCHAR2(250)   | لا     | نعم       | لا     |                   | اسم الربط بقاعدة بيانات أخرى (إن وجد). |
| UseAutoRecWHTrans     | USE_AUTO_REC_WHTRNS| NUMBER(1,0)     | لا     | نعم       | لا     |                   | استقبال التحويلات تلقائيا (1=نعم). |
| PriceLevel            | PRICE_LVL          | NUMBER(3,0)     | لا     | نعم       | لا     |                   | مستوى التسعير الافتراضي للمستودع. |
| ServiceFlag           | SRVC_FLG           | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم يستخدم إن كان المستودع خدمي. |
| AddedByUserId         | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف السطر. |
| AddedDate             | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة. |
| UpdatedByUserId       | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل السطر. |
| UpdatedDate           | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل. |
| UpdateCount           | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل. |
| ReportPriority        | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية الظهور في التقارير. |
| AddedTerminal         | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة. |
| UpdatedTerminal       | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل. |
| Latitude              | LATITUDE           | VARCHAR2(100)   | لا     | نعم       | لا     |                   | دائرة العرض للمستودع (إحداثيات). |
| Longitude             | LONGITUDE          | VARCHAR2(100)   | لا     | نعم       | لا     |                   | خط الطول للمستودع (إحداثيات). |
| GLNCode               | GLN_CODE           | VARCHAR2(500)   | لا     | نعم       | لا     |                   | رقم الموقع العالمي للمستودع. |
| WarehouseAddress      | W_L_ADDRS          | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | العنوان المحلي بالتفصيل. |
| WarehouseFAddress     | W_F_ADDRS          | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | العنوان الأجنبي بالتفصيل. |
| ShowWarehouseType     | SHO_WC_TYP         | NUMBER(1,0)     | لا     | نعم       | لا     |                   | نوع عرض المستودع. |
| ProjectNo             | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم المشروع المرتبط. |
| ActivityNoStr         | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     |                   | رقم النشاط (سلسلة). |
| SODescription         | SO_DSC             | VARCHAR2(1000)  | لا     | نعم       | لا     |                   | وصف خاص للمستودع. |
| SOType                | SO_TYPE            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع أمر البيع الافتراضي للمستودع. |
| SCNo                  | SC_NO              | NUMBER(3,0)     | لا     | نعم       | لا     |                   | رقم سلسلة المستودع. |
| BankNo                | BANK_NO            | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم البنك الافتراضي للمستودع. |
| ReportCode            | REP_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     |                   | كود التقرير الخاص بالمستودع. |
| CollectorNo           | COL_NO             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | رقم المحصل الافتراضي. |
| CustomerCode          | C_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود العميل الافتراضي. |
| CalcTypeNoTax         | CLC_TYP_NO_TAX     | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع الحساب الضريبي الافتراضي. |
| CustomerGroupCode     | C_GROUP_CODE       | NUMBER(10,0)    | لا     | نعم       | لا     |                   | كود مجموعة العملاء الافتراضية. |
| ShowSystemType        | SHO_SYS_TYP        | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع النظام المعروض. |
| UsePropFlag           | USE_PRPRTN_FLG     | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم استخدام النسبية. |
| UseBinMovement        | USE_BIN_MOV        | NUMBER(1,0)     | لا     | نعم       | لا     |                   | استخدام تحريك المواقع (bins). |
| WarehouseCostLimit    | WH_CST_LMT         | NUMBER(38,0)    | لا     | نعم       | لا     |                   | الحد الأعلى لتكلفة المخزون. |
| ForDamagedItem        | FOR_DMGD_ITM       | NUMBER(1,0)     | لا     | نعم       | لا     |                   | مخصص للأصناف التالفة. |

---

## WAREHOUSE_GROUP  
| الاسم الجديد           | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل |
|-----------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-----------|
| WarehouseGroupCode    | WHG_CODE           | NUMBER(10,0)    | نعم    | لا        | لا     |                   | رقم مجموعة المستودعات. |
| WarehouseGroupName    | WHG_A_NAME         | VARCHAR2(100)   | نعم    | لا        | لا     |                   | اسم المجموعة بالعربي. |
| WarehouseGroupEName   | WHG_E_NAME         | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم المجموعة بالإنجليزي. |
| AddedByUserId         | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي أضاف المجموعة. |
| AddedDate             | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة. |
| UpdatedByUserId       | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم المستخدم الذي عدل المجموعة. |
| UpdatedDate           | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل. |
| UpdateCount           | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل. |
| ReportPriority        | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير. |
| AddedTerminal         | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة. |
| UpdatedTerminal       | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل. |

---

## IAS_ITM_MST  
| الاسم الجديد           | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل |
|-----------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-----------|
| ItemCode              | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     |                   | كود الصنف الفريد. |
| ItemName              | I_NAME             | VARCHAR2(100)   | نعم    | لا        | لا     |                   | اسم الصنف بالعربي. |
| ItemEName             | I_E_NAME           | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم الصنف بالإنجليزي. |
| GroupCode             | G_CODE             | VARCHAR2(10)    | نعم    | لا        | لا     |                   | كود مجموعة الصنف. |
| GroupClassCode        | GRP_CLASS_CODE     | VARCHAR2(20)    | لا     | نعم       | لا     |                   | كود تصنيف المجموعة التابع لها الصنف. |
| ManagerCode           | MNG_CODE           | VARCHAR2(10)    | لا     | نعم       | لا     |                   | كود المدير أو المسؤول عن الصنف. |
| SubGroupCode          | SUBG_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     |                   | كود المجموعة الفرعية. |
| ItemSize              | ITEM_SIZE          | NUMBER          | لا     | نعم       | لا     |                   | حجم الصنف (رقمي). |
| ItemType              | ITEM_TYPE          | NUMBER(5,0)     | لا     | نعم       | لا     |                   | نوع الصنف (خامة، منتج نهائي...). |
| PrimaryCost           | PRIMARY_COST       | NUMBER          | لا     | نعم       | لا     |                   | تكلفة الشراء الأساسية. |


---

## IAS_GRP_ITM_LVL
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                      |
|---------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-------------------------------------------------|
| GroupCode           | GRP_CODE           | VARCHAR2(20)    | نعم    | لا        | لا     |                   | كود المجموعة الرئيسي للأصناف.                   |
| GroupLName          | GRP_L_NAME         | VARCHAR2(100)   | نعم    | لا        | لا     |                   | اسم المجموعة بالعربي.                          |
| GroupFName          | GRP_F_NAME         | VARCHAR2(100)   | لا     | نعم       | لا     |                   | اسم المجموعة بالإنجليزي.                       |
| GroupCodeParent     | GRP_CODE_PARENT    | VARCHAR2(20)    | لا     | نعم       | لا     |                   | كود المجموعة الأب.                             |
| AffectedByTrans     | AFFECTED_BY_TRANS  | NUMBER(1,0)     | لا     | نعم       | لا     |                   | متأثر بالحركات (1=نعم).                         |
| GCode               | G_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود المجموعة المرتبط.                           |
| ActivityNo          | ACTIVITY_NO        | NUMBER(5,0)     | لا     | نعم       | لا     |                   | رقم النشاط المرتبط.                             |
| PricePercentFromPrimary | DFLT_PRC_PRCNT_FROM_PRIM_COST | NUMBER | لا | نعم | لا |     | النسبة الافتراضية للسعر من التكلفة الأساسية.   |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر.                       |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة.                                  |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر.                        |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل.                                |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل.                               |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير.                                |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة.                         |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل.                         |

---

## IAS_GRP_ITM_LVL_TREE
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                      |
|---------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-------------------------------------------------|
| GroupCode           | GRP_CODE           | VARCHAR2(20)    | نعم    | لا        | لا     |                   | كود المجموعة الرئيسي للأصناف.                   |
| GroupCodeTree       | GRP_CODE_TREE      | VARCHAR2(20)    | نعم    | لا        | لا     |                   | كود تسلسل الشجرة للمجموعة.                      |
| GroupName           | GRP_NAME           | VARCHAR2(60)    | نعم    | لا        | لا     |                   | اسم المجموعة.                                   |
| GroupLevel          | GRP_LVL            | NUMBER(5,0)     | نعم    | لا        | لا     |                   | مستوى المجموعة في الشجرة.                       |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل.                               |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير.                                |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة.                         |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل.                         |

---

## IAS_ITM_LVL_MEASURE
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                      |
|---------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-------------------------------------------------|
| ItemLevelNo         | ILEV_NO            | NUMBER(3,0)     | نعم    | لا        | لا     |                   | رقم مستوى الصنف.                               |
| FlagValue           | FLG_VALUE          | NUMBER          | نعم    | لا        | لا     |                   | قيمة العلم (تحدد الخاصية).                      |
| FlagCode            | FLG_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     |                   | كود العلم.                                      |
| CompType            | COMP_TYPE          | NUMBER          | لا     | نعم       | لا     |                   | نوع المكون/الخاصية.                             |
| ArgType             | ARG_TYPE           | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع البراميتر.                                  |
| FromAmountPercent   | FROM_AMT_PER       | NUMBER          | لا     | نعم       | لا     |                   | من نسبة المبلغ.                                 |
| ToAmountPercent     | TO_AMT_PER         | NUMBER          | لا     | نعم       | لا     |                   | إلى نسبة المبلغ.                                |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر.                       |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة.                                  |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر.                        |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل.                                |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل.                               |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير.                                |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة.                         |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل.                         |

---

## IAS_ITM_LVL_MEASURE_DTL
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                      |
|---------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-------------------------------------------------|
| FlagValue           | FLG_VALUE          | NUMBER          | نعم    | لا        | لا     |                   | قيمة العلم (تحدد الخاصية).                      |
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     |                   | رقم المستند المرتبط.                            |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | نعم    | لا        | لا     |                   | الرقم التسلسلي للمستند.                         |
| Used                | USED               | NUMBER(1,0)     | لا     | نعم       | لا     |                   | تم استخدام الخاصية أم لا.                        |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر.                       |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة.                                  |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر.                        |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل.                                |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل.                               |

---

## MEASUREMENT
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | القيمة الافتراضية | شرح الحقل                                      |
|---------------------|--------------------|-----------------|--------|-----------|--------|-------------------|-------------------------------------------------|
| MeasureCode         | MEASURE_CODE       | VARCHAR2(10)    | نعم    | لا        | لا     |                   | كود وحدة القياس.                               |
| Measure             | MEASURE            | VARCHAR2(30)    | نعم    | لا        | لا     |                   | اسم وحدة القياس بالعربي.                       |
| MeasureFName        | MEASURE_F_NM       | VARCHAR2(30)    | لا     | نعم       | لا     |                   | اسم وحدة القياس بالإنجليزي.                    |
| MeasureType         | MEASURE_TYPE       | NUMBER(1,0)     | لا     | نعم       | لا     |                   | نوع وحدة القياس.                               |
| MeasureWtType       | MEASURE_WT_TYPE    | NUMBER(2,0)     | لا     | نعم       | لا     |                   | نوع الوزن إن وجدت.                             |
| MeasureWtConn       | MEASURE_WT_CONN    | NUMBER(1,0)     | لا     | نعم       | لا     |                   | علم ارتباط الوزن.                              |
| DefaultSize         | DFLT_SIZE          | NUMBER(10,0)    | لا     | نعم       | لا     |                   | الحجم الافتراضي.                               |
| AllowUpdate         | ALLOW_UPD          | NUMBER(1,0)     | لا     | نعم       | لا     |                   | السماح بالتعديل.                               |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي أضاف السطر.                       |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ الإضافة.                                  |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     |                   | المستخدم الذي عدل السطر.                        |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     |                   | تاريخ آخر تعديل.                                |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | عدد مرات التعديل.                               |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     |                   | أولوية التقرير.                                |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند الإضافة.                         |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     |                   | اسم الجهاز عند التعديل.                         |
| MeasureCodeGB       | MEASURE_CODE_GB    | VARCHAR2(10)    | لا     | نعم       | لا     |                   | كود عام لوحدة القياس.                           |

---


## ItemBatch (**IAS_ITM_BATCH**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode           | I_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ColNo1             | COL_NO1             | NUMBER(1,0)     | لا     | نعم       | لا     | رقم العمود الأول التصنيفي |
| BatchDescNo1       | BATCH_DESC_NO1      | VARCHAR2(15)    | لا     | نعم       | لا     | وصف تشغيلي/دفعة فرعية 1 |
| ColNo2             | COL_NO2             | NUMBER(1,0)     | لا     | نعم       | لا     | رقم العمود الثاني التصنيفي |
| BatchDescNo2       | BATCH_DESC_NO2      | VARCHAR2(15)    | لا     | نعم       | لا     | وصف تشغيلي/دفعة فرعية 2 |
| ColNo3             | COL_NO3             | NUMBER(1,0)     | لا     | نعم       | لا     | رقم العمود الثالث التصنيفي |
| BatchDescNo3       | BATCH_DESC_NO3      | VARCHAR2(15)    | لا     | نعم       | لا     | وصف تشغيلي/دفعة فرعية 3 |
| ColNo4             | COL_NO4             | NUMBER(1,0)     | لا     | نعم       | لا     | رقم العمود الرابع التصنيفي |
| BatchDescNo4       | BATCH_DESC_NO4      | VARCHAR2(15)    | لا     | نعم       | لا     | وصف تشغيلي/دفعة فرعية 4 |
| ColNo5             | COL_NO5             | NUMBER(1,0)     | لا     | نعم       | لا     | رقم العمود الخامس التصنيفي |
| BatchDescNo5       | BATCH_DESC_NO5      | VARCHAR2(15)    | لا     | نعم       | لا     | وصف تشغيلي/دفعة فرعية 5 |
| BatchNo            | BATCH_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الدفعة/التشغيلة الرئيسي |
| AddedByUserId      | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedByUserId    | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| CompanyNo          | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ReportPriority     | PR_REP              | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## ItemBarcode (**IAS_ITM_UNT_BARCODE**)
| الاسم الجديد     | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| ItemCode        | I_CODE          | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemUnit        | ITM_UNT         | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف (مثلاً: علبة، كرتون) |
| PackSize        | P_SIZE          | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| Barcode         | BARCODE         | VARCHAR2(30)    | لا     | نعم       | لا     | رقم/رمز الباركود |
| BatchNo         | BATCH_NO        | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الدفعة المرتبط بالباركود |
| ExpireDate      | EXPIRE_DATE     | DATE            | لا     | نعم       | لا     | تاريخ الانتهاء للباركود/الدفعة |
| NoSale          | NO_SALE         | NUMBER(1,0)     | لا     | نعم       | لا     | يمنع البيع بهذه الوحدة (1=نعم) |
| NoPrint         | NO_PRINT        | NUMBER(1,0)     | لا     | نعم       | لا     | يمنع طباعة الباركود (1=نعم) |
| FlexNo          | FLEX_NO         | NUMBER          | لا     | نعم       | لا     | رقم مرن لتعريف إضافي |
| AddedByUserId   | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي أضاف السطر |
| AddedDate       | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedByUserId | UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي عدل السطر |
| UpdatedDate     | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount     | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| ReportPriority  | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal   | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة |
| UpdatedTerminal | UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل |
| DealWithPurchaseFlag | DEAL_WITH_PRCHS_FLG | NUMBER(1,0) | لا | نعم | لا | علم خاص بالتعامل مع المشتريات |
| BarcodeLDesc    | BARCODE_L_DSC   | VARCHAR2(250)   | لا     | نعم       | لا     | وصف طويل للباركود |
| BarcodeFDesc    | BARCODE_F_DSC   | VARCHAR2(250)   | لا     | نعم       | لا     | وصف أجنبي للباركود |
| MainBarcode     | MAIN_BARCODE    | NUMBER(1,0)     | لا     | نعم       | لا     | هل هو الباركود الرئيسي (1=نعم) |

---

## ItemPrice (**IAS_ITEM_PRICE**)
| الاسم الجديد    | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| LevelNo        | LEV_NO          | NUMBER(3,0)     | نعم    | لا        | لا     | رقم مستوى التسعير |
| ItemCode       | I_CODE          | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemUnit       | ITM_UNT         | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize       | P_SIZE          | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| WarehouseCode  | W_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط بالسعر |
| FromQty        | FROM_QTY        | NUMBER(15,0)    | لا     | نعم       | لا     | الكمية الابتدائية للسعر |
| ToQty          | TO_QTY          | NUMBER(15,0)    | لا     | نعم       | لا     | الكمية النهائية للسعر |
| ItemPrice      | I_PRICE         | NUMBER(24,9)    | نعم    | لا        | لا     | سعر الصنف |
| ImportXLS      | IMP_XLS         | NUMBER(1,0)     | لا     | نعم       | لا     | علم الاستيراد من إكسل |
| AddedByUserId  | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate      | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedByUserId| UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate    | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| BranchNo       | BRN_NO          | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| UpdateCount    | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| ReportPriority | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal  | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة |
| UpdatedTerminal| UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل |
| DoctorPrice    | DCTR_PRICE      | NUMBER          | لا     | نعم       | لا     | سعر خاص للأطباء |
| MinItemPrice   | MIN_ITM_PRICE   | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للسعر |
| MaxItemPrice   | MAX_ITM_PRICE   | NUMBER          | لا     | نعم       | لا     | الحد الأعلى للسعر |
| ExpireDate     | EXPIRE_DATE     | DATE            | نعم    | لا        | لا     | تاريخ انتهاء السعر |
| BatchNo        | BATCH_NO        | VARCHAR2(30)    | نعم    | لا        | لا     | رقم الدفعة المرتبطة بالسعر |

---

## ItemPriceHistory (**IAS_ITEM_PRICE_HISTORY**)
| الاسم الجديد    | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| AuditNo        | AUD_NO          | NUMBER(38,0)    | نعم    | لا        | لا     | رقم السجل التاريخي |
| AuditType      | AUD_TYPE        | NUMBER(1,0)     | لا     | نعم       | لا     | نوع السجل (إضافة/تعديل) |
| LevelNo        | LEV_NO          | NUMBER(3,0)     | نعم    | لا        | لا     | رقم مستوى التسعير |
| ItemCode       | I_CODE          | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemUnit       | ITM_UNT         | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف |
| PackSize       | P_SIZE          | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| WarehouseCode  | W_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| FromQty        | FROM_QTY        | NUMBER(15,0)    | لا     | نعم       | لا     | الكمية من |
| ToQty          | TO_QTY          | NUMBER(15,0)    | لا     | نعم       | لا     | الكمية إلى |
| ItemPrice      | I_PRICE         | NUMBER(24,9)    | نعم    | لا        | لا     | سعر الصنف الجديد |
| PrevItemPrice  | PREV_I_PRICE    | NUMBER          | لا     | نعم       | لا     | السعر السابق |
| AddedByUserId  | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate      | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedByUserId| UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate    | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| AuditUserId    | AUD_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي راجع التعديل |
| AuditDate      | AUD_DATE        | DATE            | لا     | نعم       | لا     | تاريخ التدقيق |
| DocNo          | DOC_NO          | NUMBER(38,0)    | لا     | نعم       | لا     | رقم المستند |
| DocDate        | DOC_DATE        | DATE            | لا     | نعم       | لا     | تاريخ المستند |
| BranchNo       | BRN_NO          | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| UpdateCount    | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| ReportPriority | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal  | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة |
| UpdatedTerminal| UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل |
| ExpireDate     | EXPIRE_DATE     | DATE            | نعم    | لا        | لا     | تاريخ انتهاء السعر |
| BatchNo        | BATCH_NO        | VARCHAR2(30)    | نعم    | لا        | لا     | رقم الدفعة |
| MinItemPrice   | MIN_ITM_PRICE   | NUMBER          | لا     | نعم       | لا     | الحد الأدنى للسعر الجديد |
| MaxItemPrice   | MAX_ITM_PRICE   | NUMBER          | لا     | نعم       | لا     | الحد الأعلى للسعر الجديد |
| PrevMaxItemPrice | PREV_MAX_ITM_PRICE | NUMBER      | لا     | نعم       | لا     | الحد الأعلى السابق للسعر |
| PrevMinItemPrice | PREV_MIN_ITM_PRICE | NUMBER      | لا     | نعم       | لا     | الحد الأدنى السابق للسعر |

---

## PricingLevel (**IAS_PRICING_LEVELS**)
| الاسم الجديد    | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| LevelNo        | LEV_NO          | NUMBER(3,0)     | نعم    | لا        | لا     | رقم مستوى التسعير. |
| LevelAName     | LEV_A_NAME      | VARCHAR2(60)    | نعم    | لا        | لا     | اسم المستوى بالعربي. |
| LevelEName     | LEV_E_NAME      | VARCHAR2(60)    | لا     | نعم       | لا     | اسم المستوى بالإنجليزي. |
| CurrencyCode   | A_CY            | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة. |
| LevelLow       | LEV_LOW         | NUMBER(1,0)     | لا     | نعم       | لا     | أقل مستوى. |
| LevelHigh      | LEV_HIGH        | NUMBER(1,0)     | لا     | نعم       | لا     | أعلى مستوى. |
| LevelDefault   | LEV_DEFLT       | NUMBER(1,0)     | لا     | نعم       | لا     | المستوى الافتراضي. |
| BillDocType    | BILL_DOC_TYPE   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة المرتبط. |
| PercentPriceFromCost | PRCNT_PRICE_FROM_COST | NUMBER | لا   | نعم       | لا     | نسبة السعر من التكلفة. |
| DecNo          | DEC_NO          | NUMBER(2,0)     | لا     | نعم       | لا     | عدد الكسور العشرية المقبولة في السعر. |
| CostType       | CST_TYPE        | NUMBER(1,0)     | لا     | نعم       | لا     | نوع التكلفة (أساسي/نهائي). |
| CostPercent    | CST_PRCNT       | NUMBER          | لا     | نعم       | لا     | نسبة التكلفة. |
| AddedByUserId  | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي أضاف السطر. |
| AddedDate      | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId| UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate    | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| UpdateCount    | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal  | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal| UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| Inactive       | INACTIVE        | NUMBER(1,0)     | لا     | نعم       | لا     | علم التعطيل (1=معطل). |
| InactiveReason | INACTIVE_RES    | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل. |
| InactiveDate   | INACTIVE_DATE   | DATE            | لا     | نعم       | لا     | تاريخ التعطيل. |
| InactiveUserId | INACTIVE_U_ID   | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل المستوى. |


---

## ItemMovement (**ITEM_MOVEMENT**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocType             | DOC_TYPE           | NUMBER(5,0)     | نعم    | لا        | لا     | نوع المستند (فاتورة، مرتجع، تحويل، ...). |
| BillDocType         | BILL_DOC_TYPE      | NUMBER(5,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة المتعلق بالحركة. |
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند الرئيسي للحركة. |
| ItemCode            | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف. |
| ItemQty             | I_QTY              | NUMBER          | لا     | نعم       | لا     | الكمية المنقولة أو المدخلة أو المخرجة. |
| FreeQty             | FREE_QTY           | NUMBER          | لا     | نعم       | لا     | كمية مجانية ضمن الحركة. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| PackSize            | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة. |
| PackQty             | P_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العبوة. |
| PartialFreeQty      | PF_QTY             | NUMBER          | لا     | نعم       | لا     | كمية مجانية جزئية. |
| ItemDate            | I_DATE             | DATE            | نعم    | لا        | لا     | تاريخ الحركة. |
| ItemCost            | I_COST             | NUMBER          | لا     | نعم       | لا     | تكلفة الصنف. |
| WarehouseCode       | W_CODE             | NUMBER(10,0)    | نعم    | لا        | لا     | رمز المستودع. |
| WarehouseGroupCode  | WHG_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | مجموعة المستودع. |
| StockCost           | STK_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون. |
| VatAmount           | VAT_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ ضريبة القيمة المضافة. |
| DiscountAmount      | DIS_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم على الحركة. |
| CurrencyCode        | A_CY               | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة. |
| AccountRate         | AC_RATE            | NUMBER          | لا     | نعم       | لا     | سعر الصرف. |
| StockRate           | STK_RATE           | NUMBER          | لا     | نعم       | لا     | سعر المخزون. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| AccountDtlCode      | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     | رمز تفاصيل الحساب. |
| AccountDtlType      | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب. |
| CustomerCode        | C_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل. |
| VendorCode          | V_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد. |
| Description         | A_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الحركة. |
| GRNo                | GR_NO              | NUMBER(15,0)    | لا     | نعم       | لا     | رقم أمر التوريد. |
| ExpireDate          | EXPIRE_DATE        | DATE            | نعم    | لا        | لا     | تاريخ انتهاء الدفعة. |
| BatchNo             | BATCH_NO           | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة. |
| RecordNo            | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي. |
| Serial              | SERIAL             | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي إضافي للعنصر. |
| RefNo               | REF_NO             | VARCHAR2(30)    | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للمستند. |
| OutNo               | OUT_NO             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند الصرف المرتبط (تحويلات). |
| OutGRSerial         | OUT_GR_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي لأمر التوريد المرتبط. |
| DocSequence         | DOC_SEQUENCE       | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر بالمستند. |
| Barcode             | BARCODE            | VARCHAR2(30)    | لا     | نعم       | لا     | الباركود المستخدم في الحركة. |
| ReturnType          | RT_TYPE            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المرتجع (إن وجد). |
| InOut               | IN_OUT             | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الحركة (1=إدخال، 2=إخراج، ...). |
| ExternalPost        | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| ItemLength          | I_LENGTH           | NUMBER          | لا     | نعم       | لا     | طول العنصر. |
| ItemWidth           | I_WIDTH            | NUMBER          | لا     | نعم       | لا     | عرض العنصر. |
| ItemHeight          | I_HEIGHT           | NUMBER          | لا     | نعم       | لا     | ارتفاع العنصر. |
| ItemNumber          | I_NUMBER           | NUMBER          | لا     | نعم       | لا     | رقم العنصر الإضافي. |
| WeightQty           | WT_QTY             | NUMBER          | لا     | نعم       | لا     | كمية الوزن. |
| WeightUnit          | WT_UNT             | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن. |
| ArgumentNo          | ARGMNT_NO          | NUMBER          | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| FreeType            | FREE_TYP           | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الكمية المجانية. |
| LevelNo             | LEV_NO             | NUMBER(3,0)     | لا     | نعم       | لا     | رقم مستوى التسعير المستخدم. |
| ItemPriceVat        | I_PRICE_VAT        | NUMBER          | لا     | نعم       | لا     | سعر العنصر بعد الضريبة. |
| EmployeeNo          | EMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف المرتبط بالحركة. |
| DiscountAmountMasterVat | DIS_AMT_MST_VAT | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة. |
| DiscountPercent     | DIS_PER            | NUMBER          | لا     | نعم       | لا     | نسبة الخصم. |
| DiscountAmountDetail| DIS_AMT_DTL        | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي. |
| DiscountAmountDetailVat | DIS_AMT_DTL_VAT | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي بعد الضريبة. |
| DiscountPercent2    | DIS_PER2           | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية. |
| DiscountAmountDetail2 | DIS_AMT_DTL2      | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي تفصيلي. |
| DiscountAmountDetail2Vat | DIS_AMT_DTL2_VAT | NUMBER        | لا     | نعم       | لا     | مبلغ خصم إضافي تفصيلي بعد الضريبة. |
| DiscountPercent3    | DIS_PER3           | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة. |
| DiscountAmountDetail3 | DIS_AMT_DTL3      | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث. |
| DiscountAmountDetail3Vat | DIS_AMT_DTL3_VAT | NUMBER        | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث بعد الضريبة. |
| OtherAmount         | OTHR_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ إضافي آخر. |
| VatAmountOther      | VAT_AMT_OTHR       | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على الإضافات. |
| VatPercent          | VAT_PER            | NUMBER          | لا     | نعم       | لا     | نسبة ضريبة القيمة المضافة. |
| DiscountAmountMaster| DIS_AMT_MST        | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بدون ضريبة. |


---

## InventoryAdjustment (**STK_ADJUSTMENT**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| StockType           | STK_TYPE           | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المخزون (رئيسي/فرعي/خدمي). |
| AdjustType          | ADJUST_TYPE        | NUMBER(2,0)     | نعم    | لا        | لا     | نوع التسوية (جرد دوري، مفاجئ، ...). |
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مستند التسوية. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| DocDate             | DOC_DATE           | DATE            | لا     | نعم       | لا     | تاريخ المستند. |
| RefNo               | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| StockDesc           | STK_DESC           | VARCHAR2(100)   | لا     | نعم       | لا     | وصف التسوية. |
| AccountCode         | A_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي المرتبط. |
| VendorCode          | V_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد. |
| CurrencyCode        | A_CY               | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة. |
| StockAccRate        | STK_ACC_RATE       | NUMBER          | لا     | نعم       | لا     | سعر صرف التسوية. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع المرتبط. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| StockPost           | STK_POST           | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل التسوية (1=نعم). |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| Hung                | HUNG               | NUMBER(1,0)     | لا     | نعم       | لا     | تسوية معلقة (1=نعم). |
| FillType            | FILL_TYPE          | NUMBER(2,0)     | لا     | نعم       | لا     | نوع التعبئة (يدوي/آلي). |
| DocBranchNo         | DOC_BRN_NO         | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند. |
| AuditRef            | AUDIT_REF          | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق. |
| AuditRefDesc        | AUDIT_REF_DESC     | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق. |
| AuditRefUserId      | AUDIT_REF_U_ID     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم لمرجع التدقيق. |
| AuditRefDate        | AUDIT_REF_DATE     | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق. |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي أضاف السطر. |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| PostUserId          | POST_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي رحل التسوية. |
| PostDate            | POST_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الترحيل. |
| UnpostUserId        | UNPOST_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم الذي ألغى الترحيل. |
| UnpostDate          | UNPOST_DATE        | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة. |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل. |
| AccountDtlCode      | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     | كود تفاصيل الحساب. |
| AccountDtlType      | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب. |

---

## InventoryAdjustmentDetail (**STK_ADJUSTMENT_DET**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| AdjustType          | ADJUST_TYPE        | NUMBER(2,0)     | نعم    | لا        | لا     | نوع التسوية. |
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مستند التسوية. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للمستند. |
| ItemCode            | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف. |
| WarehouseCode       | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع. |
| ExpireDate          | EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة. |
| BatchNo             | BATCH_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة. |
| Barcode             | BARCODE            | VARCHAR2(30)    | لا     | نعم       | لا     | الباركود المستخدم. |
| WeightedAverage     | WTAVG              | NUMBER          | لا     | نعم       | لا     | المتوسط المرجح للسعر. |
| AvailableQty        | AVL_QTY            | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة. |
| PlusMinus           | PLS_MINS           | NUMBER          | لا     | نعم       | لا     | كمية الزيادة أو النقصان. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| PackSize            | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة. |
| PackQty             | P_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العبوة. |
| UseSerialNo         | USE_SERIALNO       | NUMBER(1,0)     | لا     | نعم       | لا     | علم استخدام الرقم التسلسلي. |
| RecordNo            | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي. |
| DocSequence         | DOC_SEQUENCE       | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر بالمستند. |
| ItemDesc            | ITEM_DESC          | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف. |
| ManualPackQty       | MAN_P_QTY          | NUMBER          | لا     | نعم       | لا     | كمية العبوة المدخلة يدويًا. |
| ManualAvailablePackQty | MAN_AVL_PQTY    | NUMBER          | لا     | نعم       | لا     | كمية العبوة المتاحة يدويًا. |
| PurchaseInvoicePrice | PI_PRICE          | NUMBER          | لا     | نعم       | لا     | سعر الشراء بالفاتورة. |
| PurchaseInvoiceQty  | PI_I_QTY           | NUMBER          | لا     | نعم       | لا     | كمية الشراء بالفاتورة. |
| PreviousInvoiceQty  | PR_I_QTY           | NUMBER          | لا     | نعم       | لا     | كمية الشراء السابقة بالفاتورة. |
| BillDiscount        | BILL_DISC          | NUMBER          | لا     | نعم       | لا     | خصم الفاتورة. |
| DocTypeRef          | DOC_TYPE_REF       | NUMBER(2,0)     | لا     | نعم       | لا     | نوع المستند المرجعي. |
| DocNoRef            | DOC_NO_REF         | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي. |
| DocSerRef           | DOC_SER_REF        | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند المرجعي. |
| VendorCode          | V_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| IncreaseQty         | INC_QTY            | NUMBER          | لا     | نعم       | لا     | كمية الزيادة في التسوية. |
| IncreaseCost        | INC_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة الزيادة في التسوية. |
| BalanceQty          | BAL_QTY            | NUMBER          | لا     | نعم       | لا     | كمية الرصيد النهائي. |
| RealCost            | REAL_COST          | NUMBER          | لا     | نعم       | لا     | التكلفة الحقيقية. |
| ItemLength          | I_LENGTH           | NUMBER          | لا     | نعم       | لا     | طول العنصر. |
| ItemWidth           | I_WIDTH            | NUMBER          | لا     | نعم       | لا     | عرض العنصر. |
| ItemHeight          | I_HEIGHT           | NUMBER          | لا     | نعم       | لا     | ارتفاع العنصر. |
| ItemNumber          | I_NUMBER           | NUMBER          | لا     | نعم       | لا     | رقم العنصر الإضافي. |
| PostCode            | POST_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل. |
| WeightQty           | WT_QTY             | NUMBER          | لا     | نعم       | لا     | كمية الوزن. |
| WeightUnit          | WT_UNT             | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن. |
| ArgumentNo          | ARGMNT_NO          | NUMBER          | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | نعم    | لا        | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| DocSequenceRef      | DOC_SEQUENCE_REF   | NUMBER          | لا     | نعم       | لا     | تسلسل السطر المرجعي. |

---

## InventoryBinDetail (**BIN_DETAILS**)
| الاسم الجديد     | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| BinCode         | B_CODE          | VARCHAR2(20)    | نعم    | لا        | لا     | كود الموقع التخزيني داخل المستودع (BIN). |
| WarehouseCode   | W_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط بالـ BIN. |
| BinAName        | B_A_NAME        | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الـ BIN بالعربي. |
| BinEName        | B_E_NAME        | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الـ BIN بالإنجليزي. |
| ExternalPost    | EXTERNAL_POST   | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| AddedByUserId   | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate       | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId | UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate     | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| ReportPriority  | PR_REP          | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير. |
| UpdateCount     | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| AddedTerminal   | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal | UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| CPM             | CPM             | NUMBER          | لا     | نعم       | لا     | سعة الموقع أو عدد الوحدات الممكنة. |
| Weight          | WGT             | NUMBER          | لا     | نعم       | لا     | الوزن المسموح للـ BIN. |
| DefaultFlag     | DEFLT_FLG       | NUMBER(1,0)     | لا     | نعم       | لا     | علم الموقع الافتراضي (1=نعم). |

---

## InventoryBin (**ITEM_BIN**)
| الاسم الجديد     | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| ItemCode        | I_CODE          | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف. |
| ItemUnit        | ITM_UNT         | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف. |
| PackSize        | P_SIZE          | NUMBER          | لا     | نعم       | لا     | حجم العبوة. |
| WarehouseCode   | W_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط. |
| BinCode         | B_CODE          | VARCHAR2(20)    | لا     | نعم       | لا     | كود الموقع التخزيني (BIN). |
| ExpireDate      | EXPIRE_DATE     | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة في المكان. |
| BatchNo         | BATCH_NO        | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة بالموقع. |
| ExternalPost    | EXTERNAL_POST   | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| AddedByUserId   | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate       | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId | UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate     | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| UpdateCount     | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority  | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal   | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal | UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| DefaultFlag     | DEFLT_FLG       | NUMBER(1,0)     | لا     | نعم       | لا     | علم الموقع الافتراضي (1=نعم). |

---

## StockCount (**IAS_INV_MANAGEMENT**)
| الاسم الجديد     | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| DocNo           | DOC_NO          | NUMBER(38,0)    | لا     | نعم       | لا     | رقم مستند الجرد أو التسوية. |
| DocDate         | DOC_DATE        | DATE            | لا     | نعم       | لا     | تاريخ المستند. |
| ItemCode        | I_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف. |
| ItemName        | I_NAME          | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الصنف. |
| ItemUnit        | ITM_UNT         | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| PackSize        | P_SIZE          | NUMBER          | لا     | نعم       | لا     | حجم العبوة. |
| WarehouseCode   | W_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع. |
| BatchNo         | BATCH_NO        | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة. |
| OpeningQty      | OP_QTY          | NUMBER          | لا     | نعم       | لا     | كمية الافتتاح. |
| IncomingQty     | INC_QTY         | NUMBER          | لا     | نعم       | لا     | كمية الوارد. |
| SaleQty         | SALE_QTY        | NUMBER          | لا     | نعم       | لا     | كمية المبيعات. |
| POSQty          | POS_QTY         | NUMBER          | لا     | نعم       | لا     | كمية نقطة البيع. |
| NetSale         | NET_SALE        | NUMBER          | لا     | نعم       | لا     | صافي المبيعات. |
| AvailableQty    | AVL_QTY         | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة. |
| AvgSaleDay      | AVG_SALE_DAY    | NUMBER          | لا     | نعم       | لا     | متوسط المبيعات اليومي. |
| AvgSaleGen      | AVG_SALE_GEN    | NUMBER          | لا     | نعم       | لا     | متوسط المبيعات العام. |
| PerSaleQty      | PER_SALE_QTY    | NUMBER          | لا     | نعم       | لا     | نسبة المبيعات للكمية. |
| ItemSaleAge     | ITM_SALE_AGE    | NUMBER          | لا     | نعم       | لا     | عمر المبيعات للصنف. |
| ItemSaleAgePeriod | ITM_SALE_AGE_PRD | NUMBER        | لا     | نعم       | لا     | فترة عمر مبيعات الصنف. |
| ItemAge         | ITM_AGE         | NUMBER          | لا     | نعم       | لا     | عمر الصنف في المخزون. |
| ItemRatio       | ITM_RATIO       | NUMBER          | لا     | نعم       | لا     | نسبة الصنف. |
| ItemSaleRatio   | ITM_SALE_RATIO  | NUMBER          | لا     | نعم       | لا     | نسبة مبيعات الصنف. |
| NotReceivedQty  | TR_NOT_REC_QTY  | NUMBER          | لا     | نعم       | لا     | كمية لم يتم استلامها. |
| SumIncomingQty  | SUM_INC_QTY     | NUMBER          | لا     | نعم       | لا     | مجموع كمية الوارد. |
| QtyFromWH       | QTY_FROM_WH     | NUMBER          | لا     | نعم       | لا     | كمية محولة من المستودع. |
| QtyToWH         | QTY_TO_WH       | NUMBER          | لا     | نعم       | لا     | كمية محولة إلى المستودع. |
| AvgQtyPeriod    | AVG_QTY_PRD     | NUMBER          | لا     | نعم       | لا     | متوسط الكمية لفترة محددة. |
| GroupCode       | G_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود مجموعة الصنف. |
| GroupClassCode  | GRP_CLASS_CODE  | VARCHAR2(20)    | لا     | نعم       | لا     | كود تصنيف المجموعة. |
| ManagerCode     | MNG_CODE        | VARCHAR2(10)    | لا     | نعم       | لا     | كود مدير الصنف. |
| SubGroupCode    | SUBG_CODE       | VARCHAR2(10)    | لا     | نعم       | لا     | كود المجموعة الفرعية. |
| AssistantNo     | ASSISTANT_NO    | VARCHAR2(10)    | لا     | نعم       | لا     | رقم مساعد. |
| DetailNo        | DETAIL_NO       | VARCHAR2(10)    | لا     | نعم       | لا     | رقم تفصيلي. |
| ActivityNo      | ACTIVITY_NO     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم النشاط المرتبط. |
| IncomeDate      | INCOME_DATE     | DATE            | لا     | نعم       | لا     | تاريخ دخول الصنف. |
| ItemType        | ITEM_TYPE       | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الصنف. |
| CityNo          | CITY_NO         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة. |
| RegionCode      | R_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المنطقة. |
| ItemOrder       | ITM_ORDR        | NUMBER          | لا     | نعم       | لا     | ترتيب الصنف. |
| PeriodDay       | PRD_DAY         | NUMBER          | لا     | نعم       | لا     | عدد أيام الفترة. |
| Processed       | PROCESSED       | NUMBER(1,0)     | لا     | نعم       | لا     | تم معالجة السطر (1=نعم). |
| AddedByUserId   | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate       | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId | UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate     | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| CompanyNo       | CMP_NO          | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo        | BRN_NO          | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear      | BRN_YEAR        | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser      | BRN_USR         | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount     | UP_CNT          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority  | PR_REP          | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal   | AD_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal | UP_TRMNL_NM     | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |


---

## StockCountTmp (**IAS_INV_MANAGEMENT_TMP**)
| الاسم الجديد     | الاسم القديم     | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-----------------|-----------------|-----------------|--------|-----------|--------|-----------|
| ItemCode        | I_CODE          | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف. |
| ItemName        | I_NAME          | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الصنف. |
| ItemUnit        | ITM_UNT         | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| WarehouseCode   | W_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع. |
| BatchNo         | BATCH_NO        | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة. |
| OpeningQty      | OP_QTY          | NUMBER          | لا     | نعم       | لا     | كمية الافتتاح. |
| IncomingQty     | INC_QTY         | NUMBER          | لا     | نعم       | لا     | كمية الوارد. |
| SaleQty         | SALE_QTY        | NUMBER          | لا     | نعم       | لا     | كمية المبيعات. |
| POSQty          | POS_QTY         | NUMBER          | لا     | نعم       | لا     | كمية نقطة البيع. |
| NetSale         | NET_SALE        | NUMBER          | لا     | نعم       | لا     | صافي المبيعات. |
| AvailableQty    | AVL_QTY         | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة. |
| AvgSaleDay      | AVG_SALE_DAY    | NUMBER          | لا     | نعم       | لا     | متوسط المبيعات اليومي. |
| AvgSaleGen      | AVG_SALE_GEN    | NUMBER          | لا     | نعم       | لا     | متوسط المبيعات العام. |
| PerSaleQty      | PER_SALE_QTY    | NUMBER          | لا     | نعم       | لا     | نسبة المبيعات للكمية. |
| ItemSaleAge     | ITM_SALE_AGE    | NUMBER          | لا     | نعم       | لا     | عمر المبيعات للصنف. |
| ItemSaleAgePeriod | ITM_SALE_AGE_PRD | NUMBER        | لا     | نعم       | لا     | فترة عمر مبيعات الصنف. |
| ItemAge         | ITM_AGE         | NUMBER          | لا     | نعم       | لا     | عمر الصنف في المخزون. |
| ItemRatio       | ITM_RATIO       | NUMBER          | لا     | نعم       | لا     | نسبة الصنف. |
| ItemSaleRatio   | ITM_SALE_RATIO  | NUMBER          | لا     | نعم       | لا     | نسبة مبيعات الصنف. |
| NotReceivedQty  | TR_NOT_REC_QTY  | NUMBER(38,0)    | لا     | نعم       | لا     | كمية لم يتم استلامها. |
| SumIncomingQty  | SUM_INC_QTY     | NUMBER(38,0)    | لا     | نعم       | لا     | مجموع كمية الوارد. |
| QtyFromWH       | QTY_FROM_WH     | NUMBER(38,0)    | لا     | نعم       | لا     | كمية محولة من المستودع. |
| QtyToWH         | QTY_TO_WH       | NUMBER(38,0)    | لا     | نعم       | لا     | كمية محولة إلى المستودع. |
| AvgQtyPeriod    | AVG_QTY_PRD     | NUMBER(38,0)    | لا     | نعم       | لا     | متوسط الكمية لفترة محددة. |
| GroupCode       | G_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود مجموعة الصنف. |
| GroupClassCode  | GRP_CLASS_CODE  | VARCHAR2(20)    | لا     | نعم       | لا     | كود تصنيف المجموعة. |
| ManagerCode     | MNG_CODE        | VARCHAR2(10)    | لا     | نعم       | لا     | كود مدير الصنف. |
| SubGroupCode    | SUBG_CODE       | VARCHAR2(10)    | لا     | نعم       | لا     | كود المجموعة الفرعية. |
| AssistantNo     | ASSISTANT_NO    | VARCHAR2(10)    | لا     | نعم       | لا     | رقم مساعد. |
| DetailNo        | DETAIL_NO       | VARCHAR2(10)    | لا     | نعم       | لا     | رقم تفصيلي. |
| ActivityNo      | ACTIVITY_NO     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم النشاط المرتبط. |
| IncomeDate      | INCOME_DATE     | DATE            | لا     | نعم       | لا     | تاريخ دخول الصنف. |
| ItemType        | ITEM_TYPE       | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الصنف. |
| CityNo          | CITY_NO         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة. |
| RegionCode      | R_CODE          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المنطقة. |
| ItemOrder       | ITM_ORDR        | NUMBER(6,0)     | لا     | نعم       | لا     | ترتيب الصنف. |
| PeriodDay       | PRD_DAY         | NUMBER(6,0)     | لا     | نعم       | لا     | عدد أيام الفترة. |
| DocNo           | DOC_NO          | NUMBER(38,0)    | لا     | نعم       | لا     | رقم المستند. |
| AddedByUserId   | AD_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate       | AD_DATE         | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId | UP_U_ID         | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate     | UP_DATE         | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| CompanyNo       | CMP_NO          | NUMBER(3,0)     | لا     | نعم       | لا     | رقم الشركة. |
| BranchNo        | BRN_NO          | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع. |
| BranchYear      | BRN_YEAR        | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser      | BRN_USR         | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |

---

## KitItem (**KIT_ITEMS**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| KitItemNo           | KIT_ITEM_NO        | VARCHAR2(30)    | نعم    | لا        | لا     | رقم تعريف الكيت. |
| ItemCode            | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| PackSize            | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة. |
| ItemQty             | I_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العنصر في الكيت. |
| PackQty             | P_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العبوة في الكيت. |
| PercentCostFromKit  | PER_COST_FROM_KIT_ITM | NUMBER        | لا     | نعم       | لا     | نسبة تكلفة العنصر من الكيت. |
| MinItemQty          | ITM_MIN_QTY        | NUMBER          | لا     | نعم       | لا     | أقل كمية ممكنة للعنصر في الكيت. |
| MaxItemQty          | ITM_MAX_QTY        | NUMBER          | لا     | نعم       | لا     | أكبر كمية. |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| CheckAvailableQtyInRMS | CHK_AVL_QTY_IN_RMS | NUMBER(1,0)   | لا     | نعم       | لا     | تحقق الكمية في نظام RMS. |
| Note                | NOTE               | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات. |
| UseRMSSaleType      | USE_RMS_SLS_TYP    | VARCHAR2(10)    | لا     | نعم       | لا     | نوع البيع في الـ RMS. |
| ExceedItemQty       | EXCD_ITM_QTY       | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتجاوز الكمية. |
| AllowDeleteItem     | ALLW_DEL_ITM       | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بحذف العنصر من الكيت. |

---

## KitItemDetail (**KIT_ITEMS_DETAIL**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| KitItemNo           | KIT_ITEM_NO        | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الكيت. |
| ItemCode            | I_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| PackSize            | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة. |
| ItemQty             | I_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العنصر في الكيت. |
| PackQty             | P_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العبوة في الكيت. |
| StandardQty         | STNDRD_QTY         | NUMBER          | لا     | نعم       | لا     | الكمية القياسية. |
| AvailableQty        | AVL_QTY            | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة. |
| WarehouseCode       | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| ItemCost            | I_COST             | NUMBER          | لا     | نعم       | لا     | تكلفة العنصر. |
| KitQty              | KIT_QTY            | NUMBER          | لا     | نعم       | لا     | كمية الكيت. |
| SumQty              | SUM_QTY            | NUMBER          | لا     | نعم       | لا     | إجمالي الكمية. |
| PartialSumQty       | PSUM_QTY           | NUMBER          | لا     | نعم       | لا     | إجمالي جزئي للكمية. |
| RecordNo            | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي. |
| DocSequence         | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر بالمستند. |
| PostCode            | POST_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل. |
| ExpireDate          | EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة. |
| BatchNo             | BATCH_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة. |
| RecordSq            | RCRD_SQ            | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي فرعي للسطر. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ItemPrice           | I_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر العنصر. |
| DocSequenceMain     | DOC_SEQUENCE_M     | NUMBER          | لا     | نعم       | لا     | تسلسل السطر الرئيسي. |

---

## AssembleKitItem (**ASSEMBLE_KIT_ITEMS**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مستند عملية تجميع الكيت. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| DocDate             | DOC_DATE           | DATE            | نعم    | لا        | لا     | تاريخ المستند. |
| FromWarehouse       | FROM_WH            | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول منه. |
| ToWarehouse         | TO_WH              | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول إليه. |
| ExpenseAmountType   | EXP_AMT_TYPE       | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مبلغ المصروفات. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| StockRate           | STK_RATE           | NUMBER          | لا     | نعم       | لا     | سعر المخزون. |
| DocDesc             | DOC_DESC           | VARCHAR2(250)   | لا     | نعم       | لا     | وصف المستند. |
| RefNo               | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| ExpenseAmount       | EXP_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ المصروفات. |
| Processed           | PROCESSED          | NUMBER(1,0)     | لا     | نعم       | لا     | تم معالجة السطر (1=نعم). |
| Hung                | HUNG               | NUMBER(1,0)     | لا     | نعم       | لا     | عملية معلقة (1=نعم). |
| DocPost             | DOC_POST           | NUMBER(1,0)     | لا     | نعم       | لا     | تم الترحيل للمحاسبة (1=نعم). |
| EmployeeNo          | EMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف المرتبط. |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| PostUserId          | POST_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي رحل المستند. |
| PostDate            | POST_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الترحيل. |
| UnpostUserId        | UNPOST_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي ألغى الترحيل. |
| UnpostDate          | UNPOST_DATE        | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل. |
| AuditRef            | AUDIT_REF          | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق. |
| AuditRefDesc        | AUDIT_REF_DESC     | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق. |
| AuditRefUserId      | AUDIT_REF_U_ID     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم لمرجع التدقيق. |
| AuditRefDate        | AUDIT_REF_DATE     | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| TypeNo              | TYP_NO             | NUMBER(5,0)     | لا     | نعم       | لا     | نوع العملية. |
| ProductionDoc       | PRD_DOC            | NUMBER(1,0)     | لا     | نعم       | لا     | رقم مستند الإنتاج. |
| DocSequenceMain     | DOC_SEQUENCE_M     | NUMBER          | لا     | نعم       | لا     | تسلسل السطر الرئيسي. |
| AddExpenseType      | ADD_EXP_TYPE       | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المصروف الإضافي. |

---

---

## AssembleKitItemDetail (**ASSEMBLE_KIT_ITEMS_DET**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مستند التجميع. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| KitItemNo           | KIT_ITEM_NO        | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الكيت. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة العنصر المجمع. |
| PackSize            | P_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم العبوة. |
| ItemQty             | I_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العنصر. |
| FromWarehouse       | F_W_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول منه. |
| ToWarehouse         | T_W_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول إليه. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| KitCost             | KIT_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة الكيت المجمعة. |
| ExpenseAmount       | EXP_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ المصروفات. |
| RecordNo            | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي. |
| DocSequence         | DOC_SEQUENCE       | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر بالمستند. |
| PostCode            | POST_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل. |
| ExpireDate          | EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة. |
| BatchNo             | BATCH_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ItemPrice           | I_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر العنصر. |
| DocTypeRef          | DOC_TYPE_REF       | NUMBER          | لا     | نعم       | لا     | نوع المستند المرجعي. |
| DocNoRef            | DOC_NO_REF         | NUMBER          | لا     | نعم       | لا     | رقم المستند المرجعي. |
| DocSerRef           | DOC_SER_REF        | NUMBER          | لا     | نعم       | لا     | الرقم التسلسلي للمستند المرجعي. |
| DocSequenceRef      | DOC_SEQUENCE_REF   | NUMBER          | لا     | نعم       | لا     | تسلسل السطر المرجعي. |
| DocSequenceMain     | DOC_SEQUENCE_M     | NUMBER          | لا     | نعم       | لا     | تسلسل السطر الرئيسي. |
| RecordSq            | RCRD_SQ            | NUMBER          | لا     | نعم       | لا     | رقم فرعي للسطر. |

---

## DisassembleKitItem (**DISASSEMBLE_KIT_ITEMS**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مستند التفكيك. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| DocDate             | DOC_DATE           | DATE            | نعم    | لا        | لا     | تاريخ المستند. |
| FromWarehouse       | FROM_WH            | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول منه. |
| ToWarehouse         | TO_WH              | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول إليه. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| StockRate           | STK_RATE           | NUMBER          | لا     | نعم       | لا     | سعر المخزون. |
| DocDesc             | DOC_DESC           | VARCHAR2(250)   | لا     | نعم       | لا     | وصف المستند. |
| RefNo               | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| AssembleDocNo       | AS_DOC_NO          | NUMBER(9,0)     | لا     | نعم       | لا     | رقم مستند التجميع الأصلي. |
| AssembleDocSer      | AS_DOC_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للتجميع الأصلي. |
| DocPost             | DOC_POST           | NUMBER(1,0)     | لا     | نعم       | لا     | تم الترحيل للمحاسبة (1=نعم). |
| Hung                | HUNG               | NUMBER(1,0)     | لا     | نعم       | لا     | عملية معلقة (1=نعم). |
| EmployeeNo          | EMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف المرتبط. |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| PostUserId          | POST_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي رحل المستند. |
| PostDate            | POST_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الترحيل. |
| UnpostUserId        | UNPOST_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي ألغى الترحيل. |
| UnpostDate          | UNPOST_DATE        | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل. |
| AuditRef            | AUDIT_REF          | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق. |
| AuditRefDesc        | AUDIT_REF_DESC     | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق. |
| AuditRefUserId      | AUDIT_REF_U_ID     | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستخدم لمرجع التدقيق. |
| AuditRefDate        | AUDIT_REF_DATE     | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| TypeNo              | TYP_NO             | NUMBER(5,0)     | لا     | نعم       | لا     | نوع العملية. |
| DocSequenceMain     | DOC_SEQUENCE_M     | NUMBER          | لا     | نعم       | لا     | تسلسل السطر الرئيسي. |

---

## DisassembleKitItemDetail (**DISASSEMBLE_KIT_ITEMS_DET**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مستند التفكيك. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| AssembleDocNo       | AS_DOC_NO          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند التجميع الأصلي. |
| AssembleDocSer      | AS_DOC_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للتجميع الأصلي. |
| KitItemNo           | KIT_ITEM_NO        | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الكيت. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة العنصر. |
| PackSize            | P_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم العبوة. |
| ItemQty             | I_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العنصر. |
| FromWarehouse       | F_W_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول منه. |
| ToWarehouse         | T_W_CODE           | NUMBER(10,0)    | لا     | نعم       | لا     | المستودع المحول إليه. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| KitCost             | KIT_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة الكيت المجمعة. |
| RecordNo            | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي. |
| DocSequence         | DOC_SEQUENCE       | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر بالمستند. |
| PostCode            | POST_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل. |
| ExpireDate          | EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة. |
| BatchNo             | BATCH_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| DocSequenceRef      | DOC_SEQUENCE_REF   | NUMBER          | لا     | نعم       | لا     | تسلسل السطر المرجعي. |
| DocSequenceMain     | DOC_SEQUENCE_M     | NUMBER          | لا     | نعم       | لا     | تسلسل السطر الرئيسي. |
| RecordSq            | RCRD_SQ            | NUMBER          | لا     | نعم       | لا     | رقم فرعي للسطر. |

---

## DisKitItemDetail (**DIS_KIT_ITEMS_DETAIL**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند. |
| AssembleDocNo       | AS_DOC_NO          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند التجميع الأصلي. |
| AssembleDocSer      | AS_DOC_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للتجميع الأصلي. |
| KitItemNo           | KIT_ITEM_NO        | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الكيت. |
| ItemCode            | I_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة العنصر. |
| PackSize            | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة. |
| ItemQty             | I_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العنصر. |
| PackQty             | P_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العبوة. |
| StandardQty         | STNDRD_QTY         | NUMBER          | لا     | نعم       | لا     | الكمية القياسية. |
| AvailableQty        | AVL_QTY            | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة. |
| WarehouseCode       | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| ItemCost            | I_COST             | NUMBER          | لا     | نعم       | لا     | تكلفة العنصر. |
| KitQty              | KIT_QTY            | NUMBER          | لا     | نعم       | لا     | كمية الكيت. |
| SumQty              | SUM_QTY            | NUMBER          | لا     | نعم       | لا     | إجمالي الكمية. |
| PartialSumQty       | PSUM_QTY           | NUMBER          | لا     | نعم       | لا     | إجمالي جزئي للكمية. |
| WeightedAvgBefore   | WT_AVG_BEFORE      | NUMBER          | لا     | نعم       | لا     | المتوسط المرجح قبل التفكيك. |
| WeightedAvgAfter    | WT_AVG_AFTER       | NUMBER          | لا     | نعم       | لا     | المتوسط المرجح بعد التفكيك. |
| RecordNo            | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي. |
| DocSequence         | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر بالمستند. |
| PostCode            | POST_CODE          | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل. |
| ExpireDate          | EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة. |
| BatchNo             | BATCH_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة. |
| CompanyNo           | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo            | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| PercentCostFromKit  | PER_COST_FROM_KIT_ITM | NUMBER       | لا     | نعم       | لا     | نسبة تكلفة العنصر من الكيت. |
| DocSequenceMain     | DOC_SEQUENCE_M     | NUMBER          | لا     | نعم       | لا     | تسلسل السطر الرئيسي. |
| RecordSq            | RCRD_SQ            | NUMBER          | لا     | نعم       | لا     | رقم فرعي للسطر. |

---

## CompoundItem (**COMPOUND_ITEMS**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode            | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف الرئيسي المركب. |
| ItemUnit            | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف المركب. |
| PackSize            | P_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم العبوة المركبة. |
| ComponentCode       | DI_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | كود المكون. |
| ComponentName       | DI_NAME            | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المكون. |
| Qty                 | QTY                | NUMBER          | لا     | نعم       | لا     | كمية المكون. |
| ComponentUnit       | DITM_UNT           | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة المكون. |
| ComponentPackSize   | DP_SIZE            | NUMBER          | لا     | نعم       | لا     | حجم عبوة المكون. |
| Optional            | OPTIONAL           | NUMBER(1,0)     | لا     | نعم       | لا     | مكون اختياري (1=نعم). |
| MinItemQty          | ITM_MIN_QTY        | NUMBER          | لا     | نعم       | لا     | أقل كمية ممكنة للمكون. |
| MaxItemQty          | ITM_MAX_QTY        | NUMBER          | لا     | نعم       | لا     | أكبر كمية للمكون. |
| AddedByUserId       | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate           | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedByUserId     | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate         | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| UpdateCount         | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority      | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| AddedTerminal       | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal     | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |

---

## StockTransferInTmp (**IAS_TRANSFER_IN_SUB_MAIN_TMP**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| TransferSerial      | TR_SER             | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي مؤقت لعملية التحويل الوارد. |

---

## StockTransferOutTmp (**IAS_TRANSFER_OUT_SUB_MAIN_TMP**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| TransferSerial      | TR_SER             | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي مؤقت لعملية التحويل الصادر. |

---

## WarehouseTransferExpense (**INV_WRHS_TRNSFR_EXPNS**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للمستند. |
| TransferInOutType   | TR_INOUT_TYPE      | NUMBER(2,0)     | نعم    | لا        | لا     | نوع التحويل: وارد/صادر. |
| DocDesc             | DOC_DESC           | VARCHAR2(500)   | لا     | نعم       | لا     | وصف المستند. |
| RefNo               | REF_NO             | VARCHAR2(250)   | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| AccountCode         | A_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب. |
| AccountDtlCode      | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     | تفاصيل الحساب. |
| AccountDtlType      | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب. |
| CurrencyCode        | A_CY               | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة. |
| AccountRate         | AC_RATE            | NUMBER          | لا     | نعم       | لا     | سعر الصرف. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| Amount              | AMT                | NUMBER          | لا     | نعم       | لا     | مبلغ المصروفات. |
| InventoryAmount     | INV_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ المخزون. |
| ExternalPost        | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| RecordNo            | RCRD_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | رقم السطر الداخلي. |
| BranchNo            | BRN_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| CompanyNo           | CMP_NO             | NUMBER(2,0)     | نعم    | لا        | لا     | رقم الشركة. |
| DocBranchNo         | DOC_BRN_NO         | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند. |

---

## WarehouseTransferExpenseBranch (**INV_WRHS_TRNSFR_EXPNS_BR**)
| الاسم الجديد         | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| DocNo               | DOC_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المستند. |
| DocSerial           | DOC_SER            | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للمستند. |
| TransferInOutType   | TR_INOUT_TYPE      | NUMBER(2,0)     | نعم    | لا        | لا     | نوع التحويل: وارد/صادر. |
| DocDesc             | DOC_DESC           | VARCHAR2(500)   | لا     | نعم       | لا     | وصف المستند. |
| RefNo               | REF_NO             | VARCHAR2(250)   | لا     | نعم       | لا     | رقم مرجعي إضافي. |
| AccountCode         | A_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب. |
| AccountDtlCode      | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     | تفاصيل الحساب. |
| AccountDtlType      | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب. |
| CurrencyCode        | A_CY               | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة. |
| AccountRate         | AC_RATE            | NUMBER          | لا     | نعم       | لا     | سعر الصرف. |
| CostCenterCode      | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo           | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo          | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| Amount              | AMT                | NUMBER          | لا     | نعم       | لا     | مبلغ المصروفات. |
| InventoryAmount     | INV_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ المخزون. |
| ExternalPost        | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| RecordNo            | RCRD_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | رقم السطر الداخلي. |
| DocBranchNo         | DOC_BRN_NO         | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند. |
| BranchNo            | BRN_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear          | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser          | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| CompanyNo           | CMP_NO             | NUMBER(2,0)     | نعم    | لا        | لا     | رقم الشركة. |

---
