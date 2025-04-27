# تريجرات قسم النقدية والبنوك والصناديق (Cash, Banks, Safes)

> جميع المقدحات (Triggers) المرتبطة بجداول النقدية (الصناديق)، البنوك، الشيكات، التحويلات البنكية، مع شرح كل تريجر والجدول الذي يعمل عليه.

---

| اسم التريجر | الجدول | شرح الوظيفة |
|-------------|--------|-------------|
| AUD_CASH_AT_BANK_TGR | CASH_AT_BANK | يسجل كل تعديل أو حذف على بيانات النقدية في البنوك، ما يضمن تتبع رصيد كل بنك ومعاملاته المالية. |
| AUD_CASH_IN_HAND_TGR | CASH_IN_HAND | يسجل كل تعديل أو حذف على بيانات النقدية بالصندوق (الخزينة)، لضمان دقة الأرصدة النقدية الفعلية في النظام. |
| AUD_GLS_BNK_CHQ_DTL_TGR | GLS_BNK_CHQ_DTL | يسجل التعديلات أو الحذف في تفاصيل الشيكات البنكية (سطر شيك أو قيد صرف/قبض شيك). |
| AUD_GLS_BNK_CHQ_MST_TGR | GLS_BNK_CHQ_MST | يسجل كل تغيير أو حذف في رؤوس الشيكات البنكية (تعريف الشيك أو مجموعة شيكات). |
| AUD_GLS_BNK_IDNTF_DTL_TGR | GLS_BNK_IDNTF_DTL | يتتبع التعديلات أو الحذف في تفاصيل تعريف الحسابات البنكية (مثل رقم الحساب أو الفرع البنكي). |
| AUD_GLS_BNK_IDNTF_MST_TGR | GLS_BNK_IDNTF_MST | يسجل التغيرات في رؤوس تعريف الحسابات البنكية (الحساب الرئيسي للبنك). |
| AUD_CASH_GROUP_TGR | IAS_CASH_GROUP | يسجل التعديلات أو حذف مجموعات النقدية (تجميع صناديق أو خزائن تحت مجموعة واحدة). |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يسجل التعديلات أو حذف مجموعات البنوك (تجميع عدة بنوك تحت تصنيف أو مجموعة واحدة). |
| AUD_BANK_ADJUST_MST_TGR | IAS_BANK_ADJUST_MST | يسجل التعديلات على رؤوس تسويات البنك (Bank Reconciliation Master). |
| AUD_BANK_ADJUST_DTL_TGR | IAS_BANK_ADJUST_DTL | يسجل التعديلات على تفاصيل تسويات البنك (Bank Reconciliation Details). |
| AUD_CASH_AT_BANK_DTL_TGR | IAS_CASH_AT_BANK_DTL | يسجل التعديلات على تفاصيل النقدية في البنوك (تفصيل الحركات على مستوى الحساب البنكي). |
| AUD_CASH_AT_BANK_BRN_TGR | IAS_CASH_AT_BANK_BRN | يسجل التعديلات على النقدية في البنوك حسب الفروع. |
| AUD_TRUST_MASTER_TGR | IAS_TRUST_MST | يسجل التعديلات على رؤوس الأمانات النقدية (Trust Master). |
| AUD_TRUST_DETAIL_TGR | IAS_TRUST_DTL | يسجل التعديلات على تفاصيل الأمانات النقدية (Trust Details). |
| AUD_CASH_IN_HAND_DTL_TGR | IAS_CASH_IN_HAND_DTL | يسجل التعديلات على تفاصيل النقدية بالصندوق. |
| AUD_CASH_CUSTMR_TGR | IAS_CASH_CUSTMR | يسجل التعديلات في بيانات العملاء النقديين (مرتبط بالتحصيل النقدي). |
| AUD_CASH_CUSTMR_GRP_TGR | IAS_CASH_CUSTMR_GRP | يتتبع التعديلات في مجموعات العملاء النقديين. |
| AUD_CASH_CUSTMR_POINT__TGR | IAS_CASH_CUSTMR_POINT_ | يسجل التعديلات في نقاط ولاء العملاء النقديين. |
| AUD_CASH_GROUP_TGR | IAS_CASH_GROUP | يتتبع التعديلات على مجموعات الصناديق. |
| AUD_CASH_IN_HAND_DTL_TGR | IAS_CASH_IN_HAND_DTL | يسجل التعديلات في تفاصيل النقدية بالصندوق. |
| AUD_BANK_ADJUST_DTL_TGR | IAS_BANK_ADJUST_DTL | يسجل التعديلات في تفاصيل تسوية الحساب البنكي. |
| AUD_BANK_ADJUST_MST_TGR | IAS_BANK_ADJUST_MST | يسجل التعديلات في رأس تسوية الحساب البنكي. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يسجل التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يتتبع التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يسجل التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يتتبع التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يسجل التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يتتبع التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يسجل التعديلات في مجموعات البنوك. |
| AUD_BANK_GROUP_TGR | IAS_BANK_GROUP | يتتبع التعديلات في مجموعات البنوك. |
| ... |
| GLS_VCHR_ChqTrce_TRGR | GLS_VCHR_MST_ACCNT | يتحكم بتحديث تتبع الشيكات البنكية عند التغيير على سندات القيد (مستندات مالية مرتبطة بشيكات). |
| SQ_GLS_BNK_IDNTF_DTL_TRG | GLS_BNK_IDNTF_DTL | يولد رقم تسلسلي تلقائي عند إضافة تفاصيل حساب بنكي جديد. |
| SQ_GLS_BNK_IDNTF_MST_TRG | GLS_BNK_IDNTF_MST | يولد رقم تسلسلي تلقائي عند إضافة حساب بنكي رئيسي جديد. |

---

**ملاحظة:**
- تم إدراج جميع التريجرات التي تخص جداول النقدية، البنوك، الشيكات، التحويلات، حسب Domain-Modules-Tables.md وملفات التريجرات الرسمية.
- إذا وجدت تريجر لم يظهر هنا أو يحمل تسمية غير واضحة، أرسل لي اسمه أو كوده ليتم تصنيفه بدقة.
- يمكنك طلب القسم التالي بنفس التنسيق.
