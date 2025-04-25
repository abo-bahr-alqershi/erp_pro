# 4. المشتريات والموردين (Purchases & Vendors)
> **جميع الحقول والشرح للجداول: أوامر الشراء، تفاصيل أوامر الشراء، عروض أسعار الموردين (من ملف SQL المرفق)**

---

## PurchaseOrder (**P_ORDER**)
| الاسم الجديد                | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseOrderType          | PO_TYPE               | NUMBER(5, 0)    | نعم    | لا        | لا     | نوع أمر الشراء (عادي/مباشر/خدمات) |
| PurchaseOrderNo            | PO_NO                 | NUMBER(15, 0)   | نعم    | لا        | لا     | رقم أمر الشراء الرئيسي |
| PurchaseOrderSerial        | PO_SER                | NUMBER(38, 0)   | لا     | نعم       | لا     | الرقم التسلسلي لأمر الشراء |
| PurchaseOrderDate          | PO_DATE               | DATE            | نعم    | لا        | لا     | تاريخ إصدار أمر الشراء |
| VendorCode                 | V_CODE                | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| VendorName                 | V_NAME                | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المورد |
| CurrencyCode               | CUR_CODE              | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| CostCenterCode             | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                  | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع المرتبط |
| ActivityNo                 | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط المرتبط |
| Processed                  | PO_PROCESSED          | NUMBER(1, 0)    | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| Description                | PO_DESC               | VARCHAR2(250)   | لا     | نعم       | لا     | ملاحظات/وصف للأمر |
| ReferenceNo                | REF_NO                | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| PartialOrder               | PO_PARTIAL            | NUMBER(1, 0)    | لا     | نعم       | لا     | أمر شراء جزئي (1=نعم) |
| Closed                     | PO_CLOSED             | NUMBER(1, 0)    | لا     | نعم       | لا     | مغلق (1=نعم) |
| DiscountAmount             | DISC_AMT              | NUMBER(24, 9)   | لا     | نعم       | لا     | مبلغ الخصم الكلي |
| Inspection                 | INSPECT               | NUMBER(1, 0)    | لا     | نعم       | لا     | يتطلب فحص (1=نعم) |
| EntryNo                    | ENTRY_NO              | NUMBER(10, 0)   | لا     | نعم       | لا     | رقم الإدخال |
| Inactive                   | INACTIVE              | NUMBER(1, 0)    | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveUserId             | INACTIVE_U_ID         | NUMBER(5, 0)    | لا     | نعم       | لا     | المستخدم الذي عطل السطر |
| InactiveDate               | INACTIVE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason             | INACTIVE_RES          | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| Approved                   | APPROVED              | NUMBER(1, 0)    | لا     | نعم       | لا     | تم الاعتماد (1=معتمد) |
| ApprovedUserId             | APRV_U_ID             | NUMBER(5, 0)    | لا     | نعم       | لا     | المستخدم الذي اعتمد الأمر |
| ApprovedDate               | APRV_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الاعتماد |
| ApprovedDesc               | APRV_DSC              | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الاعتماد |
| InactiveReasonExtra        | RES_INACTIVE          | VARCHAR2(250)   | لا     | نعم       | لا     | سبب إضافي للتعطيل |
| PurchaseType               | PUR_TYPE              | NUMBER(1, 0)    | لا     | نعم       | لا     | نوع الشراء |
| InsuranceTerms             | INS_TERMS             | VARCHAR2(500)   | لا     | نعم       | لا     | شروط التأمين |
| InsuranceNo                | INS_NO                | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التأمين |
| InsuranceCompany           | INS_COMP              | VARCHAR2(100)   | لا     | نعم       | لا     | شركة التأمين |
| InsuranceDate              | INS_DATE              | DATE            | لا     | نعم       | لا     | تاريخ التأمين |
| WithoutOtherAmount         | PO_WITHOUT_OTHR_AMT   | NUMBER(1, 0)    | لا     | نعم       | لا     | دون مبالغ أخرى (1=نعم) |
| DeliveryDate               | DELIVERY_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التسليم |
| PlaceDelivery              | PLACE_DELIVERY        | VARCHAR2(250)   | لا     | نعم       | لا     | مكان التسليم |
| PaymentTerms               | PAY_TERMS             | VARCHAR2(1000)  | لا     | نعم       | لا     | شروط الدفع |
| ModeDispatch               | MODE_DISPATCH         | VARCHAR2(250)   | لا     | نعم       | لا     | طريقة الشحن |
| FreightCurrency            | FREIGHT_CURR          | VARCHAR2(7)     | لا     | نعم       | لا     | عملة الشحن |
| ContactPerson              | CNTCT_PERSON          | VARCHAR2(300)   | لا     | نعم       | لا     | شخص التواصل |
| NeedCheckQty               | NEED_CHECK_QTY        | NUMBER(1, 0)    | لا     | نعم       | لا     | يتطلب مراجعة كمية |
| VendorPINo                 | VND_PI_NO             | VARCHAR2(30)    | لا     | نعم       | لا     | رقم فاتورة المورد |
| ReceiveDate                | RECEIVE_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الاستلام |
| PurchaseOrderDocType       | PO_DOC_TYPE           | NUMBER(5, 0)    | لا     | نعم       | لا     | نوع مستند الأمر |
| InsuranceTermsDesc         | DESC_INS_TEARMS       | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف شروط التأمين |
| DiscountAmountMaster       | DISC_AMT_MST          | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail       | DISC_AMT_DTL          | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| Checked                    | PO_CHECKED            | NUMBER(1, 0)    | لا     | نعم       | لا     | تم المراجعة (1=نعم) |
| Locked                     | PO_LOCKED             | NUMBER(1, 0)    | لا     | نعم       | لا     | مقفل (1=نعم) |
| VendorBillNo               | BILL_NO_V_CODE        | VARCHAR2(20)    | لا     | نعم       | لا     | رقم فاتورة المورد |
| VendorBillDate             | BILL_DATE_V_CODE      | DATE            | لا     | نعم       | لا     | تاريخ فاتورة المورد |
| VATPriceType               | CLC_VAT_PRICE_TYP     | NUMBER          | لا     | نعم       | لا     | نوع احتساب الضريبة في السعر |
| Field1                     | FIELD1                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 1 |
| Field2                     | FIELD2                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 2 |
| Field3                     | FIELD3                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 3 |
| Field4                     | FIELD4                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 4 |
| Field5                     | FIELD5                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 5 |
| Field6                     | FIELD6                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 6 |
| Field7                     | FIELD7                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 7 |
| Field8                     | FIELD8                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 8 |
| Field9                     | FIELD9                | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 9 |
| Field10                    | FIELD10               | VARCHAR2(1000)  | لا     | نعم       | لا     | حقل مرن 10 |
| ContractNo                 | CNTRCT_NO             | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContractSer                | CNTRCT_SER            | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ServiceBill                | SRVC_BILL             | NUMBER(1, 0)    | لا     | نعم       | لا     | فاتورة خدمات (1=نعم) |
| AssignToUserId             | ASSGN_TO_U_ID         | NUMBER(5, 0)    | لا     | نعم       | لا     | مخصص إلى مستخدم |
| AssignUserId               | ASSGN_U_ID            | NUMBER(5, 0)    | لا     | نعم       | لا     | مستخدم التخصيص |
| AssignDate                 | ASSGN_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التخصيص |
| UseVAT                     | USE_VAT               | NUMBER(1, 0)    | لا     | نعم       | لا     | استخدام الضريبة (1=نعم) |
| RequiredFreightData        | RQRD_FRGHT_DATA       | NUMBER(1, 0)    | لا     | نعم       | لا     | مطلوب بيانات الشحن |
| OtherAmount                | OTHR_AMT              | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى |
| VATAmount                  | VAT_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة الكلي |
| ContainerNo                | CONTAINER_NO          | NUMBER(10, 0)   | لا     | نعم       | لا     | رقم الحاوية |
| FreightLastDate            | FREIGHT_LST_DATE      | DATE            | لا     | نعم       | لا     | تاريخ آخر شحن |
| CostingTypeNo              | COSTING_TYPE_NO       | NUMBER(5, 0)    | لا     | نعم       | لا     | نوع التكلفة |
| PortOfFreight              | PORT_OF_FREIGHT       | VARCHAR2(60)    | لا     | نعم       | لا     | منفذ الشحن |
| AddedUserId                | AD_U_ID               | NUMBER(5, 0)    | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID               | NUMBER(5, 0)    | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                | NUMBER(10, 0)   | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                | NUMBER(10, 0)   | لا     | نعم       | لا     | أولوية التقرير |
| CompanyNo                  | CMP_NO                | NUMBER(3, 0)    | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                | NUMBER(6, 0)    | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR              | NUMBER(4, 0)    | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR               | NUMBER(3, 0)    | لا     | نعم       | لا     | مستخدم الفرع |
| VATTypeNo                  | CLC_TYP_NO_TAX        | NUMBER(5, 0)    | لا     | نعم       | لا     | نوع احتساب الضريبة |
| AddedTerminal              | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| LevelNoPrice               | LVL_NO_PRICE          | NUMBER(3, 0)    | لا     | نعم       | لا     | مستوى السعر |
| PurchaseCompany            | PO_COMP               | VARCHAR2(50)    | لا     | نعم       | لا     | الشركة المسؤولة عن الشراء |
| TaxFreeQtyFlag             | CLC_TAX_FREE_QTY_FLG  | NUMBER(1, 0)    | لا     | نعم       | لا     | علم الكمية المعفاة من الضريبة |
| DocMSq                     | DOC_M_SQ              | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي مؤقت |
| PurchaseOrderExpireDate    | PO_EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء صلاحية الأمر |
| PurchaseTenderNo           | PO_TNDR_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم مناقصة الشراء |
| CurrencyRate               | CUR_RATE              | NUMBER          | لا     | نعم       | لا     | سعر صرف العملة |
| PurchaseManagerCode        | PMAN_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود مسؤول الشراء |

---

## PurchaseOrderDetail (**P_ORDER_DETAIL**)
| الاسم الجديد                | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseOrderType          | PO_TYPE               | NUMBER(5, 0)    | نعم    | لا        | لا     | نوع أمر الشراء |
| PurchaseOrderNo            | PO_NO                 | NUMBER(15, 0)   | نعم    | لا        | لا     | رقم أمر الشراء |
| PurchaseOrderSerial        | PO_SER                | NUMBER(38, 0)   | لا     | نعم       | لا     | الرقم التسلسلي للأمر |
| ItemCode                   | I_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty                    | I_QTY                 | NUMBER          | لا     | نعم       | لا     | الكمية المطلوبة |
| FreeQty                    | FREE_QTY              | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ItemUnit                   | ITM_UNT               | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                   | P_SIZE                | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                    | P_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية العبوة |
| WarehouseCode              | W_CODE                | NUMBER(10, 0)   | لا     | نعم       | لا     | كود المستودع |
| DocTypeRef                 | DOC_TYPE_REF          | NUMBER(5, 0)    | لا     | نعم       | لا     | نوع المستند المرجعي |
| PRNo                       | PR_NO                 | NUMBER(15, 0)   | لا     | نعم       | لا     | رقم طلب الشراء المرجعي |
| PRSerial                   | PR_SER                | NUMBER(38, 0)   | لا     | نعم       | لا     | تسلسل طلب الشراء المرجعي |
| QTNo                       | QT_NO                 | NUMBER(15, 0)   | لا     | نعم       | لا     | رقم عرض السعر المرجعي |
| QTSerial                   | QT_SER                | NUMBER(38, 0)   | لا     | نعم       | لا     | تسلسل عرض السعر المرجعي |
| ItemPrice                  | I_PRICE               | NUMBER(24, 9)   | لا     | نعم       | لا     | سعر الصنف |
| RecordNo                   | RCRD_NO               | NUMBER(10, 0)   | لا     | نعم       | لا     | رقم السطر الداخلي |
| ItemDesc                   | ITEM_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| Barcode                    | BARCODE               | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| UseAttachment              | USE_ATTCH             | NUMBER(1, 0)    | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment          | REC_ATTCH             | NUMBER(10, 0)   | لا     | نعم       | لا     | عدد المرفقات للصنف |
| PIQty                      | PI_QTY                | NUMBER          | لا     | نعم       | لا     | كمية فاتورة المورد |
| PIFreeQty                  | PI_FREE_QTY           | NUMBER          | لا     | نعم       | لا     | كمية مجانية من المورد |
| AvailableQty               | AVL_QTY               | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة |
| ItemCwtAvg                 | ITM_CWTAVG            | NUMBER          | لا     | نعم       | لا     | متوسط تكلفة الوحدة |
| LastIncomePrice            | LAST_INCOME_PRICE     | NUMBER          | لا     | نعم       | لا     | آخر سعر شراء للصنف |
| DocSequence                | DOC_SEQUENCE          | NUMBER(38, 0)   | لا     | نعم       | لا     | تسلسل السطر في المستند |
| DocSequencePRQ             | DOC_SEQUENCE_PRQ      | NUMBER(38, 0)   | لا     | نعم       | لا     | تسلسل طلب الشراء المرجعي |
| Canceled                   | CANCELED              | NUMBER(1, 0)    | لا     | نعم       | لا     | ملغي (1=نعم) |
| ExpireDate                 | EXPIRE_DATE           | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الصنف |
| BatchNo                    | BATCH_NO              | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة |
| ItemPriceVAT               | I_PRICE_VAT           | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| ItemLength                 | I_LENGTH              | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth                  | I_WIDTH               | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight                 | I_HEIGHT              | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber                 | I_NUMBER              | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| DiscountAmount             | DIS_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster       | DIS_AMT_MST           | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountPercent            | DIS_PER               | NUMBER(20, 17)  | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmountDetail       | DIS_AMT_DTL           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountPercent2           | DIS_PER2              | NUMBER(20, 17)  | لا     | نعم       | لا     | نسبة خصم إضافية |
| DiscountAmountDetail2      | DIS_AMT_DTL2          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي |
| DiscountPercent3           | DIS_PER3              | NUMBER(20, 17)  | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3      | DIS_AMT_DTL3          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| UnitSize                   | UNIT_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم الوحدة |
| UnitQty                    | U_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الوحدات |
| NotBillPreviousQty         | NOT_BILL_PRV_QTY      | NUMBER          | لا     | نعم       | لا     | كمية لم يتم فوترتها سابقًا |
| BillPreviousQty            | BILL_PRV_QTY          | NUMBER          | لا     | نعم       | لا     | كمية تم فوترتها سابقًا |
| WeightQty                  | WT_QTY                | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| WeightUnit                 | WT_UNT                | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| CostCenterCode             | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                  | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo                 | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| OtherAmount                | OTHR_AMT              | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| VATPercent                 | VAT_PER               | NUMBER(7, 4)    | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                  | VAT_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| ArgumentNo                 | ARGMNT_NO             | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| DeliveryDate               | DLVRY_DATE            | DATE            | لا     | نعم       | لا     | تاريخ التسليم للصنف |
| CompanyNo                  | CMP_NO                | NUMBER(3, 0)    | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                | NUMBER(6, 0)    | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR              | NUMBER(4, 0)    | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR               | NUMBER(3, 0)    | لا     | نعم       | لا     | مستخدم الفرع |
| PackageUnit                | PKG_UNT               | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة التغليف |
| PackageUnitSize            | PKG_UNT_SIZE          | NUMBER(10, 0)   | لا     | نعم       | لا     | حجم وحدة التغليف |
| PackageQty                 | PKG_QTY               | NUMBER          | لا     | نعم       | لا     | كمية التغليف |
| PackageLength              | PKG_LENGTH            | NUMBER          | لا     | نعم       | لا     | طول التغليف |
| PackageWidth               | PKG_WIDTH             | NUMBER          | لا     | نعم       | لا     | عرض التغليف |
| PackageHeight              | PKG_HEIGHT            | NUMBER          | لا     | نعم       | لا     | ارتفاع التغليف |
| PackageSize                | PKG_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم التغليف |
| PackageWeight              | PKG_WEIGHT            | NUMBER          | لا     | نعم       | لا     | وزن التغليف |
| DocNoRef                   | DOC_NO_REF            | NUMBER(15, 0)   | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef                  | DOC_SER_REF           | NUMBER(38, 0)   | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocSequenceRef             | DOC_SEQUENCE_REF      | NUMBER(38, 0)   | لا     | نعم       | لا     | تسلسل السطر المرجعي |
| UpdateCount                | UP_CNT                | NUMBER(10, 0)   | لا     | نعم       | لا     | عدد مرات التحديث |
| ProjectNoRef               | PJ_NO_REF             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع المرجعي |
| SalePrice                  | SALE_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر البيع للصنف |
| DocSeqTmp                  | DOC_SEQ_TMP           | NUMBER          | لا     | نعم       | لا     | تسلسل مؤقت للسطر |
| FieldDtl1                  | FIELD_DTL1            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                  | FIELD_DTL2            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                  | FIELD_DTL3            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                  | FIELD_DTL4            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                  | FIELD_DTL5            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| FieldDtl6                  | FIELD_DTL6            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                  | FIELD_DTL7            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                  | FIELD_DTL8            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                  | FIELD_DTL9            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10                 | FIELD_DTL10           | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |

---

## PurchaseQuotation (**IAS_VND_QUOT_MST**)
| الاسم الجديد                | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| QuotationNo                | QT_NO                 | NUMBER(15, 0)   | نعم    | لا        | لا     | رقم عرض السعر الرئيسي |
| QuotationSerial            | QT_SER                | NUMBER(38, 0)   | لا     | نعم       | لا     | الرقم التسلسلي للعرض |
| QuotationDate              | QT_DATE               | DATE            | نعم    | لا        | لا     | تاريخ إصدار عرض السعر |
| CurrencyCode               | A_CY                  | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| CurrencyNo                 | CUR_NO                | NUMBER(4, 0)    | نعم    | لا        | لا     | رقم العملة |
| VendorCode                 | V_CODE                | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| VendorName                 | V_NAME                | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المورد |
| CostCenterCode             | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                  | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo                 | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| Description                | A_DESC                | VARCHAR2(100)   | لا     | نعم       | لا     | وصف العرض/ملاحظات |
| Processed                  | PROCESSED             | NUMBER(1, 0)    | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| Approved                   | APPROVED              | NUMBER(1, 0)    | لا     | نعم       | لا     | معتمد (1=نعم) |
| ApprovedUserId             | APRV_U_ID             | NUMBER(5, 0)    | لا     | نعم       | لا     | مستخدم الاعتماد |
| ApprovedDate               | APRV_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الاعتماد |
| ApprovedDesc               | APRV_DSC              | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الاعتماد |
| ReferenceNo                | REF_NO                | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| TenderNo                   | TEND_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المناقصة |
| TenderDate                 | TEND_DATE             | DATE            | لا     | نعم       | لا     | تاريخ المناقصة |
| ReferenceDate              | REF_DATE              | DATE            | لا     | نعم       | لا     | تاريخ المرجع |
| PortOfDeparture            | PORT_OF_DEP           | VARCHAR2(100)   | لا     | نعم       | لا     | منفذ الشحن/المغادرة |
| RequiredDays               | REQ_DAYS              | NUMBER(5, 0)    | لا     | نعم       | لا     | عدد الأيام المطلوبة للتنفيذ |
| PaymentTerms               | PAY_TERMS             | VARCHAR2(500)   | لا     | نعم       | لا     | شروط الدفع |
| DiscountAmount             | DISC_AMT              | NUMBER(24, 9)   | لا     | نعم       | لا     | مبلغ الخصم |
| OtherAmount                | OTHR_AMT              | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى (خدمات/مصاريف) |
| WithoutOtherAmount         | QT_WITHOUT_OTHR_AMT   | NUMBER(1, 0)    | لا     | نعم       | لا     | بدون مبالغ أخرى (1=نعم) |
| VATPriceType               | CLC_VAT_PRICE_TYP     | NUMBER          | لا     | نعم       | لا     | نوع احتساب الضريبة في السعر |
| Field1                     | FIELD1                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 1 |
| Field2                     | FIELD2                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 2 |
| Field3                     | FIELD3                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 3 |
| Field4                     | FIELD4                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 4 |
| Field5                     | FIELD5                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 5 |
| Field6                     | FIELD6                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 6 |
| Field7                     | FIELD7                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 7 |
| Field8                     | FIELD8                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 8 |
| Field9                     | FIELD9                | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 9 |
| Field10                    | FIELD10               | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 10 |
| DiscountAmountMaster       | DISC_AMT_MST          | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail       | DISC_AMT_DTL          | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| VATAmount                  | VAT_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| UseVAT                     | USE_VAT               | NUMBER(1, 0)    | لا     | نعم       | لا     | استخدام الضريبة (1=نعم) |
| AutoRenew                  | AUTO_RENEW            | NUMBER(1, 0)    | لا     | نعم       | لا     | تجديد تلقائي (1=نعم) |
| ReportPriority             | PR_REP                | NUMBER(10, 0)   | لا     | نعم       | لا     | أولوية التقرير |
| AddedUserId                | AD_U_ID               | NUMBER(5, 0)    | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID               | NUMBER(5, 0)    | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                | NUMBER(10, 0)   | لا     | نعم       | لا     | عدد مرات التحديث |
| CompanyNo                  | CMP_NO                | NUMBER(3, 0)    | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                | NUMBER(6, 0)    | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR              | NUMBER(4, 0)    | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR               | NUMBER(3, 0)    | لا     | نعم       | لا     | مستخدم الفرع |
| VATTypeNo                  | CLC_TYP_NO_TAX        | NUMBER(5, 0)    | لا     | نعم       | لا     | نوع احتساب الضريبة |
| AddedTerminal              | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CostType                   | COST_TYPE             | VARCHAR2(5)     | لا     | نعم       | لا     | نوع التكلفة |
| QuotationExpireDate        | QUOT_EXPIRE_DATE      | DATE            | لا     | نعم       | لا     | تاريخ انتهاء عرض السعر |
| TaxFreeQtyFlag             | CLC_TAX_FREE_QTY_FLG  | NUMBER(1, 0)    | لا     | نعم       | لا     | علم الكمية المعفاة من الضريبة |
| DeliveryTimeDays           | DLVRY_TIME_DYS        | NUMBER          | لا     | نعم       | لا     | مدة التوريد بالأيام |

---



## PurchaseQuotationDetail (**IAS_VND_QUOT_DTL**)
| الاسم الجديد              | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| QuotationNo              | QT_NO               | NUMBER(15,0)    | نعم    | لا        | لا     | رقم عرض السعر الرئيسي |
| QuotationSerial          | QT_SER              | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للعرض |
| ItemCode                 | I_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty                  | I_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الصنف المطلوبة |
| ItemUnit                 | ITM_UNT             | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE              | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY               | NUMBER          | لا     | نعم       | لا     | كمية العبوة |
| ItemPrice                | I_PRICE             | NUMBER(24,9)    | لا     | نعم       | لا     | سعر الوحدة |
| RecordNo                 | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| PRNo                     | PR_NO               | NUMBER(15,0)    | لا     | نعم       | لا     | رقم طلب الشراء المرجعي |
| PRSerial                 | PR_SER              | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل طلب الشراء المرجعي |
| ItemDesc                 | ITEM_DESC           | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| DiscountAmountMaster     | DIS_AMT_MST         | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي |
| DiscountAmountDetail     | DIS_AMT_DTL         | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountAmount           | DIS_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountPercent          | DIS_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الخصم |
| VATPercent               | VAT_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| FieldDtl1                | FIELD_DTL1          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                | FIELD_DTL2          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                | FIELD_DTL3          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                | FIELD_DTL4          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                | FIELD_DTL5          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| OtherAmount              | OTHR_AMT            | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| ItemPriceVAT             | I_PRICE_VAT         | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| CompanyNo                | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount              | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CostCenterCode           | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| FreeQty                  | FREE_QTY            | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| FieldDtl6                | FIELD_DTL6          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                | FIELD_DTL7          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                | FIELD_DTL8          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                | FIELD_DTL9          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10               | FIELD_DTL10         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |

---

## PurchaseInvoice (**IAS_PI_BILL_MST**)
| الاسم الجديد              | الاسم القديم             | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|-------------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseType             | PUR_TYPE                | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الشراء |
| BillDocType              | BILL_DOC_TYPE           | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo                   | BILL_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER                | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| BillDate                 | BILL_DATE               | DATE            | نعم    | لا        | لا     | تاريخ الفاتورة |
| BillCurrency             | BILL_CURRENCY           | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| BillRate                 | BILL_RATE               | NUMBER          | نعم    | لا        | لا     | سعر صرف العملة |
| StockRate                | STOCK_RATE              | NUMBER          | لا     | نعم       | لا     | سعر المخزون |
| VendorCode               | V_CODE                  | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| VendorName               | V_NAME                  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المورد |
| LCNo                     | LC_NO                   | VARCHAR2(15)    | لا     | نعم       | لا     | رقم الاعتماد المستندي |
| AccountCode              | A_CODE                  | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي |
| AccountCodeDetail        | AC_CODE_DTL             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب الفرعي |
| AccountDetailType        | AC_DTL_TYP              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| ChequeNo                 | CHEQUE_NO               | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الشيك |
| ChequeAmount             | CHEQUE_AMT              | NUMBER          | لا     | نعم       | لا     | مبلغ الشيك |
| ChequeDueDate            | CHEQUE_DUE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الشيك |
| BillDueDate              | BILL_DUE_DATE           | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الفاتورة |
| BillPost                 | BILL_POST               | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل الفاتورة (1=نعم) |
| BillGoodReceived         | BILL_GOOD_REC           | NUMBER(1,0)     | لا     | نعم       | لا     | تم استلام البضاعة (1=نعم) |
| DiscountAmount           | DISC_AMT                | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster     | DISC_AMT_MST            | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail     | DISC_AMT_DTL            | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| VATAmount                | VAT_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| BillAmount               | BILL_AMT                | NUMBER          | لا     | نعم       | لا     | إجمالي مبلغ الفاتورة |
| OtherAmount              | OTHR_AMT                | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى (مصاريف/خدمات) |
| BillWithoutOtherAmount   | BILL_WITHOUT_OTHR_AMT   | NUMBER(1,0)     | لا     | نعم       | لا     | فاتورة بدون مبالغ أخرى (1=نعم) |
| WarehouseCode            | W_CODE                  | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| ReferenceNo              | REF_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CashNo                   | CASH_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير |
| CashNoFCC                | CASH_NO_FCC             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير الأجنبي |
| CostCenterCode           | CC_CODE                 | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO                   | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| CashAccountFCC           | CASH_AC_FCC             | VARCHAR2(30)    | لا     | نعم       | لا     | حساب النقد الأجنبي |
| Description              | A_DESC                  | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات الفاتورة |
| DriverName               | DRIVER_NAME             | VARCHAR2(60)    | لا     | نعم       | لا     | اسم السائق |
| CarNo                    | CAR_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم السيارة |
| VATPriceType             | CLC_VAT_PRICE_TYP       | NUMBER          | لا     | نعم       | لا     | نوع احتساب الضريبة في السعر |
| Field1                   | FIELD1                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 1 |
| Field2                   | FIELD2                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 2 |
| Field3                   | FIELD3                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 3 |
| Field4                   | FIELD4                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 4 |
| Field5                   | FIELD5                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 5 |
| Field6                   | FIELD6                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 6 |
| Field7                   | FIELD7                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 7 |
| Field8                   | FIELD8                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 8 |
| Field9                   | FIELD9                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 9 |
| Field10                  | FIELD10                 | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 10 |
| ReportPriority           | PR_REP                  | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| ExpenseAmount            | EXP_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ المصاريف |
| UseVAT                   | USE_VAT                 | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الضريبة (1=نعم) |
| ExternalPost             | EXTERNAL_POST           | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| BillTypeNo               | BILL_TYPE_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| ConnectWithContract      | CNCT_WTH_CNTRCT         | NUMBER(1,0)     | لا     | نعم       | لا     | ربط مع عقد (1=نعم) |
| ContractNo               | CNTRCT_NO               | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContractSer              | CNTRCT_SER              | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ActivityNo               | ACTV_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| HungFlag                 | HUNG                    | NUMBER(1,0)     | لا     | نعم       | لا     | علم معلق (1=نعم) |
| FreightMethod            | FREIGHT_METHOD          | NUMBER(1,0)     | لا     | نعم       | لا     | طريقة الشحن |
| UnderSelling             | UNDER_SELLING           | NUMBER(1,0)     | لا     | نعم       | لا     | بيع تحت التكلفة (1=نعم) |
| VendorBillNo             | BILL_NO_V_CODE          | VARCHAR2(20)    | لا     | نعم       | لا     | رقم فاتورة المورد |
| PurchaseManagerCode      | PMAN_CODE               | VARCHAR2(15)    | لا     | نعم       | لا     | كود مسؤول الشراء |
| AddAmountType            | ADD_AMT_TYPE            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مبلغ إضافي |
| DiscountAmountNotEffect  | DISC_AMT_NOT_EFFECT     | NUMBER          | لا     | نعم       | لا     | مبلغ خصم غير مؤثر |
| AddDiscountAmountMaster  | ADD_DISC_AMT_MST        | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DISC_AMT_DTL        | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| ReceiveBillDate          | RCV_BILL_DATE           | DATE            | لا     | نعم       | لا     | تاريخ استلام الفاتورة |
| VendorBillDate           | BILL_DATE_V_CODE        | DATE            | لا     | نعم       | لا     | تاريخ فاتورة المورد |
| DocumentAmount           | DOC_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ المستند |
| DocumentBranchNo         | DOC_BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند |
| DocumentType             | DOC_TYPE                | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند |
| BillNoRef                | BILL_NO_REF             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرجعي |
| BillSerRef               | BILL_SER_REF            | NUMBER          | لا     | نعم       | لا     | تسلسل الفاتورة المرجعي |
| ServiceBill              | SRVC_BILL               | NUMBER(1,0)     | لا     | نعم       | لا     | فاتورة خدمات (1=نعم) |
| ContractBatchNo          | CNTRCT_BTCH_NO          | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| BillNoConn               | BILL_NO_CONN            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم فاتورة مرتبطة |
| BillSerConn              | BILL_SER_CONN           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل فاتورة مرتبطة |
| VendorGCC                | VND_GCC                 | NUMBER(1,0)     | لا     | نعم       | لا     | مورد خليجي (1=نعم) |
| VendorAddress            | V_ADDRESS               | VARCHAR2(100)   | لا     | نعم       | لا     | عنوان المورد |
| VendorTaxCode            | V_TAX_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | الرقم الضريبي للمورد |
| CommercialRegNo          | CR_NO                   | VARCHAR2(60)    | لا     | نعم       | لا     | السجل التجاري |
| OtherAmountDiscount      | OTHR_AMT_DISC           | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| AuditRef                 | AUDIT_REF               | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc             | AUDIT_REF_DESC          | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId           | AUDIT_REF_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate             | AUDIT_REF_DATE          | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| AddedUserId              | AD_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                | AD_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId            | UP_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate              | UP_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount              | UP_CNT                  | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| PostUserId               | POST_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate                 | POST_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId             | UNPOST_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate               | UNPOST_DATE             | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| CompanyNo                | CMP_NO                  | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO                  | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR                | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR                 | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArrivalDate              | ARV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ الوصول |
| FreightRegisterDate      | FRGHT_RGSTR_DATE        | DATE            | لا     | نعم       | لا     | تاريخ تسجيل الشحن |
| AddedTerminal            | AD_TRMNL_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal          | UP_TRMNL_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| PostTaxDueAcCode         | POST_TAX_DUE_AC_CODE    | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب ضريبة مستحقة |
| UseTDSFlag               | USE_TDS_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام TDS (1=نعم) |
| AccountCode2             | AC_CODE                 | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب إضافي |
| AccountAmount            | AC_AMT                  | NUMBER          | لا     | نعم       | لا     | مبلغ الحساب |
| PaymentAccount           | PYMNT_AC                | NUMBER          | لا     | نعم       | لا     | حساب الدفع |
| LevelNoPrice             | LVL_NO_PRICE            | NUMBER(3,0)     | لا     | نعم       | لا     | مستوى السعر |
| TaxFreeQtyFlag           | CLC_TAX_FREE_QTY_FLG    | NUMBER(1,0)     | لا     | نعم       | لا     | علم كمية معفاة من الضريبة |

---

## PurchaseInvoiceDetail (**IAS_PI_BILL_DTL**)
| الاسم الجديد              | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseType             | PUR_TYPE              | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الشراء |
| BillDocType              | BILL_DOC_TYPE         | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo                   | BILL_NO               | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER              | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| ItemCode                 | I_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemName                 | I_NM                  | VARCHAR2(60)    | لا     | نعم       | لا     | اسم الصنف |
| ItemQty                  | I_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الصنف |
| FreeQty                  | FREE_QTY              | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ItemUnit                 | ITM_UNT               | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE                | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY                 | NUMBER          | نعم    | لا        | لا     | كمية العبوة |
| ItemPrice                | I_PRICE               | NUMBER          | لا     | نعم       | لا     | سعر الصنف |
| StockCost                | STK_COST              | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون للصنف |
| IncomingQty              | INC_QTY               | NUMBER          | لا     | نعم       | لا     | كمية واردة |
| IncomingFreeQty          | INC_FREE_QTY          | NUMBER          | لا     | نعم       | لا     | كمية واردة مجانية |
| WarehouseCode            | W_CODE                | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode           | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ExpireDate               | EXPIRE_DATE           | DATE            | نعم    | لا        | لا     | تاريخ انتهاء الصنف |
| BatchNo                  | BATCH_NO              | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة |
| DiscountAmountMaster     | DIS_AMT_MST           | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountPercent          | DIS_PER               | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmountDetail     | DIS_AMT_DTL           | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| DiscountPercent2         | DIS_PER2              | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة خصم إضافية |
| DiscountAmountDetail2    | DIS_AMT_DTL2          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي |
| DiscountPercent3         | DIS_PER3              | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3    | DIS_AMT_DTL3          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| DiscountAmount           | DIS_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الكلي |
| VATPercent               | VAT_PER               | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| AddAmount                | ADD_AMT               | NUMBER          | لا     | نعم       | لا     | مبالغ إضافية |
| OtherAmount              | OTHR_AMT              | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى |
| UseSerialNo              | USE_SERIALNO          | NUMBER(1,0)     | لا     | نعم       | لا     | علم استخدام الرقم التسلسلي |
| RecordNo                 | RCRD_NO               | NUMBER(10,0)    | نعم    | لا        | لا     | رقم السطر الداخلي |
| DocSequence              | DOC_SEQUENCE          | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر في المستند |
| DocSequenceGRNPO         | DOC_SEQUENCE_GRN_PO   | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر في استلام البضاعة المرتبط |
| ItemDesc                 | ITEM_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| Barcode                  | BARCODE               | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| PurchaseOrderNo          | PO_NO                 | NUMBER(15,0)    | لا     | نعم       | لا     | رقم أمر الشراء المرتبط |
| PurchaseOrderSerial      | PO_SER                | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل أمر الشراء المرتبط |
| GoodsReceiptNo           | GRN_NO                | NUMBER(15,0)    | لا     | نعم       | لا     | رقم استلام البضاعة المرتبط |
| GoodsReceiptSerial       | GRN_SER               | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل استلام البضاعة المرتبط |
| UseAttachment            | USE_ATTCH             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment        | REC_ATTCH             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات للصنف |
| DiscountAmountNotEffect  | DIS_AMT_NOT_EFFECT    | NUMBER          | لا     | نعم       | لا     | مبلغ خصم غير مؤثر |
| AddDiscountAmountMaster  | ADD_DIS_AMT_MST       | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DIS_AMT_DTL       | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| ItemLength               | I_LENGTH              | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth                | I_WIDTH               | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight               | I_HEIGHT              | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber               | I_NUMBER              | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| PostCode                 | POST_CODE             | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل |
| UnitSize                 | UNIT_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم الوحدة |
| UnitQty                  | U_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الوحدات |
| GoodsReceiptRef          | GR_REF                | VARCHAR2(250)   | لا     | نعم       | لا     | مرجع استلام البضاعة |
| DocumentType             | DOC_TYPE              | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند |
| DocSequencePO            | DOC_SEQUENCE_PO       | NUMBER          | لا     | نعم       | لا     | تسلسل أمر الشراء المرتبط |
| POOrderNo                | PO_ORDER_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم أمر الشراء الخارجي |
| POOrderSer               | PO_ORDER_SER          | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل أمر الشراء الخارجي |
| WeightQty                | WT_QTY                | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| WeightUnit               | WT_UNT                | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| ServiceItem              | SERVICE_ITM           | NUMBER(1,0)     | لا     | نعم       | لا     | عنصر خدمة (1=نعم) |
| FreeQtyProfit            | FREE_QTY_PROFT        | NUMBER          | لا     | نعم       | لا     | كمية مجانية ربحية |
| ItemPriceVAT             | I_PRICE_VAT           | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| ContractNo               | CNTRCT_NO             | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContainerNo              | CNTNR_NO              | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الحاوية |
| ContractSer              | CNTRCT_SER            | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ContractBatchNo          | CNTRCT_BTCH_NO        | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| FreightNo                | FREIGHT_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الشحنة |
| FreightSer               | FREIGHT_SER           | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل الشحنة |
| FreightDocSequence       | FREIGHT_DOC_SEQUENCE  | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل مستند الشحنة |
| OtherAmountDiscount      | OTHR_AMT_DISC         | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR          | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| DocNoRef                 | DOC_NO_REF            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef                | DOC_SER_REF           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocTypeRef               | DOC_TYP_REF           | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocSequenceRef           | DOC_SEQUENCE_REF      | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر المرجعي |
| CompanyNo                | CMP_NO                | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO                | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR              | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR               | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArgumentNo               | ARGMNT_NO             | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| OtherAmountItem          | OTHR_AMT_ITM          | NUMBER          | لا     | نعم       | لا     | مبلغ إضافي للصنف |
| PackageUnit              | PKG_UNT               | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة التغليف |
| PackageUnitSize          | PKG_UNT_SIZE          | NUMBER(10,0)    | لا     | نعم       | لا     | حجم وحدة التغليف |
| PackageQty               | PKG_QTY               | NUMBER          | لا     | نعم       | لا     | كمية التغليف |
| PackageLength            | PKG_LENGTH            | NUMBER          | لا     | نعم       | لا     | طول التغليف |
| PackageWidth             | PKG_WIDTH             | NUMBER          | لا     | نعم       | لا     | عرض التغليف |
| PackageHeight            | PKG_HEIGHT            | NUMBER          | لا     | نعم       | لا     | ارتفاع التغليف |
| PackageSize              | PKG_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم التغليف |
| PackageWeight            | PKG_WEIGHT            | NUMBER          | لا     | نعم       | لا     | وزن التغليف |
| UpdateCount              | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| SalePrice                | SALE_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر البيع للصنف |
| FieldDtl1                | FIELD_DTL1            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                | FIELD_DTL2            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                | FIELD_DTL3            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                | FIELD_DTL4            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                | FIELD_DTL5            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| FieldDtl6                | FIELD_DTL6            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                | FIELD_DTL7            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                | FIELD_DTL8            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                | FIELD_DTL9            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10               | FIELD_DTL10           | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |
| BarcodePrint             | BARCODE_PRNT          | NUMBER(1,0)     | لا     | نعم       | لا     | طباعة باركود (1=نعم) |
| LastIncomePrice          | LAST_INCOME_PRICE     | NUMBER          | لا     | نعم       | لا     | آخر سعر شراء للصنف |
| ActualQty                | ACTUL_QTY             | NUMBER          | لا     | نعم       | لا     | الكمية الفعلية |
| LossQty                  | LOS_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الفاقد |

---


## PurchaseQuotationDetail (**IAS_VND_QUOT_DTL**)
| الاسم الجديد              | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| QuotationNo              | QT_NO               | NUMBER(15,0)    | نعم    | لا        | لا     | رقم عرض السعر الرئيسي |
| QuotationSerial          | QT_SER              | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للعرض |
| ItemCode                 | I_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty                  | I_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الصنف المطلوبة |
| ItemUnit                 | ITM_UNT             | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE              | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY               | NUMBER          | لا     | نعم       | لا     | كمية العبوة |
| ItemPrice                | I_PRICE             | NUMBER(24,9)    | لا     | نعم       | لا     | سعر الوحدة |
| RecordNo                 | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| PRNo                     | PR_NO               | NUMBER(15,0)    | لا     | نعم       | لا     | رقم طلب الشراء المرجعي |
| PRSerial                 | PR_SER              | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل طلب الشراء المرجعي |
| ItemDesc                 | ITEM_DESC           | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| DiscountAmountMaster     | DIS_AMT_MST         | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي |
| DiscountAmountDetail     | DIS_AMT_DTL         | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountAmount           | DIS_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountPercent          | DIS_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الخصم |
| VATPercent               | VAT_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| FieldDtl1                | FIELD_DTL1          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                | FIELD_DTL2          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                | FIELD_DTL3          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                | FIELD_DTL4          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                | FIELD_DTL5          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| OtherAmount              | OTHR_AMT            | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| ItemPriceVAT             | I_PRICE_VAT         | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| CompanyNo                | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount              | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CostCenterCode           | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| FreeQty                  | FREE_QTY            | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| FieldDtl6                | FIELD_DTL6          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                | FIELD_DTL7          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                | FIELD_DTL8          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                | FIELD_DTL9          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10               | FIELD_DTL10         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |

---

## PurchaseInvoice (**IAS_PI_BILL_MST**)
| الاسم الجديد              | الاسم القديم             | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|-------------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseType             | PUR_TYPE                | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الشراء |
| BillDocType              | BILL_DOC_TYPE           | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo                   | BILL_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER                | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| BillDate                 | BILL_DATE               | DATE            | نعم    | لا        | لا     | تاريخ الفاتورة |
| BillCurrency             | BILL_CURRENCY           | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| BillRate                 | BILL_RATE               | NUMBER          | نعم    | لا        | لا     | سعر صرف العملة |
| StockRate                | STOCK_RATE              | NUMBER          | لا     | نعم       | لا     | سعر المخزون |
| VendorCode               | V_CODE                  | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| VendorName               | V_NAME                  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المورد |
| LCNo                     | LC_NO                   | VARCHAR2(15)    | لا     | نعم       | لا     | رقم الاعتماد المستندي |
| AccountCode              | A_CODE                  | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي |
| AccountCodeDetail        | AC_CODE_DTL             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب الفرعي |
| AccountDetailType        | AC_DTL_TYP              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| ChequeNo                 | CHEQUE_NO               | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الشيك |
| ChequeAmount             | CHEQUE_AMT              | NUMBER          | لا     | نعم       | لا     | مبلغ الشيك |
| ChequeDueDate            | CHEQUE_DUE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الشيك |
| BillDueDate              | BILL_DUE_DATE           | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الفاتورة |
| BillPost                 | BILL_POST               | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل الفاتورة (1=نعم) |
| BillGoodReceived         | BILL_GOOD_REC           | NUMBER(1,0)     | لا     | نعم       | لا     | تم استلام البضاعة (1=نعم) |
| DiscountAmount           | DISC_AMT                | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster     | DISC_AMT_MST            | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail     | DISC_AMT_DTL            | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| VATAmount                | VAT_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| BillAmount               | BILL_AMT                | NUMBER          | لا     | نعم       | لا     | إجمالي مبلغ الفاتورة |
| OtherAmount              | OTHR_AMT                | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى (مصاريف/خدمات) |
| BillWithoutOtherAmount   | BILL_WITHOUT_OTHR_AMT   | NUMBER(1,0)     | لا     | نعم       | لا     | فاتورة بدون مبالغ أخرى (1=نعم) |
| WarehouseCode            | W_CODE                  | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| ReferenceNo              | REF_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CashNo                   | CASH_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير |
| CashNoFCC                | CASH_NO_FCC             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير الأجنبي |
| CostCenterCode           | CC_CODE                 | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO                   | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| CashAccountFCC           | CASH_AC_FCC             | VARCHAR2(30)    | لا     | نعم       | لا     | حساب النقد الأجنبي |
| Description              | A_DESC                  | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات الفاتورة |
| DriverName               | DRIVER_NAME             | VARCHAR2(60)    | لا     | نعم       | لا     | اسم السائق |
| CarNo                    | CAR_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم السيارة |
| VATPriceType             | CLC_VAT_PRICE_TYP       | NUMBER          | لا     | نعم       | لا     | نوع احتساب الضريبة في السعر |
| Field1                   | FIELD1                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 1 |
| Field2                   | FIELD2                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 2 |
| Field3                   | FIELD3                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 3 |
| Field4                   | FIELD4                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 4 |
| Field5                   | FIELD5                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 5 |
| Field6                   | FIELD6                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 6 |
| Field7                   | FIELD7                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 7 |
| Field8                   | FIELD8                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 8 |
| Field9                   | FIELD9                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 9 |
| Field10                  | FIELD10                 | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 10 |
| ReportPriority           | PR_REP                  | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| ExpenseAmount            | EXP_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ المصاريف |
| UseVAT                   | USE_VAT                 | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الضريبة (1=نعم) |
| ExternalPost             | EXTERNAL_POST           | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| BillTypeNo               | BILL_TYPE_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| ConnectWithContract      | CNCT_WTH_CNTRCT         | NUMBER(1,0)     | لا     | نعم       | لا     | ربط مع عقد (1=نعم) |
| ContractNo               | CNTRCT_NO               | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContractSer              | CNTRCT_SER              | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ActivityNo               | ACTV_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| HungFlag                 | HUNG                    | NUMBER(1,0)     | لا     | نعم       | لا     | علم معلق (1=نعم) |
| FreightMethod            | FREIGHT_METHOD          | NUMBER(1,0)     | لا     | نعم       | لا     | طريقة الشحن |
| UnderSelling             | UNDER_SELLING           | NUMBER(1,0)     | لا     | نعم       | لا     | بيع تحت التكلفة (1=نعم) |
| VendorBillNo             | BILL_NO_V_CODE          | VARCHAR2(20)    | لا     | نعم       | لا     | رقم فاتورة المورد |
| PurchaseManagerCode      | PMAN_CODE               | VARCHAR2(15)    | لا     | نعم       | لا     | كود مسؤول الشراء |
| AddAmountType            | ADD_AMT_TYPE            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مبلغ إضافي |
| DiscountAmountNotEffect  | DISC_AMT_NOT_EFFECT     | NUMBER          | لا     | نعم       | لا     | مبلغ خصم غير مؤثر |
| AddDiscountAmountMaster  | ADD_DISC_AMT_MST        | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DISC_AMT_DTL        | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| ReceiveBillDate          | RCV_BILL_DATE           | DATE            | لا     | نعم       | لا     | تاريخ استلام الفاتورة |
| VendorBillDate           | BILL_DATE_V_CODE        | DATE            | لا     | نعم       | لا     | تاريخ فاتورة المورد |
| DocumentAmount           | DOC_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ المستند |
| DocumentBranchNo         | DOC_BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند |
| DocumentType             | DOC_TYPE                | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند |
| BillNoRef                | BILL_NO_REF             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرجعي |
| BillSerRef               | BILL_SER_REF            | NUMBER          | لا     | نعم       | لا     | تسلسل الفاتورة المرجعي |
| ServiceBill              | SRVC_BILL               | NUMBER(1,0)     | لا     | نعم       | لا     | فاتورة خدمات (1=نعم) |
| ContractBatchNo          | CNTRCT_BTCH_NO          | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| BillNoConn               | BILL_NO_CONN            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم فاتورة مرتبطة |
| BillSerConn              | BILL_SER_CONN           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل فاتورة مرتبطة |
| VendorGCC                | VND_GCC                 | NUMBER(1,0)     | لا     | نعم       | لا     | مورد خليجي (1=نعم) |
| VendorAddress            | V_ADDRESS               | VARCHAR2(100)   | لا     | نعم       | لا     | عنوان المورد |
| VendorTaxCode            | V_TAX_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | الرقم الضريبي للمورد |
| CommercialRegNo          | CR_NO                   | VARCHAR2(60)    | لا     | نعم       | لا     | السجل التجاري |
| OtherAmountDiscount      | OTHR_AMT_DISC           | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| AuditRef                 | AUDIT_REF               | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc             | AUDIT_REF_DESC          | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId           | AUDIT_REF_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate             | AUDIT_REF_DATE          | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| AddedUserId              | AD_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                | AD_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId            | UP_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate              | UP_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount              | UP_CNT                  | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| PostUserId               | POST_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate                 | POST_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId             | UNPOST_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate               | UNPOST_DATE             | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| CompanyNo                | CMP_NO                  | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO                  | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR                | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR                 | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArrivalDate              | ARV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ الوصول |
| FreightRegisterDate      | FRGHT_RGSTR_DATE        | DATE            | لا     | نعم       | لا     | تاريخ تسجيل الشحن |
| AddedTerminal            | AD_TRMNL_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal          | UP_TRMNL_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| PostTaxDueAcCode         | POST_TAX_DUE_AC_CODE    | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب ضريبة مستحقة |
| UseTDSFlag               | USE_TDS_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام TDS (1=نعم) |
| AccountCode2             | AC_CODE                 | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب إضافي |
| AccountAmount            | AC_AMT                  | NUMBER          | لا     | نعم       | لا     | مبلغ الحساب |
| PaymentAccount           | PYMNT_AC                | NUMBER          | لا     | نعم       | لا     | حساب الدفع |
| LevelNoPrice             | LVL_NO_PRICE            | NUMBER(3,0)     | لا     | نعم       | لا     | مستوى السعر |
| TaxFreeQtyFlag           | CLC_TAX_FREE_QTY_FLG    | NUMBER(1,0)     | لا     | نعم       | لا     | علم كمية معفاة من الضريبة |

---

## PurchaseInvoiceDetail (**IAS_PI_BILL_DTL**)
| الاسم الجديد              | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseType             | PUR_TYPE              | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الشراء |
| BillDocType              | BILL_DOC_TYPE         | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo                   | BILL_NO               | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER              | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| ItemCode                 | I_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemName                 | I_NM                  | VARCHAR2(60)    | لا     | نعم       | لا     | اسم الصنف |
| ItemQty                  | I_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الصنف |
| FreeQty                  | FREE_QTY              | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ItemUnit                 | ITM_UNT               | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE                | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY                 | NUMBER          | نعم    | لا        | لا     | كمية العبوة |
| ItemPrice                | I_PRICE               | NUMBER          | لا     | نعم       | لا     | سعر الصنف |
| StockCost                | STK_COST              | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون للصنف |
| IncomingQty              | INC_QTY               | NUMBER          | لا     | نعم       | لا     | كمية واردة |
| IncomingFreeQty          | INC_FREE_QTY          | NUMBER          | لا     | نعم       | لا     | كمية واردة مجانية |
| WarehouseCode            | W_CODE                | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode           | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ExpireDate               | EXPIRE_DATE           | DATE            | نعم    | لا        | لا     | تاريخ انتهاء الصنف |
| BatchNo                  | BATCH_NO              | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة |
| DiscountAmountMaster     | DIS_AMT_MST           | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountPercent          | DIS_PER               | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmountDetail     | DIS_AMT_DTL           | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| DiscountPercent2         | DIS_PER2              | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة خصم إضافية |
| DiscountAmountDetail2    | DIS_AMT_DTL2          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي |
| DiscountPercent3         | DIS_PER3              | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3    | DIS_AMT_DTL3          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| DiscountAmount           | DIS_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الكلي |
| VATPercent               | VAT_PER               | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| AddAmount                | ADD_AMT               | NUMBER          | لا     | نعم       | لا     | مبالغ إضافية |
| OtherAmount              | OTHR_AMT              | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى |
| UseSerialNo              | USE_SERIALNO          | NUMBER(1,0)     | لا     | نعم       | لا     | علم استخدام الرقم التسلسلي |
| RecordNo                 | RCRD_NO               | NUMBER(10,0)    | نعم    | لا        | لا     | رقم السطر الداخلي |
| DocSequence              | DOC_SEQUENCE          | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر في المستند |
| DocSequenceGRNPO         | DOC_SEQUENCE_GRN_PO   | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر في استلام البضاعة المرتبط |
| ItemDesc                 | ITEM_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| Barcode                  | BARCODE               | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| PurchaseOrderNo          | PO_NO                 | NUMBER(15,0)    | لا     | نعم       | لا     | رقم أمر الشراء المرتبط |
| PurchaseOrderSerial      | PO_SER                | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل أمر الشراء المرتبط |
| GoodsReceiptNo           | GRN_NO                | NUMBER(15,0)    | لا     | نعم       | لا     | رقم استلام البضاعة المرتبط |
| GoodsReceiptSerial       | GRN_SER               | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل استلام البضاعة المرتبط |
| UseAttachment            | USE_ATTCH             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment        | REC_ATTCH             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات للصنف |
| DiscountAmountNotEffect  | DIS_AMT_NOT_EFFECT    | NUMBER          | لا     | نعم       | لا     | مبلغ خصم غير مؤثر |
| AddDiscountAmountMaster  | ADD_DIS_AMT_MST       | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DIS_AMT_DTL       | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| ItemLength               | I_LENGTH              | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth                | I_WIDTH               | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight               | I_HEIGHT              | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber               | I_NUMBER              | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| PostCode                 | POST_CODE             | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل |
| UnitSize                 | UNIT_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم الوحدة |
| UnitQty                  | U_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الوحدات |
| GoodsReceiptRef          | GR_REF                | VARCHAR2(250)   | لا     | نعم       | لا     | مرجع استلام البضاعة |
| DocumentType             | DOC_TYPE              | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند |
| DocSequencePO            | DOC_SEQUENCE_PO       | NUMBER          | لا     | نعم       | لا     | تسلسل أمر الشراء المرتبط |
| POOrderNo                | PO_ORDER_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم أمر الشراء الخارجي |
| POOrderSer               | PO_ORDER_SER          | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل أمر الشراء الخارجي |
| WeightQty                | WT_QTY                | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| WeightUnit               | WT_UNT                | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| ServiceItem              | SERVICE_ITM           | NUMBER(1,0)     | لا     | نعم       | لا     | عنصر خدمة (1=نعم) |
| FreeQtyProfit            | FREE_QTY_PROFT        | NUMBER          | لا     | نعم       | لا     | كمية مجانية ربحية |
| ItemPriceVAT             | I_PRICE_VAT           | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| ContractNo               | CNTRCT_NO             | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContainerNo              | CNTNR_NO              | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الحاوية |
| ContractSer              | CNTRCT_SER            | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ContractBatchNo          | CNTRCT_BTCH_NO        | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| FreightNo                | FREIGHT_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الشحنة |
| FreightSer               | FREIGHT_SER           | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل الشحنة |
| FreightDocSequence       | FREIGHT_DOC_SEQUENCE  | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل مستند الشحنة |
| OtherAmountDiscount      | OTHR_AMT_DISC         | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR          | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| DocNoRef                 | DOC_NO_REF            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef                | DOC_SER_REF           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocTypeRef               | DOC_TYP_REF           | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocSequenceRef           | DOC_SEQUENCE_REF      | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر المرجعي |
| CompanyNo                | CMP_NO                | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO                | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR              | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR               | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArgumentNo               | ARGMNT_NO             | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| OtherAmountItem          | OTHR_AMT_ITM          | NUMBER          | لا     | نعم       | لا     | مبلغ إضافي للصنف |
| PackageUnit              | PKG_UNT               | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة التغليف |
| PackageUnitSize          | PKG_UNT_SIZE          | NUMBER(10,0)    | لا     | نعم       | لا     | حجم وحدة التغليف |
| PackageQty               | PKG_QTY               | NUMBER          | لا     | نعم       | لا     | كمية التغليف |
| PackageLength            | PKG_LENGTH            | NUMBER          | لا     | نعم       | لا     | طول التغليف |
| PackageWidth             | PKG_WIDTH             | NUMBER          | لا     | نعم       | لا     | عرض التغليف |
| PackageHeight            | PKG_HEIGHT            | NUMBER          | لا     | نعم       | لا     | ارتفاع التغليف |
| PackageSize              | PKG_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم التغليف |
| PackageWeight            | PKG_WEIGHT            | NUMBER          | لا     | نعم       | لا     | وزن التغليف |
| UpdateCount              | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| SalePrice                | SALE_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر البيع للصنف |
| FieldDtl1                | FIELD_DTL1            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                | FIELD_DTL2            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                | FIELD_DTL3            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                | FIELD_DTL4            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                | FIELD_DTL5            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| FieldDtl6                | FIELD_DTL6            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                | FIELD_DTL7            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                | FIELD_DTL8            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                | FIELD_DTL9            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10               | FIELD_DTL10           | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |
| BarcodePrint             | BARCODE_PRNT          | NUMBER(1,0)     | لا     | نعم       | لا     | طباعة باركود (1=نعم) |
| LastIncomePrice          | LAST_INCOME_PRICE     | NUMBER          | لا     | نعم       | لا     | آخر سعر شراء للصنف |
| ActualQty                | ACTUL_QTY             | NUMBER          | لا     | نعم       | لا     | الكمية الفعلية |
| LossQty                  | LOS_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الفاقد |

---



## PurchaseQuotationDetail (**IAS_VND_QUOT_DTL**)
| الاسم الجديد              | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| QuotationNo              | QT_NO               | NUMBER(15,0)    | نعم    | لا        | لا     | رقم عرض السعر الرئيسي |
| QuotationSerial          | QT_SER              | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للعرض |
| ItemCode                 | I_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty                  | I_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الصنف المطلوبة |
| ItemUnit                 | ITM_UNT             | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE              | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY               | NUMBER          | لا     | نعم       | لا     | كمية العبوة |
| ItemPrice                | I_PRICE             | NUMBER(24,9)    | لا     | نعم       | لا     | سعر الوحدة |
| RecordNo                 | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| PRNo                     | PR_NO               | NUMBER(15,0)    | لا     | نعم       | لا     | رقم طلب الشراء المرجعي |
| PRSerial                 | PR_SER              | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل طلب الشراء المرجعي |
| ItemDesc                 | ITEM_DESC           | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| DiscountAmountMaster     | DIS_AMT_MST         | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي |
| DiscountAmountDetail     | DIS_AMT_DTL         | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountAmount           | DIS_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountPercent          | DIS_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الخصم |
| VATPercent               | VAT_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| FieldDtl1                | FIELD_DTL1          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                | FIELD_DTL2          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                | FIELD_DTL3          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                | FIELD_DTL4          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                | FIELD_DTL5          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| OtherAmount              | OTHR_AMT            | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| ItemPriceVAT             | I_PRICE_VAT         | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| CompanyNo                | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount              | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CostCenterCode           | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| FreeQty                  | FREE_QTY            | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| FieldDtl6                | FIELD_DTL6          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                | FIELD_DTL7          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                | FIELD_DTL8          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                | FIELD_DTL9          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10               | FIELD_DTL10         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |

---

## PurchaseInvoice (**IAS_PI_BILL_MST**)
| الاسم الجديد              | الاسم القديم             | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|-------------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseType             | PUR_TYPE                | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الشراء |
| BillDocType              | BILL_DOC_TYPE           | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo                   | BILL_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER                | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| BillDate                 | BILL_DATE               | DATE            | نعم    | لا        | لا     | تاريخ الفاتورة |
| BillCurrency             | BILL_CURRENCY           | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| BillRate                 | BILL_RATE               | NUMBER          | نعم    | لا        | لا     | سعر صرف العملة |
| StockRate                | STOCK_RATE              | NUMBER          | لا     | نعم       | لا     | سعر المخزون |
| VendorCode               | V_CODE                  | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| VendorName               | V_NAME                  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المورد |
| LCNo                     | LC_NO                   | VARCHAR2(15)    | لا     | نعم       | لا     | رقم الاعتماد المستندي |
| AccountCode              | A_CODE                  | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي |
| AccountCodeDetail        | AC_CODE_DTL             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب الفرعي |
| AccountDetailType        | AC_DTL_TYP              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| ChequeNo                 | CHEQUE_NO               | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الشيك |
| ChequeAmount             | CHEQUE_AMT              | NUMBER          | لا     | نعم       | لا     | مبلغ الشيك |
| ChequeDueDate            | CHEQUE_DUE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الشيك |
| BillDueDate              | BILL_DUE_DATE           | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الفاتورة |
| BillPost                 | BILL_POST               | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل الفاتورة (1=نعم) |
| BillGoodReceived         | BILL_GOOD_REC           | NUMBER(1,0)     | لا     | نعم       | لا     | تم استلام البضاعة (1=نعم) |
| DiscountAmount           | DISC_AMT                | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster     | DISC_AMT_MST            | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail     | DISC_AMT_DTL            | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| VATAmount                | VAT_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| BillAmount               | BILL_AMT                | NUMBER          | لا     | نعم       | لا     | إجمالي مبلغ الفاتورة |
| OtherAmount              | OTHR_AMT                | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى (مصاريف/خدمات) |
| BillWithoutOtherAmount   | BILL_WITHOUT_OTHR_AMT   | NUMBER(1,0)     | لا     | نعم       | لا     | فاتورة بدون مبالغ أخرى (1=نعم) |
| WarehouseCode            | W_CODE                  | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| ReferenceNo              | REF_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CashNo                   | CASH_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير |
| CashNoFCC                | CASH_NO_FCC             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير الأجنبي |
| CostCenterCode           | CC_CODE                 | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO                   | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| CashAccountFCC           | CASH_AC_FCC             | VARCHAR2(30)    | لا     | نعم       | لا     | حساب النقد الأجنبي |
| Description              | A_DESC                  | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات الفاتورة |
| DriverName               | DRIVER_NAME             | VARCHAR2(60)    | لا     | نعم       | لا     | اسم السائق |
| CarNo                    | CAR_NO                  | VARCHAR2(15)    | لا     | نعم       | لا     | رقم السيارة |
| VATPriceType             | CLC_VAT_PRICE_TYP       | NUMBER          | لا     | نعم       | لا     | نوع احتساب الضريبة في السعر |
| Field1                   | FIELD1                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 1 |
| Field2                   | FIELD2                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 2 |
| Field3                   | FIELD3                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 3 |
| Field4                   | FIELD4                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 4 |
| Field5                   | FIELD5                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 5 |
| Field6                   | FIELD6                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 6 |
| Field7                   | FIELD7                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 7 |
| Field8                   | FIELD8                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 8 |
| Field9                   | FIELD9                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 9 |
| Field10                  | FIELD10                 | VARCHAR2(250)   | لا     | نعم       | لا     | حقل مرن 10 |
| ReportPriority           | PR_REP                  | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| ExpenseAmount            | EXP_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ المصاريف |
| UseVAT                   | USE_VAT                 | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الضريبة (1=نعم) |
| ExternalPost             | EXTERNAL_POST           | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| BillTypeNo               | BILL_TYPE_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| ConnectWithContract      | CNCT_WTH_CNTRCT         | NUMBER(1,0)     | لا     | نعم       | لا     | ربط مع عقد (1=نعم) |
| ContractNo               | CNTRCT_NO               | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContractSer              | CNTRCT_SER              | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ActivityNo               | ACTV_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| HungFlag                 | HUNG                    | NUMBER(1,0)     | لا     | نعم       | لا     | علم معلق (1=نعم) |
| FreightMethod            | FREIGHT_METHOD          | NUMBER(1,0)     | لا     | نعم       | لا     | طريقة الشحن |
| UnderSelling             | UNDER_SELLING           | NUMBER(1,0)     | لا     | نعم       | لا     | بيع تحت التكلفة (1=نعم) |
| VendorBillNo             | BILL_NO_V_CODE          | VARCHAR2(20)    | لا     | نعم       | لا     | رقم فاتورة المورد |
| PurchaseManagerCode      | PMAN_CODE               | VARCHAR2(15)    | لا     | نعم       | لا     | كود مسؤول الشراء |
| AddAmountType            | ADD_AMT_TYPE            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مبلغ إضافي |
| DiscountAmountNotEffect  | DISC_AMT_NOT_EFFECT     | NUMBER          | لا     | نعم       | لا     | مبلغ خصم غير مؤثر |
| AddDiscountAmountMaster  | ADD_DISC_AMT_MST        | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DISC_AMT_DTL        | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| ReceiveBillDate          | RCV_BILL_DATE           | DATE            | لا     | نعم       | لا     | تاريخ استلام الفاتورة |
| VendorBillDate           | BILL_DATE_V_CODE        | DATE            | لا     | نعم       | لا     | تاريخ فاتورة المورد |
| DocumentAmount           | DOC_AMT                 | NUMBER          | لا     | نعم       | لا     | مبلغ المستند |
| DocumentBranchNo         | DOC_BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند |
| DocumentType             | DOC_TYPE                | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند |
| BillNoRef                | BILL_NO_REF             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرجعي |
| BillSerRef               | BILL_SER_REF            | NUMBER          | لا     | نعم       | لا     | تسلسل الفاتورة المرجعي |
| ServiceBill              | SRVC_BILL               | NUMBER(1,0)     | لا     | نعم       | لا     | فاتورة خدمات (1=نعم) |
| ContractBatchNo          | CNTRCT_BTCH_NO          | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| BillNoConn               | BILL_NO_CONN            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم فاتورة مرتبطة |
| BillSerConn              | BILL_SER_CONN           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل فاتورة مرتبطة |
| VendorGCC                | VND_GCC                 | NUMBER(1,0)     | لا     | نعم       | لا     | مورد خليجي (1=نعم) |
| VendorAddress            | V_ADDRESS               | VARCHAR2(100)   | لا     | نعم       | لا     | عنوان المورد |
| VendorTaxCode            | V_TAX_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | الرقم الضريبي للمورد |
| CommercialRegNo          | CR_NO                   | VARCHAR2(60)    | لا     | نعم       | لا     | السجل التجاري |
| OtherAmountDiscount      | OTHR_AMT_DISC           | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| AuditRef                 | AUDIT_REF               | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc             | AUDIT_REF_DESC          | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId           | AUDIT_REF_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate             | AUDIT_REF_DATE          | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| AddedUserId              | AD_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                | AD_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId            | UP_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate              | UP_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount              | UP_CNT                  | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| PostUserId               | POST_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate                 | POST_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId             | UNPOST_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate               | UNPOST_DATE             | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| CompanyNo                | CMP_NO                  | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO                  | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR                | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR                 | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArrivalDate              | ARV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ الوصول |
| FreightRegisterDate      | FRGHT_RGSTR_DATE        | DATE            | لا     | نعم       | لا     | تاريخ تسجيل الشحن |
| AddedTerminal            | AD_TRMNL_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal          | UP_TRMNL_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| PostTaxDueAcCode         | POST_TAX_DUE_AC_CODE    | NUMBER(1,0)     | لا     | نعم       | لا     | احتساب ضريبة مستحقة |
| UseTDSFlag               | USE_TDS_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام TDS (1=نعم) |
| AccountCode2             | AC_CODE                 | VARCHAR2(30)    | لا     | نعم       | لا     | كود حساب إضافي |
| AccountAmount            | AC_AMT                  | NUMBER          | لا     | نعم       | لا     | مبلغ الحساب |
| PaymentAccount           | PYMNT_AC                | NUMBER          | لا     | نعم       | لا     | حساب الدفع |
| LevelNoPrice             | LVL_NO_PRICE            | NUMBER(3,0)     | لا     | نعم       | لا     | مستوى السعر |
| TaxFreeQtyFlag           | CLC_TAX_FREE_QTY_FLG    | NUMBER(1,0)     | لا     | نعم       | لا     | علم كمية معفاة من الضريبة |

---

## PurchaseInvoiceDetail (**IAS_PI_BILL_DTL**)
| الاسم الجديد              | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| PurchaseType             | PUR_TYPE              | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الشراء |
| BillDocType              | BILL_DOC_TYPE         | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo                   | BILL_NO               | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER              | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| ItemCode                 | I_CODE                | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemName                 | I_NM                  | VARCHAR2(60)    | لا     | نعم       | لا     | اسم الصنف |
| ItemQty                  | I_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الصنف |
| FreeQty                  | FREE_QTY              | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ItemUnit                 | ITM_UNT               | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE                | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY                 | NUMBER          | نعم    | لا        | لا     | كمية العبوة |
| ItemPrice                | I_PRICE               | NUMBER          | لا     | نعم       | لا     | سعر الصنف |
| StockCost                | STK_COST              | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون للصنف |
| IncomingQty              | INC_QTY               | NUMBER          | لا     | نعم       | لا     | كمية واردة |
| IncomingFreeQty          | INC_FREE_QTY          | NUMBER          | لا     | نعم       | لا     | كمية واردة مجانية |
| WarehouseCode            | W_CODE                | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode           | CC_CODE               | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ExpireDate               | EXPIRE_DATE           | DATE            | نعم    | لا        | لا     | تاريخ انتهاء الصنف |
| BatchNo                  | BATCH_NO              | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة |
| DiscountAmountMaster     | DIS_AMT_MST           | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountPercent          | DIS_PER               | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmountDetail     | DIS_AMT_DTL           | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| DiscountPercent2         | DIS_PER2              | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة خصم إضافية |
| DiscountAmountDetail2    | DIS_AMT_DTL2          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي |
| DiscountPercent3         | DIS_PER3              | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3    | DIS_AMT_DTL3          | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| DiscountAmount           | DIS_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الكلي |
| VATPercent               | VAT_PER               | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT               | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| AddAmount                | ADD_AMT               | NUMBER          | لا     | نعم       | لا     | مبالغ إضافية |
| OtherAmount              | OTHR_AMT              | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى |
| UseSerialNo              | USE_SERIALNO          | NUMBER(1,0)     | لا     | نعم       | لا     | علم استخدام الرقم التسلسلي |
| RecordNo                 | RCRD_NO               | NUMBER(10,0)    | نعم    | لا        | لا     | رقم السطر الداخلي |
| DocSequence              | DOC_SEQUENCE          | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر في المستند |
| DocSequenceGRNPO         | DOC_SEQUENCE_GRN_PO   | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر في استلام البضاعة المرتبط |
| ItemDesc                 | ITEM_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| Barcode                  | BARCODE               | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| PurchaseOrderNo          | PO_NO                 | NUMBER(15,0)    | لا     | نعم       | لا     | رقم أمر الشراء المرتبط |
| PurchaseOrderSerial      | PO_SER                | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل أمر الشراء المرتبط |
| GoodsReceiptNo           | GRN_NO                | NUMBER(15,0)    | لا     | نعم       | لا     | رقم استلام البضاعة المرتبط |
| GoodsReceiptSerial       | GRN_SER               | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل استلام البضاعة المرتبط |
| UseAttachment            | USE_ATTCH             | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment        | REC_ATTCH             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات للصنف |
| DiscountAmountNotEffect  | DIS_AMT_NOT_EFFECT    | NUMBER          | لا     | نعم       | لا     | مبلغ خصم غير مؤثر |
| AddDiscountAmountMaster  | ADD_DIS_AMT_MST       | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DIS_AMT_DTL       | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| ItemLength               | I_LENGTH              | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth                | I_WIDTH               | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight               | I_HEIGHT              | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber               | I_NUMBER              | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| PostCode                 | POST_CODE             | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل |
| UnitSize                 | UNIT_SIZE             | NUMBER          | لا     | نعم       | لا     | حجم الوحدة |
| UnitQty                  | U_QTY                 | NUMBER          | لا     | نعم       | لا     | كمية الوحدات |
| GoodsReceiptRef          | GR_REF                | VARCHAR2(250)   | لا     | نعم       | لا     | مرجع استلام البضاعة |
| DocumentType             | DOC_TYPE              | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند |
| DocSequencePO            | DOC_SEQUENCE_PO       | NUMBER          | لا     | نعم       | لا     | تسلسل أمر الشراء المرتبط |
| POOrderNo                | PO_ORDER_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم أمر الشراء الخارجي |
| POOrderSer               | PO_ORDER_SER          | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل أمر الشراء الخارجي |
| WeightQty                | WT_QTY                | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| WeightUnit               | WT_UNT                | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| ServiceItem              | SERVICE_ITM           | NUMBER(1,0)     | لا     | نعم       | لا     | عنصر خدمة (1=نعم) |
| FreeQtyProfit            | FREE_QTY_PROFT        | NUMBER          | لا     | نعم       | لا     | كمية مجانية ربحية |
| ItemPriceVAT             | I_PRICE_VAT           | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| ContractNo               | CNTRCT_NO             | VARCHAR2(60)    | لا     | نعم       | لا     | رقم العقد |
| ContainerNo              | CNTNR_NO              | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الحاوية |
| ContractSer              | CNTRCT_SER            | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل العقد |
| ContractBatchNo          | CNTRCT_BTCH_NO        | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| FreightNo                | FREIGHT_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الشحنة |
| FreightSer               | FREIGHT_SER           | VARCHAR2(60)    | لا     | نعم       | لا     | تسلسل الشحنة |
| FreightDocSequence       | FREIGHT_DOC_SEQUENCE  | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل مستند الشحنة |
| OtherAmountDiscount      | OTHR_AMT_DISC         | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR          | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| DocNoRef                 | DOC_NO_REF            | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef                | DOC_SER_REF           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| DocTypeRef               | DOC_TYP_REF           | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocSequenceRef           | DOC_SEQUENCE_REF      | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر المرجعي |
| CompanyNo                | CMP_NO                | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO                | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR              | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR               | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArgumentNo               | ARGMNT_NO             | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| OtherAmountItem          | OTHR_AMT_ITM          | NUMBER          | لا     | نعم       | لا     | مبلغ إضافي للصنف |
| PackageUnit              | PKG_UNT               | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة التغليف |
| PackageUnitSize          | PKG_UNT_SIZE          | NUMBER(10,0)    | لا     | نعم       | لا     | حجم وحدة التغليف |
| PackageQty               | PKG_QTY               | NUMBER          | لا     | نعم       | لا     | كمية التغليف |
| PackageLength            | PKG_LENGTH            | NUMBER          | لا     | نعم       | لا     | طول التغليف |
| PackageWidth             | PKG_WIDTH             | NUMBER          | لا     | نعم       | لا     | عرض التغليف |
| PackageHeight            | PKG_HEIGHT            | NUMBER          | لا     | نعم       | لا     | ارتفاع التغليف |
| PackageSize              | PKG_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم التغليف |
| PackageWeight            | PKG_WEIGHT            | NUMBER          | لا     | نعم       | لا     | وزن التغليف |
| UpdateCount              | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| SalePrice                | SALE_PRICE            | NUMBER          | لا     | نعم       | لا     | سعر البيع للصنف |
| FieldDtl1                | FIELD_DTL1            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2                | FIELD_DTL2            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3                | FIELD_DTL3            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| FieldDtl4                | FIELD_DTL4            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 4 |
| FieldDtl5                | FIELD_DTL5            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 5 |
| FieldDtl6                | FIELD_DTL6            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 6 |
| FieldDtl7                | FIELD_DTL7            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 7 |
| FieldDtl8                | FIELD_DTL8            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 8 |
| FieldDtl9                | FIELD_DTL9            | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 9 |
| FieldDtl10               | FIELD_DTL10           | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 10 |
| BarcodePrint             | BARCODE_PRNT          | NUMBER(1,0)     | لا     | نعم       | لا     | طباعة باركود (1=نعم) |
| LastIncomePrice          | LAST_INCOME_PRICE     | NUMBER          | لا     | نعم       | لا     | آخر سعر شراء للصنف |
| ActualQty                | ACTUL_QTY             | NUMBER          | لا     | نعم       | لا     | الكمية الفعلية |
| LossQty                  | LOS_QTY               | NUMBER          | لا     | نعم       | لا     | كمية الفاقد |


---

## PurchaseReturn (**IAS_RT_BILL_MST**)
| الاسم الجديد                | الاسم القديم                | النوع            | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|------------------|--------|-----------|--------|-----------|
| ReturnBillDocType          | RT_BILL_DOC_TYPE           | NUMBER(2,0)      | نعم    | لا        | لا     | نوع مستند مرتجع المشتريات |
| ReturnBillNo               | RT_BILL_NO                 | NUMBER(15,0)     | نعم    | لا        | لا     | رقم مرتجع المشتريات |
| ReturnBillSerial           | RT_BILL_SER                | NUMBER(38,0)     | نعم    | لا        | لا     | الرقم التسلسلي للمرتجع |
| PurchaseYear               | P_YEAR                     | NUMBER           | لا     | نعم       | لا     | السنة المالية |
| ReturnBillDate             | RT_BILL_DATE               | DATE             | نعم    | لا        | لا     | تاريخ مرتجع المشتريات |
| CurrencyCode               | RT_BILL_CURRENCY           | VARCHAR2(7)      | نعم    | لا        | لا     | رمز العملة |
| CurrencyRate               | RT_BILL_RATE               | NUMBER           | لا     | نعم       | لا     | سعر الصرف |
| StockRate                  | STOCK_RATE                 | NUMBER           | لا     | نعم       | لا     | سعر المخزون |
| CustomerCode               | C_CODE                     | VARCHAR2(15)     | لا     | نعم       | لا     | كود العميل (عند الحاجة) |
| CustomerName               | C_NAME                     | VARCHAR2(100)    | لا     | نعم       | لا     | اسم العميل |
| AccountCode                | A_CODE                     | VARCHAR2(30)     | لا     | نعم       | لا     | كود الحساب المحاسبي |
| ChequeNo                   | CHEQUE_NO                  | NUMBER(20,0)     | لا     | نعم       | لا     | رقم الشيك |
| ChequeAmount               | CHEQUE_AMT                 | NUMBER           | لا     | نعم       | لا     | مبلغ الشيك |
| ChequeDueDate              | CHEQUE_DUE_DATE            | DATE             | لا     | نعم       | لا     | تاريخ استحقاق الشيك |
| BillDueDate                | RT_BILL_DUE_DATE           | DATE             | لا     | نعم       | لا     | تاريخ استحقاق الفاتورة |
| BillPost                   | RT_BILL_POST               | NUMBER(1,0)      | لا     | نعم       | لا     | تم ترحيل المرتجع (1=نعم) |
| DiscountAmount             | DISC_AMT                   | NUMBER           | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster       | DISC_AMT_MST               | NUMBER           | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail       | DISC_AMT_DTL               | NUMBER           | لا     | نعم       | لا     | خصم تفصيلي |
| DiscountAmountMasterVAT    | DISC_AMT_MST_VAT           | NUMBER           | لا     | نعم       | لا     | خصم رئيسي بعد الضريبة |
| VATDiscountMaster          | VAT_AMT_DISC_MST           | NUMBER           | لا     | نعم       | لا     | ضريبة الخصم الرئيسي |
| BillAmount                 | BILL_AMT                   | NUMBER           | لا     | نعم       | لا     | إجمالي مبلغ المرتجع |
| VATAmount                  | VAT_AMT                    | NUMBER           | لا     | نعم       | لا     | مبلغ الضريبة |
| OtherAmount                | OTHR_AMT                   | NUMBER           | لا     | نعم       | لا     | مبالغ أخرى |
| WarehouseCode              | W_CODE                     | NUMBER(10,0)     | لا     | نعم       | لا     | كود المستودع |
| RegionCode                 | R_CODE                     | NUMBER(10,0)     | لا     | نعم       | لا     | كود المنطقة |
| CashNo                     | CASH_NO                    | NUMBER(10,0)     | لا     | نعم       | لا     | رقم الكاشير |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)     | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                  | PJ_NO                      | VARCHAR2(15)     | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo                 | ACTV_NO                    | VARCHAR2(15)     | لا     | نعم       | لا     | رقم النشاط |
| CashAccountFCC             | CASH_AC_FCC                | VARCHAR2(30)     | لا     | نعم       | لا     | حساب النقد الأجنبي |
| CashNoFCC                  | CASH_NO_FCC                | NUMBER(10,0)     | لا     | نعم       | لا     | رقم الكاشير الأجنبي |
| RepCode                    | REP_CODE                   | VARCHAR2(15)     | لا     | نعم       | لا     | كود المندوب |
| EmployeeNo                 | EMP_NO                     | NUMBER(10,0)     | لا     | نعم       | لا     | رقم الموظف |
| SReturnType                | SR_TYPE                    | NUMBER(5,0)      | لا     | نعم       | لا     | نوع المرتجع |
| CommissionPercent          | COMM_PER                   | NUMBER           | لا     | نعم       | لا     | نسبة العمولة |
| ReferenceNo                | REF_NO                     | VARCHAR2(15)     | لا     | نعم       | لا     | رقم مرجعي إضافي |
| Description                | A_DESC                     | VARCHAR2(1000)   | لا     | نعم       | لا     | ملاحظات المرتجع |
| AttachCount                | ATTACH_CNT                 | NUMBER(3,0)      | لا     | نعم       | لا     | عدد المرفقات |
| ReturnReason               | RETURN_RES                 | VARCHAR2(250)    | لا     | نعم       | لا     | سبب المرتجع |
| Processed                  | PROCESSED                  | NUMBER(1,0)      | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| ReportPriority             | PR_REP                     | NUMBER(10,0)     | لا     | نعم       | لا     | أولوية التقرير |
| PreviousYear               | PREV_YEAR                  | NUMBER(4,0)      | لا     | نعم       | لا     | السنة السابقة |
| ClassifyNo                 | CLASSIFY_NO                | NUMBER(10,0)     | لا     | نعم       | لا     | رقم التصنيف |
| ClassifySer                | CLASSIFY_SER               | NUMBER(38,0)     | لا     | نعم       | لا     | تسلسل التصنيف |
| ReturnPY                   | RT_BILL_PY                 | NUMBER(1,0)      | لا     | نعم       | لا     | نوع المرتجع (تجميع/مفرد) |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)      | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| DiscountAmountAfterVAT     | DISC_AMT_AFTR_VAT          | NUMBER           | لا     | نعم       | لا     | خصم بعد الضريبة |
| AuditRef                   | AUDIT_REF                  | NUMBER(1,0)      | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc               | AUDIT_REF_DESC             | VARCHAR2(500)    | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId             | AUDIT_REF_U_ID             | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate               | AUDIT_REF_DATE             | DATE             | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| WarehouseCodeBill          | W_CODE_BILL                | NUMBER(10,0)     | لا     | نعم       | لا     | كود المستودع للفواتير |
| CostCenterCodeBill         | CC_CODE_BILL               | VARCHAR2(30)     | لا     | نعم       | لا     | مركز تكلفة للفواتير |
| RepCodeBill                | REP_CODE_BILL              | VARCHAR2(15)     | لا     | نعم       | لا     | كود مندوب للفواتير |
| ReturnType                 | RETURN_TYPE                | NUMBER(1,0)      | لا     | نعم       | لا     | نوع المرتجع |
| PaidReturnBill             | PAID_RT_BILL               | NUMBER(1,0)      | لا     | نعم       | لا     | مرتجع مدفوع (1=نعم) |
| PaidUserId                 | PAID_U_ID                  | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم للدفع |
| PaidDate                   | PAID_DATE                  | DATE             | لا     | نعم       | لا     | تاريخ الدفع |
| ReceiveInvoiceReturnBill   | REC_INV_RT_BILL            | NUMBER(1,0)      | لا     | نعم       | لا     | استلام فاتورة مرتجع (1=نعم) |
| ReceiveInvoiceUserId       | REC_INV_U_ID               | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم للاستلام |
| ReceiveInvoiceDate         | REC_INV_DATE               | DATE             | لا     | نعم       | لا     | تاريخ استلام الفاتورة |
| StandBy                    | STAND_BY                   | NUMBER(1,0)      | لا     | نعم       | لا     | قيد الانتظار (1=نعم) |
| NoteNo                     | NOTE_NO                    | VARCHAR2(30)     | لا     | نعم       | لا     | رقم الملاحظة |
| DriverNo                   | DRIVER_NO                  | NUMBER(10,0)     | لا     | نعم       | لا     | رقم السائق |
| DocumentBranchNo           | DOC_BRN_NO                 | NUMBER(6,0)      | لا     | نعم       | لا     | رقم الفرع للمستند |
| ReservationType            | RES_TYP                    | NUMBER(5,0)      | لا     | نعم       | لا     | نوع الحجز |
| PromotionCode              | PRM_CODE                   | VARCHAR2(15)     | لا     | نعم       | لا     | كود العرض الترويجي |
| DocumentNoPDA              | DOC_NO_PDA                 | NUMBER(15,0)     | لا     | نعم       | لا     | رقم المستند على PDA |
| PDAName                    | PDA_NM                     | VARCHAR2(50)     | لا     | نعم       | لا     | اسم جهاز PDA |
| InsuranceCompanyNo         | INSRNCE_CMP_NO             | NUMBER(10,0)     | لا     | نعم       | لا     | رقم شركة التأمين |
| InsuranceBenefitNo         | INSRNCE_BNF_NO             | NUMBER(5,0)      | لا     | نعم       | لا     | رقم مستفيد التأمين |
| InsurancePersonName        | INSRNCE_PRSON_NM           | VARCHAR2(100)    | لا     | نعم       | لا     | اسم مستفيد التأمين |
| InsuranceCardNo            | INSRNCE_CARD_NO            | VARCHAR2(60)     | لا     | نعم       | لا     | رقم بطاقة التأمين |
| InsuranceCardNoFamily      | INSRNCE_CARD_NO_FMLY       | VARCHAR2(60)     | لا     | نعم       | لا     | رقم بطاقة عائلية |
| InsuranceRelationType      | INSRNCE_RLTN_TYP           | NUMBER(2,0)      | لا     | نعم       | لا     | نوع العلاقة التأمينية |
| InsuranceClassNo           | INSRNCE_CLSS_NO            | VARCHAR2(10)     | لا     | نعم       | لا     | رقم فئة التأمين |
| InsuranceCashAmount        | INSRNCE_CSH_AMT            | NUMBER           | لا     | نعم       | لا     | مبلغ النقد للتأمين |
| CommissionAmountDetail     | COMM_AMT_DTL               | NUMBER           | لا     | نعم       | لا     | مبلغ العمولة التفصيلية |
| CustomerGCC                | CST_GCC                    | NUMBER(1,0)      | لا     | نعم       | لا     | عميل خليجي (1=نعم) |
| ExportFlag                 | EXPORT                     | NUMBER(1,0)      | لا     | نعم       | لا     | علم التصدير (1=نعم) |
| VATAmountOther             | VAT_AMT_OTHR               | NUMBER           | لا     | نعم       | لا     | مبلغ الضريبة الأخرى |
| AddDiscountAmountMaster    | ADD_DISC_AMT_MST           | NUMBER           | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail    | ADD_DISC_AMT_DTL           | NUMBER           | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| OtherAmountDiscount        | OTHR_AMT_DISC              | NUMBER           | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| WithoutVAT                 | WITHOUT_VAT                | NUMBER(1,0)      | لا     | نعم       | لا     | بدون ضريبة (1=نعم) |
| ReturnVATPeriodType        | RT_VAT_PRD_TYP             | NUMBER(1,0)      | لا     | نعم       | لا     | نوع فترة ضريبة المرتجع |
| CustomerTel                | C_TEL                      | VARCHAR2(20)     | لا     | نعم       | لا     | هاتف العميل |
| CustomerCashCode           | C_CODE_CSH                 | VARCHAR2(15)     | لا     | نعم       | لا     | كود عميل نقدي |
| PointReplaceAmount         | POINT_RPLC_AMT             | NUMBER           | لا     | نعم       | لا     | مبلغ استبدال النقاط |
| PointTypeNo                | POINT_TYP_NO               | NUMBER(5,0)      | لا     | نعم       | لا     | نوع النقاط |
| PointCount                 | POINT_CNT                  | NUMBER(5,0)      | لا     | نعم       | لا     | عدد النقاط |
| PointReplaceCount          | POINT_RPLC_CNT             | NUMBER(5,0)      | لا     | نعم       | لا     | عدد النقاط المستبدلة |
| CreditCardFlag             | CREDIT_CARD                | NUMBER(1,0)      | لا     | نعم       | لا     | بطاقة ائتمان (1=نعم) |
| CreditCardNo               | CR_CARD_NO                 | NUMBER(5,0)      | لا     | نعم       | لا     | رقم بطاقة ائتمان |
| CreditCardAmount           | CR_CARD_AMT                | NUMBER           | لا     | نعم       | لا     | مبلغ بطاقة الائتمان |
| CreditCardCommPercent      | CR_CARD_COMM_PER           | NUMBER           | لا     | نعم       | لا     | نسبة عمولة بطاقة الائتمان |
| CreditCardNoSecond         | CR_CARD_NO_SCND            | NUMBER(5,0)      | لا     | نعم       | لا     | رقم بطاقة ثانية |
| CreditCardAmountSecond     | CR_CARD_AMT_SCND           | NUMBER           | لا     | نعم       | لا     | مبلغ البطاقة الثانية |
| CreditCardCommPercentSecond| CR_CARD_COMM_PER_SCND      | NUMBER           | لا     | نعم       | لا     | نسبة عمولة البطاقة الثانية |
| CreditCardNoThird          | CR_CARD_NO_THRD            | NUMBER(5,0)      | لا     | نعم       | لا     | رقم بطاقة ثالثة |
| CreditCardAmountThird      | CR_CARD_AMT_THRD           | NUMBER           | لا     | نعم       | لا     | مبلغ البطاقة الثالثة |
| CreditCardCommPercentThird | CR_CARD_COMM_PER_THRD      | NUMBER           | لا     | نعم       | لا     | نسبة عمولة البطاقة الثالثة |
| VATTypeNo                  | CLC_TYP_NO_TAX             | NUMBER(5,0)      | لا     | نعم       | لا     | نوع احتساب الضريبة |
| AccountAmount              | AC_AMT                     | NUMBER           | لا     | نعم       | لا     | مبلغ الحساب |
| Field1                     | FIELD1                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 1 |
| Field2                     | FIELD2                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 2 |
| Field3                     | FIELD3                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 3 |
| Field4                     | FIELD4                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 4 |
| Field5                     | FIELD5                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 5 |
| Field6                     | FIELD6                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 6 |
| Field7                     | FIELD7                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 7 |
| Field8                     | FIELD8                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 8 |
| Field9                     | FIELD9                     | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 9 |
| Field10                    | FIELD10                    | VARCHAR2(250)    | لا     | نعم       | لا     | حقل مرن 10 |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE             | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)      | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE             | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)     | لا     | نعم       | لا     | عدد مرات التحديث |
| PostUserId                 | POST_U_ID                  | NUMBER(5,0)      | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate                   | POST_DATE                  | DATE             | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId               | UNPOST_U_ID                | NUMBER(5,0)      | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate                 | UNPOST_DATE                | DATE             | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)      | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)      | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)      | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)      | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)     | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| PatientNo                  | PTNT_NO                    | VARCHAR2(15)     | لا     | نعم       | لا     | رقم المريض (اختياري في أنظمة طبية) |
| DoctorNo                   | DCTR_NO                    | VARCHAR2(15)     | لا     | نعم       | لا     | رقم الطبيب |
| PatientType                | PTNT_TYP                   | NUMBER(1,0)      | لا     | نعم       | لا     | نوع المريض |
| DocumentNoAdmission        | DOC_NO_ADMSON              | NUMBER(15,0)     | لا     | نعم       | لا     | رقم مستند الدخول |
| DocumentSerialAdmission    | DOC_SRL_ADMSON             | NUMBER(38,0)     | لا     | نعم       | لا     | تسلسل مستند الدخول |
| AccountCode2               | AC_CODE                    | VARCHAR2(30)     | لا     | نعم       | لا     | كود حساب إضافي |
| AccountCodeDetail          | AC_CODE_DTL                | VARCHAR2(30)     | لا     | نعم       | لا     | كود حساب فرعي |
| AccountDetailType          | AC_DTL_TYP                 | NUMBER(2,0)      | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| PaymentAccount             | PYMNT_AC                   | NUMBER           | لا     | نعم       | لا     | حساب الدفع |
| InsuranceLoadPercentMaster | INSRNCE_LOAD_PER           | NUMBER           | لا     | نعم       | لا     | نسبة تحميل التأمين الرئيسي |
| DocumentSerialExternal     | DOC_SER_EXTRNL             | VARCHAR2(256)    | لا     | نعم       | لا     | تسلسل المستند الخارجي |
| CancelFlag                 | CNCL_FLG                   | NUMBER(1,0)      | لا     | نعم       | لا     | تم الإلغاء (1=نعم) |
| VATPriceType               | CLC_VAT_PRICE_TYP          | NUMBER(1,0)      | لا     | نعم       | لا     | نوع احتساب الضريبة في السعر |
| CollectorNo                | COL_NO                     | NUMBER(10,0)     | لا     | نعم       | لا     | رقم المحصل |
| RMSReturnBillDocType       | RMS_RT_BILL_DOC_TYPE       | NUMBER(2,0)      | لا     | نعم       | لا     | نوع مستند مرتجع RMS |
| RMSFreeFlag                | RMS_FREE_FLG               | NUMBER(1,0)      | لا     | نعم       | لا     | علم مجانية RMS |
| HRS_DocNoRef               | HRS_DOC_NO_REF             | NUMBER           | لا     | نعم       | لا     | رقم مستند HRS المرجعي |
| HRS_DocTypeRef             | HRS_DOC_TYPE_REF           | NUMBER           | لا     | نعم       | لا     | نوع مستند HRS المرجعي |
| HRS_DocSerRef              | HRS_DOC_SER_REF            | NUMBER           | لا     | نعم       | لا     | تسلسل مستند HRS المرجعي |
| ReturnBillType             | RT_BILL_TYP                | NUMBER(1,0)      | لا     | نعم       | لا     | نوع فاتورة المرتجع |
| TaxFreeQtyFlag             | CLC_TAX_FREE_QTY_FLG       | NUMBER(1,0)      | لا     | نعم       | لا     | علم كمية معفاة من الضريبة |
| InsuranceAddLimitMaster    | INSRNCE_ADD_LMT_MST        | NUMBER           | لا     | نعم       | لا     | حد إضافي تأميني رئيسي |
| AddedDateClock             | AD_DATE_CLK                | DATE             | لا     | نعم       | لا     | تاريخ الإضافة بالساعة |
| InsuranceAddLimitDoc       | INSRNCE_ADD_LMT_DOC        | NUMBER           | لا     | نعم       | لا     | حد إضافي تأميني للمستند |
| InsuranceAddLimitDetail    | INSRNCE_ADD_LMT_DTL        | NUMBER           | لا     | نعم       | لا     | حد إضافي تأميني تفصيلي |
| InsuranceLimitAmountLocalDoc| INSRNCE_LMT_AMT_LOC_DOC   | NUMBER           | لا     | نعم       | لا     | حد التأمين المحلي للمستند |
| CreditCardDesc             | CR_CARD_DSC                | VARCHAR2(500)    | لا     | نعم       | لا     | وصف بطاقة الائتمان |
| CreditCardDescSecond       | CR_CARD_DSC_SCND           | VARCHAR2(500)    | لا     | نعم       | لا     | وصف البطاقة الثانية |
| CreditCardDescThird        | CR_CARD_DSC_THRD           | VARCHAR2(500)    | لا     | نعم       | لا     | وصف البطاقة الثالثة |
| CreditCardCustomerNoThird  | CR_CARD_CST_NO_THRD        | VARCHAR2(60)     | لا     | نعم       | لا     | كود العميل للبطاقة الثالثة |
| CreditCardCustomerNoSecond | CR_CARD_CST_NO_SCND        | VARCHAR2(60)     | لا     | نعم       | لا     | كود العميل للبطاقة الثانية |
| CreditCardCustomerNo       | CR_CARD_CST_NO             | VARCHAR2(60)     | لا     | نعم       | لا     | كود العميل للبطاقة |
| CreditCardDocNoRefSecond   | CR_CARD_DOC_NO_REF_SCND    | NUMBER(15,0)     | لا     | نعم       | لا     | رقم مستند البطاقة الثانية |
| CreditCardDocNoRef         | CR_CARD_DOC_NO_REF         | NUMBER(15,0)     | لا     | نعم       | لا     | رقم مستند البطاقة |
| CreditCardDocNoRefThird    | CR_CARD_DOC_NO_REF_THRD    | NUMBER(15,0)     | لا     | نعم       | لا     | رقم مستند البطاقة الثالثة |
| CreditCardMaxCommAmount    | CR_CARD_MAX_COMM_AMT       | NUMBER           | لا     | نعم       | لا     | الحد الأعلى لعمولة البطاقة |
| CreditCardMaxCommAmountSecond| CR_CARD_MAX_COMM_AMT_SCND| NUMBER           | لا     | نعم       | لا     | الحد الأعلى لعمولة البطاقة الثانية |
| CreditCardMaxCommAmountThird| CR_CARD_MAX_COMM_AMT_THRD | NUMBER           | لا     | نعم       | لا     | الحد الأعلى لعمولة البطاقة الثالثة |
| DocMSq                     | DOC_M_SQ                   | NUMBER           | لا     | نعم       | لا     | رقم تسلسلي مؤقت |
| WebServiceTransferDataFlag | WEB_SRVC_TRNSFR_DATA_FLG   | NUMBER(1,0)      | لا     | نعم       | لا     | علم نقل البيانات عبر الخدمة |
| WebServiceUUID             | WEB_SRVC_UUID              | VARCHAR2(100)    | لا     | نعم       | لا     | UUID للخدمة |

---

## PurchaseReturnDetail (**IAS_RT_BILL_DTL**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ReturnBillDocType  | RT_BILL_DOC_TYPE    | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند المرتجع |
| ReturnBillNo       | RT_BILL_NO          | NUMBER(15,0)    | نعم    | لا        | لا     | رقم المرتجع |
| ReturnBillSerial   | RT_BILL_SER         | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للمرتجع |
| BillNo             | BILL_NO             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرتبطة |
| BillDocType        | BILL_DOC_TYPE       | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة المرتبطة |
| BillSerial         | BILL_SER            | NUMBER(38,0)    | لا     | نعم       | لا     | التسلسل للفاتورة المرتبطة |
| ItemCode           | I_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty            | I_QTY               | NUMBER          | لا     | نعم       | لا     | الكمية المرتجعة |
| ItemUnit           | ITM_UNT             | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize           | P_SIZE              | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty            | P_QTY               | NUMBER          | نعم    | لا        | لا     | كمية العبوة |
| ItemPrice          | I_PRICE             | NUMBER          | لا     | نعم       | لا     | سعر الوحدة |
| StockCost          | STK_COST            | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون |
| WarehouseCode      | W_CODE              | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ExpireDate         | EXPIRE_DATE         | DATE            | نعم    | لا        | لا     | تاريخ انتهاء الصنف |
| BatchNo            | BATCH_NO            | VARCHAR2(30)    | نعم    | لا        | لا     | رقم التشغيلة/الدفعة |
| FreeQty            | FREE_QTY            | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ServiceItem        | SERVICE_ITEM        | NUMBER(1,0)     | لا     | نعم       | لا     | عنصر خدمة (1=نعم) |
| DiscountPercent    | DIS_PER             | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmount     | DIS_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الكلي |
| DiscountAmountMaster| DIS_AMT_MST        | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي |
| DiscountAmountDetail| DIS_AMT_DTL        | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountAmountDetailVAT | DIS_AMT_DTL_VAT | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي بعد الضريبة |
| DiscountAmountMasterVAT | DIS_AMT_MST_VAT | NUMBER          | لا     | نعم       | لا     | خصم رئيسي بعد الضريبة |
| VATDiscountDetailVAT | VAT_AMT_DIS_DTL_VAT | NUMBER         | لا     | نعم       | لا     | ضريبة الخصم التفصيلي بعد الضريبة |
| VATAmountAfterDiscount | VAT_AMT_AFTR_DIS | NUMBER         | لا     | نعم       | لا     | مبلغ الضريبة بعد الخصم |
| VATAmountBeforeDiscount | VAT_AMT_BFR_DIS | NUMBER         | لا     | نعم       | لا     | مبلغ الضريبة قبل الخصم |
| VATDiscountMasterVAT | VAT_AMT_DIS_MST_VAT | NUMBER         | لا     | نعم       | لا     | ضريبة الخصم الرئيسي بعد الضريبة |
| DiscountAmountAfterVAT | DIS_AMT_AFTR_VAT | NUMBER         | لا     | نعم       | لا     | خصم بعد الضريبة |
| VATPercent          | VAT_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount           | VAT_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| OtherAmount         | OTHR_AMT            | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| ReturnedQty         | RET_QTY             | NUMBER          | لا     | نعم       | لا     | كمية مرتجعة |
| ReturnedFreeQty     | RET_FREE_QTY        | NUMBER          | لا     | نعم       | لا     | كمية مجانية مرتجعة |
| UseSerialNo         | USE_SERIALNO        | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام التسلسل (1=نعم) |
| DiscountAfterVATMaster | DIS_AFTR_VAT_MST  | NUMBER          | لا     | نعم       | لا     | الخصم بعد الضريبة الرئيسي |
| SIRecordNo          | SI_RCRD_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم سطر مستلم (في حال الربط) |
| RecordNo            | RCRD_NO             | NUMBER(10,0)    | نعم    | لا        | لا     | رقم السطر الداخلي |
| RecordNoRef         | RCRD_NO_REF         | NUMBER(10,0)    | لا     | نعم       | لا     | رقم سطر مرجعي (عند الربط) |
| DocSequence         | DOC_SEQUENCE        | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر في المستند |
| DocSequenceSI       | DOC_SEQUENCE_SI     | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل سطر المستند المستلم |
| ItemDesc            | ITEM_DESC           | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| Barcode             | BARCODE             | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| ExternalPost        | EXTERNAL_POST       | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| ReturnBillPY        | RT_BILL_PY          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المرتجع (تجميع/مفرد) |
| UseAttachment       | USE_ATTCH           | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment   | REC_ATTCH           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات للصنف |
| DiscountPercent2    | DIS_PER2            | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية ثانية |
| DiscountAmountDetail2 | DIS_AMT_DTL2      | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثاني |
| DiscountPercent3    | DIS_PER3            | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3 | DIS_AMT_DTL3      | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| ItemPriceVAT        | I_PRICE_VAT         | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| ItemLength          | I_LENGTH            | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth           | I_WIDTH             | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight          | I_HEIGHT            | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber          | I_NUMBER            | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| PostCode            | POST_CODE           | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل |
| WeightUnit          | WT_UNT              | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| WeightQty           | WT_QTY              | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| FieldDtl1           | FIELD_DTL1          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 1 |
| FieldDtl2           | FIELD_DTL2          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 2 |
| FieldDtl3           | FIELD_DTL3          | VARCHAR2(60)    | لا     | نعم       | لا     | حقل مرن 3 |
| InsuranceLoadPercent| INSRNCE_LOAD_PER    | NUMBER          | لا     | نعم       | لا     | نسبة تحميل التأمين |
| InsuranceLoadAmount | INSRNCE_LOAD_AMT    | NUMBER          | لا     | نعم       | لا     | مبلغ تحميل التأمين |
| InsuranceAddLimit   | INSRNCE_ADD_LMT     | NUMBER          | لا     | نعم       | لا     | حد إضافي للتأمين |
| EmployeeNo          | EMP_NO              | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف |
| DocTypeRef          | DOC_TYPE_REF        | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocNoRef            | DOC_NO_REF          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef           | DOC_SER_REF         | NUMBER          | لا     | نعم       | لا     | تسلسل المستند المرجعي |
| SubCustomerCode     | SUB_C_CODE          | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل الفرعي |
| CommissionPercent   | COMM_PER            | NUMBER          | لا     | نعم       | لا     | نسبة العمولة |
| CommissionAmountDetail| COMM_AMT_DTL      | NUMBER          | لا     | نعم       | لا     | مبلغ العمولة التفصيلية |
| ArgumentNo          | ARGMNT_NO           | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| UsedItem            | USED_ITM            | NUMBER(1,0)     | لا     | نعم       | لا     | عنصر مستخدم (1=نعم) |
| VATAmountOther      | VAT_AMT_OTHR        | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| AddDiscountAmountMaster | ADD_DIS_AMT_MST  | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail | ADD_DIS_AMT_DTL  | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| OtherAmountDiscount | OTHR_AMT_DISC       | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| QuotationPromotionNo | QT_PRM_NO          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم عرض سعر ترويجي |
| QuotationPromotionSer| QT_PRM_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل عرض سعر ترويجي |
| QuotationPromotionRecordNo | QT_PRM_RCRD_NO| NUMBER(10,0)    | لا     | نعم       | لا     | رقم سطر عرض سعر ترويجي |
| CompanyNo           | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo            | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear          | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser          | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount         | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| DiscountAmountDetail2VAT | DIS_AMT_DTL2_VAT| NUMBER          | لا     | نعم       | لا     | خصم تفصيلي ثاني بعد الضريبة |
| DiscountAmountDetail3VAT | DIS_AMT_DTL3_VAT| NUMBER          | لا     | نعم       | لا     | خصم تفصيلي ثالث بعد الضريبة |
| VATDiscountDetail2VAT | VAT_AMT_DIS_DTL2_VAT | NUMBER        | لا     | نعم       | لا     | ضريبة الخصم الثاني بعد الضريبة |
| VATDiscountDetail3VAT | VAT_AMT_DIS_DTL3_VAT | NUMBER        | لا     | نعم       | لا     | ضريبة الخصم الثالث بعد الضريبة |
| ReturnedQtyYear      | RET_QTY_YR          | NUMBER          | لا     | نعم       | لا     | كمية مرتجعة سنوية |
| ReturnedFreeQtyYear  | RET_FREE_QTY_YR     | NUMBER          | لا     | نعم       | لا     | كمية مجانية مرتجعة سنوية |
| InsuranceAddLimitMaster | INSRNCE_ADD_LMT_MST| NUMBER         | لا     | نعم       | لا     | حد إضافي تأميني رئيسي |
| FreeType             | FREE_TYP            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المجانية (1=ترويجية/0=عادية) |



---

## Supplier (**IAS_VNDR_ACCNT**)
| الاسم الجديد      | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------|------------------|-----------------|--------|-----------|--------|-----------|
| RecordNo         | RCRD_NO          | NUMBER          | لا     | نعم       | لا     | رقم السطر |
| VendorCode       | V_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     | كود المورد |
| AccountCode      | A_CODE           | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي للمورد |
| Inactive         | INACTIVE         | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate     | INACTIVE_DATE    | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason   | INACTIVE_RES     | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| InactiveUserId   | INACTIVE_U_ID    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل السطر |
| AddedDate        | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId      | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedUserId    | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate      | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount      | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority   | PR_REP           | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal    | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal  | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---



## SupplierGroup (**VENDOR_GROUP**)
| الاسم الجديد         | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|------------------|-----------------|--------|-----------|--------|-----------|
| GroupCode           | V_GROUP_CODE     | NUMBER(10,0)    | لا     | نعم       | لا     | كود مجموعة المورد |
| GroupArabicName     | V_GROUP_A_NAME   | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المجموعة عربي |
| GroupEnglishName    | V_GROUP_E_NAME   | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المجموعة إنجليزي |
| GroupAccountCode    | V_A_CODE         | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي للمجموعة |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority      | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal       | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal     | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## SupplierClass (**VENDOR_CLASS**)
| الاسم الجديد         | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|------------------|-----------------|--------|-----------|--------|-----------|
| ClassCode           | V_CLASS          | NUMBER(3,0)     | لا     | نعم       | لا     | كود تصنيف المورد |
| ClassArabicName     | V_CLASS_NAME     | VARCHAR2(60)    | نعم    | لا        | لا     | اسم التصنيف عربي |
| ClassEnglishName    | V_CLASS_E_NAME   | VARCHAR2(60)    | لا     | نعم       | لا     | اسم التصنيف إنجليزي |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority      | PR_REP           | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal       | AD_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal     | UP_TRMNL_NM      | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## SupplierCurrency (**VENDOR_CURR**)
| الاسم الجديد         | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|------------------|-----------------|--------|-----------|--------|-----------|
| VendorCode          | V_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| CurrencyCode        | A_CY             | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| Inactive            | INACTIVE         | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| MaxLimitAmountPR    | MAX_LMT_AMT_PR   | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لمبلغ أمر الشراء PR |
| MaxLimitAmountPO    | MAX_LMT_AMT_PO   | NUMBER          | لا     | نعم       | لا     | الحد الأعلى لمبلغ أمر الشراء PO |
| DefaultCurrency     | CUR_DFLT         | NUMBER(1,0)     | لا     | نعم       | لا     | عملة افتراضية (1=افتراضي) |

---

## SupplierBankAccount (**IAS_VENDOR_BANK**)
| الاسم الجديد         | الاسم القديم      | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|---------------------|------------------|-----------------|--------|-----------|--------|-----------|
| VendorCode          | V_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| BankNo              | BANK_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم البنك |
| BankAccount         | BANK_ACC         | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الحساب البنكي |
| BankName            | BANK_NAME        | VARCHAR2(60)    | لا     | نعم       | لا     | اسم البنك |
| SwiftCode           | SWIFT_CODE       | VARCHAR2(30)    | لا     | نعم       | لا     | رمز السويفت |
| CountryNo           | CNTRY_NO         | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة |
| CityNo              | CITY_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة |
| BeneficiaryName     | BNFCRY_NAME      | VARCHAR2(60)    | لا     | نعم       | لا     | اسم المستفيد |
| BankKey             | BANK_KEY         | VARCHAR2(30)    | لا     | نعم       | لا     | مفتاح البنك |
| IBANNo              | IBAN_NO          | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الآيبان |
| CurrencyCode        | A_CY             | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| AddedUserId         | AD_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate           | AD_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId       | UP_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate         | UP_DATE          | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount         | UP_CNT           | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |


---


## SupplierDegree (**IAS_VENDOR_DEGREE**)
| الاسم الجديد             | الاسم القديم           | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|-------------------------|-----------------------|-----------------|--------|-----------|--------|-----------|
| SupplierDegree          | V_DEGREE              | NUMBER(5,0)     | لا     | نعم       | لا     | كود درجة/تصنيف المورد |
| SupplierDegreeArabicName| V_DEGREE_A_NAME       | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الدرجة عربي |
| SupplierDegreeEnglishName| V_DEGREE_E_NAME      | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الدرجة إنجليزي |
| AddedUserId             | AD_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate               | AD_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId           | UP_U_ID               | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate             | UP_DATE               | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount             | UP_CNT                | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority          | PR_REP                | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal           | AD_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal         | UP_TRMNL_NM           | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## SupplierClaim (**IAS_VNDR_CLAIM_MST**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| BranchNo           | BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع |
| DocumentNo         | DOC_NO              | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند |
| DocumentSerial     | DOC_SER             | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| DocumentDate       | DOC_DATE            | DATE            | لا     | نعم       | لا     | تاريخ المستند |
| VendorCode         | V_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود المورد |
| CurrencyCode       | A_CY                | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| FromDate           | F_DATE              | DATE            | لا     | نعم       | لا     | من تاريخ |
| ToDate             | T_DATE              | DATE            | لا     | نعم       | لا     | إلى تاريخ |
| ReferenceNo        | REF_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| Description        | DOC_DSC             | VARCHAR2(500)   | لا     | نعم       | لا     | وصف المستند/الشكوى |
| Processed          | PROCESSED           | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة |
| DocumentAmount     | DOC_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ المستند |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| ReportPriority     | PR_REP              | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| CompanyNo          | CMP_NO              | NUMBER(3,0)     | لا     | نعم       | لا     | رقم الشركة |

---

## SupplierClaimDetail (**IAS_VNDR_CLAIM_DTL**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| BranchNo           | BRN_NO              | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع |
| DocumentNo         | DOC_NO              | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند |
| DocumentSerial     | DOC_SER             | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل المستند |
| BillNo             | BILL_NO             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المتعلقة |
| BillSerial         | BILL_SER            | NUMBER          | لا     | نعم       | لا     | تسلسل الفاتورة |
| BillType           | BILL_TYP            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| BillDate           | BILL_DATE           | DATE            | لا     | نعم       | لا     | تاريخ الفاتورة |
| BillAmount         | BILL_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الفاتورة |
| DiscountAmount     | DISC_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| NetAmount          | NET_AMT             | NUMBER          | لا     | نعم       | لا     | المبلغ الصافي |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| OtherAmount        | OTHR_AMT            | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى مرتبطة بالفاتورة |
| VATAmount          | VAT_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| NetBillAmount      | NET_BILL_AMT        | NUMBER          | لا     | نعم       | لا     | صافي مبلغ الفاتورة |

---

## SupplierItem (**IAS_VNDR_ITM**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| ItemCode           | I_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| VendorCode         | V_CODE              | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد |
| ItemPacking        | I_PACKING           | NUMBER(10,0)    | لا     | نعم       | لا     | كمية التعبئة |
| VendorPrice        | VNDR_PRICE          | NUMBER          | لا     | نعم       | لا     | سعر المورد |
| MainVendor         | MAIN_VNDR           | NUMBER(1,0)     | لا     | نعم       | لا     | مورد رئيسي (1=نعم) |
| CurrencyCode       | A_CY                | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| ItemUnit           | ITM_UNT             | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف |
| PackSize           | P_SIZE              | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| VendorItemCode     | I_CODE_VNDR         | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف لدى المورد |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal      | AD_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal    | UP_TRMNL_NM         | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| VendorUnit         | UNT_VNDR            | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة المورد |
| ItemMinQty         | ITM_MIN_QTY         | NUMBER          | لا     | نعم       | لا     | أقل كمية للصنف |

---

## PurchaseCharge (**OTHER_CHARGES**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| BillType           | BILL_TYPE           | NUMBER(5,0)     | نعم    | لا        | لا     | نوع الفاتورة |
| BillDocType        | BILL_DOC_TYPE       | NUMBER(2,0)     | نعم    | لا        | لا     | نوع مستند الفاتورة |
| BillNo             | BILL_NO             | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial         | BILL_SER            | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| DocumentDate       | DOC_DATE            | DATE            | لا     | نعم       | لا     | تاريخ المستند |
| ServiceCode        | SC_NO               | NUMBER(3,0)     | نعم    | لا        | لا     | كود الخدمة/المصاريف |
| AccountCode        | A_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المرتبط |
| CurrencyCode       | A_CY                | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| AccountRate        | AC_RATE             | NUMBER          | نعم    | لا        | لا     | سعر الصرف للحساب |
| Percent            | PER                 | NUMBER          | لا     | نعم       | لا     | نسبة مئوية مضافة |
| Amount             | AMT                 | NUMBER          | لا     | نعم       | لا     | المبلغ |
| InvoiceItem        | INV_ITEM            | NUMBER(1,0)     | لا     | نعم       | لا     | عنصر فاتورة (1=نعم) |
| RecordNo           | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| BillPY             | BILL_PY             | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الفاتورة (تجميع/مفرد) |
| ExternalPost       | EXTERNAL_POST       | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| VATAmount          | VAT_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| VATPercent         | VAT_PER             | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| ServiceAmount      | SC_AMT              | NUMBER          | لا     | نعم       | لا     | مبلغ الخدمة |
| ServiceAccountRate | SC_AC_RATE          | NUMBER          | لا     | نعم       | لا     | سعر صرف الخدمة |
| ServiceCurrency    | SC_A_CY             | VARCHAR2(7)     | لا     | نعم       | لا     | عملة الخدمة |
| AddedUserId        | AD_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate          | AD_DATE             | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId      | UP_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate        | UP_DATE             | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount        | UP_CNT              | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| CompanyNo          | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |

---

## PurchaseChargeItems (**OTHER_CHARGES_ITEMS**)
| الاسم الجديد        | الاسم القديم         | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------|---------------------|-----------------|--------|-----------|--------|-----------|
| BillType           | BILL_TYPE           | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| BillDocType        | BILL_DOC_TYPE       | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| BillNo             | BILL_NO             | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة |
| BillSerial         | BILL_SER            | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| DocumentDate       | DOC_DATE            | DATE            | لا     | نعم       | لا     | تاريخ المستند |
| ServiceCode        | SC_NO               | NUMBER(3,0)     | لا     | نعم       | لا     | كود الخدمة/المصاريف |
| AccountCode        | A_CODE              | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المرتبط |
| CurrencyCode       | A_CY                | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| AccountRate        | AC_RATE             | NUMBER          | لا     | نعم       | لا     | سعر الصرف للحساب |
| Percent            | PER                 | NUMBER          | لا     | نعم       | لا     | نسبة مئوية مضافة |
| Amount             | AMT                 | NUMBER          | لا     | نعم       | لا     | المبلغ |
| WarehouseCode      | W_CODE              | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| CostCenterCode     | CC_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo          | PJ_NO               | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo         | ACTV_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| RecordNo           | RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| ServiceItemType    | SI_TYPE             | NUMBER(5,0)     | لا     | نعم       | لا     | نوع عنصر الخدمة |
| ItemCode           | I_CODE              | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemUnit           | ITM_UNT             | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize           | P_SIZE              | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| BillPY             | BILL_PY             | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الفاتورة (تجميع/مفرد) |
| ExternalPost       | EXTERNAL_POST       | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| UnitAmount         | UNIT_AMT            | NUMBER          | لا     | نعم       | لا     | المبلغ لكل وحدة |
| PostCode           | POST_CODE           | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل |
| CompanyNo          | CMP_NO              | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo           | BRN_NO              | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear         | BRN_YEAR            | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser         | BRN_USR             | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |

---

**تم عرض جميع الحقول كما هي في ملف SQL وبدون اختصار. إذا أردت جداول أخرى أو توثيق بصيغ مختلفة أخبرني بذلك.**
