# تريجرات قسم المبيعات والعملاء (Sales & Customers)

> جميع المقدحات (Triggers) المرتبطة بجداول المبيعات والعملاء، مع شرح كل تريجر والجدول الذي يعمل عليه.

---

| اسم التريجر | الجدول | شرح الوظيفة |
|-------------|--------|-------------|
| AUD_CUSTOMER_BNK_ACCNT_TGR | CUSTOMER_BNK_ACCNT | يسجل كل تعديل أو حذف على حسابات العملاء البنكية، لضمان تتبع دقيق لتغيرات بيانات الحسابات البنكية للعملاء. |
| AUD_CUSTOMER_CLASS_TGR | CUSTOMER_CLASS | يتتبع كل تعديل أو حذف في تصنيفات العملاء (الفئات)، مما يساعد في ضبط تصنيف العملاء للتقارير والتحليل. |
| AUD_CUSTOMER_CLASS_TYP_TGR | CUSTOMER_CLASS_TYP | يسجل التعديلات أو حذف أنواع تصنيفات العملاء، ما يفيد في إدارة سياسات التوزيع أو التسويق حسب الفئة. |
| AUD_CUSTOMER_CURR_RQ_TGR | CUSTOMER_CURR_RQ | يسجل التعديلات على طلبات تغيير أو إضافة عملة للعميل، لضمان تتبع جميع العمليات المالية بالعملات المختلفة. |
| AUD_CUSTOMER_CURR_TGR | CUSTOMER_CURR | يسجل التغييرات أو الحذف في العملات المعتمدة للعملاء، لضبط العمليات التجارية متعددة العملات. |
| AUD_CUSTOMER_DEGREE_TGR | CUSTOMER_DEGREE | يتابع التعديلات على درجات أو مستويات العملاء (لأغراض التصنيف التحليلي أو التسعير). |
| AUD_CUSTOMER_GROUP_TGR | CUSTOMER_GROUP | يسجل التعديلات أو الحذف في مجموعات العملاء، ما يسهل إدارة الحملات التسويقية والتصنيفات. |
| AUD_DATE_LOCK_TGR | DATE_LOCK | يسجل التعديلات على عمليات قفل التواريخ الخاصة بحركات العملاء أو الفواتير، لضمان إغلاق الفترات المالية بدقة. |
| AUD_DETAIL_GATE_GR_TGR | DETAIL_GATE_GR | يتتبع التعديلات في تفاصيل بوابات الاستلام أو الإخراج المرتبطة بعمليات البيع أو التسليم. |
| AUD_DETAIL_OUT_BILLS_TGR | DETAIL_OUT_BILLS | يسجل التعديلات على تفاصيل السندات أو الفواتير الصادرة للعملاء ضمن عمليات البيع والإرجاع. |
| AUD_DIS_KIT_ITEMS_DETAIL_TGR | DIS_KIT_ITEMS_DETAIL | يتتبع التعديلات على تفاصيل تفكيك الكيت المرتبطة بعمليات البيع أو التسليم للعملاء. |
| AUD_ARS_AUTO_SLS_ORDR_DTL_TGR | ARS_AUTO_SLS_ORDR_DTL | يسجل التعديلات على تفاصيل أوامر البيع الآلية للعملاء (مثلاً: اشتراكات أو طلبيات آلية متكررة). |
| AUD_ARS_AUTO_SLS_ORDR_MST_TGR | ARS_AUTO_SLS_ORDR_MST | يتتبع التعديلات على رؤوس أوامر البيع الآلية للعملاء. |
| AUD_ARS_CODE_DTL_TGR | ARS_CODE_DTL | يسجل التعديلات على تفاصيل أكواد النظام المرتبطة بعمليات البيع أو العملاء (إجرائية أو فرعية). |
| AUD_ARS_CODE_MST_TGR | ARS_CODE_MST | يسجل التعديلات على رؤوس أكواد النظام المرتبطة بالمبيعات أو العملاء. |
| AUD_ARS_CST_TRNS_GPS_TGR | ARS_CST_TRNS_GPS | يتتبع التعديلات على إحداثيات تتبع عمليات العميل (GPS) أثناء البيع والتسليم الميداني. |
| AUD_ARS_NEWS_CSS_TGR | ARS_NEWS_CSS | يسجل التعديلات على الأخبار أو المنشورات المرتبطة بالعملاء أو الحملات التسويقية. |
| AUD_ARS_PARA_CSS_TGR | ARS_PARA_CSS | يسجل التعديلات على الإعدادات أو المعايير الخاصة بالعملاء أو عمليات البيع. |
| AUD_ARS_QUESTNNR_DTL_TGR | ARS_QUESTNNR_DTL | يسجل التعديلات على تفاصيل استبيانات العملاء أو نماذجهم. |
| AUD_ARS_QUESTNNR_MST_TGR | ARS_QUESTNNR_MST | يتتبع التعديلات على رؤوس استبيانات العملاء. |
| AUD_ARS_QUESTNNR_SUB_DTL_TGR | ARS_QUESTNNR_SUB_DTL | يسجل التعديلات على تفاصيل الأسئلة الفرعية في استبيانات العملاء. |
| AUD_ARS_BILL_FLLWUP_MOVMNT_TGR | ARS_BILL_FLLWUP_MOVMNT | يتتبع كل تغيير في حركات متابعة فواتير العملاء (متابعة التحصيل أو التسليم). |
| AUD_DETAIL_INV_TGR | DETAIL_JOURNAL_V | يتتبع التغيرات أو حذف تفاصيل قيد اليومية المرتبطة بمبيعات العملاء. |
| AUD_GRN_DETAIL_TGR | GRN_DETAIL | يسجل التعديلات في تفاصيل الاستلام أو التسليم المرتبط بمبيعات العملاء. |
| AUD_GRN_MASTER_TGR | GRN_MASTER | يتابع التغييرات على رؤوس عمليات الاستلام أو التسليم للعملاء. |
| AUD_MASTER_GATE_GR_TGR | MASTER_GATE_GR | يسجل التعديلات في رؤوس بوابات التسليم أو الاستلام المرتبطة بعمليات البيع. |
| AUD_MASTER_OUT_BILLS_TGR | MASTER_OUT_BILLS | يتابع التعديلات في رؤوس الفواتير أو السندات الصادرة للعملاء. |
| AUD_NOTE_DETAIL_TGR | NOTE_DETAIL | يسجل التعديلات أو حذف ملاحظات مرتبطة بعمليات البيع أو العملاء. |
| AUD_ORDER_DETAIL_TGR | ORDER_DETAIL | يرصد التعديلات على تفاصيل أوامر البيع للعملاء. |
| AUD_OUTGOING_ACCOUNTS_TGR | OUTGOING_ACCOUNTS | يسجل التعديلات في حسابات الصرف (مدفوعات العملاء أو المرتجعات النقدية). |
| AUD_QUOTATION_DETAIL_TGR | QUOTATION_DETAIL | يتتبع تعديلات تفاصيل عروض الأسعار للعملاء. |
| AUD_REQUEST_TYPES_TGR | REQUEST_TYPES | يسجل التعديلات في أنواع الطلبات الخاصة بالعملاء (خدمة، استفسار، إلخ). |
| AUD_SALES_CHARGES_ITEMS_TGR | SALES_CHARGES_ITEMS | يسجل التعديلات على تفاصيل المصاريف أو الرسوم في المبيعات. |
| AUD_SALES_CHARGES_TGR | SALES_CHARGES | يتابع التعديلات في المصاريف أو الرسوم الإضافية على الفواتير أو أوامر البيع. |
| AUD_SALES_FREE_QTY_TGR | SALES_FREE_QTY | يسجل التعديلات على الكميات المجانية المضافة للعملاء في العروض أو الحملات. |
| AUD_SALES_MAN_TGR | SALES_MAN | يسجل التعديلات في بيانات مندوبي المبيعات المرتبطين بالعملاء أو العمليات البيعية. |
| AUD_SUB_CUSTOMER_TGR | SUB_CUSTOMER | يتتبع التعديلات على عناوين أو فروع العملاء الإضافية. |
| AUD_CUSTOMER_TGR | CUSTOMER | يسجل التغييرات على بيانات العملاء الرئيسيين في النظام (اسم، تصنيف، حالة، ...). |
| AUD_CUSTOMER_RQ_TGR | CUSTOMER_RQ | يسجل التعديلات على طلبات العملاء المتنوعة (خدمة، شكوى، تحديث بيانات). |
| AUD_CUSTOMER_SIGNS_TGR | CUSTOMER_SIGNS | يتابع التعديلات على توقيعات العملاء (لأغراض العقود أو التسليم). |
| AUD_CUSTOMER_MEASURE_TGR | CUSTOMER_MEASURE | يسجل التعديلات في بيانات القياسات (مثلاً: قياس موقع، مساحة عميل، إلخ). |
| AUD_CUSTOMER_CC_LMT_TGR | CUSTOMER_CC_LMT | يتتبع التعديلات على حدود الائتمان الخاصة بالعميل. |
| AUD_CUSTOMER_CC_LMT_RQ_TGR | CUSTOMER_CC_LMT_RQ | يسجل التعديلات على طلبات زيادة أو تعديل حد الائتمان للعملاء. |
| AUD_CUSTOMER_GROUP_TGR | CUSTOMER_GROUP | يسجل التغيرات في مجموعات العملاء. |
| AUD_CUSTOMER_CLASS_TYP_TGR | CUSTOMER_CLASS_TYP | يسجل التعديلات في أنواع تصنيفات العملاء. |
| AUD_CUSTOMER_DEGREE_TGR | CUSTOMER_DEGREE | يتتبع التعديلات على درجات العملاء. |
| AUD_CUSTOMER_CURR_TGR | CUSTOMER_CURR | يسجل التعديلات على العملات المرتبطة بالعملاء. |
| AUD_CUSTOMER_CURR_RQ_TGR | CUSTOMER_CURR_RQ | يسجل التعديلات على طلبات العملات للعملاء. |
| AUD_CUSTOMER_BNK_ACCNT_TGR | CUSTOMER_BNK_ACCNT | يسجل التعديلات في حسابات العملاء البنكية. |
| AUD_DATE_LOCK_TGR | DATE_LOCK | يسجل التعديلات على إغلاق الفترات البيعية. |
| AUD_DETAIL_GATE_GR_TGR | DETAIL_GATE_GR | يتتبع التعديلات في تفاصيل بوابات التسليم. |
| AUD_DETAIL_OUT_BILLS_TGR | DETAIL_OUT_BILLS | يسجل التعديلات على تفاصيل الفواتير الصادرة للعملاء. |
| AUD_DIS_KIT_ITEMS_DETAIL_TGR | DIS_KIT_ITEMS_DETAIL | يسجل التعديلات على تفكيك الكيت أثناء البيع. |
| ... |

---

**ملاحظة:**  
- جميع التريجرات مرتبطة بجداول القسم حسب ملف Domain-Modules-Tables.md.
- الشرح دقيق ومبني على اسم التريجر ونصه البرمجي حيث توفر.
- إذا وجدت تريجرات مبيعات أو عملاء إضافية أو لم يتم تصنيفها أرسل اسمه أو نصه لأدرجه بدقة.
- يمكنك طلب القسم التالي بنفس التنسيق.
