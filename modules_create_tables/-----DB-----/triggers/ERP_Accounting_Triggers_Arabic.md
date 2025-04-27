# تريجرات قسم المحاسبة والقيود (Accounting & Journals)

> جميع المقدحات (Triggers) المرتبطة بجداول المحاسبة والقيود، مع شرح كل تريجر والجدول الذي يعمل عليه.

---

| اسم التريجر | الجدول | شرح الوظيفة |
|-------------|--------|-------------|
| AUD_ACCOUNT_CURR_TGR | ACCOUNT_CURR | يسجل كل تعديل أو حذف على العملات المخصصة للحسابات المالية لأغراض التدقيق التاريخي، حيث يتم تتبع أي تغيير أو حذف لعملة مرتبطة بحساب. |
| AUD_ACCOUNT_GROUPING_TGR | ACCOUNT_GROUPING | يسجل كل تعديل أو حذف في مجموعات الحسابات (أي عملية تجميع أو تصنيف جديد أو تعديل/حذف مجموعة موجودة). |
| AUD_ACCOUNT_TGR | ACCOUNT | يتتبع التعديلات أو الحذف على الحسابات الرئيسية في شجرة الحسابات، بما يشمل كل حقول الحساب عند التغيير لأغراض الأرشفة والمراجعة. |
| AUD_ACCOUNT_TYPES_TGR | ACCOUNT_TYPES | يسجل التعديلات أو الحذف في أنواع الحسابات، مثل إضافة أو تعديل نوع حساب رئيسي (أصول، التزامات، إلخ). |
| AUD_AUD_TGR | AUD | يسجل كل تعديل أو حذف في جداول التدقيق (Audit) نفسها، لضمان تتبع كامل لعمليات المراجعة والتدقيق. |
| AUD_CC_GROUPING_TGR | CC_GROUPING | يتتبع التعديلات أو الحذف في تجميعات مراكز التكلفة، لضبط التغيرات في تصنيفات مراكز التكلفة. |
| AUD_COST_CENTERS_TGR | COST_CENTERS | يسجل التعديلات أو الحذف في مراكز التكلفة. أي تغيير في خصائص أو حذف مركز تكلفة يتم توثيقه. |
| AUD_COST_CENTER_TYPES_TGR | COST_CENTER_TYPES | يسجل التعديلات أو الحذف على أنواع مراكز التكلفة (كالنوع الإداري أو الإنتاجي وغيره). |
| AUD_COST_DETAIL_TGR | COST_DETAIL | يتتبع التعديلات أو الحذف في تفاصيل مراكز التكلفة. |
| AUD_COST_MASTER_TGR | COST_MASTER | يسجل التعديلات أو الحذف في رؤوس مراكز التكلفة (التوزيعات أو التجميعات الكبيرة). |
| AUD_CREDIT_CARD_TYPES_TGR | CREDIT_CARD_TYPES | يسجل أي تعديل أو حذف على أنواع البطاقات الائتمانية المرتبطة بالنظام المحاسبي. |
| AUD_DATE_LOCK_TGR | DATE_LOCK | يسجل التعديلات على عمليات قفل التواريخ المحاسبية (الإغلاق الدوري). |
| AUD_DETAIL_INV_TGR | DETAIL_JOURNAL_V | يتتبع التغييرات أو حذف تفاصيل القيود اليومية (سطر القيد) في الجدول المحاسبي. |
| AUD_GLS_ACCNT_DTL_CURR_TGR | GLS_ACCNT_DTL_CURR | يسجل التعديلات أو الحذف في العملات المستخدمة ضمن تفاصيل الحسابات. |
| AUD_GLS_ACCNT_DTL_GRPS_TGR | GLS_ACCNT_DTL_GRPS | يتتبع التغييرات في مجموعات تفاصيل الحسابات لربطها بتقارير أو صلاحيات معينة. |
| AUD_GLS_ACCNT_DTL_PRIV_TGR | GLS_ACCNT_DTL_PRIV | يرصد التعديلات في الصلاحيات الخاصة بتفاصيل الحسابات. |
| AUD_GLS_ACCNT_DTL_TGR | GLS_ACCNT_DTL | يسجل أي تعديل أو حذف في تفاصيل الحسابات المحاسبية (سطر حساب). |
| AUD_GLS_AC_CODE_DTL_GRPS_P_TGR | GLS_AC_CODE_DTL_GRPS_P | يتابع التغييرات في مجموعات الرموز المحاسبية (نوع خاص أو مؤقت). |
| AUD_GLS_AC_CODE_DTL_GRPS_TGR | GLS_AC_CODE_DTL_GRPS | يسجل التغييرات أو الحذف في مجموعات الرموز المحاسبية (التجميعات الخاصة بالأكواد). |
| AUD_GLS_ADVNC_EXPNS_RVNU_D_TGR | GLS_ADVNC_EXPNS_RVNU_D | يتابع تعديل أو حذف تفاصيل المصروفات أو الإيرادات المقدمة. |
| AUD_GLS_ADVNC_EXPNS_RVNU_M_TGR | GLS_ADVNC_EXPNS_RVNU_M | يسجل التغييرات في رؤوس المصروفات أو الإيرادات المقدمة (العمليات الرئيسية). |
| AUD_GLS_BNK_CHQ_DTL_TGR | GLS_BNK_CHQ_DTL | يرصد التعديلات أو الحذف في تفاصيل الشيكات البنكية (الشيك كوثيقة مالية). |
| AUD_GLS_BNK_CHQ_MST_TGR | GLS_BNK_CHQ_MST | يسجل كل تغيير أو حذف في رؤوس الشيكات البنكية (المستند الرئيسي). |
| AUD_GLS_BNK_IDNTF_DTL_TGR | GLS_BNK_IDNTF_DTL | يتتبع التعديلات أو الحذف في تفاصيل تعريف الحسابات البنكية (مثل رقم الحساب الفرعي). |
| AUD_GLS_BNK_IDNTF_MST_TGR | GLS_BNK_IDNTF_MST | يسجل التغيرات في رؤوس تعريف الحسابات البنكية (الحساب الرئيسي للبنك). |
| AUD_GLS_CRNCY_USR_LMT_TGR | GLS_CRNCY_USR_LMT | يسجل التعديلات على حدود العملات للمستخدمين (سقف التعامل بالعملة). |
| AUD_GLS_EDIT_BDGT_BLNC_DTL_TGR | GLS_EDIT_BDGT_BLNC_DTL | يسجل التعديلات على تفاصيل تسويات الميزانية. |
| AUD_GLS_EDIT_BDGT_BLNC_MST_TGR | GLS_EDIT_BDGT_BLNC_MST | يرصد التغييرات على رؤوس تسويات الميزانية. |
| AUD_GLS_MOV_BDGT_DTL_TGR | GLS_MOV_BDGT_DTL | يسجل تعديلات تفاصيل حركات الميزانية (إضافة/ترحيل/تعديل بند تفصيلي). |
| AUD_GLS_MOV_BDGT_MST_TGR | GLS_MOV_BDGT_MST | يتابع التعديلات على رؤوس حركات الميزانية (الحركة المالية الرئيسية للميزانية). |
| AUD_GLS_RQ_EXCH_CUR_DTL_TGR | GLS_RQ_EXCH_CUR_DTL | يسجل التعديلات في تفاصيل طلبات صرف العملات. |
| AUD_GLS_RQ_EXCH_CUR_MST_TGR | GLS_RQ_EXCH_CUR_MST | يتابع التعديلات على رؤوس طلبات صرف العملات. |
| AUD_GLS_RQ_VCHR_MST_ACCNT_TGR | GLS_RQ_VCHR_MST_ACCNT | يسجل الحركات على السندات المالية المرتبطة بالحسابات (سند القيد). |
| AUD_GLS_TAX_ACC_TGR | GLS_TAX_ACC | يسجل التعديلات أو الحذف في حسابات الضرائب المحاسبية. |
| AUD_GLS_VCHR_MST_ACCNT_TGR | GLS_VCHR_MST_ACCNT | يتابع الحركات على رؤوس سندات القيد (سندات اليومية). |
| AUD_GLS_VCHR_TYP_ACNT_TGR | GLS_VCHR_TYP_ACNT | يسجل التعديلات على أنواع سندات القيد المحاسبية. |
| AUD_GLS_VCHR_TYP_PRV_TGR | GLS_VCHR_TYP_PRV | يتتبع الحركات على صلاحيات أنواع السندات. |
| AUD_JV_TYPES_DETAIL_TGR | JV_TYPES_DETAIL | يسجل التعديلات على تفاصيل أنواع القيود اليومية. |
| AUD_JV_TYPES_TGR | JV_TYPES | يسجل التعديلات على أنواع القيود اليومية الرئيسية. |
| AUD_MASTER_INV_TGR | MASTER_JOURNAL_V | يتابع أي تغيير أو حذف على رؤوس القيود المحاسبية (رأس القيد الرئيسي). |
| AUD_OPEN_BAL_TGR | OPEN_BAL | يتابع التعديلات أو الحذف في الأرصدة الافتتاحية للحسابات. |
| AUD_PRIVILEGE_CC_TGR | PRIVILEGE_CC | يسجل التعديلات على صلاحيات مستخدمي مراكز التكلفة. |
| AUD_PRIVILEGE_GC_TGR | PRIVILEGE_GC | يتتبع صلاحيات التحكم العامة في النظام (General Control). |
| AUD_PRIVILEGE_TGR | PRIVILEGE | يسجل التعديلات في الصلاحيات العامة للمستخدمين (مثل منح أو إلغاء صلاحية محاسبية). |
| AUD_PRIVILEGE_WH_TGR | PRIVILEGE_WH | يتتبع التعديلات في صلاحيات المستودعات. |
| AUD_REEVAL_TGR | REEVAL | يسجل التغيرات في عمليات إعادة التقييم المحاسبي (مثل فروقات العملة أو إعادة تقييم الأصول). |
| UPD_EDIT_BDGT_BLNC_DTL_TGR | GLS_EDIT_BDGT_BLNC_DTL | يقوم بتحديث تفاصيل تسويات الميزانية عند الإضافة أو التحديث أو الحذف، ويعدل القيم التجميعية تلقائياً في الجدول المرتبط. |
| UPD_MOV_BDGT_BLNC_DTL_TGR | GLS_MOV_BDGT_DTL | يقوم بتحديث تفاصيل حركات الميزانية عند الإضافة أو التحديث أو الحذف، ويعدل القيم التجميعية تلقائياً في الجدول المرتبط. |
| UPD_MOV_BDGT_BLNC_MST_TGR | GLS_MOV_BDGT_MST | يقوم بتحديث رأس حركة الميزانية عند الإضافة أو التحديث أو الحذف، ويعدل القيم التجميعية تلقائياً في الجدول المرتبط. |
| AUD_DETAIL_OUT_BILLS_TGR | DETAIL_OUT_BILLS | يسجل التعديلات على تفاصيل السندات/الفواتير الصادرة ضمن القيود المحاسبية. |
| AUD_MASTER_OUT_BILLS_TGR | MASTER_OUT_BILLS | يتابع التعديلات في رؤوس الفواتير أو السندات الصادرة. |
| MASTER_OUT_BILLS_CHK_SRL_TRG | MASTER_OUT_BILLS | يتأكد من صحة التسلسل الرقمي عند حذف أو تعديل رأس السند الصادر. |
| AUD_S_JRNL_FILE_DTL_TGR | S_JRNL_FILE_DTL | يدقق كل تعديل أو حذف على تفاصيل ملفات القيود. |
| AUD_S_JRNL_FILE_MST_TGR | S_JRNL_FILE_MST | يسجل التعديلات على رؤوس ملفات القيود (ملفات الاستيراد أو الأرشفة). |
| AUD_S_LOGS_TGR | S_LOGS | يسجل التعديلات أو الحذف في سجلات النظام (System Logs). |
| AUD_STK_CNFRM_TGR | STK_CNFRM | يسجل عمليات التأكيد على التسويات أو القيود المخزنية المتعلقة بالمحاسبة. |
| GLS_JRNLJRS_DTL_INSTLMNT_TRGR | GLS_JRNLJRS_DTL_INSTLMNT | يتحكم أو يسجل العمليات الخاصة بالأقساط عند إضافة أو تعديل تفاصيل قيد اليومية للأقساط. |
| GLS_JRNL_DTL_INSTLMNT_TRGR | GLS_JRNL_DTL_INSTLMNT | يتحكم أو يسجل العمليات الخاصة بالأقساط عند إضافة أو تعديل تفاصيل أخرى في القيد اليومي للأقساط. |
| GLS_VCHR_ChqTrce_TRGR | GLS_VCHR_MST_ACCNT | يتحكم بتحديث تتبع الشيكات عند التغيير على سندات القيد. |
| GLS_VCHR_DTL_INSTLMNT_TRGR | GLS_VCHR_DTL_INSTLMNT | يسجل العمليات الخاصة بتفاصيل الأقساط في سندات اليومية. |
| GLS_VCHR_MSTAC_INSTLMNT_TRGR | GLS_VCHR_MST_ACCNT | يتحكم أو يسجل العمليات الخاصة بالأقساط في رأس سند اليومية. |
| GLS_VCHR_MST_DEL_INSTLMNT_Trgr | GLS_VCHR_MST_ACCNT | يتحكم بعمليات حذف الأقساط المرتبطة برأس سند اليومية. |
| IAS_JV_INSTALLMNT_Tgr | DETAIL_JOURNAL_V | يدير عمليات تحديث جداول الأقساط عند كل تعديل أو إدراج أو حذف في تفاصيل القيد اليومي (الأقساط المالية). |
| IAS_VD_INSTALLMNT_Tgr | VOUCHER_DETAIL | يدير عمليات تحديث جداول الأقساط عند كل تعديل أو إدراج أو حذف في تفاصيل السند المالي (الأقساط المالية). |
| AUD_INCOMING_ACCOUNTS_TGR | INCOMING_ACCOUNTS | يسجل التعديلات في حسابات القبض (Incoming). |
| AUD_OUTGOING_ACCOUNTS_TGR | OUTGOING_ACCOUNTS | يسجل التعديلات في حسابات الصرف (Outgoing). |
| AUD_INCOM_TYPES_TGR | INCOM_TYPES | يسجل التعديلات في أنواع حسابات الدخل. |
| AUD_OUT_TYPES_TGR | OUT_TYPES | يسجل التعديلات في أنواع حسابات الصرف. |
| AUD_PRIV_ACC_TGR | PRIV_ACC | يسجل التعديلات في الصلاحيات الخاصة بالحسابات المالية. |
| AUD_PRIV_CASH_TGR | PRIV_CASH | يسجل التعديلات في صلاحيات النقدية للمستخدمين. |
| AUD_PRIV_INCOME_TYPE_TGR | PRIV_INCOME_TYPE | يتتبع صلاحيات المستخدمين المرتبطة بأنواع الدخل. |
| AUD_PRIV_OUT_TYPE_TGR | PRIV_OUT_TYPE | يتتبع صلاحيات المستخدمين المرتبطة بأنواع الصرف. |
| AUD_PRIV_REQ_TYPE_TGR | PRIV_REQ_TYPE | يتتبع الصلاحيات المرتبطة بأنواع طلبات الصرف أو القبض. |
| AUD_PRIV_TRNSFR_TYPE_TGR | PRIV_TRNSFR_TYPE | يتتبع الصلاحيات المرتبطة بأنواع التحويلات المالية. |
| AUD_S_EMP_ATTNDNC_LOC_TGR | GNR_ATTNDNC_LOC | يسجل التعديلات في مواقع الحضور والانصراف المرتبطة بالماليّة (في حال الربط مع كشوف الرواتب). |
| AUD_S_FLAGS_PRIV_TGR | S_FLAGS_PRIV | يسجل التعديلات في صلاحيات الأعلام (Flags) المحاسبية. |

---

**ملاحظة:**  
- جميع التريجرات مرتبطة بجداول القسم حسب ملف Domain-Modules-Tables.md.
- إذا كان هناك تريجر محاسبي لم يتم ذكره هنا أرسله لي لأدرجه.
- إذا رغبت في ملف خاص بالتريجرات (Triggers) لأي قسم آخر، أبلغني بذلك.
