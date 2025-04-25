# 3. المبيعات والعملاء (Sales & Customers)
> **جميع الحقول لجميع الجداول التالية بدون أي اختصار، مع ترجمة وشرح لكل حقل**

---

## SalesOrder (**SALES_ORDER**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| OrderType                  | SO_TYPE                    | NUMBER(5,0)     | نعم    | لا        | لا     | نوع أمر البيع (فاتورة، طلب، عرض...). |
| OrderNo                    | ORDER_NO                   | NUMBER(15,0)    | نعم    | لا        | لا     | رقم أمر البيع الرئيسي. |
| OrderSerial                | ORDER_SER                  | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للأمر. |
| OrderDate                  | ORDER_DATE                 | DATE            | نعم    | لا        | لا     | تاريخ إصدار أمر البيع. |
| QuotationNo                | QUOT_NO                    | NUMBER(15,0)    | لا     | نعم       | لا     | رقم عرض السعر المرتبط. |
| QuotationSerial            | QUOT_SER                   | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي لعرض السعر. |
| CurrencyCode               | ORDER_CUR                  | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة. |
| CurrencyRate               | CUR_RATE                   | NUMBER          | لا     | نعم       | لا     | سعر صرف العملة. |
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل. |
| CustomerName               | C_NAME                     | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العميل. |
| Description                | A_DESC                     | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات أو شرح للأمر. |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| ProjectNo                  | PJ_NO                      | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع المرتبط. |
| ActivityNo                 | ACTV_NO                    | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط المرتبط. |
| WarehouseCode              | W_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط. |
| SalesRepCode               | REP_CODE                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود المندوب. |
| Processed                  | PROCESED                   | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة (1=نعم). |
| StandBy                    | STAND_BY                   | NUMBER(1,0)     | لا     | نعم       | لا     | قيد الانتظار. |
| Loaded                     | LOADED                     | NUMBER(1,0)     | لا     | نعم       | لا     | تم التحميل (لوجستي). |
| RefDocNo                   | REF_DOC_NO                 | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مستند مرجعي. |
| RefDocDate                 | REF_DOC_DATE               | DATE            | لا     | نعم       | لا     | تاريخ المستند المرجعي. |
| DiscountAmount             | DISC_AMT                   | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم. |
| DiscountAmountMaster       | DISC_AMT_MST               | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي. |
| DiscountAmountDetail       | DISC_AMT_DTL               | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي. |
| DiscountAmountMasterVAT    | DISC_AMT_MST_VAT           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة. |
| VATDiscountMaster          | VAT_AMT_DISC_MST           | NUMBER          | لا     | نعم       | لا     | ضريبة الخصم الرئيسي. |
| Approved                   | APPROVED                   | NUMBER(1,0)     | لا     | نعم       | لا     | تمت الموافقة (1=نعم). |
| ApprovedUserId             | APRV_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي اعتمد الأمر. |
| ApprovedDate               | APRV_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الاعتماد. |
| ApprovedDesc               | APRV_DSC                   | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الاعتماد. |
| PrepareDate                | PREPARE_DATE               | DATE            | لا     | نعم       | لا     | تاريخ التحضير. |
| ReceiveDealerDate          | REC_DEALER_DATE            | DATE            | لا     | نعم       | لا     | تاريخ استلام العميل. |
| DeliveryDate               | DELIVERY_DATE              | DATE            | لا     | نعم       | لا     | تاريخ التسليم. |
| RepeatUseInBills           | REPEAT_USE_IN_BILLS        | NUMBER(1,0)     | لا     | نعم       | لا     | تكرار الاستخدام في الفواتير. |
| Inactive                   | INACTIVE                   | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم). |
| InactiveReason             | INACTIVE_RES               | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل. |
| InactiveDate               | INACTIVE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ التعطيل. |
| InactiveUserId             | INACTIVE_U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل السطر. |
| PaperNo                    | PAPER_NO                   | NUMBER          | لا     | نعم       | لا     | رقم الورقة. |
| PaperSerial                | PAPER_SERIAL               | NUMBER          | لا     | نعم       | لا     | الرقم التسلسلي للورقة. |
| RegionCode                 | R_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المنطقة. |
| PromotionCode              | PRM_CODE                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود العرض الترويجي. |
| DriverNo                   | DRIVER_NO                  | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السائق. |
| BillDocType                | BILL_DOC_TYPE              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة المرتبط. |
| BillDueDate                | BILL_DUE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الفاتورة. |
| OrderExpireDate            | ORDER_EXPIRE_DATE          | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الأمر. |
| ChequeDueDate              | CHEQUE_DUE_DATE            | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الشيك. |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| ProcessIncFlag             | PROCESS_INC_FLG            | NUMBER(1,0)     | لا     | نعم       | لا     | علم معالجة الإدخال. |
| ProcessWHTransferFlag      | PROCESS_WRHS_TRNSFR_FLG    | NUMBER(1,0)     | لا     | نعم       | لا     | علم معالجة تحويل المستودع. |
| ApprovedSalesMng           | APPROVED_SALES_MNG         | NUMBER(1,0)     | لا     | نعم       | لا     | تم اعتماد مدير المبيعات. |
| ApprovedSalesMngUserId     | APRV_SALES_MNG_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي اعتمد مدير المبيعات. |
| ApprovedSalesMngDate       | APRV_SALES_MNG_DATE        | DATE            | لا     | نعم       | لا     | تاريخ اعتماد مدير المبيعات. |
| TransferProduct            | TRANSFER_PRODUCT           | NUMBER(1,0)     | لا     | نعم       | لا     | تحويل منتج. |
| Export                     | EXPORT                     | NUMBER(1,0)     | لا     | نعم       | لا     | تصدير (1=نعم). |
| VATAmount                  | VAT_AMT                    | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة. |
| OrderAmount                | ORDER_AMT                  | NUMBER          | لا     | نعم       | لا     | إجمالي قيمة الأمر. |
| EmployeeNo                 | EMP_NO                     | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف. |
| OtherAmount                | OTHR_AMT                   | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للفاتورة. |
| SalesInvoiceType           | SI_TYPE                    | NUMBER(5,0)     | لا     | نعم       | لا     | نوع فاتورة البيع. |
| TaxTypeNo                  | CLC_TYP_NO_TAX             | NUMBER(5,0)     | لا     | نعم       | لا     | نوع احتساب الضريبة. |
| Field1 - Field14           | FIELD1-14                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقول مرنة للاستخدامات الخاصة. |
| InsuranceCompanyNo         | INSRNCE_CMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم شركة التأمين. |
| InsuranceBenefitNo         | INSRNCE_BNF_NO             | NUMBER(5,0)     | لا     | نعم       | لا     | رقم المستفيد التأميني. |
| InsurancePersonName        | INSRNCE_PRSON_NM           | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المؤمن عليه. |
| InsuranceCardNo            | INSRNCE_CARD_NO            | VARCHAR2(60)    | لا     | نعم       | لا     | رقم بطاقة التأمين. |
| InsuranceCardNoFamily      | INSRNCE_CARD_NO_FMLY       | VARCHAR2(60)    | لا     | نعم       | لا     | رقم بطاقة العائلة. |
| InsuranceRelationType      | INSRNCE_RLTN_TYP           | NUMBER(2,0)     | لا     | نعم       | لا     | نوع علاقة التأمين. |
| InsuranceClassNo           | INSRNCE_CLSS_NO            | VARCHAR2(5)     | لا     | نعم       | لا     | رقم تصنيف التأمين. |
| InsuranceLoadPercent       | INSRNCE_LOAD_PER           | NUMBER          | لا     | نعم       | لا     | نسبة التحميل التأميني. |
| InsuranceDiagnosis         | INSRNCE_DIAGNOSIS          | VARCHAR2(500)   | لا     | نعم       | لا     | التشخيص الطبي. |
| InsuranceMedicalNo         | INSRNCE_MDCL_NO            | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الملف الطبي. |
| InsuranceApprovedCode      | INSRNCE_APPRVD_CODE        | VARCHAR2(60)    | لا     | نعم       | لا     | كود الموافقة التأمينية. |
| InsuranceCashAmount        | INSRNCE_CSH_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ النقد التأميني. |
| CustomerCashCode           | C_CODE_CSH                 | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل النقدي. |
| CustomerAddress            | C_ADDRESS                  | VARCHAR2(500)   | لا     | نعم       | لا     | عنوان العميل. |
| CustomerMobile             | C_MOBILE                   | VARCHAR2(30)    | لا     | نعم       | لا     | جوال العميل. |
| NTTransferPath             | NT_TRANSFR_PATH            | VARCHAR2(250)   | لا     | نعم       | لا     | مسار التحويل. |
| Latitude                   | LATITUDE                   | VARCHAR2(20)    | لا     | نعم       | لا     | إحداثيات الموقع (عرض). |
| Longitude                  | LONGITUDE                  | VARCHAR2(20)    | لا     | نعم       | لا     | إحداثيات الموقع (طول). |
| CashNo                     | CASH_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير. |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر. |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة. |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر. |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل. |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير. |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة. |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل. |
| VATAmountOther             | VAT_AMT_OTHR               | NUMBER          | لا     | نعم       | لا     | ضريبة مبالغ أخرى. |
| DiffActualWeightSoQty      | DIFF_ACUTL_WGHT_SO_QTY     | NUMBER          | لا     | نعم       | لا     | فرق وزن فعلي/كمية. |
| TareWeight                 | TARE_WGHT                  | NUMBER          | لا     | نعم       | لا     | وزن التعبئة الفارغة. |
| TareWeightDate             | TARE_WGHT_DATE             | DATE            | لا     | نعم       | لا     | تاريخ وزن التعبئة الفارغة. |
| TareWeightUserId           | TARE_WGHT_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي سجل وزن التعبئة. |
| GrossWeight                | GROSS_WGHT                 | NUMBER          | لا     | نعم       | لا     | الوزن الإجمالي. |
| GrossWeightDate            | GROSS_WGHT_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الوزن الإجمالي. |
| GrossWeightUserId          | GROSS_WGHT_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي سجل الوزن الإجمالي. |
| DocSerExternal             | DOC_SER_EXTRNL              | VARCHAR2(256)   | لا     | نعم       | لا     | رقم تسلسلي خارجي. |
| CreditCardNo               | CR_CARD_NO                 | NUMBER(5,0)     | لا     | نعم       | لا     | رقم بطاقة الائتمان. |
| DiscountAmountAfterVAT     | DISC_AMT_AFTR_VAT          | NUMBER          | لا     | نعم       | لا     | الخصم بعد الضريبة. |
| VATPriceType               | CLC_VAT_PRICE_TYP          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع سعر الضريبة. |
| ContractNo                 | CNTRCT_NO                  | VARCHAR2(30)    | لا     | نعم       | لا     | رقم العقد. |
| ContractBatchNo            | CNTRCT_BTCH_NO             | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد. |
| ContractDate               | CNTRCT_DATE                | DATE            | لا     | نعم       | لا     | تاريخ العقد. |
| CollectionNo               | COL_NO                     | NUMBER(10,0)    | لا     | نعم       | لا     | رقم التحصيل. |
| StockRate                  | STOCK_RATE                 | NUMBER          | لا     | نعم       | لا     | سعر المخزون. |
| ProcessOutFlag             | PROCESS_OUT_FLG            | NUMBER(1,0)     | لا     | نعم       | لا     | علم معالجة إخراج الفاتورة. |
| PointCalcTypeNo            | POINT_CALC_TYP_NO          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع احتساب نقاط الولاء. |
| PointCount                 | POINT_CNT                  | NUMBER          | لا     | نعم       | لا     | عدد النقاط. |
| PointCountAll              | POINT_CNT_ALL              | NUMBER          | لا     | نعم       | لا     | إجمالي النقاط. |
| PointReplaceAmount         | POINT_RPLC_AMT             | NUMBER          | لا     | نعم       | لا     | قيمة استبدال النقاط. |
| PointReplaceCount          | POINT_RPLC_CNT             | NUMBER          | لا     | نعم       | لا     | عدد نقاط الاستبدال. |
| PointTypeNo                | POINT_TYP_NO               | NUMBER(5,0)     | لا     | نعم       | لا     | نوع نقاط الولاء. |
| MobileNo                   | MOBILE_NO                  | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الجوال. |
| ProcessMRPFlag             | PROCESS_MRP_FLG            | NUMBER(1,0)     | لا     | نعم       | لا     | علم معالجة السعر المقترح (MRP). |
| NotUseQuotationPromotion   | NOT_USE_QUT_PRM            | NUMBER(1,0)     | لا     | نعم       | لا     | عدم استخدام عروض الأسعار الترويجية. |
| QuotationPromotionSer      | QT_PRM_SER                 | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي لعرض السعر الترويجي. |
| QuotationPromotionRecordNo | QT_PRM_RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم سجل عرض السعر الترويجي. |
| QuotationPromotionNo       | QT_PRM_NO                  | NUMBER(15,0)    | لا     | نعم       | لا     | رقم عرض السعر الترويجي. |
| CalcTaxFreeQtyFlag         | CLC_TAX_FREE_QTY_FLG       | NUMBER(1,0)     | لا     | نعم       | لا     | علم الكمية المعفاة من الضريبة. |
| InsuranceAddLimitMaster    | INSRNCE_ADD_LMT_MST        | NUMBER          | لا     | نعم       | لا     | حد إضافي تأميني رئيسي. |
| AddedDateClock             | AD_DATE_CLK                | DATE            | لا     | نعم       | لا     | تاريخ إضافة السطر (بالساعة). |
| ShowSystemType             | SHO_SYS_TYP                | NUMBER(2,0)     | لا     | نعم       | لا     | نوع النظام الظاهر. |
| OrderStatusType            | ORDR_STAT_TYP              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع حالة الطلب. |
| OrderTender                | ORDR_TND                   | VARCHAR2(9)     | لا     | نعم       | لا     | مرجع المناقصة. |
| CustomerSpecialistName     | CST_SPCLST_NM              | VARCHAR2(200)   | لا     | نعم       | لا     | اسم المتخصص بالعميل. |
| OrderNoManual              | ORDR_NO_MUNL               | VARCHAR2(50)    | لا     | نعم       | لا     | رقم الطلب اليدوي. |
| InsuranceAddLimitDoc       | INSRNCE_ADD_LMT_DOC        | NUMBER          | لا     | نعم       | لا     | حد إضافي تأميني حسب مستند. |
| InsuranceAddLimitDtl       | INSRNCE_ADD_LMT_DTL        | NUMBER          | لا     | نعم       | لا     | حد إضافي تأميني تفصيلي. |
| InsuranceLimitAmountLocalDoc | INSRNCE_LMT_AMT_LOC_DOC  | NUMBER          | لا     | نعم       | لا     | حد محلي حسب مستند. |
| PatientNo                  | PTNT_NO                    | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المريض. |
| DoctorNo                   | DCTR_NO                    | VARCHAR2(15)    | لا     | نعم       | لا     | رقم الطبيب. |
| PatientType                | PTNT_TYP                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المريض. |
| AdmissionDocNo             | DOC_NO_ADMSON              | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند الدخول. |
| AdmissionDocSerial         | DOC_SRL_ADMSON             | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للدخول. |
| DocMSq                     | DOC_M_SQ                   | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي مؤقت. |
| CustomerAcceptType         | CST_ACCPT_TYP              | NUMBER(1,0)     | لا     | نعم       | لا     | نوع قبول العميل. |
| CustomerAcceptUserId       | CST_ACCPT_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم قبول العميل. |
| CustomerAcceptDate         | CST_ACCPT_DATE             | DATE            | لا     | نعم       | لا     | تاريخ قبول العميل. |
| CustomerAcceptDesc         | CST_ACCPT_DSC              | VARCHAR2(500)   | لا     | نعم       | لا     | وصف قبول العميل. |
| ProcessRequestAuto         | PROCESS_REQ_AUTO           | NUMBER(1,0)     | لا     | نعم       | لا     | طلب معالجة تلقائي. |

---

## SalesOrderDetail (**ORDER_DETAIL**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| OrderType                  | SO_TYPE                    | NUMBER(5,0)     | نعم    | لا        | لا     | نوع أمر البيع. |
| OrderNo                    | ORDER_NO                   | NUMBER(15,0)    | نعم    | لا        | لا     | رقم أمر البيع. |
| OrderSerial                | ORDER_SER                  | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للأمر. |
| ItemCode                   | I_CODE                     | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف. |
| ItemQty                    | I_QTY                      | NUMBER          | لا     | نعم       | لا     | كمية الصنف. |
| FreeQty                    | FREE_QTY                   | NUMBER          | لا     | نعم       | لا     | كمية مجانية. |
| ItemUnit                   | ITM_UNT                    | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف. |
| PackSize                   | P_SIZE                     | NUMBER          | نعم    | لا        | لا     | حجم العبوة. |
| PackQty                    | P_QTY                      | NUMBER          | لا     | نعم       | لا     | كمية العبوة. |
| ItemPrice                  | I_PRICE                    | NUMBER          | لا     | نعم       | لا     | سعر الصنف. |
| ReservationDate            | RES_DATE                   | DATE            | لا     | نعم       | لا     | تاريخ الحجز. |
| ReservationQty             | RES_QTY                    | NUMBER          | لا     | نعم       | لا     | كمية الحجز. |
| WarehouseCode              | W_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع. |
| Reserved                   | RESERVED                   | NUMBER(1,0)     | لا     | نعم       | لا     | محجوزة (1=نعم). |
| RecordNo                   | RCRD_NO                    | NUMBER          | لا     | نعم       | لا     | رقم السطر الداخلي. |
| Barcode                    | BARCODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف. |
| UseAttachment              | USE_ATTCH                  | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق. |
| ReceiveAttachment          | REC_ATTCH                  | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات. |
| ItemDesc                   | ITEM_DESC                  | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف. |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي. |
| Canceled                   | CANCELED                   | NUMBER(1,0)     | لا     | نعم       | لا     | ملغي (1=نعم). |
| ExpireDate                 | EXPIRE_DATE                | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الصنف. |
| BatchNo                    | BATCH_NO                   | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الدفعة/التشغيلة. |
| VATPercent                 | VAT_PER                    | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة. |
| VATAmount                  | VAT_AMT                    | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة. |
| ItemLength                 | I_LENGTH                   | NUMBER          | لا     | نعم       | لا     | طول الصنف. |
| ItemWidth                  | I_WIDTH                    | NUMBER          | لا     | نعم       | لا     | عرض الصنف. |
| ItemHeight                 | I_HEIGHT                   | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف. |
| ItemNumber                 | I_NUMBER                   | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي. |
| WeightUnit                 | WT_UNT                     | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن. |
| WeightQty                  | WT_QTY                     | NUMBER          | لا     | نعم       | لا     | كمية الوزن. |
| DiscountAmount             | DIS_AMT                    | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم. |
| DiscountAmountMaster       | DIS_AMT_MST                | NUMBER          | لا     | نعم       | لا     | خصم رئيسي. |
| DiscountPercent            | DIS_PER                    | NUMBER          | لا     | نعم       | لا     | نسبة الخصم. |
| DiscountAmountDetail       | DIS_AMT_DTL                | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي. |
| DiscountPercent2           | DIS_PER2                   | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية. |
| DiscountAmountDetail2      | DIS_AMT_DTL2               | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي. |
| DiscountPercent3           | DIS_PER3                   | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة. |
| DiscountAmountDetail3      | DIS_AMT_DTL3               | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث. |
| DiscountAmountDetailVAT    | DIS_AMT_DTL_VAT            | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي بعد الضريبة. |
| DiscountAmountMasterVAT    | DIS_AMT_MST_VAT            | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة. |
| VATDiscountDetailVAT       | VAT_AMT_DIS_DTL_VAT        | NUMBER          | لا     | نعم       | لا     | ضريبة الخصم التفصيلي بعد الضريبة. |
| VATAmountAfterDiscount     | VAT_AMT_AFTR_DIS           | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة بعد الخصم. |
| VATAmountBeforeDiscount    | VAT_AMT_BFR_DIS            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة قبل الخصم. |
| VATDiscountMasterVAT       | VAT_AMT_DIS_MST_VAT        | NUMBER          | لا     | نعم       | لا     | ضريبة الخصم الرئيسي بعد الضريبة. |
| DocSeq                     | DOC_SEQ                    | NUMBER          | لا     | نعم       | لا     | تسلسل المستند. |
| EmployeeNo                 | EMP_NO                     | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف. |
| SubCustomerCode            | SUB_C_CODE                 | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل الفرعي. |
| FieldDtl1 - FieldDtl10     | FIELD_DTL1-10              | VARCHAR2(60)    | لا     | نعم       | لا     | حقول إضافية. |
| PackageUnit                | PKG_UNT                    | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة التغليف. |
| PackageUnitSize            | PKG_UNT_SIZE               | NUMBER(10,0)    | لا     | نعم       | لا     | حجم وحدة التغليف. |
| PackageQty                 | PKG_QTY                    | NUMBER          | لا     | نعم       | لا     | كمية التغليف. |
| PackageLength              | PKG_LENGTH                 | NUMBER          | لا     | نعم       | لا     | طول التغليف. |
| PackageWidth               | PKG_WIDTH                  | NUMBER          | لا     | نعم       | لا     | عرض التغليف. |
| PackageHeight              | PKG_HEIGHT                 | NUMBER          | لا     | نعم       | لا     | ارتفاع التغليف. |
| PackageSize                | PKG_SIZE                   | NUMBER          | لا     | نعم       | لا     | حجم التغليف. |
| PackageWeight              | PKG_WEIGHT                 | NUMBER          | لا     | نعم       | لا     | وزن التغليف. |
| SalesInvoiceType           | SI_TYPE                    | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة المتوقعة. |
| OtherAmount                | OTHR_AMT                   | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى. |
| InsuranceLoadPercent       | INSRNCE_LOAD_PER           | NUMBER          | لا     | نعم       | لا     | نسبة تحميل التأمين. |
| InsuranceLoadAmount        | INSRNCE_LOAD_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ تحميل التأمين. |
| InsuranceAddLimit          | INSRNCE_ADD_LMT            | NUMBER          | لا     | نعم       | لا     | حد إضافي تأميني. |
| InsuranceApprovedCode      | INSRNCE_APPRVD_CODE        | VARCHAR2(60)    | لا     | نعم       | لا     | كود الموافقة التأمينية. |
| ItemPriceVAT               | I_PRICE_VAT                | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة. |
| MeasurePrice               | MEASUR_PRICE               | NUMBER          | لا     | نعم       | لا     | سعر الوحدة المقاسة. |
| DocTypeRef                 | DOC_TYPE_REF               | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي. |
| DocNoRef                   | DOC_NO_REF                 | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي. |
| DocSerRef                  | DOC_SER_REF                | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند المرجعي. |
| DocSequenceRef             | DOC_SEQUENCE_REF           | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر المرجعي. |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة. |
| StockCost                  | STK_COST                   | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون. |
| UsedItem                   | USED_ITM                   | NUMBER(1,0)     | لا     | نعم       | لا     | تم استخدام العنصر (1=نعم). |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة. |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع. |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع. |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع. |
| ArgumentNo                 | ARGMNT_NO                  | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص. |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل. |
| OtherAmountDiscount        | OTHR_AMT_DISC              | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى. |
| VATAmountOther             | VAT_AMT_OTHR               | NUMBER          | لا     | نعم       | لا     | ضريبة مبالغ أخرى. |
| FromTime                   | F_TIME                     | VARCHAR2(15)    | لا     | نعم       | لا     | من وقت (زمني). |
| ToTime                     | T_TIME                     | VARCHAR2(15)    | لا     | نعم       | لا     | إلى وقت (زمني). |
| ProjectNo                  | PJ_NO                      | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع. |
| ActivityNo                 | ACTV_NO                    | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط. |
| DiscountAmountAfterVAT     | DIS_AMT_AFTR_VAT           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم بعد الضريبة. |
| DiscountAmountDetail2VAT   | DIS_AMT_DTL2_VAT           | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي تفصيلي بعد الضريبة. |
| DiscountAmountDetail3VAT   | DIS_AMT_DTL3_VAT           | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث بعد الضريبة. |
| VATDiscountDetail2VAT      | VAT_AMT_DIS_DTL2_VAT       | NUMBER          | لا     | نعم       | لا     | ضريبة خصم إضافي تفصيلي بعد الضريبة. |
| VATDiscountDetail3VAT      | VAT_AMT_DIS_DTL3_VAT       | NUMBER          | لا     | نعم       | لا     | ضريبة خصم إضافي ثالث بعد الضريبة. |
| PurchaseOrderNo            | PO_NO                      | NUMBER(15,0)    | لا     | نعم       | لا     | رقم أمر الشراء. |
| PurchaseOrderSer           | PO_SER                     | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي لأمر الشراء. |
| FieldDtl4 - FieldDtl10     | FIELD_DTL4-10              | VARCHAR2(60)    | لا     | نعم       | لا     | حقول إضافية أخرى. |
| LevelNo                    | LEV_NO                     | NUMBER(3,0)     | لا     | نعم       | لا     | رقم مستوى التسعير. |
| ItemPriceLevelNo           | I_PRICE_LEV_NO             | NUMBER          | لا     | نعم       | لا     | رقم مستوى السعر. |
| BillDocType                | BILL_DOC_TYPE              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة. |
| DiscountPercentQuotationPromotion | DIS_PER_QT_PRM      | NUMBER          | لا     | نعم       | لا     | نسبة خصم عرض سعر ترويجي. |
| DiscountAmountDetailQuotationPromotionVAT | DIS_AMT_DTL_QT_PRM_VAT | NUMBER | لا  | نعم       | لا     | خصم عرض سعر ترويجي بعد الضريبة. |
| DiscountAmountDetailQuotationPromotion | DIS_AMT_DTL_QT_PRM | NUMBER  | لا     | نعم       | لا     | مبلغ خصم عرض سعر ترويجي. |
| DocSeqTmp                  | DOC_SEQ_TMP                | NUMBER          | لا     | نعم       | لا     | تسلسل مؤقت للسطر. |
| PromotionGroupNo           | PRM_GRP_NO                 | NUMBER(5,0)     | لا     | نعم       | لا     | رقم مجموعة الترويج. |
| QuotationPromotionSer      | QT_PRM_SER                 | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل عرض سعر ترويجي. |
| QuotationPromotionRecordNo | QT_PRM_RCRD_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم سجل عرض سعر ترويجي. |
| QuotationPromotionNo       | QT_PRM_NO                  | NUMBER(15,0)    | لا     | نعم       | لا     | رقم عرض سعر ترويجي. |
| OtherAmountItem            | OTHR_AMT_ITM               | NUMBER          | لا     | نعم       | لا     | مبلغ إضافي للصنف. |
| InsuranceAddLimitMaster    | INSRNCE_ADD_LMT_MST        | NUMBER          | لا     | نعم       | لا     | حد إضافي تأميني رئيسي. |
| FreeType                   | FREE_TYP                    | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المجانية. |



---

## SalesQuotation (**QUOTATION**)
| الاسم الجديد              | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| QuotationType            | QT_TYPE            | NUMBER(2,0)     | نعم    | لا        | لا     | نوع عرض السعر (نقدي/آجل/خدمة ...) |
| QuotationNo              | QUOT_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم عرض السعر الرئيسي |
| QuotationSerial          | QUOT_SER           | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للعرض |
| QuotationDate            | QUOT_DATE          | DATE            | نعم    | لا        | لا     | تاريخ إصدار عرض السعر |
| CurrencyCode             | QUOT_CUR           | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| CustomerCode             | C_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| CustomerName             | C_NAME             | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العميل |
| CostCenterCode           | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| WarehouseCode            | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط |
| ProjectNo                | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| Description              | A_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات/وصف العرض |
| QuotationTender          | QUOT_TEND          | VARCHAR2(9)     | لا     | نعم       | لا     | رقم مناقصة/مرجع للعطاء |
| QuotationTenderDate      | QUOT_TEND_DATE     | DATE            | لا     | نعم       | لا     | تاريخ المناقصة |
| ReferenceNo              | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| ReferenceDate            | REF_DATE           | DATE            | لا     | نعم       | لا     | تاريخ المرجع |
| PortOfDeparture          | PORT_OF_DEP        | VARCHAR2(100)   | لا     | نعم       | لا     | منفذ الشحن/المغادرة |
| RequiredDays             | REQ_DAYS           | NUMBER(5,0)     | لا     | نعم       | لا     | عدد الأيام المطلوبة للتنفيذ |
| PaymentTerms             | PAY_TERMS          | VARCHAR2(500)   | لا     | نعم       | لا     | شروط الدفع |
| DiscountAmount           | DISC_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| Processed                | PROCESSED          | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| Approved                 | APPROVED           | NUMBER(1,0)     | لا     | نعم       | لا     | معتمد (1=نعم) |
| ApprovedDate             | APRV_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الاعتماد |
| ApprovedDesc             | APRV_DSC           | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الاعتماد |
| ApprovedUserId           | APRV_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الاعتماد |
| OtherAmount              | OTHR_AMT           | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى (مصاريف/خدمات) |
| SalesInvoiceType         | SI_TYPE            | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة المتوقعة من العرض |
| QuotationAmount          | QUOT_AMT           | NUMBER          | لا     | نعم       | لا     | إجمالي قيمة العرض |
| Inactive                 | INACTIVE           | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveReason           | INACTIVE_RES       | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| InactiveDate             | INACTIVE_DATE      | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveUserId           | INACTIVE_U_ID      | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل السطر |
| ExternalPost             | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| CostType                 | COST_TYPE          | VARCHAR2(5)     | لا     | نعم       | لا     | نوع التكلفة |
| SalesRepCode             | REP_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     | كود المندوب |
| Export                   | EXPORT             | NUMBER(1,0)     | لا     | نعم       | لا     | هل العرض للتصدير |
| QuotationExpireDate      | QUOT_EXPIRE_DATE   | DATE            | لا     | نعم       | لا     | تاريخ انتهاء العرض |
| CurrencyRate             | CUR_RATE           | NUMBER          | لا     | نعم       | لا     | سعر صرف العملة |
| ChequeDueDate            | CHEQUE_DUE_DATE    | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الشيك |
| DiscountAmountMaster     | DISC_AMT_MST       | NUMBER          | لا     | نعم       | لا     | خصم رئيسي |
| DiscountAmountDetail     | DISC_AMT_DTL       | NUMBER          | لا     | نعم       | لا     | خصم تفصيلي |
| DiscountAmountMasterVAT  | DISC_AMT_MST_VAT   | NUMBER          | لا     | نعم       | لا     | خصم رئيسي بعد الضريبة |
| VATDiscountMaster        | VAT_AMT_DISC_MST   | NUMBER          | لا     | نعم       | لا     | ضريبة الخصم الرئيسي |
| VATAmount                | VAT_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| QuotationDocType         | QUOT_DOC_TYPE      | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند العرض |
| QuotationDueDate         | QUOT_DUE_DATE      | DATE            | لا     | نعم       | لا     | تاريخ استحقاق العرض |
| CustomerAcceptType       | CST_ACCPT_TYP      | NUMBER(1,0)     | لا     | نعم       | لا     | نوع موافقة العميل |
| CustomerAcceptDate       | CST_ACCPT_DATE     | DATE            | لا     | نعم       | لا     | تاريخ موافقة العميل |
| CustomerAcceptDesc       | CST_ACCPT_DSC      | VARCHAR2(500)   | لا     | نعم       | لا     | وصف موافقة العميل |
| TaxTypeNo                | CLC_TYP_NO_TAX     | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الضريبة للعرض |
| Field1                   | FIELD1             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 1 |
| Field2                   | FIELD2             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 2 |
| Field3                   | FIELD3             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 3 |
| Field4                   | FIELD4             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 4 |
| Field5                   | FIELD5             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 5 |
| Field6                   | FIELD6             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 6 |
| Field7                   | FIELD7             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 7 |
| Field8                   | FIELD8             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 8 |
| Field9                   | FIELD9             | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 9 |
| Field10                  | FIELD10            | VARCHAR2(250)   | لا     | نعم       | لا     | حقل إضافي مرن 10 |
| AddedDate                | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedUserId              | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| UpdatedUserId            | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate              | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount              | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| ReportPriority           | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| CompanyNo                | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal            | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة |
| UpdatedTerminal          | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل |
| VATAmountOther           | VAT_AMT_OTHR       | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على المبالغ الأخرى |
| DocSerExternal           | DOC_SER_EXTRNL     | VARCHAR2(256)   | لا     | نعم       | لا     | رقم تسلسلي خارجي |
| VATPriceType             | CLC_VAT_PRICE_TYP  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حساب الضريبة في السعر |
| CalcTaxFreeQtyFlag       | CLC_TAX_FREE_QTY_FLG | NUMBER(1,0)   | لا     | نعم       | لا     | علم الكمية المعفاة من الضريبة |
| AddedDateClock           | AD_DATE_CLK        | DATE            | لا     | نعم       | لا     | تاريخ الإضافة (بالساعة) |
| ContractBatchNo          | CNTRCT_BTCH_NO     | NUMBER          | لا     | نعم       | لا     | رقم دفعة العقد |
| ContractDate             | CNTRCT_DATE        | DATE            | لا     | نعم       | لا     | تاريخ العقد |
| ContractNo               | CNTRCT_NO          | VARCHAR2(30)    | لا     | نعم       | لا     | رقم العقد |
| DeliveryDate             | DELIVERY_DATE      | DATE            | لا     | نعم       | لا     | تاريخ التسليم للعميل |

---

## SalesQuotationDetail (**QUOTATION_DETAIL**)
| الاسم الجديد              | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| QuotationType            | QT_TYPE            | NUMBER(2,0)     | نعم    | لا        | لا     | نوع عرض السعر |
| QuotationNo              | QUOT_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم عرض السعر |
| QuotationSerial          | QUOT_SER           | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للعرض |
| ItemCode                 | I_CODE             | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty                  | I_QTY              | NUMBER          | لا     | نعم       | لا     | كمية الصنف |
| ItemUnit                 | ITM_UNT            | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                 | P_SIZE             | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                  | P_QTY              | NUMBER          | لا     | نعم       | لا     | كمية العبوة |
| ItemPrice                | I_PRICE            | NUMBER(24,9)    | لا     | نعم       | لا     | سعر الصنف |
| WarehouseCode            | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| VATPercent               | VAT_PER            | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                | VAT_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| RecordNo                 | RCRD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| Barcode                  | BARCODE            | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| UseAttachment            | USE_ATTCH          | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق للصنف |
| FreeQty                  | FREE_QTY           | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ReceiveAttachment        | REC_ATTCH          | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات |
| ItemLength               | I_LENGTH           | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth                | I_WIDTH            | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight               | I_HEIGHT           | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber               | I_NUMBER           | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| WeightUnit               | WT_UNT             | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| WeightQty                | WT_QTY             | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| ItemDesc                 | ITEM_DESC          | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| DiscountPercent          | DIS_PER            | NUMBER          | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmountDetail     | DIS_AMT_DTL        | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountPercent2         | DIS_PER2           | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية |
| DiscountAmountDetail2    | DIS_AMT_DTL2       | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي |
| DiscountPercent3         | DIS_PER3           | NUMBER          | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3    | DIS_AMT_DTL3       | NUMBER          | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| DiscountAmountMaster     | DIS_AMT_MST        | NUMBER          | لا     | نعم       | لا     | مبلغ خصم رئيسي |
| DiscountAmount           | DIS_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountDetailVAT  | DIS_AMT_DTL_VAT    | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي بعد الضريبة |
| DiscountAmountMasterVAT  | DIS_AMT_MST_VAT    | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة |
| VATDiscountDetailVAT     | VAT_AMT_DIS_DTL_VAT| NUMBER          | لا     | نعم       | لا     | مبلغ ضريبة الخصم التفصيلي بعد الضريبة |
| VATAmountAfterDiscount   | VAT_AMT_AFTR_DIS   | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة بعد الخصم |
| VATAmountBeforeDiscount  | VAT_AMT_BFR_DIS    | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة قبل الخصم |
| VATDiscountMasterVAT     | VAT_AMT_DIS_MST_VAT| NUMBER          | لا     | نعم       | لا     | مبلغ ضريبة الخصم الرئيسي بعد الضريبة |
| OtherAmount              | OTHR_AMT           | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| ItemPriceVAT             | I_PRICE_VAT        | NUMBER          | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| SalesInvoiceType         | SI_TYPE            | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة المتوقعة للصنف |
| FieldDtl1                | FIELD_DTL1         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 1 |
| FieldDtl2                | FIELD_DTL2         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 2 |
| FieldDtl3                | FIELD_DTL3         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 3 |
| ExternalPost             | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | علم الترحيل الخارجي |
| ExpireDate               | EXPIRE_DATE        | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة |
| BatchNo                  | BATCH_NO           | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الدفعة/التشغيلة |
| ArgumentNo               | ARGMNT_NO          | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| StockCost                | STK_COST           | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون |
| UsedItem                 | USED_ITM           | NUMBER(1,0)     | لا     | نعم       | لا     | تم استخدام العنصر (1=نعم) |
| DocSequence              | DOC_SEQUENCE       | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر بالمستند |
| CompanyNo                | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| UpdateCount              | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| OtherAmountDiscount      | OTHR_AMT_DISC      | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| VATAmountOther           | VAT_AMT_OTHR       | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة على مبالغ أخرى |
| CostCenterCode           | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| DiscountAmountDetail2VAT | DIS_AMT_DTL2_VAT   | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي بعد الضريبة |
| DiscountAmountDetail3VAT | DIS_AMT_DTL3_VAT   | NUMBER          | لا     | نعم       | لا     | خصم إضافي ثالث تفصيلي بعد الضريبة |
| VATDiscountDetail2VAT    | VAT_AMT_DIS_DTL2_VAT | NUMBER        | لا     | نعم       | لا     | ضريبة خصم إضافي تفصيلي بعد الضريبة |
| VATDiscountDetail3VAT    | VAT_AMT_DIS_DTL3_VAT | NUMBER        | لا     | نعم       | لا     | ضريبة خصم إضافي ثالث بعد الضريبة |
| FieldDtl4                | FIELD_DTL4         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 4 |
| FieldDtl5                | FIELD_DTL5         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 5 |
| FieldDtl6                | FIELD_DTL6         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 6 |
| FieldDtl7                | FIELD_DTL7         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 7 |
| FieldDtl8                | FIELD_DTL8         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 8 |
| FieldDtl9                | FIELD_DTL9         | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 9 |
| FieldDtl10               | FIELD_DTL10        | VARCHAR2(60)    | لا     | نعم       | لا     | حقل إضافي 10 |
| LevelNo                  | LEV_NO             | NUMBER(3,0)     | لا     | نعم       | لا     | رقم مستوى التسعير |
| ItemPriceLevelNo         | I_PRICE_LEV_NO     | NUMBER          | لا     | نعم       | لا     | رقم مستوى السعر للصنف |
| OtherAmountItem          | OTHR_AMT_ITM       | NUMBER          | لا     | نعم       | لا     | مبلغ إضافي للصنف |
| DocNoRef                 | DOC_NO_REF         | NUMBER(15,0)    | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef                | DOC_SER_REF        | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمستند المرجعي |
| DocTypeRef               | DOC_TYPE_REF       | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المستند المرجعي |
| FreeType                 | FREE_TYP           | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المجانية |

---

## SalesInvoice (**IAS_BILL_MST**)
| الاسم الجديد              | الاسم القديم        | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|--------------------------|--------------------|-----------------|--------|-----------|--------|-----------|
| BillDocType              | BILL_DOC_TYPE      | NUMBER(2,0)     | نعم    | لا        | لا     | نوع الفاتورة |
| BillNo                   | BILL_NO            | NUMBER(15,0)    | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial               | BILL_SER           | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| BillDate                 | BILL_DATE          | DATE            | نعم    | لا        | لا     | تاريخ الفاتورة |
| BillCurrency             | BILL_CURRENCY      | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| BillRate                 | BILL_RATE          | NUMBER          | نعم    | لا        | لا     | سعر صرف العملة |
| StockRate                | STOCK_RATE         | NUMBER          | لا     | نعم       | لا     | سعر المخزون |
| CustomerCode             | C_CODE             | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| CustomerName             | C_NAME             | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العميل |
| AccountCode              | A_CODE             | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي |
| ChequeNo                 | CHEQUE_NO          | NUMBER(20,0)    | لا     | نعم       | لا     | رقم الشيك |
| NoteNo                   | NOTE_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم السند |
| ChequeAmount             | CHEQUE_AMT         | NUMBER          | لا     | نعم       | لا     | مبلغ الشيك |
| ChequeDueDate            | CHEQUE_DUE_DATE    | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الشيك |
| BillDueDate              | BILL_DUE_DATE      | DATE            | لا     | نعم       | لا     | تاريخ استحقاق الفاتورة |
| BillPost                 | BILL_POST          | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل الفاتورة (1=نعم) |
| DiscountAmount           | DISC_AMT           | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster     | DISC_AMT_MST       | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي |
| DiscountAmountDetail     | DISC_AMT_DTL       | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountAmountMasterVAT  | DISC_AMT_MST_VAT   | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة |
| VATDiscountMaster        | VAT_AMT_DISC_MST   | NUMBER          | لا     | نعم       | لا     | ضريبة الخصم الرئيسي |
| OtherAmount              | OTHR_AMT           | NUMBER          | لا     | نعم       | لا     | مبالغ أخرى (مصاريف/خدمات) |
| VATAmount                | VAT_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| BillAmount               | BILL_AMT           | NUMBER          | لا     | نعم       | لا     | إجمالي مبلغ الفاتورة |
| CouponAmount             | CPN_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ القسيمة |
| WarehouseCode            | W_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط |
| RegionCode               | R_CODE             | NUMBER(10,0)    | لا     | نعم       | لا     | كود المنطقة |
| SalesRepCode             | REP_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     | كود المندوب |
| EmployeeNo               | EMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف |
| ReferenceNo              | REF_NO             | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CashNo                   | CASH_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير |
| CostCenterCode           | CC_CODE            | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                | PJ_NO              | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo               | ACTV_NO            | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| CreditCardNo             | CR_CARD_NO         | NUMBER(5,0)     | لا     | نعم       | لا     | رقم بطاقة الائتمان |
| CreditCardAmount         | CR_CARD_AMT        | NUMBER          | لا     | نعم       | لا     | مبلغ بطاقة الائتمان |
| CreditCard               | CREDIT_CARD        | NUMBER(1,0)     | لا     | نعم       | لا     | هل تم الدفع بالبطاقة (1=نعم) |
| SalesInvoiceType         | SI_TYPE            | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| AttachCount              | ATTACH_CNT         | NUMBER(3,0)     | لا     | نعم       | لا     | عدد المرفقات |
| Export                   | EXPORT             | NUMBER(1,0)     | لا     | نعم       | لا     | هل الفاتورة للتصدير |
| StandBy                  | STAND_BY           | NUMBER(1,0)     | لا     | نعم       | لا     | قيد الانتظار |
| CollectionNo             | COL_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم التحصيل |
| CashAccountFCC           | CASH_AC_FCC        | VARCHAR2(30)    | لا     | نعم       | لا     | حساب النقد الأجنبي |
| CashNoFCC                | CASH_NO_FCC        | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير الأجنبي |
| Description              | A_DESC             | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات |
| CommissionPercent        | COMM_PER           | NUMBER          | لا     | نعم       | لا     | نسبة العمولة |
| ReportPriority           | PR_REP             | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| Processed                | PROCESSED          | NUMBER(1,0)     | لا     | نعم       | لا     | تمت المعالجة (1=نعم) |
| BillPY                   | BILL_PY            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الفاتورة (تجميع/مفرد) |
| ExternalPost             | EXTERNAL_POST      | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| LoadNo                   | LOAD_NO            | NUMBER(10,0)    | لا     | نعم       | لا     | رقم التحميل |
| LoadSerial               | LOAD_SER           | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للتحميل |
| AuditRef                 | AUDIT_REF          | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc             | AUDIT_REF_DESC     | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId           | AUDIT_REF_U_ID     | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate             | AUDIT_REF_DATE     | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| BillNoConn               | BILL_NO_CONN       | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرتبطة |
| BillSerConn              | BILL_SER_CONN      | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للفاتورة المرتبطة |
| TaxTypeNo                | CLC_TYP_NO_TAX     | NUMBER(5,0)     | لا     | نعم       | لا     | نوع احتساب الضريبة |
| ACAmount                 | AC_AMT             | NUMBER          | لا     | نعم       | لا     | مبلغ الحساب المحاسبي |
| Field1 - Field14         | FIELD1-14          | VARCHAR2(250)   | لا     | نعم       | لا     | حقول مرنة إضافية |
| CustomerTel              | C_TEL              | VARCHAR2(20)    | لا     | نعم       | لا     | هاتف العميل |
| CustomerAddress          | C_ADDRESS          | VARCHAR2(500)   | لا     | نعم       | لا     | عنوان العميل |
| ReceiveName              | RECEIVE_NM         | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المستلم |
| DocNoPDA                 | DOC_NO_PDA         | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند PDA |
| PDAName                  | PDA_NM             | VARCHAR2(50)    | لا     | نعم       | لا     | اسم جهاز PDA |
| CreditCardNoScnd         | CR_CARD_NO_SCND    | NUMBER(5,0)     | لا     | نعم       | لا     | بطاقة ائتمان ثانية |
| CreditCardAmountScnd     | CR_CARD_AMT_SCND   | NUMBER          | لا     | نعم       | لا     | مبلغ البطاقة الثانية |
| CreditCardNoThrd         | CR_CARD_NO_THRD    | NUMBER(5,0)     | لا     | نعم       | لا     | بطاقة ائتمان ثالثة |
| CreditCardAmountThrd     | CR_CARD_AMT_THRD   | NUMBER          | لا     | نعم       | لا     | مبلغ البطاقة الثالثة |
| DriverNo                 | DRIVER_NO          | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السائق |
| AddDiscountAmountMaster  | ADD_DISC_AMT_MST   | NUMBER          | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail  | ADD_DISC_AMT_DTL   | NUMBER          | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| OtherAmountDiscount      | OTHR_AMT_DISC      | NUMBER          | لا     | نعم       | لا     | خصم على المبالغ الأخرى |
| PaidAmount               | PAID_AMT           | NUMBER          | لا     | نعم       | لا     | المبلغ المدفوع |
| PaidBill                 | PAID_BILL          | NUMBER(1,0)     | لا     | نعم       | لا     | الفاتورة مدفوعة (1=نعم) |
| PaidUserId               | PAID_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي دفع |
| PaidDate                 | PAID_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الدفع |
| ReceiveInvoiceBill       | REC_INV_BILL       | NUMBER(1,0)     | لا     | نعم       | لا     | تم استلام فاتورة (1=نعم) |
| ReceiveInvoiceUserId     | REC_INV_U_ID       | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم استلام الفاتورة |
| ReceiveInvoiceDate       | REC_INV_DATE       | DATE            | لا     | نعم       | لا     | تاريخ استلام الفاتورة |
| BillValued               | BILL_VALUED        | NUMBER(1,0)     | لا     | نعم       | لا     | تم تقييم الفاتورة (1=نعم) |
| ValueDate                | VALUE_DATE         | DATE            | لا     | نعم       | لا     | تاريخ التقييم |
| POSPost                  | POS_POST           | NUMBER(1,0)     | لا     | نعم       | لا     | ترحيل نقطة البيع |
| CreditDocNoRef           | CR_DOC_NO_REF      | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند مرجعي للائتمان |
| BillWithoutAutoOtherAmt  | BILL_WITHOUT_AUTO_OTHR_AMT | NUMBER(1,0)| لا   | نعم       | لا     | فاتورة بدون مبالغ أخرى تلقائية |
| CreditValued             | CR_VALUED          | NUMBER(1,0)     | لا     | نعم       | لا     | تم تقييم الائتمان (1=نعم) |
| CreditValuedScnd         | CR_VALUED_SCND     | NUMBER(1,0)     | لا     | نعم       | لا     | تقييم ائتمان ثاني |
| CreditValuedThrd         | CR_VALUED_THRD     | NUMBER(1,0)     | لا     | نعم       | لا     | تقييم ائتمان ثالث |
| CreditDocNoRefScnd       | CR_DOC_NO_REF_SCND | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند مرجعي ثاني للائتمان |
| CreditDocNoRefThrd       | CR_DOC_NO_REF_THRD | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند مرجعي ثالث للائتمان |
| CreditValueDate          | CR_VALUE_DATE      | DATE            | لا     | نعم       | لا     | تاريخ تقييم الائتمان |
| CreditValueDateScnd      | CR_VALUE_DATE_SCND | DATE            | لا     | نعم       | لا     | تاريخ تقييم الائتمان الثاني |
| CreditValueDateThrd      | CR_VALUE_DATE_THRD | DATE            | لا     | نعم       | لا     | تاريخ تقييم الائتمان الثالث |
| CreditCardCommissionPer  | CR_CARD_COMM_PER   | NUMBER          | لا     | نعم       | لا     | عمولة البطاقة الائتمانية |
| CreditCardCommissionPerScnd | CR_CARD_COMM_PER_SCND | NUMBER     | لا     | نعم       | لا     | عمولة البطاقة الثانية |
| CreditCardCommissionPerThrd | CR_CARD_COMM_PER_THRD | NUMBER     | لا     | نعم       | لا     | عمولة البطاقة الثالثة |
| QuotationPromotionNo     | QT_PRM_NO          | NUMBER(15,0)    | لا     | نعم       | لا     | رقم عرض السعر الترويجي |
| QuotationPromotionSer    | QT_PRM_SER         | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل عرض السعر الترويجي |
| QuotationPromotionRecordNo | QT_PRM_RCRD_NO   | NUMBER(10,0)    | لا     | نعم       | لا     | سجل عرض السعر الترويجي |
| PromotionCode            | PRM_CODE           | VARCHAR2(15)    | لا     | نعم       | لا     | كود العرض الترويجي |
| DocBranchNo              | DOC_BRN_NO         | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند |
| CompanyNo                | CMP_NO             | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                 | BRN_NO             | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear               | BRN_YEAR           | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser               | BRN_USR            | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal            | AD_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة |
| UpdatedTerminal          | UP_TRMNL_NM        | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل |
| VATAmountOther           | VAT_AMT_OTHR       | NUMBER          | لا     | نعم       | لا     | ضريبة مبالغ أخرى |
| CustomerTaxCode          | C_TAX_CODE         | VARCHAR2(20)    | لا     | نعم       | لا     | الرقم الضريبي للعميل |
| ContractDate             | CNTRCT_DATE        | DATE            | لا     | نعم       | لا     | تاريخ العقد |
| ContractNo               | CNTRCT_NO          | VARCHAR2(30)    | لا     | نعم       | لا     | رقم العقد |
| CreditDiscountNo         | CRD_NO_DISC        | VARCHAR2(60)    | لا     | نعم       | لا     | رقم خصم بطاقة الائتمان |
| CreditDiscountPercent    | CRD_DISC_PER       | NUMBER          | لا     | نعم       | لا     | نسبة خصم بطاقة الائتمان |
| DocSerialContract        | DOC_SRL_CNTRCT     | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل العقد |
| ContractBatchNo          | CNTRCT_BTCH_NO     | NUMBER(30,0)    | لا     | نعم       | لا     | رقم دفعة العقد |
| PointTypeNo              | POINT_TYP_NO       | NUMBER(5,0)     | لا     | نعم       | لا     | نوع النقطة |
| PointCalcTypeNo          | POINT_CALC_TYP_NO  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حساب النقاط |
| PointCount               | POINT_CNT          | NUMBER          | لا     | نعم       | لا     | عدد النقاط |
| PointCountAll            | POINT_CNT_ALL      | NUMBER          | لا     | نعم       | لا     | إجمالي عدد النقاط |
| PointReplaceCount        | POINT_RPLC_CNT     | NUMBER          | لا     | نعم       | لا     | عدد نقاط الاستبدال |
| AssistantAmount          | ASS_AMT            | NUMBER          | لا     | نعم       | لا     | مبلغ مساعد |
| DiscountAmountAfterVAT   | DISC_AMT_AFTR_VAT  | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم بعد الضريبة |
| InsuranceLoadAmountMethod | CLC_INSRNCE_LOAD_AMT_MTHD | NUMBER(1,0) | لا | نعم | لا | طريقة حساب مبلغ تحميل التأمين |
| AccountCodeDetail        | AC_CODE_DTL        | VARCHAR2(30)    | لا     | نعم       | لا     | تفاصيل كود الحساب |
| AccountDetailType        | AC_DTL_TYP         | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تفاصيل الحساب |
| PaymentAccount           | PYMNT_AC           | NUMBER          | لا     | نعم       | لا     | حساب الدفع |
| AddedUserId              | AD_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                | AD_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId            | UP_U_ID            | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate              | UP_DATE            | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount              | UP_CNT             | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| PostUserId               | POST_U_ID          | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate                 | POST_DATE          | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId             | UNPOST_U_ID        | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate               | UNPOST_DATE        | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |


---

## SalesInvoiceDetail (**IAS_BILL_DTL**)
| الاسم الجديد                    | الاسم القديم                | النوع               | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------------|----------------------------|---------------------|--------|-----------|--------|-----------|
| BillDocType                      | BILL_DOC_TYPE              | NUMBER(2,0)         | نعم    | لا        | لا     | نوع الفاتورة |
| BillNo                           | BILL_NO                    | NUMBER(15,0)        | نعم    | لا        | لا     | رقم الفاتورة |
| BillSerial                       | BILL_SER                   | NUMBER(38,0)        | نعم    | لا        | لا     | الرقم التسلسلي للفاتورة |
| ItemCode                         | I_CODE                     | VARCHAR2(30)        | نعم    | لا        | لا     | كود الصنف |
| ItemQty                          | I_QTY                      | NUMBER              | لا     | نعم       | لا     | كمية الصنف |
| ItemUnit                         | ITM_UNT                    | VARCHAR2(10)        | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                         | P_SIZE                     | NUMBER              | نعم    | لا        | لا     | حجم العبوة |
| PackQty                          | P_QTY                      | NUMBER              | نعم    | لا        | لا     | كمية العبوة |
| ItemPrice                        | I_PRICE                    | NUMBER              | لا     | نعم       | لا     | سعر الصنف |
| StockCost                        | STK_COST                   | NUMBER              | لا     | نعم       | لا     | تكلفة المخزون للصنف |
| OutQty                           | OUT_QTY                    | NUMBER              | لا     | نعم       | لا     | كمية الصرف |
| OutFreeQty                       | OUT_FREE_QTY               | NUMBER              | لا     | نعم       | لا     | كمية الصرف المجانية |
| WarehouseCode                    | W_CODE                     | NUMBER(10,0)        | نعم    | لا        | لا     | كود المستودع |
| CostCenterCode                   | CC_CODE                    | VARCHAR2(30)        | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                        | PJ_NO                      | VARCHAR2(15)        | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo                       | ACTV_NO                    | VARCHAR2(15)        | لا     | نعم       | لا     | رقم النشاط |
| ExpireDate                       | EXPIRE_DATE                | DATE                | نعم    | لا        | لا     | تاريخ انتهاء الدفعة |
| BatchNo                          | BATCH_NO                   | VARCHAR2(30)        | نعم    | لا        | لا     | رقم التشغيلة/الدفعة |
| FreeQty                          | FREE_QTY                   | NUMBER              | لا     | نعم       | لا     | كمية مجانية إضافية |
| DiscountPercent                  | DIS_PER                    | NUMBER(20,17)       | لا     | نعم       | لا     | نسبة الخصم |
| DiscountAmount                   | DIS_AMT                    | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountAmountMaster             | DIS_AMT_MST                | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم الرئيسي |
| DiscountAmountDetail             | DIS_AMT_DTL                | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم التفصيلي |
| DiscountAfterVATMaster           | DIS_AFTR_VAT_MST           | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة |
| DiscountAmountDetailVAT          | DIS_AMT_DTL_VAT            | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم التفصيلي بعد الضريبة |
| DiscountAmountMasterVAT          | DIS_AMT_MST_VAT            | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم الرئيسي بعد الضريبة |
| VATDiscountDetailVAT             | VAT_AMT_DIS_DTL_VAT        | NUMBER              | لا     | نعم       | لا     | ضريبة الخصم التفصيلي بعد الضريبة |
| VATAmountAfterDiscount           | VAT_AMT_AFTR_DIS           | NUMBER              | لا     | نعم       | لا     | مبلغ الضريبة بعد الخصم |
| VATAmountBeforeDiscount          | VAT_AMT_BFR_DIS            | NUMBER              | لا     | نعم       | لا     | مبلغ الضريبة قبل الخصم |
| VATDiscountMasterVAT             | VAT_AMT_DIS_MST_VAT        | NUMBER              | لا     | نعم       | لا     | ضريبة الخصم الرئيسي بعد الضريبة |
| DiscountAmountAfterVAT           | DIS_AMT_AFTR_VAT           | NUMBER              | لا     | نعم       | لا     | مبلغ الخصم بعد الضريبة |
| OtherAmountDiscount              | OTHR_AMT_DISC              | NUMBER              | لا     | نعم       | لا     | خصم إضافي على المبالغ الأخرى |
| VATPercent                       | VAT_PER                    | NUMBER              | لا     | نعم       | لا     | نسبة الضريبة |
| VATAmount                        | VAT_AMT                    | NUMBER              | لا     | نعم       | لا     | مبلغ الضريبة |
| OtherAmount                      | OTHR_AMT                   | NUMBER              | لا     | نعم       | لا     | مبالغ أخرى للصنف |
| UseSerialNo                      | USE_SERIALNO               | NUMBER(1,0)         | لا     | نعم       | لا     | علم استخدام الرقم التسلسلي |
| ServiceItem                      | SERVICE_ITEM               | NUMBER(1,0)         | لا     | نعم       | لا     | عنصر خدمي (1=خدمة) |
| RecordNo                         | RCRD_NO                    | NUMBER(10,0)        | نعم    | لا        | لا     | رقم السطر الداخلي |
| DocSequence                      | DOC_SEQUENCE               | NUMBER(38,0)        | نعم    | لا        | لا     | تسلسل السطر في الفاتورة |
| ItemDesc                         | ITEM_DESC                  | VARCHAR2(1000)      | لا     | نعم       | لا     | وصف الصنف |
| SalesInvoiceType                 | SI_TYPE                    | NUMBER(5,0)         | لا     | نعم       | لا     | نوع الفاتورة |
| Barcode                          | BARCODE                    | VARCHAR2(30)        | لا     | نعم       | لا     | باركود الصنف |
| SalesOrderNo                     | SO_NO                      | NUMBER(15,0)        | لا     | نعم       | لا     | رقم أمر البيع المرتبط |
| SalesOrderSerial                 | SO_SER                     | NUMBER(38,0)        | لا     | نعم       | لا     | الرقم التسلسلي لأمر البيع |
| DocTypeRef                       | DOC_TYPE_REF               | NUMBER(5,0)         | لا     | نعم       | لا     | نوع المستند المرجعي |
| DocNoRef                         | DOC_NO_REF                 | NUMBER(15,0)        | لا     | نعم       | لا     | رقم المستند المرجعي |
| DocSerRef                        | DOC_SER_REF                | NUMBER(38,0)        | لا     | نعم       | لا     | الرقم التسلسلي للمستند المرجعي |
| ExternalPost                     | EXTERNAL_POST              | NUMBER(5,0)         | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| BillPY                           | BILL_PY                    | NUMBER(1,0)         | لا     | نعم       | لا     | نوع الفاتورة (تجميع/مفرد) |
| UseAttachment                    | USE_ATTCH                  | NUMBER(1,0)         | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment                | REC_ATTCH                  | NUMBER(10,0)        | لا     | نعم       | لا     | عدد المرفقات للصنف |
| AddDiscountAmountMaster          | ADD_DIS_AMT_MST            | NUMBER              | لا     | نعم       | لا     | خصم إضافي رئيسي |
| AddDiscountAmountDetail          | ADD_DIS_AMT_DTL            | NUMBER              | لا     | نعم       | لا     | خصم إضافي تفصيلي |
| DiscountPercent2                 | DIS_PER2                   | NUMBER              | لا     | نعم       | لا     | نسبة خصم إضافية |
| DiscountAmountDetail2            | DIS_AMT_DTL2               | NUMBER              | لا     | نعم       | لا     | مبلغ خصم إضافي |
| DiscountPercent3                 | DIS_PER3                   | NUMBER              | لا     | نعم       | لا     | نسبة خصم إضافية ثالثة |
| DiscountAmountDetail3            | DIS_AMT_DTL3               | NUMBER              | لا     | نعم       | لا     | مبلغ خصم إضافي ثالث |
| RecordNoRef                      | RCRD_NO_REF                | NUMBER(10,0)        | لا     | نعم       | لا     | رقم السطر المرجعي |
| EmployeeNo                       | EMP_NO                     | NUMBER(10,0)        | لا     | نعم       | لا     | رقم الموظف |
| ItemLength                       | I_LENGTH                   | NUMBER              | لا     | نعم       | لا     | طول الصنف |
| ItemPriceVAT                     | I_PRICE_VAT                | NUMBER              | لا     | نعم       | لا     | سعر الصنف بعد الضريبة |
| ItemWidth                        | I_WIDTH                    | NUMBER              | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight                       | I_HEIGHT                   | NUMBER              | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber                       | I_NUMBER                   | NUMBER              | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| WeightUnit                       | WT_UNT                     | VARCHAR2(10)        | لا     | نعم       | لا     | وحدة الوزن |
| WeightQty                        | WT_QTY                     | NUMBER              | لا     | نعم       | لا     | كمية الوزن |
| PostCode                         | POST_CODE                  | VARCHAR2(10)        | لا     | نعم       | لا     | كود الترحيل |
| QuotationPromotionNo             | QT_PRM_NO                  | NUMBER(15,0)        | لا     | نعم       | لا     | رقم عرض السعر الترويجي |
| QuotationPromotionSer            | QT_PRM_SER                 | NUMBER(38,0)        | لا     | نعم       | لا     | تسلسل عرض السعر الترويجي |
| QuotationPromotionRecordNo        | QT_PRM_RCRD_NO             | NUMBER(10,0)        | لا     | نعم       | لا     | رقم سجل عرض السعر الترويجي |
| InsuranceLoadPercent             | INSRNCE_LOAD_PER           | NUMBER              | لا     | نعم       | لا     | نسبة تحميل التأمين |
| InsuranceLoadAmount              | INSRNCE_LOAD_AMT           | NUMBER              | لا     | نعم       | لا     | مبلغ تحميل التأمين |
| InsuranceAddLimit                | INSRNCE_ADD_LMT            | NUMBER              | لا     | نعم       | لا     | حد إضافي تأميني |
| InsuranceApprovedCode            | INSRNCE_APPRVD_CODE        | VARCHAR2(60)        | لا     | نعم       | لا     | كود الموافقة التأمينية |
| SubCustomerCode                  | SUB_C_CODE                 | VARCHAR2(15)        | لا     | نعم       | لا     | كود العميل الفرعي |
| ItemPriceOutgoing                | I_PRICE_OUTGONG            | NUMBER              | لا     | نعم       | لا     | سعر الصنف عند الخروج |
| PackageUnit                      | PKG_UNT                    | VARCHAR2(10)        | لا     | نعم       | لا     | وحدة التغليف |
| PackageUnitSize                  | PKG_UNT_SIZE               | NUMBER(10,0)        | لا     | نعم       | لا     | حجم وحدة التغليف |
| PackageQty                       | PKG_QTY                    | NUMBER              | لا     | نعم       | لا     | كمية التغليف |
| PackageLength                    | PKG_LENGTH                 | NUMBER              | لا     | نعم       | لا     | طول التغليف |
| PackageWidth                     | PKG_WIDTH                  | NUMBER              | لا     | نعم       | لا     | عرض التغليف |
| PackageHeight                    | PKG_HEIGHT                 | NUMBER              | لا     | نعم       | لا     | ارتفاع التغليف |
| PackageSize                      | PKG_SIZE                   | NUMBER              | لا     | نعم       | لا     | حجم التغليف |
| PackageWeight                    | PKG_WEIGHT                 | NUMBER              | لا     | نعم       | لا     | وزن التغليف |
| FieldDtl1                        | FIELD_DTL1                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 1 |
| FieldDtl2                        | FIELD_DTL2                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 2 |
| FieldDtl3                        | FIELD_DTL3                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 3 |
| MeasurePrice                     | MEASUR_PRICE               | NUMBER              | لا     | نعم       | لا     | سعر الوحدة المقاسة |
| ArgumentNo                       | ARGMNT_NO                  | NUMBER              | لا     | نعم       | لا     | رقم مرجعي خاص |
| CouponQty                        | CPN_QTY                    | NUMBER              | لا     | نعم       | لا     | كمية القسائم |
| DocSeqTmp                        | DOC_SEQ_TMP                | NUMBER(38,0)        | لا     | نعم       | لا     | تسلسل مؤقت للسطر |
| UsedItem                         | USED_ITM                   | NUMBER(1,0)         | لا     | نعم       | لا     | تم استخدام العنصر (1=نعم) |
| VATAmountOther                   | VAT_AMT_OTHR               | NUMBER              | لا     | نعم       | لا     | ضريبة مبالغ أخرى للصنف |
| PromotionGroupNo                 | PRM_GRP_NO                 | NUMBER(5,0)         | لا     | نعم       | لا     | رقم مجموعة الترويج |
| CompanyNo                        | CMP_NO                     | NUMBER(3,0)         | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                         | BRN_NO                     | NUMBER(6,0)         | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                       | BRN_YEAR                   | NUMBER(4,0)         | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                       | BRN_USR                    | NUMBER(3,0)         | لا     | نعم       | لا     | مستخدم الفرع |
| CommissionPercent                | COMM_PER                   | NUMBER              | لا     | نعم       | لا     | نسبة العمولة للصنف |
| CommissionAmountDetail           | COMM_AMT_DTL               | NUMBER              | لا     | نعم       | لا     | مبلغ العمولة للصنف |
| DocSequenceRef                   | DOC_SEQUENCE_REF           | NUMBER(38,0)        | لا     | نعم       | لا     | تسلسل السطر المرجعي |
| UpdateCount                      | UP_CNT                     | NUMBER(10,0)        | لا     | نعم       | لا     | عدد مرات التحديث |
| DiscountPercentQuotationPromotion| DIS_PER_QT_PRM             | NUMBER              | لا     | نعم       | لا     | نسبة خصم عرض سعر ترويجي |
| DiscountAmountDetailQuotationPromotion | DIS_AMT_DTL_QT_PRM     | NUMBER              | لا     | نعم       | لا     | مبلغ خصم عرض سعر ترويجي |
| DiscountAmountDetailQuotationPromotionVAT | DIS_AMT_DTL_QT_PRM_VAT | NUMBER          | لا     | نعم       | لا     | خصم عرض سعر ترويجي بعد الضريبة |
| DiscountAmountDetail2VAT         | DIS_AMT_DTL2_VAT           | NUMBER              | لا     | نعم       | لا     | خصم إضافي تفصيلي بعد الضريبة |
| DiscountAmountDetail3VAT         | DIS_AMT_DTL3_VAT           | NUMBER              | لا     | نعم       | لا     | خصم إضافي ثالث تفصيلي بعد الضريبة |
| VATDiscountDetail2VAT            | VAT_AMT_DIS_DTL2_VAT       | NUMBER              | لا     | نعم       | لا     | ضريبة خصم إضافي تفصيلي بعد الضريبة |
| VATDiscountDetail3VAT            | VAT_AMT_DIS_DTL3_VAT       | NUMBER              | لا     | نعم       | لا     | ضريبة خصم إضافي ثالث بعد الضريبة |
| FieldDtl4                        | FIELD_DTL4                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 4 |
| FieldDtl5                        | FIELD_DTL5                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 5 |
| FieldDtl6                        | FIELD_DTL6                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 6 |
| FieldDtl7                        | FIELD_DTL7                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 7 |
| FieldDtl8                        | FIELD_DTL8                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 8 |
| FieldDtl9                        | FIELD_DTL9                 | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 9 |
| FieldDtl10                       | FIELD_DTL10                | VARCHAR2(60)        | لا     | نعم       | لا     | حقل إضافي 10 |
| LevelNo                          | LEV_NO                     | NUMBER(3,0)         | لا     | نعم       | لا     | رقم مستوى التسعير |
| ItemPriceLevelNo                 | I_PRICE_LEV_NO             | NUMBER              | لا     | نعم       | لا     | رقم مستوى السعر للصنف |
| OtherAmountItem                  | OTHR_AMT_ITM               | NUMBER              | لا     | نعم       | لا     | مبلغ إضافي للصنف |
| OutQtyYr                         | OUT_QTY_YR                 | NUMBER              | لا     | نعم       | لا     | كمية الصرف السنوية |
| OutFreeQtyYr                     | OUT_FREE_QTY_YR            | NUMBER              | لا     | نعم       | لا     | كمية الصرف المجانية السنوية |
| InsuranceAddLimitMaster          | INSRNCE_ADD_LMT_MST        | NUMBER              | لا     | نعم       | لا     | حد إضافي تأميني رئيسي |
| FreeType                         | FREE_TYP                   | NUMBER(1,0)         | لا     | نعم       | لا     | نوع المجانية |

---

## SalesReturn (**IAS_RET_BILL_MST**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| ReturnNo                   | RET_NO                     | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مرتجع البيع الرئيسي |
| ReturnSerial               | RET_SER                    | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمرتجع |
| ReturnBillDocType          | RT_BILL_DOC_TYPE           | NUMBER(2,0)     | نعم    | لا        | لا     | نوع فاتورة المرتجع |
| ReturnBillNo               | RT_BILL_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم فاتورة المرتجع |
| ReturnBillSerial           | RT_BILL_SER                | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي لفاتورة المرتجع |
| ReturnDate                 | RET_DATE                   | DATE            | نعم    | لا        | لا     | تاريخ المرتجع |
| SReturnType                | SR_TYPE                    | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المرتجع (مرتجع بيع/خدمة...) |
| CurrencyCode               | A_CY                       | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| AccountRate                | AC_RATE                    | NUMBER          | لا     | نعم       | لا     | سعر الصرف |
| StockRate                  | STK_RATE                   | NUMBER          | لا     | نعم       | لا     | سعر المخزون |
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| CustomerName               | C_NAME                     | VARCHAR2(150)   | لا     | نعم       | لا     | اسم العميل |
| AccountCode                | A_CODE                     | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي |
| ReturnPost                 | RET_POST                   | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل المرتجع (1=نعم) |
| WarehouseCode              | W_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| ReferenceNo                | REF_NO                     | VARCHAR2(15)    | لا     | نعم       | لا     | رقم مرجعي إضافي |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                  | PJ_NO                      | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo                 | ACTV_NO                    | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| CashNo                     | CASH_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الكاشير |
| Description                | DOC_DESC                   | VARCHAR2(1000)  | لا     | نعم       | لا     | ملاحظات المرتجع |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AttachCount                | ATTACH_CNT                 | NUMBER(3,0)     | لا     | نعم       | لا     | عدد المرفقات |
| ReturnType                 | RT_TYPE                    | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المرتجع |
| BillSerial                 | BILL_SER                   | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للفاتورة المرتبطة |
| BillNo                     | BILL_NO                    | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرتبطة |
| RegionCode                 | R_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المنطقة |
| DocBranchNo                | DOC_BRN_NO                 | NUMBER(6,0)     | لا     | نعم       | لا     | رقم فرع المستند |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |
| ReturnAmount               | RET_AMT                    | NUMBER          | لا     | نعم       | لا     | مبلغ المرتجع |
| StandBy                    | STAND_BY                   | NUMBER(1,0)     | لا     | نعم       | لا     | قيد الانتظار |
| Field1 - Field10           | FIELD1-10                  | VARCHAR2(250)   | لا     | نعم       | لا     | حقول إضافية مرنة |
| AuditRef                   | AUDIT_REF                  | NUMBER(1,0)     | لا     | نعم       | لا     | مرجع التدقيق |
| AuditRefDesc               | AUDIT_REF_DESC             | VARCHAR2(500)   | لا     | نعم       | لا     | وصف مرجع التدقيق |
| AuditRefUserId             | AUDIT_REF_U_ID             | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم لمرجع التدقيق |
| AuditRefDate               | AUDIT_REF_DATE             | DATE            | لا     | نعم       | لا     | تاريخ مرجع التدقيق |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| PostUserId                 | POST_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم الترحيل |
| PostDate                   | POST_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الترحيل |
| UnpostUserId               | UNPOST_U_ID                | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم إلغاء الترحيل |
| UnpostDate                 | UNPOST_DATE                | DATE            | لا     | نعم       | لا     | تاريخ إلغاء الترحيل |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | الجهاز عند التعديل |
| ReturnBillType             | RET_BILL_TYP               | NUMBER(1,0)     | لا     | نعم       | لا     | نوع فاتورة المرتجع |
| AddedDateClock             | AD_DATE_CLK                | DATE            | لا     | نعم       | لا     | تاريخ الإضافة (بالساعة) |

---

## SalesReturnDetail (**IAS_RET_BILL_DTL**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| ReturnNo                   | RET_NO                     | NUMBER(15,0)    | نعم    | لا        | لا     | رقم مرتجع البيع |
| ReturnSerial               | RET_SER                    | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي للمرتجع |
| ReturnBillNo               | RT_BILL_NO                 | NUMBER(15,0)    | نعم    | لا        | لا     | رقم فاتورة المرتجع |
| ReturnBillSerial           | RT_BILL_SER                | NUMBER(38,0)    | نعم    | لا        | لا     | الرقم التسلسلي لفاتورة المرتجع |
| SReturnType                | SR_TYPE                    | NUMBER(5,0)     | لا     | نعم       | لا     | نوع المرتجع (مرتجع بيع/خدمة...) |
| ItemCode                   | I_CODE                     | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف |
| ItemQty                    | I_QTY                      | NUMBER          | لا     | نعم       | لا     | كمية الصنف |
| FreeQty                    | FREE_QTY                   | NUMBER          | لا     | نعم       | لا     | كمية مجانية |
| ItemUnit                   | ITM_UNT                    | VARCHAR2(10)    | نعم    | لا        | لا     | وحدة الصنف |
| PackSize                   | P_SIZE                     | NUMBER          | نعم    | لا        | لا     | حجم العبوة |
| PackQty                    | P_QTY                      | NUMBER          | لا     | نعم       | لا     | كمية العبوة |
| ItemPrice                  | I_PRICE                    | NUMBER          | لا     | نعم       | لا     | سعر الصنف |
| StockCost                  | STK_COST                   | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون للصنف |
| WarehouseCode              | W_CODE                     | NUMBER(10,0)    | نعم    | لا        | لا     | كود المستودع |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة |
| ProjectNo                  | PJ_NO                      | VARCHAR2(15)    | لا     | نعم       | لا     | رقم المشروع |
| ActivityNo                 | ACTV_NO                    | VARCHAR2(15)    | لا     | نعم       | لا     | رقم النشاط |
| ExpireDate                 | EXPIRE_DATE                | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الدفعة |
| BatchNo                    | BATCH_NO                   | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة |
| UseSerialNo                | USE_SERIALNO               | NUMBER(1,0)     | لا     | نعم       | لا     | علم استخدام الرقم التسلسلي |
| DiscountAmount             | DIS_AMT                    | NUMBER          | لا     | نعم       | لا     | مبلغ الخصم |
| DiscountPercent            | DIS_PER                    | NUMBER(20,17)   | لا     | نعم       | لا     | نسبة الخصم |
| RecordNo                   | RCRD_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| VATAmount                  | VAT_AMT                    | NUMBER          | لا     | نعم       | لا     | مبلغ الضريبة |
| VATPercent                 | VAT_PER                    | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة |
| ReturnRecordNo             | RT_RCRD_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السطر المرجعي المرتجع |
| Barcode                    | BARCODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | باركود الصنف |
| BillNo                     | BILL_NO                    | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الفاتورة المرتبطة |
| BillSerial                 | BILL_SER                   | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للفاتورة المرتبطة |
| OutNo                      | OUT_NO                     | NUMBER(15,0)    | لا     | نعم       | لا     | رقم مستند الصرف المرتبط |
| OutSerial                  | OUT_SER                    | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للصرف المرتبط |
| SalesInvoiceRecordNo       | SI_RCRD_NO                 | NUMBER(10,0)    | لا     | نعم       | لا     | رقم سطر الفاتورة المرتبط |
| DocSequence                | DOC_SEQUENCE               | NUMBER(38,0)    | نعم    | لا        | لا     | تسلسل السطر في المرتجع |
| DocSequenceSI              | DOC_SEQUENCE_SI            | NUMBER(38,0)    | لا     | نعم       | لا     | تسلسل السطر في الفاتورة المرتبطة |
| UseAttachment              | USE_ATTCH                  | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام مرفق للصنف |
| ReceiveAttachment          | REC_ATTCH                  | NUMBER(10,0)    | لا     | نعم       | لا     | عدد المرفقات |
| ItemLength                 | I_LENGTH                   | NUMBER          | لا     | نعم       | لا     | طول الصنف |
| ItemWidth                  | I_WIDTH                    | NUMBER          | لا     | نعم       | لا     | عرض الصنف |
| ItemHeight                 | I_HEIGHT                   | NUMBER          | لا     | نعم       | لا     | ارتفاع الصنف |
| ItemNumber                 | I_NUMBER                   | NUMBER          | لا     | نعم       | لا     | رقم العنصر التسلسلي |
| WeightUnit                 | WT_UNT                     | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الوزن |
| WeightQty                  | WT_QTY                     | NUMBER          | لا     | نعم       | لا     | كمية الوزن |
| PostCode                   | POST_CODE                  | VARCHAR2(10)    | لا     | نعم       | لا     | كود الترحيل |
| ItemDesc                   | ITEM_DESC                  | VARCHAR2(1000)  | لا     | نعم       | لا     | وصف الصنف |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| ArgumentNo                 | ARGMNT_NO                  | NUMBER          | لا     | نعم       | لا     | رقم مرجعي خاص |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التعديل |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا |


---

## SalesCharges (**SALES_CHARGES**)
| الاسم الجديد                  | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| ChargeNo                     | SC_NO                      | NUMBER(3,0)     | لا     | نعم       | لا     | رقم المصروف/الرسوم |
| ChargeName                   | SC_NAME                    | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المصروف/الرسوم |
| AccountCode                  | A_CODE                     | VARCHAR2(30)    | لا     | نعم       | لا     | كود الحساب المحاسبي المرتبط بالمصروف |
| CurrencyCode                 | A_CY                       | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| AccountRate                  | AC_RATE                    | NUMBER          | لا     | نعم       | لا     | سعر صرف العملة |
| AmountType                   | AMT_TYPE                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مبلغ المصروف (1=نسبة، 0=مبلغ ثابت) |
| ChargeType                   | SC_TYPE                    | NUMBER(1,0)     | لا     | نعم       | لا     | نوع المصروف (1=رسوم، 2=خدمة، ...) |
| Amount                       | AMT                        | NUMBER          | لا     | نعم       | لا     | قيمة المصروف أو الرسوم |
| FillAuto                     | FILL_AUTO                  | NUMBER(1,0)     | لا     | نعم       | لا     | تعبئة تلقائية (1=نعم) |
| CalcType                     | CALC_TYPE                  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الاحتساب (1=للإجمالي، 2=للسطر، ...) |
| InvoiceItem                  | INV_ITEM                   | NUMBER(1,0)     | لا     | نعم       | لا     | هل المصروف مرتبط بعنصر في الفاتورة |
| AllowReturn                  | ALLOW_RETURN               | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بالمرتجعات (1=نعم) |
| ChargeQtyType                | SC_QTY_TYPE                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع كمية المصروف (1=لكمية، 0=قيمة) |
| PostedToSales                | POSTED_TO_SALES            | NUMBER(1,0)     | لا     | نعم       | لا     | تم ترحيل المصروف للمبيعات |
| ReturnWithoutBillNo          | SC_RET_WITHOUT_BILLNO      | NUMBER(1,0)     | لا     | نعم       | لا     | يسمح بالمرتجع بدون رقم فاتورة |
| AddToBillDiscount            | ADD_TO_BILL_DISC           | NUMBER(1,0)     | لا     | نعم       | لا     | يضاف لخصم الفاتورة |
| BillDocType                  | BILL_DOC_TYPE              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| VATPercent                   | VAT_PER                    | NUMBER          | لا     | نعم       | لا     | نسبة الضريبة للمصروف |
| UseVAT                       | USE_VAT                    | NUMBER(1,0)     | لا     | نعم       | لا     | تطبيق الضريبة (1=نعم) |
| AmountTypeValue              | AMT_TYP_VAL                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع قيمة المبلغ (1=يدوي، 0=تلقائي) |
| ChargePostWithCurrency       | SC_POST_WITH_ACY           | NUMBER(1,0)     | لا     | نعم       | لا     | ترحيل المصروف مع العملة |
| AddedUserId                  | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                    | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId                | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                  | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                  | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority               | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal                | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal              | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| AddForceInvoice              | SC_ADD_FRC_INVOICE         | NUMBER(1,0)     | لا     | نعم       | لا     | إضافة إجباري للفاتورة |

---

## SalesChargesItems (**SALES_CHARGES_ITEMS**)
| الاسم الجديد                  | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| ChargeNo                     | SC_NO                      | NUMBER(3,0)     | لا     | نعم       | لا     | رقم المصروف |
| CustomerClass                | C_CLASS                    | NUMBER(3,0)     | لا     | نعم       | لا     | تصنيف العميل |
| CustomerCode                 | C_CODE                     | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| ItemCode                     | I_CODE                     | VARCHAR2(30)    | نعم    | لا        | لا     | كود الصنف المرتبط بالمصروف |
| ItemUnit                     | ITM_UNT                    | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف |
| PackSize                     | P_SIZE                     | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| GroupCode                    | G_CODE                     | VARCHAR2(10)    | لا     | نعم       | لا     | كود مجموعة الصنف |
| Amount                       | AMT                        | NUMBER          | لا     | نعم       | لا     | مبلغ المصروف |
| PercentAmount                | PER_AMT                    | NUMBER          | لا     | نعم       | لا     | نسبة المصروف من الإجمالي |
| WarehouseCode                | W_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع المرتبط |
| SalesInvoiceType             | SI_TYPE                    | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الفاتورة |
| FromDate                     | F_DATE                     | DATE            | لا     | نعم       | لا     | تاريخ البداية |
| ToDate                       | T_DATE                     | DATE            | لا     | نعم       | لا     | تاريخ النهاية |
| AddedUserId                  | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                    | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId                | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                  | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                  | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority               | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal                | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal              | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## SalesDiscount (**SALES_DISC**)
| الاسم الجديد                  | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| BillDocType                  | BILL_DOC_TYPE              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| GroupCode                    | G_CODE                     | VARCHAR2(10)    | لا     | نعم       | لا     | كود مجموعة الصنف |
| CustomerCode                 | C_CODE                     | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| CustomerClass                | C_CLASS                    | NUMBER(3,0)     | لا     | نعم       | لا     | تصنيف العميل |
| ItemCode                     | I_CODE                     | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| PackSize                     | P_SIZE                     | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| ItemUnit                     | ITM_UNT                    | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف |
| AmountType                   | AMT_TYPE                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع مبلغ الخصم (1=نسبة، 0=مبلغ ثابت) |
| Amount                       | AMT                        | NUMBER(24,9)    | لا     | نعم       | لا     | قيمة الخصم |
| CurrencyCode                 | A_CY                       | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة |
| AccountRate                  | AC_RATE                    | NUMBER          | لا     | نعم       | لا     | سعر الصرف |
| WarehouseCode                | W_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| WarehouseGroupCode           | WHG_CODE                   | NUMBER(10,0)    | لا     | نعم       | لا     | كود مجموعة المستودع |
| FromDate                     | F_DATE                     | DATE            | لا     | نعم       | لا     | تاريخ بداية الخصم |
| ToDate                       | T_DATE                     | DATE            | لا     | نعم       | لا     | تاريخ نهاية الخصم |
| LevelNo                      | LEV_NO                     | NUMBER(3,0)     | لا     | نعم       | لا     | رقم مستوى التسعير |
| FromQty                      | F_QTY                      | NUMBER          | لا     | نعم       | لا     | أقل كمية للخصم |
| ToQty                        | T_QTY                      | NUMBER          | لا     | نعم       | لا     | أعلى كمية للخصم |
| BatchNo                      | BATCH_NO                   | VARCHAR2(30)    | لا     | نعم       | لا     | رقم التشغيلة/الدفعة |
| ItemPrice                    | I_PRICE                    | NUMBER          | لا     | نعم       | لا     | سعر العنصر |
| StockCost                    | STK_COST                   | NUMBER          | لا     | نعم       | لا     | تكلفة المخزون للصنف |
| AvailableQty                 | AVLQTY                     | NUMBER          | لا     | نعم       | لا     | الكمية المتاحة |
| DocDesc                      | DOC_DESC                   | VARCHAR2(250)   | لا     | نعم       | لا     | وصف أو ملاحظات للخصم |
| AddedUserId                  | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                    | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId                | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                  | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| BranchNo                     | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| UpdateCount                  | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority               | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal                | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal              | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| Amount2                      | AMT2                       | NUMBER          | لا     | نعم       | لا     | قيمة خصم إضافية 2 |
| Amount3                      | AMT3                       | NUMBER          | لا     | نعم       | لا     | قيمة خصم إضافية 3 |
| CustomerGroupCode            | CST_GRP_CODE               | NUMBER(10,0)    | لا     | نعم       | لا     | كود مجموعة العملاء |

---

## SalesFreeQty (**SALES_FREE_QTY**)
| الاسم الجديد                  | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|------------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| GroupCode                    | G_CODE                     | VARCHAR2(10)    | لا     | نعم       | لا     | كود مجموعة الصنف |
| CustomerCode                 | C_CODE                     | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| CustomerClass                | C_CLASS                    | NUMBER(3,0)     | لا     | نعم       | لا     | تصنيف العميل |
| ItemCode                     | I_CODE                     | VARCHAR2(30)    | لا     | نعم       | لا     | كود الصنف |
| PackSize                     | P_SIZE                     | NUMBER          | لا     | نعم       | لا     | حجم العبوة |
| ItemUnit                     | ITM_UNT                    | VARCHAR2(10)    | لا     | نعم       | لا     | وحدة الصنف |
| PayType                      | PAY_TYPE                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الدفع |
| LowQty                       | LOW_QTY                    | NUMBER          | لا     | نعم       | لا     | أقل كمية للاستحقاق |
| PerQty                       | PER_QTY                    | NUMBER          | لا     | نعم       | لا     | كمية مجانية لكل شحنة/وحدة |
| WarehouseCode                | W_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المستودع |
| WarehouseGroupCode           | WHG_CODE                   | NUMBER(10,0)    | لا     | نعم       | لا     | كود مجموعة المستودع |
| BillDocType                  | BILL_DOC_TYPE              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع مستند الفاتورة |
| RecordNo                     | RCRD_NO                    | NUMBER(11,0)    | لا     | نعم       | لا     | رقم السطر الداخلي |
| FromQty                      | F_QTY                      | NUMBER          | لا     | نعم       | لا     | أقل كمية للمنح المجاني |
| ToQty                        | T_QTY                      | NUMBER          | لا     | نعم       | لا     | أعلى كمية للمنح المجاني |
| FromDate                     | F_DATE                     | DATE            | لا     | نعم       | لا     | تاريخ بداية المنح المجاني |
| ToDate                       | T_DATE                     | DATE            | لا     | نعم       | لا     | تاريخ نهاية المنح المجاني |
| AddedUserId                  | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                    | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId                | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                  | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| BranchNo                     | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| UpdateCount                  | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority               | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal                | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal              | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

# 3. المبيعات والعملاء (Sales & Customers)
> **جميع الحقول والشرح للجداول: بيانات العملاء، مجموعات العملاء، تصنيفات العملاء، أنواع التصنيفات**

---

## Customer (**CUSTOMER**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الرئيسي |
| CustomerArabicName         | C_A_NAME                   | VARCHAR2(100)   | نعم    | لا        | لا     | اسم العميل بالعربية |
| CustomerEnglishName        | C_E_NAME                   | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العميل بالإنجليزية |
| CustomerAccountCode        | C_A_CODE                   | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي للعميل |
| CustomerSequence           | CST_SEQ                    | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي داخلي |
| CustomerGroupCode          | C_GROUP_CODE               | NUMBER(10,0)    | لا     | نعم       | لا     | كود مجموعة العميل |
| CustomerTaxCode            | C_TAX_CODE                 | VARCHAR2(20)    | لا     | نعم       | لا     | الرقم الضريبي للعميل |
| CustomerBoxCode            | C_BOX_CODE                 | VARCHAR2(20)    | لا     | نعم       | لا     | رقم صندوق بريد العميل |
| CustomerAddress            | C_ADDRESS                  | VARCHAR2(500)   | لا     | نعم       | لا     | عنوان العميل |
| CountryNo                  | CNTRY_NO                   | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة |
| ProvinceNo                 | PROV_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحافظة |
| CityNo                     | CITY_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة |
| RegionCode                 | R_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المنطقة |
| SalesRepCode               | REP_CODE                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود المندوب |
| RouteNo                    | ROUTE_NO                   | NUMBER(10,0)    | لا     | نعم       | لا     | رقم مسار التحصيل/التوزيع |
| SortInRoute                | SORTINROUTE                | NUMBER(10,0)    | لا     | نعم       | لا     | ترتيب العميل ضمن المسار |
| GPS                        | GPS                        | VARCHAR2(100)   | لا     | نعم       | لا     | إحداثيات العميل |
| CollectorNo                | COL_NO                     | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحصل |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة للعميل |
| CreditPeriod               | CREDIT_PERIOD              | NUMBER(3,0)     | لا     | نعم       | لا     | فترة السماح الائتماني بالأيام |
| CustomerPhone              | C_PHONE                    | VARCHAR2(16)    | لا     | نعم       | لا     | هاتف العميل |
| CustomerFax                | C_FAX                      | VARCHAR2(16)    | لا     | نعم       | لا     | فاكس العميل |
| CustomerBox                | C_BOX                      | VARCHAR2(60)    | لا     | نعم       | لا     | صندوق بريد العميل |
| CustomerPerson             | C_PERSON                   | VARCHAR2(40)    | لا     | نعم       | لا     | اسم شخص التواصل |
| CustomerEmail              | C_E_MAIL                   | VARCHAR2(60)    | لا     | نعم       | لا     | بريد إلكتروني للعميل |
| CustomerWebsite            | C_WEB_SITE                 | VARCHAR2(30)    | لا     | نعم       | لا     | موقع إلكتروني للعميل |
| CustomerClass              | C_CLASS                    | NUMBER(3,0)     | لا     | نعم       | لا     | تصنيف العميل |
| CustomerDegree             | C_DEGREE                   | NUMBER(3,0)     | لا     | نعم       | لا     | درجة العميل |
| CustomerMobile             | C_MOBILE                   | VARCHAR2(16)    | لا     | نعم       | لا     | جوال العميل |
| CustomerSince              | C_SINCE                    | DATE            | لا     | نعم       | لا     | تاريخ بدء التعامل مع العميل |
| Inactive                   | INACTIVE                   | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveReason             | INACTIVE_RES               | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| InactiveDate               | INACTIVE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ تعطيل العميل |
| CustomerVendor             | C_VENDOR                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد للعميل (في حال كان عميل/مورد) |
| CustomerNote               | C_NOTE                     | VARCHAR2(100)   | لا     | نعم       | لا     | ملاحظات عامة |
| DiscountPercent            | DISC_PER                   | NUMBER          | لا     | نعم       | لا     | نسبة الخصم الافتراضية |
| ConfirmLastDate            | CONF_LAST_DATE             | DATE            | لا     | نعم       | لا     | آخر تاريخ تأكيد للعميل |
| ConnectRemoteSystem        | CONN_REM_SYS               | NUMBER(1,0)     | لا     | نعم       | لا     | متصل بنظام خارجي (1=نعم) |
| InactiveSales              | INACTIVE_SALES             | NUMBER(1,0)     | لا     | نعم       | لا     | معطل عن المبيعات (1=نعم) |
| GuarantorName              | G_NAME                     | VARCHAR2(60)    | لا     | نعم       | لا     | اسم الضامن |
| GuarantorAddress           | G_ADDRESS                  | VARCHAR2(60)    | لا     | نعم       | لا     | عنوان الضامن |
| GuarantorStartDate         | G_START_DATE               | DATE            | لا     | نعم       | لا     | تاريخ بدء الضمان |
| GuarantorExpireDate        | G_EXPIRE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الضمان |
| GuarantorType              | G_TYPE                     | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الضامن |
| GuarantorAmount            | G_AMT                      | NUMBER          | لا     | نعم       | لا     | مبلغ الضمان |
| GuarantorStatus            | G_STATUS                   | NUMBER(1,0)     | لا     | نعم       | لا     | حالة الضمان |
| GuarantorFinCenter         | G_FIN_CENTER               | VARCHAR2(60)    | لا     | نعم       | لا     | المركز المالي للضامن |
| GuarantorWork              | G_WORK                     | VARCHAR2(60)    | لا     | نعم       | لا     | عمل الضامن |
| GuarantorDocDate           | G_DOC_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ مستند الضمان |
| GuarantorRegCourt          | G_REG_COURT                | VARCHAR2(30)    | لا     | نعم       | لا     | محكمة التسجيل للضامن |
| GuarantorRegTrade          | G_REG_TRADA                | VARCHAR2(30)    | لا     | نعم       | لا     | سجل تجاري للضامن |
| GuarantorFileTrade         | G_FILE_TRADA               | VARCHAR2(30)    | لا     | نعم       | لا     | ملف تجاري للضامن |
| GuarantorTel               | G_TEL                      | VARCHAR2(30)    | لا     | نعم       | لا     | هاتف الضامن |
| GuarantorFax               | G_FAX                      | VARCHAR2(30)    | لا     | نعم       | لا     | فاكس الضامن |
| BlackList                  | BLK_LST                    | NUMBER(1,0)     | لا     | نعم       | لا     | ضمن القائمة السوداء (1=نعم) |
| BlackListReason            | BLK_LST_RES                | VARCHAR2(250)   | لا     | نعم       | لا     | سبب الإدراج بالقائمة السوداء |
| CustomerSalesMan           | C_SALES_MAN                | NUMBER(1,0)     | لا     | نعم       | لا     | العميل مندوب مبيعات (1=نعم) |
| LicenseNo                  | LICENSE_NO                 | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الرخصة |
| LicenseOwner               | LICENSE_OWNER              | VARCHAR2(60)    | لا     | نعم       | لا     | مالك الرخصة |
| ResponsiblePerson          | RESPONS_PERSON             | VARCHAR2(60)    | لا     | نعم       | لا     | المسؤول عن العميل |
| SignAuthPerson             | SIGN_AUTH_PERSON           | VARCHAR2(60)    | لا     | نعم       | لا     | صاحب التفويض بالتوقيع |
| SerialNo                   | SERIALNO                   | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي داخلي |
| DriverNo                   | DRIVER_NO                  | NUMBER(10,0)    | لا     | نعم       | لا     | رقم سائق العميل |
| AccountOpNo                | AC_OP_NO                   | NUMBER(15,0)    | لا     | نعم       | لا     | رقم حساب عمليات العميل |
| ImportFromXLS              | IMP_XLS                    | NUMBER(1,0)     | لا     | نعم       | لا     | تم الاستيراد من اكسل (1=نعم) |
| CustomerParent             | C_PARENT                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل الأب (للهيكلية) |
| ConnectBranchNo            | CONN_BRN_NO                | NUMBER(6,0)     | لا     | نعم       | لا     | ربط بفرع معين |
| SendMessage                | SEND_MSG                   | NUMBER(1,0)     | لا     | نعم       | لا     | إرسال رسائل تلقائيًا (1=نعم) |
| Latitude                   | LATITUDE                   | VARCHAR2(20)    | لا     | نعم       | لا     | إحداثي العرض |
| Longitude                  | LONGITUDE                  | VARCHAR2(20)    | لا     | نعم       | لا     | إحداثي الطول |
| GPSColor                   | GPS_COLOR                  | VARCHAR2(20)    | لا     | نعم       | لا     | لون العميل على الخريطة |
| FavAccount                 | FAV_AC                     | NUMBER(1,0)     | لا     | نعم       | لا     | حساب مفضل (1=نعم) |
| FirstActiveDate            | F_ACTV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ أول تعامل نشط |
| LastActiveDate             | T_ACTV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ آخر تعامل نشط |
| SecretKey                  | SECRET_KEY                 | VARCHAR2(30)    | لا     | نعم       | لا     | مفتاح سري |
| AllowPeriodAfterDue        | ALLOW_PRD_AFTR_DUE         | NUMBER(3,0)     | لا     | نعم       | لا     | السماح بفترة بعد الاستحقاق |
| BlackListDate              | BLK_LST_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإدراج بالقائمة السوداء |
| CustomerAge                | C_AGE                      | VARCHAR2(30)    | لا     | نعم       | لا     | عمر العميل |
| CustomerGender             | C_GENDER                   | NUMBER(1,0)     | لا     | نعم       | لا     | جنس العميل |
| InsuranceNo                | INSURANCE_NO               | VARCHAR2(60)    | لا     | نعم       | لا     | رقم بطاقة التأمين |
| ApprovalNo                 | APPROVAL_NO                | VARCHAR2(60)    | لا     | نعم       | لا     | رقم الموافقة التأمينية |
| CustomerInsurance          | C_INSURANCE                | NUMBER(1,0)     | لا     | نعم       | لا     | العميل لديه تأمين (1=نعم) |
| CustomerTargetCode         | C_CODE_TRGT                | VARCHAR2(15)    | لا     | نعم       | لا     | كود مستهدف للعميل |
| InsuranceCustomer          | INSRNCE_CST                | NUMBER(1,0)     | لا     | نعم       | لا     | عميل تأميني (1=نعم) |
| InsuranceCompanyNo         | INSRNCE_CMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم شركة التأمين |
| NationalityNo              | NTNLTY_NO                  | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الجنسية |
| CustomerCardType           | TYP_CRD                    | NUMBER(3,0)     | لا     | نعم       | لا     | نوع بطاقة العميل |
| CustomerCardNo             | CRD_NO                     | VARCHAR2(30)    | لا     | نعم       | لا     | رقم بطاقة العميل |
| CustomerCardIssuePlace     | CRD_ISSUSE_PLAC            | VARCHAR2(60)    | لا     | نعم       | لا     | مكان إصدار البطاقة |
| CustomerCardIssueDate      | CRD_ISSUSE_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإصدار |
| CustomerCardEndDate        | CRD_END_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الانتهاء |
| CustomerProfession         | C_PROFF                    | NUMBER(30,0)    | لا     | نعم       | لا     | مهنة العميل |
| AgentFlag                  | AGNT_FLG                   | NUMBER(1,0)     | لا     | نعم       | لا     | علم وكيل (1=نعم) |
| CustomerCommRegNo          | CR_NO                      | VARCHAR2(60)    | لا     | نعم       | لا     | السجل التجاري |
| ActivityName               | ACTVTY_NM                  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم النشاط |
| CustomerLoginCode          | C_CODE_LGN                 | VARCHAR2(10)    | لا     | نعم       | لا     | كود الدخول للعميل |
| NationalIDNo               | NIS_NO                     | VARCHAR2(60)    | لا     | نعم       | لا     | رقم الهوية الوطنية |
| NationalIDDesc             | NAI_DSC                    | VARCHAR2(60)    | لا     | نعم       | لا     | وصف الهوية الوطنية |
| CashCustomer               | CSH_CST                    | NUMBER(1,0)     | لا     | نعم       | لا     | عميل نقدي (1=نعم) |
| EquityCapital              | EQ_CPTL                    | VARCHAR2(60)    | لا     | نعم       | لا     | رأس المال المصرح |
| ResponsiblePersonJob       | RESPONS_PERSON_JOB         | VARCHAR2(60)    | لا     | نعم       | لا     | وظيفة الشخص المسؤول |
| CustomerCreditLimitLocal   | CST_CR_LMT_LOCAL           | NUMBER          | لا     | نعم       | لا     | حد الائتمان المحلي |
| CustomerInvoiceLimitLocal  | CST_INV_LMT_LOCAL          | NUMBER          | لا     | نعم       | لا     | حد الفواتير المحلي |
| CustomerLimitType          | CST_LMT_TYP                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حد الائتمان |
| CustomerLimitPercent       | CST_LMT_PER                | NUMBER          | لا     | نعم       | لا     | نسبة حد الائتمان |
| CustomerCardEndDateAH      | CRD_END_DATE_AH            | DATE            | لا     | نعم       | لا     | تاريخ نهاية البطاقة هجري |
| CustomerCardIssueDateAH    | CRD_ISSUSE_DATE_AH         | DATE            | لا     | نعم       | لا     | تاريخ إصدار البطاقة هجري |
| BirthDate                  | BRTH_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الميلاد ميلادي |
| BirthDateAH                | BRTH_DATE_AH               | DATE            | لا     | نعم       | لا     | تاريخ الميلاد هجري |
| BirthPlace                 | BRTH_PLC                   | VARCHAR2(200)   | لا     | نعم       | لا     | مكان الميلاد |
| WorkPlace                  | WORK_PLC                   | VARCHAR2(200)   | لا     | نعم       | لا     | مكان العمل |
| SourceOfIncome             | SRC_INC                    | VARCHAR2(200)   | لا     | نعم       | لا     | مصدر الدخل |
| SourceIncomeRate           | SRC_INC_RATE               | NUMBER          | لا     | نعم       | لا     | نسبة مصدر الدخل |
| MaritalStatus              | MRTL_STAT                  | NUMBER(2,0)     | لا     | نعم       | لا     | الحالة الاجتماعية |
| CompanyWork                | CMPNY_WORK                 | VARCHAR2(200)   | لا     | نعم       | لا     | جهة العمل |
| CustomerFinScanStatus      | C_FINSCAN_STATUS           | NUMBER(1,0)     | لا     | نعم       | لا     | حالة فحص العميل مالياً |
| OpenFileDate               | OPN_FILE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ فتح الملف |
| EndFileDate                | END_FILE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ إغلاق الملف |
| HomeAddress                | HOME_ADDRESS               | VARCHAR2(60)    | لا     | نعم       | لا     | عنوان السكن |
| SignatureImageName         | SIGN_IMG_NM                | VARCHAR2(100)   | لا     | نعم       | لا     | اسم صورة التوقيع |
| PassportNo                 | PASS_NO                    | VARCHAR2(30)    | لا     | نعم       | لا     | رقم جواز السفر |
| PassportIssuePlace         | PASS_ISSUSE_PLAC           | VARCHAR2(60)    | لا     | نعم       | لا     | مكان إصدار الجواز |
| PassportIssueDate          | PASS_ISSUSE_DATE           | DATE            | لا     | نعم       | لا     | تاريخ إصدار الجواز |
| PassportEndDate            | PASS_END_DATE              | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الجواز |
| NameInPassport             | NAME_IN_PASS               | VARCHAR2(150)   | لا     | نعم       | لا     | الاسم في الجواز |
| AdditionalIncomeSource     | ADD_INCM_SRCE              | NUMBER(2,0)     | لا     | نعم       | لا     | مصدر دخل إضافي |
| AdditionalIncomeRate       | ADD_INCM_RATE              | NUMBER(10,0)    | لا     | نعم       | لا     | نسبة مصدر الدخل الإضافي |
| ContractRemainingMonthExpect | CNT_REM_MNTH_EXPCT       | NUMBER(5,0)     | لا     | نعم       | لا     | عدد الأشهر المتبقية للعقد المتوقع |
| OtherCompanyBank           | OTHR_CMP_BNK               | VARCHAR2(150)   | لا     | نعم       | لا     | بنك أو شركة أخرى |
| CommercialRegistrationNo   | COMM_REG_NO                | VARCHAR2(30)    | لا     | نعم       | لا     | رقم السجل التجاري |
| RegistrationIssuePlace     | REG_ISSUSE_PLAC            | VARCHAR2(60)    | لا     | نعم       | لا     | مكان إصدار السجل التجاري |
| RegistrationIssueDate      | REG_ISSUSE_DATE            | DATE            | لا     | نعم       | لا     | تاريخ إصدار السجل التجاري |
| RegistrationEndDate        | REG_END_DATE               | DATE            | لا     | نعم       | لا     | تاريخ انتهاء السجل التجاري |
| CompanyActivity            | CMP_ACTIV                  | VARCHAR2(150)   | لا     | نعم       | لا     | طبيعة النشاط التجاري |
| CustomerGCC                | CST_GCC                    | NUMBER(1,0)     | لا     | نعم       | لا     | عميل من دول الخليج (1=نعم) |
| CustomerFileUpdateDate     | CST_FILE_UP_DATE           | DATE            | لا     | نعم       | لا     | تاريخ تحديث ملف العميل |
| CustomerBenefitType        | CST_BNF_TYPE               | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الاستفادة |
| CustomerMainImageName      | CST_MAIN_IMG_NM            | VARCHAR2(300)   | لا     | نعم       | لا     | اسم الصورة الرئيسية للعميل |
| CustomerVATGroupFlag       | CST_VAT_GRP_FLG            | NUMBER(1,0)     | لا     | نعم       | لا     | علم مجموعة ضريبية للعميل |
| CustomerDealFlag           | CST_DEAL_FLG               | NUMBER(1,0)     | لا     | نعم       | لا     | علم يسمح بالتعامل مع العميل |
| CustomerExceptQuotationPromotionFlag | CST_EXCPT_QT_PRM_FLG | NUMBER(1,0)  | لا     | نعم       | لا     | استثناء من عروض الأسعار الترويجية |
| CustomerExchangeFlag       | CST_EXCH_FLG               | NUMBER(1,0)     | لا     | نعم       | لا     | علم إمكانية التبديل |
| CustomerClassType          | C_CLASS_TYP                | NUMBER(5,0)     | لا     | نعم       | لا     | نوع تصنيف العميل |
| CustomerBusinessSector     | C_BUS_SEC                  | NUMBER(10,0)    | لا     | نعم       | لا     | القطاع التجاري للعميل |
| CustomerPercentFee         | C_PER_FEE                  | NUMBER(3,0)     | لا     | نعم       | لا     | نسبة الرسوم المضافة |
| CustomerAccountFee         | C_ACCT_FEE                 | VARCHAR2(30)    | لا     | نعم       | لا     | رسوم الحساب |
| AutoApproved               | AUTO_APPRVD                | NUMBER(1,0)     | نعم    | لا        | لا     | موافقة تلقائية (1=نعم) |
| DiscountPercentDefault     | DISC_PER_DFLT              | NUMBER          | لا     | نعم       | لا     | نسبة الخصم الافتراضي |
| AllowUpdateFixedPrice      | ALLOW_UPD_FIXED_PRICE      | NUMBER(1,0)     | لا     | نعم       | لا     | السماح بتعديل السعر الثابت |
| Field1 - Field20           | FIELD1-20                  | VARCHAR2(1000/60)| لا     | نعم       | لا     | حقول مرنة إضافية |
| AddedUserPhoto             | AD_U_PHOTO                 | NUMBER(5,0)     | لا     | نعم       | لا     | رقم صورة المستخدم الذي أضاف السطر |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CustomerRegisterType       | CST_RGSTR_TYP              | NUMBER(2,0)     | لا     | نعم       | لا     | نوع تسجيل العميل |
| ConnectHPSSystem           | CONN_HPS_SYS               | NUMBER          | لا     | نعم       | لا     | ربط بنظام HPS |
| SectorType                 | SCTR_TYP                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع القطاع |
| PoliticalRelationFlag      | PLTCL_RLTN_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | علاقة سياسية (1=نعم) |
| PoliticalRelationWith      | PLTCL_RLTN_WITH            | VARCHAR2(1000)  | لا     | نعم       | لا     | علاقة سياسية مع من |
| TaxTypeNo                  | CLC_TYP_NO_TAX             | NUMBER(5,0)     | لا     | نعم       | لا     | نوع احتساب الضريبة |
| CustomerBarcode            | C_BARCODE                  | VARCHAR2(30)    | لا     | نعم       | لا     | باركود العميل |
| VisitOpenType              | VST_OPN_TYP                | NUMBER(2,0)     | لا     | نعم       | لا     | نوع فتح الزيارة |
| VATPriceType               | CLC_VAT_PRICE_TYP          | NUMBER(1,0)     | لا     | نعم       | لا     | نوع تسعير الضريبة |
| GLNCode                    | GLN_CODE                   | VARCHAR2(500)   | لا     | نعم       | لا     | رقم GLN |
| CustomerMobileDeviceSerial | C_MOB_DEV_SRL              | VARCHAR2(50)    | لا     | نعم       | لا     | تسلسل جهاز الجوال للعميل |
| CustomerSaveLoginData      | C_SAV_LOGIN_DATA           | NUMBER(1,0)     | لا     | نعم       | لا     | حفظ بيانات الدخول (1=نعم) |
| CustomerResetPassword      | C_REST_PASS                | NUMBER(1,0)     | لا     | نعم       | لا     | إعادة ضبط كلمة المرور (1=نعم) |
| CustomerVerifySMSCode      | C_VERFY_SMS_CODE           | VARCHAR2(20)    | لا     | نعم       | لا     | رمز التحقق عبر SMS |
| WebServiceUseAutoSync      | WEB_SRVC_USE_AUTO_SYNC_CST | NUMBER          | لا     | نعم       | لا     | استخدام مزامنة تلقائية عبر الخدمة |
| WebServiceExternalCode     | WEB_SRVC_EXTRNL_C_CODE     | VARCHAR2(30)    | لا     | نعم       | لا     | كود خارجي للخدمة |
| WebServiceUserNo           | WEB_SRVC_USR_NO            | VARCHAR2(30)    | لا     | نعم       | لا     | رقم مستخدم الخدمة |
| WebServicePassword         | WEB_SRVC_PASSWRD           | VARCHAR2(30)    | لا     | نعم       | لا     | كلمة مرور الخدمة |
| WebServiceLink             | WEB_SRVC_LNK               | VARCHAR2(30)    | لا     | نعم       | لا     | رابط الخدمة |
| PromotionCode              | PRM_CODE                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود العرض الترويجي |
| EmployeeNo                 | EMP_NO                     | NUMBER(10,0)    | لا     | نعم       | لا     | رقم الموظف |
| DueType                    | DUE_TYPE                   | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الاستحقاق |
| AgentCustomerNoSerial      | AGENT_CST_NO_SER           | VARCHAR2(15)    | لا     | نعم       | لا     | رقم تسلسلي لوكيل العميل |
| PeriodDay                  | PRD_DAY                    | NUMBER(5,0)     | لا     | نعم       | لا     | عدد أيام الفترة |
| ReportQtyLimitCount        | RPT_QTY_LMT_CNT            | NUMBER(5,0)     | لا     | نعم       | لا     | حد عدد التقارير الكمية |
| LimitItemQtyType           | LMT_ITM_QTY_TYP            | NUMBER(1,0)     | لا     | نعم       | لا     | نوع كمية حد العنصر |
| ConfirmNote                | CNFRM_NOTE                 | VARCHAR2(200)   | لا     | نعم       | لا     | ملاحظات التأكيد |
| UseHolster                 | USE_HOLSTR                 | NUMBER(1,0)     | لا     | نعم       | لا     | استخدام الحافظة (1=نعم) |
| CompensationType           | CMPNS_TYP                  | NUMBER(5,0)     | لا     | نعم       | لا     | نوع التعويض |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا (1=نعم) |
| CustomerLightFlag          | CSTMR_LGHT_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | عميل خفيف (1=نعم) |
| BuildingNo                 | BUILDING_NO                | VARCHAR2(200)   | لا     | نعم       | لا     | رقم المبنى |
| Street                     | STREET                     | VARCHAR2(200)   | لا     | نعم       | لا     | اسم الشارع |

---

## CustomerGroup (**CUSTOMER_GROUP**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| GroupCode                  | C_GROUP_CODE               | NUMBER(10,0)    | لا     | نعم       | لا     | كود مجموعة العميل |
| GroupArabicName            | C_GROUP_A_NAME             | VARCHAR2(100)   | نعم    | لا        | لا     | اسم المجموعة عربي |
| GroupEnglishName           | C_GROUP_E_NAME             | VARCHAR2(100)   | لا     | نعم       | لا     | اسم المجموعة إنجليزي |
| GroupAccountCode           | C_A_CODE                   | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي للمجموعة |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## CustomerClass (**CUSTOMER_CLASS**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| ClassCode                  | C_CLASS                    | NUMBER(3,0)     | لا     | نعم       | لا     | كود تصنيف العميل |
| ClassArabicName            | C_CLASS_NAME               | VARCHAR2(100)   | نعم    | لا        | لا     | اسم التصنيف عربي |
| ClassEnglishName           | C_CLASS_E_NAME             | VARCHAR2(100)   | لا     | نعم       | لا     | اسم التصنيف إنجليزي |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## CustomerClassType (**CUSTOMER_CLASS_TYP**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| ClassTypeCode              | C_CLASS_TYP                | NUMBER(3,0)     | لا     | نعم       | لا     | كود نوع تصنيف العميل |
| ClassTypeArabicName        | C_CLASS_TYP_NM             | VARCHAR2(100)   | لا     | نعم       | لا     | اسم نوع التصنيف عربي |
| ClassTypeForeignName       | C_CLASS_TYP_F_NM           | VARCHAR2(100)   | لا     | نعم       | لا     | اسم نوع التصنيف بلغة أجنبية |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority             | PR_REP                     | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |


---

## CustomerCurrency (**CUSTOMER_CURR**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الرئيسي |
| CurrencyCode               | A_CY                       | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة |
| CreditLimit                | CR_LIMIT                   | NUMBER(24,9)    | لا     | نعم       | لا     | حد الائتمان للعميل بهذه العملة |
| InvoiceLimit               | INV_LIMIT                  | NUMBER(24,9)    | لا     | نعم       | لا     | حد الفواتير للعميل بهذه العملة |
| CustomerLimitPercent       | CST_LMT_PER                | NUMBER          | لا     | نعم       | لا     | نسبة حد الائتمان |
| CustomerLimitType          | CST_LMT_TYP                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حد الائتمان (1=مؤقت، 0=دائم ...) |
| LevelNo                    | LEV_NO                     | NUMBER(3,0)     | لا     | نعم       | لا     | رقم المستوى التسعيري للعميل |
| Inactive                   | INACTIVE                   | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| ConfirmLastDate            | CNFRM_LST_DATE             | DATE            | لا     | نعم       | لا     | آخر تاريخ تأكيد للعميل |
| LevelNoCash                | LEV_NO_CSH                 | NUMBER(3,0)     | لا     | نعم       | لا     | رقم مستوى الكاش للعميل |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ExternalPost               | EXTERNAL_POST              | NUMBER(5,0)     | لا     | نعم       | لا     | تم الترحيل خارجيًا (1=نعم) |
| InactiveSales              | INACTIVE_SALES             | NUMBER(1,0)     | لا     | نعم       | لا     | معطل عن المبيعات (1=نعم) |

---

## CustomerCurrencyRequest (**CUSTOMER_CURR_RQ**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الرئيسي |
| CurrencyCode               | A_CY                       | VARCHAR2(7)     | نعم    | لا        | لا     | رمز العملة المطلوب إضافتها |
| CreditLimit                | CR_LIMIT                   | NUMBER(24,9)    | لا     | نعم       | لا     | حد الائتمان المطلوب للعملة الجديدة |
| InvoiceLimit               | INV_LIMIT                  | NUMBER(24,9)    | لا     | نعم       | لا     | حد الفواتير المطلوب للعملة الجديدة |
| LevelNo                    | LEV_NO                     | NUMBER(3,0)     | لا     | نعم       | لا     | مستوى تسعيري للعملة عند الطلب |
| ConfirmLastDate            | CNFRM_LST_DATE             | DATE            | لا     | نعم       | لا     | آخر تاريخ تأكيد للعميل |
| Inactive                   | INACTIVE                   | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| CustomerLimitType          | CST_LMT_TYP                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حد الائتمان |
| CustomerLimitPercent       | CST_LMT_PER                | NUMBER          | لا     | نعم       | لا     | نسبة حد الائتمان |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## CustomerBankAccount (**CUSTOMER_BNK_ACCNT**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الرئيسي |
| BankAccountCode            | BNK_A_CODE                 | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب البنكي للعميل |
| CurrencyCode               | A_CY                       | VARCHAR2(7)     | لا     | نعم       | لا     | رمز العملة للحساب البنكي |
| DefaultFlag                | DFLT_FLG                   | NUMBER(1,0)     | لا     | نعم       | لا     | علم الحساب الافتراضي (1=افتراضي) |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |

---

## CustomerDegree (**CUSTOMER_DEGREE**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerDegree             | C_DEGREE                   | NUMBER(3,0)     | نعم    | لا        | لا     | كود درجة أو تصنيف العميل |
| CustomerDegreeArabicName   | C_DEGREE_A_NAME            | VARCHAR2(100)   | نعم    | لا        | لا     | اسم الدرجة بالعربية |
| CustomerDegreeEnglishName  | C_DEGREE_E_NAME            | VARCHAR2(100)   | لا     | نعم       | لا     | اسم الدرجة بالإنجليزية |
| DegreeValue                | DEGREE_VALUE               | NUMBER          | لا     | نعم       | لا     | قيمة الدرجة أو التصنيف (وزن أو نسبة) |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |


---

## CustomerRequest (**CUSTOMER_RQ**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الرئيسي |
| CustomerArabicName         | C_A_NAME                   | VARCHAR2(100)   | نعم    | لا        | لا     | اسم العميل عربي |
| CustomerEnglishName        | C_E_NAME                   | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العميل إنجليزي |
| CustomerAccountCode        | C_A_CODE                   | VARCHAR2(30)    | نعم    | لا        | لا     | كود الحساب المحاسبي للعميل |
| CustomerSequence           | CST_SEQ                    | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي داخلي |
| CustomerGroupCode          | C_GROUP_CODE               | NUMBER(10,0)    | نعم    | لا        | لا     | كود مجموعة العميل |
| CustomerTaxCode            | C_TAX_CODE                 | VARCHAR2(20)    | لا     | نعم       | لا     | الرقم الضريبي للعميل |
| CustomerBoxCode            | C_BOX_CODE                 | VARCHAR2(20)    | لا     | نعم       | لا     | رقم صندوق بريد العميل |
| CustomerAddress            | C_ADDRESS                  | VARCHAR2(500)   | لا     | نعم       | لا     | عنوان العميل |
| CountryNo                  | CNTRY_NO                   | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة |
| ProvinceNo                 | PROV_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحافظة |
| CityNo                     | CITY_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة |
| RegionCode                 | R_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المنطقة |
| SalesRepCode               | REP_CODE                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود المندوب |
| RouteNo                    | ROUTE_NO                   | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المسار |
| SortInRoute                | SORTINROUTE                | NUMBER(10,0)    | لا     | نعم       | لا     | ترتيب العميل ضمن المسار |
| GPS                        | GPS                        | VARCHAR2(100)   | لا     | نعم       | لا     | إحداثيات العميل |
| CollectorNo                | COL_NO                     | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المحصل |
| CostCenterCode             | CC_CODE                    | VARCHAR2(30)    | لا     | نعم       | لا     | مركز التكلفة للعميل |
| CreditPeriod               | CREDIT_PERIOD              | NUMBER(3,0)     | لا     | نعم       | لا     | فترة السماح الائتماني بالأيام |
| CustomerPhone              | C_PHONE                    | VARCHAR2(16)    | لا     | نعم       | لا     | هاتف العميل |
| CustomerFax                | C_FAX                      | VARCHAR2(16)    | لا     | نعم       | لا     | فاكس العميل |
| CustomerBox                | C_BOX                      | VARCHAR2(60)    | لا     | نعم       | لا     | صندوق بريد العميل |
| CustomerPerson             | C_PERSON                   | VARCHAR2(40)    | لا     | نعم       | لا     | اسم شخص التواصل |
| CustomerEmail              | C_E_MAIL                   | VARCHAR2(60)    | لا     | نعم       | لا     | بريد إلكتروني للعميل |
| CustomerWebsite            | C_WEB_SITE                 | VARCHAR2(30)    | لا     | نعم       | لا     | موقع إلكتروني للعميل |
| CustomerClass              | C_CLASS                    | NUMBER(3,0)     | لا     | نعم       | لا     | تصنيف العميل |
| CustomerDegree             | C_DEGREE                   | NUMBER(3,0)     | لا     | نعم       | لا     | درجة العميل |
| CustomerMobile             | C_MOBILE                   | VARCHAR2(16)    | لا     | نعم       | لا     | جوال العميل |
| CustomerSince              | C_SINCE                    | DATE            | لا     | نعم       | لا     | تاريخ بدء التعامل مع العميل |
| Inactive                   | INACTIVE                   | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveReason             | INACTIVE_RES               | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| InactiveDate               | INACTIVE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ تعطيل العميل |
| CustomerVendor             | C_VENDOR                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود المورد للعميل (إذا كان عميل/مورد) |
| CustomerNote               | C_NOTE                     | VARCHAR2(100)   | لا     | نعم       | لا     | ملاحظات عامة |
| DiscountPercent            | DISC_PER                   | NUMBER          | لا     | نعم       | لا     | نسبة الخصم الافتراضية |
| ConnectRemoteSystem        | CONN_REM_SYS               | NUMBER(1,0)     | لا     | نعم       | لا     | متصل بنظام خارجي (1=نعم) |
| InactiveSales              | INACTIVE_SALES             | NUMBER(1,0)     | لا     | نعم       | لا     | معطل عن المبيعات (1=نعم) |
| GuarantorName              | G_NAME                     | VARCHAR2(60)    | لا     | نعم       | لا     | اسم الضامن |
| GuarantorAddress           | G_ADDRESS                  | VARCHAR2(60)    | لا     | نعم       | لا     | عنوان الضامن |
| GuarantorStartDate         | G_START_DATE               | DATE            | لا     | نعم       | لا     | تاريخ بدء الضمان |
| GuarantorExpireDate        | G_EXPIRE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الضمان |
| GuarantorType              | G_TYPE                     | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الضامن |
| GuarantorAmount            | G_AMT                      | NUMBER          | لا     | نعم       | لا     | مبلغ الضمان |
| GuarantorStatus            | G_STATUS                   | NUMBER(1,0)     | لا     | نعم       | لا     | حالة الضمان |
| GuarantorFinCenter         | G_FIN_CENTER               | VARCHAR2(60)    | لا     | نعم       | لا     | المركز المالي للضامن |
| GuarantorWork              | G_WORK                     | VARCHAR2(60)    | لا     | نعم       | لا     | عمل الضامن |
| GuarantorDocDate           | G_DOC_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ مستند الضمان |
| GuarantorRegCourt          | G_REG_COURT                | VARCHAR2(30)    | لا     | نعم       | لا     | محكمة التسجيل للضامن |
| GuarantorRegTrade          | G_REG_TRADA                | VARCHAR2(30)    | لا     | نعم       | لا     | سجل تجاري للضامن |
| GuarantorFileTrade         | G_FILE_TRADA               | VARCHAR2(30)    | لا     | نعم       | لا     | ملف تجاري للضامن |
| GuarantorTel               | G_TEL                      | VARCHAR2(30)    | لا     | نعم       | لا     | هاتف الضامن |
| GuarantorFax               | G_FAX                      | VARCHAR2(30)    | لا     | نعم       | لا     | فاكس الضامن |
| BlackList                  | BLK_LST                    | NUMBER(1,0)     | لا     | نعم       | لا     | ضمن القائمة السوداء (1=نعم) |
| BlackListReason            | BLK_LST_RES                | VARCHAR2(250)   | لا     | نعم       | لا     | سبب الإدراج بالقائمة السوداء |
| CustomerSalesMan           | C_SALES_MAN                | NUMBER(1,0)     | لا     | نعم       | لا     | العميل مندوب مبيعات (1=نعم) |
| LicenseNo                  | LICENSE_NO                 | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الرخصة |
| LicenseOwner               | LICENSE_OWNER              | VARCHAR2(60)    | لا     | نعم       | لا     | مالك الرخصة |
| ResponsiblePerson          | RESPONS_PERSON             | VARCHAR2(60)    | لا     | نعم       | لا     | المسؤول عن العميل |
| SignAuthPerson             | SIGN_AUTH_PERSON           | VARCHAR2(60)    | لا     | نعم       | لا     | صاحب التفويض بالتوقيع |
| SerialNo                   | SERIALNO                   | NUMBER          | لا     | نعم       | لا     | رقم تسلسلي داخلي |
| DriverNo                   | DRIVER_NO                  | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السائق |
| AccountOpNo                | AC_OP_NO                   | NUMBER(15,0)    | لا     | نعم       | لا     | رقم الحساب التشغيلي |
| ImportFromXLS              | IMP_XLS                    | NUMBER(1,0)     | لا     | نعم       | لا     | تم الاستيراد من اكسل (1=نعم) |
| CustomerParent             | C_PARENT                   | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل الأب |
| ConnectBranchNo            | CONN_BRN_NO                | NUMBER(6,0)     | لا     | نعم       | لا     | ربط بفرع معين |
| SendMessage                | SEND_MSG                   | NUMBER(1,0)     | لا     | نعم       | لا     | إرسال رسائل تلقائيًا (1=نعم) |
| ApprovedUserId             | APRV_U_ID                  | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم المعتمد للطلب |
| ApprovedDesc               | APRV_DSC                   | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الاعتماد |
| ApprovedDate               | APRV_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الاعتماد |
| Approved                   | APPROVED                   | NUMBER          | لا     | نعم       | لا     | تم الاعتماد (1=نعم) |
| DocSerial                  | DOC_SRL                    | NUMBER(38,0)    | لا     | نعم       | لا     | رقم تسلسلي للمستند |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| CashCustomer               | CSH_CST                    | NUMBER(1,0)     | لا     | نعم       | لا     | عميل نقدي (1=نعم) |
| ResponsiblePersonJob       | RESPONS_PERSON_JOB         | VARCHAR2(60)    | لا     | نعم       | لا     | وظيفة المسؤول عن العميل |
| CustomerCreditLimitLocal   | CST_CR_LMT_LOCAL           | NUMBER          | لا     | نعم       | لا     | حد الائتمان المحلي |
| CustomerInvoiceLimitLocal  | CST_INV_LMT_LOCAL          | NUMBER          | لا     | نعم       | لا     | حد الفواتير المحلي |
| CustomerLimitType          | CST_LMT_TYP                | NUMBER(1,0)     | لا     | نعم       | لا     | نوع حد الائتمان |
| CustomerLimitPercent       | CST_LMT_PER                | NUMBER          | لا     | نعم       | لا     | نسبة حد الائتمان |
| CustomerCardEndDateAH      | CRD_END_DATE_AH            | DATE            | لا     | نعم       | لا     | تاريخ نهاية البطاقة هجري |
| CustomerCardIssueDateAH    | CRD_ISSUSE_DATE_AH         | DATE            | لا     | نعم       | لا     | تاريخ إصدار البطاقة هجري |
| BirthDate                  | BRTH_DATE                  | DATE            | لا     | نعم       | لا     | تاريخ الميلاد ميلادي |
| BirthDateAH                | BRTH_DATE_AH               | DATE            | لا     | نعم       | لا     | تاريخ الميلاد هجري |
| BirthPlace                 | BRTH_PLC                   | VARCHAR2(200)   | لا     | نعم       | لا     | مكان الميلاد |
| WorkPlace                  | WORK_PLC                   | VARCHAR2(200)   | لا     | نعم       | لا     | مكان العمل |
| SourceOfIncome             | SRC_INC                    | VARCHAR2(200)   | لا     | نعم       | لا     | مصدر الدخل |
| SourceIncomeRate           | SRC_INC_RATE               | NUMBER          | لا     | نعم       | لا     | نسبة مصدر الدخل |
| MaritalStatus              | MRTL_STAT                  | NUMBER(2,0)     | لا     | نعم       | لا     | الحالة الاجتماعية |
| CompanyWork                | CMPNY_WORK                 | VARCHAR2(200)   | لا     | نعم       | لا     | جهة العمل |
| CustomerFinScanStatus      | C_FINSCAN_STATUS           | NUMBER(1,0)     | لا     | نعم       | لا     | حالة فحص العميل مالياً |
| OpenFileDate               | OPN_FILE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ فتح الملف |
| EndFileDate                | END_FILE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ إغلاق الملف |
| HomeAddress                | HOME_ADDRESS               | VARCHAR2(60)    | لا     | نعم       | لا     | عنوان السكن |
| SignatureImageName         | SIGN_IMG_NM                | VARCHAR2(100)   | لا     | نعم       | لا     | اسم صورة التوقيع |
| PassportNo                 | PASS_NO                    | VARCHAR2(30)    | لا     | نعم       | لا     | رقم جواز السفر |
| PassportIssuePlace         | PASS_ISSUSE_PLAC           | VARCHAR2(60)    | لا     | نعم       | لا     | مكان إصدار الجواز |
| PassportIssueDate          | PASS_ISSUSE_DATE           | DATE            | لا     | نعم       | لا     | تاريخ إصدار الجواز |
| PassportEndDate            | PASS_END_DATE              | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الجواز |
| NameInPassport             | NAME_IN_PASS               | VARCHAR2(150)   | لا     | نعم       | لا     | الاسم في الجواز |
| AdditionalIncomeSource     | ADD_INCM_SRCE              | NUMBER(2,0)     | لا     | نعم       | لا     | مصدر دخل إضافي |
| AdditionalIncomeRate       | ADD_INCM_RATE              | NUMBER(10,0)    | لا     | نعم       | لا     | نسبة مصدر الدخل الإضافي |
| ContractRemainingMonthExpect | CNT_REM_MNTH_EXPCT       | NUMBER(5,0)     | لا     | نعم       | لا     | عدد الأشهر المتبقية للعقد المتوقع |
| OtherCompanyBank           | OTHR_CMP_BNK               | VARCHAR2(150)   | لا     | نعم       | لا     | بنك أو شركة أخرى |
| CommercialRegistrationNo   | COMM_REG_NO                | VARCHAR2(30)    | لا     | نعم       | لا     | رقم السجل التجاري |
| RegistrationIssuePlace     | REG_ISSUSE_PLAC            | VARCHAR2(60)    | لا     | نعم       | لا     | مكان إصدار السجل التجاري |
| RegistrationIssueDate      | REG_ISSUSE_DATE            | DATE            | لا     | نعم       | لا     | تاريخ إصدار السجل التجاري |
| RegistrationEndDate        | REG_END_DATE               | DATE            | لا     | نعم       | لا     | تاريخ انتهاء السجل التجاري |
| CompanyActivity            | CMP_ACTIV                  | VARCHAR2(150)   | لا     | نعم       | لا     | طبيعة النشاط التجاري |
| CustomerGCC                | CST_GCC                    | NUMBER(1,0)     | لا     | نعم       | لا     | عميل من دول الخليج (1=نعم) |
| CustomerFileUpdateDate     | CST_FILE_UP_DATE           | DATE            | لا     | نعم       | لا     | تاريخ تحديث ملف العميل |
| CustomerBenefitType        | CST_BNF_TYPE               | NUMBER(5,0)     | لا     | نعم       | لا     | نوع الاستفادة |
| CustomerMainImageName      | CST_MAIN_IMG_NM            | VARCHAR2(300)   | لا     | نعم       | لا     | اسم الصورة الرئيسية للعميل |
| AddedUserPhoto             | AD_U_PHOTO                 | NUMBER(5,0)     | لا     | نعم       | لا     | رقم صورة المستخدم الذي أضاف السطر |
| CustomerVATGroupFlag       | CST_VAT_GRP_FLG            | NUMBER(1,0)     | لا     | نعم       | لا     | علم مجموعة ضريبية للعميل (1=نعم) |
| CustomerDealFlag           | CST_DEAL_FLG               | NUMBER(1,0)     | نعم    | لا        | لا     | علم يسمح بالتعامل مع العميل |
| CustomerExceptQuotationPromotionFlag | CST_EXCPT_QT_PRM_FLG | NUMBER(1,0)  | لا     | نعم       | لا     | استثناء من عروض الأسعار الترويجية |
| CustomerExchangeFlag       | CST_EXCH_FLG               | NUMBER(1,0)     | نعم    | لا        | لا     | علم إمكانية التبديل |
| CustomerClassType          | C_CLASS_TYP                | NUMBER(5,0)     | لا     | نعم       | لا     | نوع تصنيف العميل |
| CustomerRisk               | C_RISK                     | NUMBER(5,0)     | لا     | نعم       | لا     | تصنيف المخاطر للعميل |
| CustomerBusinessSector     | C_BUS_SEC                  | NUMBER(10,0)    | لا     | نعم       | لا     | القطاع التجاري للعميل |
| CustomerPercentFee         | C_PER_FEE                  | NUMBER(3,0)     | لا     | نعم       | لا     | نسبة الرسوم المضافة |
| CustomerAccountFee         | C_ACCT_FEE                 | VARCHAR2(30)    | لا     | نعم       | لا     | رسوم الحساب |
| AutoApproved               | AUTO_APPRVD                | NUMBER(1,0)     | نعم    | لا        | لا     | موافقة تلقائية (1=نعم) |
| ApprovedRiskUserId         | APRV_RSK_U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     | مستخدم اعتماد المخاطر |
| ApprovedRiskDesc           | APRV_RSK_DSC               | VARCHAR2(500)   | لا     | نعم       | لا     | وصف اعتماد المخاطر |
| ApprovedRiskDate           | APRV_RSK_DATE              | DATE            | لا     | نعم       | لا     | تاريخ اعتماد المخاطر |
| ApprovedRisk               | APPRVD_RSK                 | NUMBER          | لا     | نعم       | لا     | تم اعتماد المخاطر (1=نعم) |
| Field1 - Field20           | FIELD1-20                  | VARCHAR2(60)    | لا     | نعم       | لا     | حقول مرنة إضافية |
| Latitude                   | LATITUDE                   | VARCHAR2(20)    | لا     | نعم       | لا     | إحداثي العرض |
| Longitude                  | LONGITUDE                  | VARCHAR2(20)    | لا     | نعم       | لا     | إحداثي الطول |
| GPSColor                   | GPS_COLOR                  | VARCHAR2(20)    | لا     | نعم       | لا     | لون العميل على الخريطة |
| FavAccount                 | FAV_AC                     | NUMBER(1,0)     | لا     | نعم       | لا     | حساب مفضل (1=نعم) |
| FirstActiveDate            | F_ACTV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ أول تعامل نشط |
| LastActiveDate             | T_ACTV_DATE                | DATE            | لا     | نعم       | لا     | تاريخ آخر تعامل نشط |
| SecretKey                  | SECRET_KEY                 | VARCHAR2(30)    | لا     | نعم       | لا     | مفتاح سري |
| AllowPeriodAfterDue        | ALLOW_PRD_AFTR_DUE         | NUMBER(3,0)     | لا     | نعم       | لا     | السماح بفترة بعد الاستحقاق |
| BlackListDate              | BLK_LST_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الإدراج بالقائمة السوداء |
| CustomerAge                | C_AGE                      | VARCHAR2(30)    | لا     | نعم       | لا     | عمر العميل |
| CustomerGender             | C_GENDER                   | NUMBER(1,0)     | لا     | نعم       | لا     | جنس العميل |
| InsuranceNo                | INSURANCE_NO               | VARCHAR2(60)    | لا     | نعم       | لا     | رقم بطاقة التأمين |
| ApprovalNo                 | APPROVAL_NO                | VARCHAR2(60)    | لا     | نعم       | لا     | رقم الموافقة التأمينية |
| CustomerInsurance          | C_INSURANCE                | NUMBER(1,0)     | لا     | نعم       | لا     | العميل لديه تأمين (1=نعم) |
| CustomerTargetCode         | C_CODE_TRGT                | VARCHAR2(15)    | لا     | نعم       | لا     | كود مستهدف للعميل |
| InsuranceCustomer          | INSRNCE_CST                | NUMBER(1,0)     | لا     | نعم       | لا     | عميل تأميني (1=نعم) |
| InsuranceCompanyNo         | INSRNCE_CMP_NO             | NUMBER(10,0)    | لا     | نعم       | لا     | رقم شركة التأمين |
| NationalityNo              | NTNLTY_NO                  | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الجنسية |
| CustomerCardType           | TYP_CRD                    | NUMBER(3,0)     | لا     | نعم       | لا     | نوع بطاقة العميل |
| CustomerCardNo             | CRD_NO                     | VARCHAR2(30)    | لا     | نعم       | لا     | رقم بطاقة العميل |
| CustomerCardIssuePlace     | CRD_ISSUSE_PLAC            | VARCHAR2(60)    | لا     | نعم       | لا     | مكان إصدار البطاقة |
| CustomerCardIssueDate      | CRD_ISSUSE_DATE            | DATE            | لا     | نعم       | لا     | تاريخ الإصدار |
| CustomerCardEndDate        | CRD_END_DATE               | DATE            | لا     | نعم       | لا     | تاريخ الانتهاء |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| ReportPriority             | PR_REP                     | NUMBER(10,0)    | لا     | نعم       | لا     | أولوية التقرير |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| CustomerCommRegNo          | CR_NO                      | VARCHAR2(60)    | لا     | نعم       | لا     | السجل التجاري |
| ActivityName               | ACTVTY_NM                  | VARCHAR2(100)   | لا     | نعم       | لا     | اسم النشاط |
| NationalIDNo               | NIS_NO                     | VARCHAR2(60)    | لا     | نعم       | لا     | رقم الهوية الوطنية |
| NationalIDDesc             | NAI_DSC                    | VARCHAR2(60)    | لا     | نعم       | لا     | وصف الهوية الوطنية |
| EquityCapital              | EQ_CPTL                    | VARCHAR2(60)    | لا     | نعم       | لا     | رأس المال |
| AgentFlag                  | AGNT_FLG                   | NUMBER(1,0)     | نعم    | لا        | لا     | علم وكيل (1=نعم) |
| CustomerIdPlace            | C_ID_PLACE                 | VARCHAR2(50)    | لا     | نعم       | لا     | مكان إصدار الهوية |
| CustomerId                 | C_ID                       | VARCHAR2(30)    | لا     | نعم       | لا     | رقم الهوية الوطنية/الإقامة |
| CustomerIdIssueDate        | C_ID_ISS_DATE              | DATE            | لا     | نعم       | لا     | تاريخ إصدار الهوية |
| CustomerIdExpireDate       | C_ID_EXP_DATE              | DATE            | لا     | نعم       | لا     | تاريخ انتهاء الهوية |
| CustomerProfession         | C_PROFF                    | NUMBER(30,0)    | لا     | نعم       | لا     | مهنة العميل |
| CustomerIdType             | C_ID_TYPE                  | NUMBER(30,0)    | لا     | نعم       | لا     | نوع الهوية |
| InsertedFlag               | INSRTD_FLG                 | NUMBER(1,0)     | لا     | نعم       | لا     | علم مدخل (1=نعم) |
| PoliticalRelationFlag      | PLTCL_RLTN_FLG             | NUMBER(1,0)     | لا     | نعم       | لا     | علاقة سياسية (1=نعم) |
| PoliticalRelationWith      | PLTCL_RLTN_WITH            | VARCHAR2(1000)  | لا     | نعم       | لا     | علاقة سياسية مع من |

---

## CustomerTransactionGps (**ARS_CST_TRNS_GPS**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| DocType                    | DOC_TYP                    | NUMBER(10,0)    | لا     | نعم       | لا     | نوع المستند أو المعاملة |
| DocSerial                  | DOC_SRL                    | NUMBER(38,0)    | لا     | نعم       | لا     | الرقم التسلسلي للمعاملة |
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| GpsLongitude               | GPS_LNGT_X                 | VARCHAR2(50)    | لا     | نعم       | لا     | إحداثي الطول (X) |
| GpsLatitude                | GPS_LAT_Y                  | VARCHAR2(50)    | لا     | نعم       | لا     | إحداثي العرض (Y) |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |

---

## CustomerAddress (**SUB_CUSTOMER**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| CustomerCode               | C_CODE                     | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الأساسي |
| SubCustomerCode            | SUB_C_CODE                 | VARCHAR2(15)    | نعم    | لا        | لا     | كود العميل الفرعي/العنوان |
| SubCustomerLastName        | SUB_C_L_NM                 | VARCHAR2(100)   | لا     | نعم       | لا     | اسم العائلة للفرع |
| SubCustomerFirstName       | SUB_C_F_NM                 | VARCHAR2(100)   | لا     | نعم       | لا     | الاسم الأول للفرع |
| DepartmentName             | DPRTMNT_NM                 | VARCHAR2(100)   | لا     | نعم       | لا     | اسم القسم |
| JobName                    | JOB_NAME                   | VARCHAR2(100)   | لا     | نعم       | لا     | الوظيفة |
| CustomerAddress            | C_ADDRESS                  | VARCHAR2(250)   | لا     | نعم       | لا     | عنوان الفرع |
| CustomerBox                | C_BOX                      | VARCHAR2(30)    | لا     | نعم       | لا     | صندوق بريد الفرع |
| CustomerFax                | C_FAX                      | VARCHAR2(30)    | لا     | نعم       | لا     | فاكس الفرع |
| CustomerPhone              | C_PHONE                    | VARCHAR2(30)    | لا     | نعم       | لا     | هاتف الفرع |
| CustomerMobile             | C_MOBILE                   | VARCHAR2(30)    | لا     | نعم       | لا     | جوال الفرع |
| CountryNo                  | CNTRY_NO                   | NUMBER(4,0)     | لا     | نعم       | لا     | رقم الدولة |
| CityNo                     | CITY_NO                    | NUMBER(10,0)    | لا     | نعم       | لا     | رقم المدينة |
| RegionCode                 | R_CODE                     | NUMBER(10,0)    | لا     | نعم       | لا     | كود المنطقة |
| Inactive                   | INACTIVE                   | NUMBER(1,0)     | لا     | نعم       | لا     | معطل (1=نعم) |
| InactiveDate               | INACTIVE_DATE              | DATE            | لا     | نعم       | لا     | تاريخ التعطيل |
| InactiveReason             | INACTIVE_RES               | VARCHAR2(250)   | لا     | نعم       | لا     | سبب التعطيل |
| InactiveUserId             | INACTIVE_U_ID              | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عطل السطر |
| CardNo                     | CARD_NO                    | VARCHAR2(60)    | لا     | نعم       | لا     | رقم البطاقة |
| CardType                   | CARD_TYP                   | NUMBER(2,0)     | لا     | نعم       | لا     | نوع البطاقة |
| CardJobNo                  | CARD_JOB_NO                | VARCHAR2(60)    | لا     | نعم       | لا     | رقم وظيفة البطاقة |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| ReportPriority             | PR_REP                     | NUMBER(6,0)     | لا     | نعم       | لا     | أولوية التقرير |
| UpdateCount                | UP_CNT                     | NUMBER(10,0)    | لا     | نعم       | لا     | عدد مرات التحديث |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| MeasureDate                | MEASUR_DATE                | DATE            | لا     | نعم       | لا     | تاريخ القياس/الإدخال |
| ImportFromXLS              | IMP_XLS                    | NUMBER(1,0)     | لا     | نعم       | لا     | تم الاستيراد من اكسل (1=نعم) |

---

## CustomerContact (**IAS_CSTMR_CNTCT_US**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| DocumentNo                 | DOC_NO                     | NUMBER(38,0)    | لا     | نعم       | لا     | رقم المستند/الطلب |
| DocumentDate               | DOC_DATE                   | DATE            | لا     | نعم       | لا     | تاريخ المستند |
| DocumentSubject            | DOC_SUBJCT                 | VARCHAR2(250)   | لا     | نعم       | لا     | موضوع الطلب |
| DocumentDescription        | DOC_DSC                    | VARCHAR2(500)   | لا     | نعم       | لا     | وصف الطلب/الملاحظة |
| CustomerCode               | CUST_CODE                  | VARCHAR2(15)    | لا     | نعم       | لا     | كود العميل |
| CustomerLastName           | CUST_L_NM                  | VARCHAR2(60)    | لا     | نعم       | لا     | اسم العائلة للعميل |
| MobileNo                   | MOBILE_NO                  | VARCHAR2(16)    | لا     | نعم       | لا     | رقم الجوال |
| TelephoneNo                | TEL_NO                     | VARCHAR2(16)    | لا     | نعم       | لا     | رقم الهاتف |
| Email                      | E_MAIL                     | VARCHAR2(30)    | لا     | نعم       | لا     | البريد الإلكتروني |
| Address                    | ADDRESS                    | VARCHAR2(100)   | لا     | نعم       | لا     | عنوان العميل |

---

## CustomerLoginHistory (**IAS_USR_LGN_HSTRY**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| UserId                     | U_ID                       | NUMBER(5,0)     | نعم    | لا        | لا     | رقم المستخدم |
| TerminalName               | TRMNL_NM                   | VARCHAR2(30)    | لا     | نعم       | لا     | اسم الجهاز/المحطة |
| LoginType                  | LGN_TYP                    | NUMBER(1,0)     | لا     | نعم       | لا     | نوع الدخول (1=دخول/0=خروج) |
| LoginOutDate               | LGN_OUT_DATE               | DATE            | نعم    | لا        | لا     | تاريخ ووقت الخروج/الدخول |
| LanguageNo                 | LNG_NO                     | NUMBER(3,0)     | لا     | نعم       | لا     | رقم اللغة |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | نعم    | لا        | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)     | نعم    | لا        | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | نعم    | لا        | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | نعم    | لا        | لا     | مستخدم الفرع |
| ApplicationNo              | APPL_NO                    | NUMBER          | لا     | نعم       | لا     | رقم التطبيق |
| HistoryNo                  | HSTRY_NO                   | NUMBER          | لا     | نعم       | لا     | رقم السجل/التاريخ |

---

## BillFollowUpMovement (**ARS_BILL_FLLWUP_MOVMNT**)
| الاسم الجديد                | الاسم القديم                | النوع           | إجباري | يقبل فارغ | تلقائي | شرح الحقل |
|----------------------------|----------------------------|-----------------|--------|-----------|--------|-----------|
| TransactionType            | TRNS_TYP                   | NUMBER(1,0)     | نعم    | لا        | لا     | نوع الحركة |
| TransactionNo              | TRNS_NO                    | NUMBER(5,0)     | نعم    | لا        | لا     | رقم الحركة |
| DocumentNo                 | DOC_NO                     | NUMBER          | نعم    | لا        | لا     | رقم المستند |
| DocumentSerial             | DOC_SER                    | NUMBER          | نعم    | لا        | لا     | تسلسل المستند |
| ConfirmType                | CNFRM_TYP                  | NUMBER(1,0)     | لا     | نعم       | لا     | نوع التأكيد |
| ConfirmUserId              | CNFRM_U_ID                 | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أكد الحركة |
| ConfirmDate                | CNFRM_DATE                 | DATE            | لا     | نعم       | لا     | تاريخ التأكيد |
| ConfirmDescription         | CNFRM_DSC                  | VARCHAR2(250)   | لا     | نعم       | لا     | وصف التأكيد |
| OrderNo                    | ORDR_NO                    | NUMBER(5,0)     | لا     | نعم       | لا     | رقم الطلب المرتبط |
| CompanyNo                  | CMP_NO                     | NUMBER(3,0)     | لا     | نعم       | لا     | رقم الشركة |
| BranchNo                   | BRN_NO                     | NUMBER(6,0)     | لا     | نعم       | لا     | رقم الفرع |
| BranchYear                 | BRN_YEAR                   | NUMBER(4,0)     | لا     | نعم       | لا     | السنة المالية للفرع |
| BranchUser                 | BRN_USR                    | NUMBER(3,0)     | لا     | نعم       | لا     | مستخدم الفرع |
| AddedUserId                | AD_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي أضاف السطر |
| AddedDate                  | AD_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ الإضافة |
| UpdatedUserId              | UP_U_ID                    | NUMBER(5,0)     | لا     | نعم       | لا     | المستخدم الذي عدل السطر |
| UpdatedDate                | UP_DATE                    | DATE            | لا     | نعم       | لا     | تاريخ آخر تعديل |
| AddedTerminal              | AD_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند الإضافة |
| UpdatedTerminal            | UP_TRMNL_NM                | VARCHAR2(50)    | لا     | نعم       | لا     | اسم الجهاز عند التعديل |
| DriverNo                   | DRIVER_NO                  | NUMBER(10,0)    | لا     | نعم       | لا     | رقم السائق المرتبط بالحركة |
| ReceiveInvoiceDate         | REC_INV_DATE               | DATE            | لا     | نعم       | لا     | تاريخ استلام الفاتورة |

---
