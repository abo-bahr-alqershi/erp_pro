# توثيق دوال النظام (Functions) - الجزء 1

## 1. دوال عامة أو تخص الإعدادات/المعايير

1. **CHK_TLGRM_PRMTRS**
   - اسم أوضح: Check_Telegram_Parameters
   - شرح: تتحقق من صحة أو وجود معايير معينة تتعلق بالتلغرام أو الإشعارات في النظام.
   - نوع العملية: إعدادات/تنبيهات
   - طبقة CQRS: Application

---

## 2. دوال المخزون والمستودعات Inventory

2. **Calc_Wtavg_Cost**
   - اسم أوضح: Calculate_Weighted_Average_Cost
   - شرح: تقوم بحساب متوسط التكلفة المرجح للأصناف في المخزون.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Domain

3. **Check_Ac_Cst_Vnd**
   - اسم أوضح: Check_Account_Cost_Vendor
   - شرح: تتحقق من توافق أو صحة العلاقة بين الحساب والتكلفة والمورد.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Domain

4. **Check_Item_Move**
   - اسم أوضح: Check_Item_Movement
   - شرح: التحقق من حركة صنف معين (إدخال/إخراج/تحويل).
   - نوع العملية: مخزنية
   - طبقة CQRS: Domain

---

## 3. دوال عامة للتسميات والتصنيفات

5. **Doc_Type_Name**
   - اسم أوضح: Document_Type_Name
   - شرح: إرجاع أو تحديد اسم نوع مستند معين حسب الكود.
   - نوع العملية: عامة/تصنيفية
   - طبقة CQRS: Application

---

## 4. دوال الحسابات المالية (Accounting)

6. **GET_AC_TYPE**
   - اسم أوضح: Get_Account_Type
   - شرح: جلب نوع الحساب المالي (أصل، التزام، ...).
   - نوع العملية: مالية/تصنيفية
   - طبقة CQRS: Domain

7. **GET_BL_Ac_Dt_Fnc**
   - اسم أوضح: Get_Balance_Account_Detail
   - شرح: جلب تفاصيل رصيد الحساب في تاريخ محدد.
   - نوع العملية: مالية
   - طبقة CQRS: Query

8. **GET_BL_Ac_Mn_Fnc**
   - اسم أوضح: Get_Balance_Account_Main
   - شرح: جلب رصيد الحساب الرئيسي.
   - نوع العملية: مالية
   - طبقة CQRS: Query

9. **GET_BL_Cc_Dt_Fnc**
   - اسم أوضح: Get_Balance_CostCenter_Detail
   - شرح: جلب تفاصيل رصيد مركز تكلفة.
   - نوع العملية: مالية/تكاليف
   - طبقة CQRS: Query

10. **GET_BL_Cc_Mn_Fnc**
    - اسم أوضح: Get_Balance_CostCenter_Main
    - شرح: جلب رصيد مركز التكلفة الرئيسي.
    - نوع العملية: مالية/تكاليف
    - طبقة CQRS: Query

---

## 5. دوال المشاريع

11. **GET_CC_PJ_ACTV_NM**
    - اسم أوضح: Get_CostCenter_ProjectActivity_Name
    - شرح: جلب اسم النشاط الخاص بمركز تكلفة ومشروع محدد.
    - نوع العملية: مشاريع/تكاليف
    - طبقة CQRS: Query

---

## 6. دوال التكاليف والمخزون

12. **GET_COST**
    - اسم أوضح: Get_Cost
    - شرح: جلب تكلفة عنصر أو عملية معينة (قد تكون صنف أو حركة).
    - نوع العملية: مالية/مخزنية
    - طبقة CQRS: Query

---

## 7. دوال العملاء/الموردين والمعاملات

13. **GET_CP_Fnc**
    - اسم أوضح: Get_CustomerOrProvider
    - شرح: جلب بيانات عميل أو مورد بناءً على كود أو مدخلات أخرى.
    - نوع العملية: مالية/تعاملات
    - طبقة CQRS: Query

---

## 8. دوال التقارير والتنسيقات

14. **GET_DCML_RPRT_FNC**
    - اسم أوضح: Get_Decimal_Report_Function
    - شرح: جلب أو توليد تقارير رقمية بتنسيق عشري محدد.
    - نوع العملية: تقارير
    - طبقة CQRS: Application

---

## 9. دوال الذمم والمبالغ المستحقة

15. **GET_DUE_AMT_Fnc**
    - اسم أوضح: Get_Due_Amount
    - شرح: جلب المبالغ المستحقة (لعميل/مورد أو غيره).
    - نوع العملية: مالية/ذمم
    - طبقة CQRS: Query

---

## 10. دوال تنسيقية أو تحويلات رقمية

16. **GET_FRMT_MSK_RPRT_FNC**
    - اسم أوضح: Get_Format_Mask_Report_Function
    - شرح: توليد أو جلب قناع تنسيق تقارير (مثل رقم مستند أو رقم حساب).
    - نوع العملية: تقارير/تنسيقات
    - طبقة CQRS: Application

---

## 11. دوال الترقيم والسلاسل

17. **GET_NEW_SEQ**
    - اسم أوضح: Get_New_Sequence
    - شرح: توليد رقم تسلسلي جديد لمستند أو عنصر.
    - نوع العملية: عامة/تسلسل
    - طبقة CQRS: Application

---

## 12. دوال الأرصدة الافتتاحية

18. **GET_OPN_BAL_Fnc**
    - اسم أوضح: Get_Open_Balance
    - شرح: جلب الرصيد الافتتاحي لحساب أو عنصر.
    - نوع العملية: مالية/افتتاحية
    - طبقة CQRS: Query

---

## 13. دوال ترتيبية وعددية

19. **GET_ORDR_NUMERIC_FNC**
    - اسم أوضح: Get_Order_Numeric
    - شرح: جلب رقم ترتيبي أو تسلسلي (غالبًا لأوامر أو مستندات).
    - نوع العملية: ترتيبية/تسلسل
    - طبقة CQRS: Application

---

## 14. دوال أوامر الشراء

20. **GET_PO_ORDR_QTY_FNCC**
    - اسم أوضح: Get_PurchaseOrder_Order_Quantity
    - شرح: جلب كمية الطلب لأمر شراء معين.
    - نوع العملية: مشتريات/مخزنية
    - طبقة CQRS: Query

---

## 15. دوال عامة للأكواد والتسميات

21. **GET_VER_CODE_NAME**
    - اسم أوضح: Get_Verification_Code_Name
    - شرح: جلب اسم الكود أو رمز التحقق (قد يكون لعميل أو عملية).
    - نوع العملية: عامة/تحقق
    - طبقة CQRS: Application

---

## 16. دوال الأرصدة والحسابات

22. **Get_Ac_Bal_Fnc**
    - اسم أوضح: Get_Account_Balance
    - شرح: جلب رصيد الحساب.
    - نوع العملية: مالية
    - طبقة CQRS: Query

23. **Get_Auto_Incrmnt_Fnc**
    - اسم أوضح: Get_Auto_Increment
    - شرح: جلب أو توليد رقم تلقائي متزايد (غالبًا لرؤوس المستندات أو المعرفات).
    - نوع العملية: عامة/تسلسل
    - طبقة CQRS: Application

24. **Get_Batch_Col_Nm**
    - اسم أوضح: Get_Batch_Column_Name
    - شرح: جلب اسم العمود الخاص بالدفعة (في تقارير المخزون أو الإنتاج).
    - نوع العملية: مخزنية/تقارير
    - طبقة CQRS: Application

25. **Get_Bl_Cst_Fnc**
    - اسم أوضح: Get_Balance_Cost
    - شرح: جلب رصيد أو تكلفة عنصر معين (غالبًا في المخزون أو التكاليف).
    - نوع العملية: مالية/مخزنية
    - طبقة CQRS: Query

---

# توثيق دوال النظام (Functions) - الجزء 2

## 16. دوال التكاليف للموردين والمستودعات

26. **Get_Bl_Cst_Vnd_Fnc**
   - اسم أوضح: Get_Balance_Cost_Vendor
   - شرح: جلب رصيد تكلفة المورد في فترة أو عملية محددة.
   - نوع العملية: مالية/مخزنية/موردين
   - طبقة CQRS: Query

27. **Get_Bl_Main_Ac_Fnc**
   - اسم أوضح: Get_Balance_Main_Account
   - شرح: جلب رصيد الحساب الرئيسي.
   - نوع العملية: مالية
   - طبقة CQRS: Query

28. **Get_Bl_Vst_Fnc**
   - اسم أوضح: Get_Balance_Visit
   - شرح: جلب رصيد زيارة أو عملية مؤقتة (اسم غير واضح، يرجى تأكيد السياق).
   - نوع العملية: مالية/تقارير
   - طبقة CQRS: Query

29. **Get_Blnc_Cst_Lmt_Fnc**
   - اسم أوضح: Get_Balance_Cost_Limit
   - شرح: جلب الحد الأعلى/الأدنى لرصيد تكلفة عنصر أو حساب.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

---

## 17. دوال الدُفعات والمخزون

30. **Get_Col_Batch_Nm**
   - اسم أوضح: Get_Column_Batch_Name
   - شرح: جلب اسم عمود الدفعة في جدول أو تقرير.
   - نوع العملية: مخزنية/تقارير
   - طبقة CQRS: Application

31. **Get_Comp_Itm_Qty**
   - اسم أوضح: Get_Compound_Item_Quantity
   - شرح: جلب كمية الأصناف المركبة أو المجمعة.
   - نوع العملية: مخزنية/تجميع
   - طبقة CQRS: Query

32. **Get_Cost_Exp_Batch**
   - اسم أوضح: Get_Cost_Expired_Batch
   - شرح: حساب أو جلب تكلفة الدُفعات المنتهية الصلاحية.
   - نوع العملية: مخزنية/مالية
   - طبقة CQRS: Query

33. **Get_Cost_Fifo**
   - اسم أوضح: Get_Cost_FIFO
   - شرح: حساب تكلفة الصنف بطريقة "الوارد أولاً يصرف أولاً" (FIFO).
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Domain

---

## 18. دوال العملاء والمخزون XML

34. **Get_Cstmr_Blnc_Xml**
   - اسم أوضح: Get_Customer_Balance_Xml
   - شرح: جلب رصيد العملاء بتنسيق XML (للاستخدام في تقارير أو تكاملات).
   - نوع العملية: مالية/عملاء
   - طبقة CQRS: Query

---

## 19. دوال المتوسط المرجح والفروع

35. **Get_Grand_Wtavg_Brn**
   - اسم أوضح: Get_Grand_Weighted_Average_Branch
   - شرح: جلب متوسط التكلفة المرجح على مستوى الفروع.
   - نوع العملية: مالية/مخزنية/فروع
   - طبقة CQRS: Query

---

## 20. دوال الكميات المتاحة والتحويلات للمخزون

36. **Get_Icode_AvlQty_Priv**
   - اسم أوضح: Get_ItemCode_AvailableQuantity_Private
   - شرح: جلب الكمية المتاحة لصنف محدد بخصوصية معينة (مثل صلاحية المستخدم).
   - نوع العملية: مخزنية/صلاحيات
   - طبقة CQRS: Query

37. **Get_Icode_Avlqty**
   - اسم أوضح: Get_ItemCode_AvailableQuantity
   - شرح: جلب الكمية المتاحة لصنف محدد في المخزون.
   - نوع العملية: مخزنية
   - طبقة CQRS: Query

38. **Get_Icode_Ordrqty**
   - اسم أوضح: Get_ItemCode_OrderQuantity
   - شرح: جلب كمية الطلب المحجوزة لصنف محدد.
   - نوع العملية: مخزنية/مشتريات
   - طبقة CQRS: Query

39. **Get_Icode_Qty**
   - اسم أوضح: Get_ItemCode_Quantity
   - شرح: جلب الكمية الإجمالية لصنف معين.
   - نوع العملية: مخزنية
   - طبقة CQRS: Query

40. **Get_Icode_Trns_Qty_Not_Receved**
   - اسم أوضح: Get_ItemCode_Transferred_Quantity_Not_Received
   - شرح: جلب كمية الأصناف المحوّلة والتي لم تُستلم بعد.
   - نوع العملية: مخزنية/تحويلات
   - طبقة CQRS: Query

41. **Get_Icode_Whgcode_Avlqty**
   - اسم أوضح: Get_ItemCode_WarehouseCode_AvailableQuantity
   - شرح: جلب الكمية المتاحة لصنف محدد في مستودع معين.
   - نوع العملية: مخزنية/مستودعات
   - طبقة CQRS: Query

---

## 21. دوال نشاط الأصناف

42. **Get_Items_ACtivity**
   - اسم أوضح: Get_Items_Activity
   - شرح: جلب نشاط أو حركة الأصناف (مبيعات، شراء، تحويلات، إلخ).
   - نوع العملية: مخزنية/تقارير
   - طبقة CQRS: Query

43. **Get_Itm_Age**
   - اسم أوضح: Get_Item_Age
   - شرح: جلب عمر الصنف في المخزون (مدة بقائه منذ الشراء أو الإدخال).
   - نوع العملية: مخزنية/تحليلية
   - طبقة CQRS: Query

44. **Get_Itm_Batch_Sq_Auto**
   - اسم أوضح: Get_Item_Batch_Sequence_Auto
   - شرح: توليد تسلسل تلقائي لتشغيلات (دفعات) الصنف.
   - نوع العملية: مخزنية/تسلسل
   - طبقة CQRS: Application

---

## 22. دوال التحليل المالي للأصناف

45. **Get_Itm_Cost_TnOvr_Ratio**
   - اسم أوضح: Get_Item_Cost_Turnover_Ratio
   - شرح: حساب معدل دوران تكلفة الصنف (مؤشر مالي مهم).
   - نوع العملية: مالية/تحليلية
   - طبقة CQRS: Application

46. **Get_Itm_Profit_Loss**
   - اسم أوضح: Get_Item_Profit_Loss
   - شرح: حساب أرباح أو خسائر الصنف بناءً على بيانات البيع والشراء.
   - نوع العملية: مالية/تحليلية
   - طبقة CQRS: Application

47. **Get_Itm_Qty_TnOvr_Ratio**
   - اسم أوضح: Get_Item_Quantity_Turnover_Ratio
   - شرح: حساب معدل دوران الكمية لصنف محدد.
   - نوع العملية: مخزنية/تحليلية
   - طبقة CQRS: Application

48. **Get_Itm_Sales_Age**
   - اسم أوضح: Get_Item_Sales_Age
   - شرح: جلب عمر الصنف بالنسبة لآخر عملية بيع.
   - نوع العملية: مبيعات/تحليلية
   - طبقة CQRS: Query

49. **Get_Itm_Sales_Tnovr_Ratio**
   - اسم أوضح: Get_Item_Sales_Turnover_Ratio
   - شرح: حساب معدل دوران المبيعات لصنف معين.
   - نوع العملية: مبيعات/تحليلية
   - طبقة CQRS: Application

50. **Get_Itm_Ser_Prc**
   - اسم أوضح: Get_Item_Serial_Price
   - شرح: جلب سعر الصنف حسب الرقم التسلسلي.
   - نوع العملية: مبيعات/تسعير
   - طبقة CQRS: Query

---

# توثيق دوال النظام (Functions) - الجزء 3

## 23. دوال تحليل العمليات المالية والمخزنية

51. **Get_Net_Pur_Prev_Year**
   - اسم أوضح: Get_Net_Purchase_Previous_Year
   - شرح: جلب صافي المشتريات للسنة السابقة (مقارنة سنوية).
   - نوع العملية: تحليل مالي/مشتريات
   - طبقة CQRS: Query

52. **Get_Net_Sales_Prev_Year**
   - اسم أوضح: Get_Net_Sales_Previous_Year
   - شرح: جلب صافي المبيعات للسنة السابقة (مقارنة سنوية).
   - نوع العملية: تحليل مالي/مبيعات
   - طبقة CQRS: Query

53. **Get_Op_Amtf**
   - اسم أوضح: Get_Open_Amount_Financial
   - شرح: جلب المبلغ الافتتاحي (قد يكون لحساب أو مخزون أو مركز تكلفة).
   - نوع العملية: مالية/افتتاحية
   - طبقة CQRS: Query

54. **Get_Out_Bill_Qty**
   - اسم أوضح: Get_Outstanding_Bill_Quantity
   - شرح: جلب كمية الفواتير المعلقة أو غير المسددة.
   - نوع العملية: مالية/مبيعات/مشتريات
   - طبقة CQRS: Query

55. **Get_Para_Rep**
   - اسم أوضح: Get_Parameter_Report
   - شرح: جلب معايير أو إعدادات مرتبطة بالتقارير.
   - نوع العملية: تقارير/إعدادات
   - طبقة CQRS: Application

56. **Get_Per_Sales_Inc_Icode_Prc**
   - اسم أوضح: Get_Percentage_Sales_Increment_ItemCode_Price
   - شرح: حساب نسبة زيادة المبيعات أو السعر لصنف محدد.
   - نوع العملية: تحليل مبيعات/تسعير
   - طبقة CQRS: Application

57. **Get_Post_Code_Inv**
   - اسم أوضح: Get_Posting_Code_Invoice
   - شرح: جلب رمز الترحيل الخاص بفواتير المبيعات أو المشتريات.
   - نوع العملية: مالية/تقارير
   - طبقة CQRS: Application

58. **Get_Pri_Cost**
   - اسم أوضح: Get_Primary_Cost
   - شرح: جلب التكلفة الأساسية لصنف أو عنصر.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

59. **Get_Pri_Cost_Fifo**
   - اسم أوضح: Get_Primary_Cost_FIFO
   - شرح: جلب التكلفة الأساسية بطريقة FIFO (الوارد أولاً يصرف أولاً).
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

60. **Get_Rplc_Spc_Txt_Fnc**
   - اسم أوضح: Get_Replace_Special_Text_Function
   - شرح: استبدال النصوص الخاصة أو الرموز في مستندات أو تقارير.
   - نوع العملية: تنسيقات/إعدادات
   - طبقة CQRS: Application

61. **Get_Rt_Amt_Fnc**
   - اسم أوضح: Get_Retained_Amount_Function
   - شرح: جلب المبالغ المحتجزة أو المؤجلة (قد تكون في العقود أو الفواتير).
   - نوع العملية: مالية/عقود
   - طبقة CQRS: Query

62. **Get_Sk**
   - اسم أوضح: Get_StockKeeping
   - شرح: جلب أو حساب رقم أو رمز التخزين لصنف أو عنصر.
   - نوع العملية: مخزنية/إدارية
   - طبقة CQRS: Application

63. **Get_Tr_Not_Rec_Qty**
   - اسم أوضح: Get_Transfer_Not_Received_Quantity
   - شرح: جلب كمية التحويلات التي لم يتم استلامها بعد.
   - نوع العملية: مخزنية/تحويلات
   - طبقة CQRS: Query

64. **Get_Tr_Qty_Fnc**
   - اسم أوضح: Get_Transfer_Quantity_Function
   - شرح: جلب كمية التحويلات المنفذة على صنف أو حساب.
   - نوع العملية: مخزنية/تحويلات
   - طبقة CQRS: Query

65. **Get_Type_Nm_Fnc**
   - اسم أوضح: Get_Type_Name_Function
   - شرح: جلب اسم نوع معين حسب الكود أو النوع (مثلاً نوع عملية أو مستند).
   - نوع العملية: تصنيفية/إدارية
   - طبقة CQRS: Application

66. **Get_Wcode_Revaluate_Cost**
   - اسم أوضح: Get_WarehouseCode_Revaluate_Cost
   - شرح: جلب تكلفة إعادة تقييم المستودع أو الصنف.
   - نوع العملية: مخزنية/مالية
   - طبقة CQRS: Domain

67. **Get_op_amt**
   - اسم أوضح: Get_Open_Amount
   - شرح: جلب المبلغ الافتتاحي (مكرر/بديل لـ Get_Op_Amtf).
   - نوع العملية: مالية/افتتاحية
   - طبقة CQRS: Query

68. **Gnr_Chk_Doc_No_By_Doc_Srl_Fnc**
   - اسم أوضح: Generate_Check_Document_Number_By_Serial_Function
   - شرح: توليد رقم مستند بناءً على الرقم التسلسلي.
   - نوع العملية: إدارية/تسلسل
   - طبقة CQRS: Application

---

## 24. دوال نظام IAS (غالباً إعدادات أو عمليات خاصة)

69. **IAS_Get_Prompt_By_Fld**
   - اسم أوضح: IAS_Get_Prompt_By_Field
   - شرح: جلب التلميح أو النص الإرشادي لحقل معين في النظام.
   - نوع العملية: إعدادات/واجهات
   - طبقة CQRS: Application

70. **IAs_Get_Purchase_Qty**
   - اسم أوضح: IAS_Get_Purchase_Quantity
   - شرح: جلب كمية المشتريات لصنف أو عملية محددة.
   - نوع العملية: مشتريات/مخزنية
   - طبقة CQRS: Query

---

## 25. دوال العدد والتحقق

71. **IS_NUMBER**
   - اسم أوضح: Is_Number
   - شرح: التحقق إذا كانت القيمة رقمية أم لا.
   - نوع العملية: تحقق/تنسيقات
   - طبقة CQRS: Application

---

## 26. دوال التقارير بالعربي (عنوان/تسمية)

72. **Ias_Ar_Get_Rep_Label**
   - اسم أوضح: IAS_Arabic_Get_Report_Label
   - شرح: جلب تسمية تقرير باللغة العربية.
   - نوع العملية: تقارير/واجهات
   - طبقة CQRS: Application

73. **Ias_Ar_Get_Rep_Title**
   - اسم أوضح: IAS_Arabic_Get_Report_Title
   - شرح: جلب عنوان تقرير باللغة العربية.
   - نوع العملية: تقارير/واجهات
   - طبقة CQRS: Application

74. **Ias_Ar_Get_V_Name**
   - اسم أوضح: IAS_Arabic_Get_Voucher_Name
   - شرح: جلب اسم مستند أو سند باللغة العربية.
   - نوع العملية: تقارير/واجهات
   - طبقة CQRS: Application

---

## 27. دوال التحقق والمعاملات الخاصة

75. **Ias_Check_Light_Trans_Fnc**
   - اسم أوضح: IAS_Check_Light_Transaction_Function
   - شرح: التحقق من معاملات خفيفة أو سريعة في النظام (قد تكون معاملات اختبارية أو مؤقتة).
   - نوع العملية: تحقق/إدارية
   - طبقة CQRS: Application

76. **Ias_Chk_Brn_Up_Del_Fnc**
   - اسم أوضح: IAS_Check_Branch_Up_Delete_Function
   - شرح: التحقق من إمكانية حذف فرع أو عملية مرتبطة بفروع.
   - نوع العملية: تحقق/إدارية
   - طبقة CQRS: Application

77. **Ias_Chk_Lght_Doc_Brn_Fnc**
   - اسم أوضح: IAS_Check_Light_Document_Branch_Function
   - شرح: التحقق من مستندات فرعية صغيرة أو ذات حركة خفيفة.
   - نوع العملية: تحقق/إدارية
   - طبقة CQRS: Application

78. **Ias_Chk_Trns_Not_Pst_Fnc**
   - اسم أوضح: IAS_Check_Transaction_Not_Posted_Function
   - شرح: التحقق من وجود عمليات لم يتم ترحيلها بعد.
   - نوع العملية: تحقق/مالية
   - طبقة CQRS: Application

79. **Ias_Get_Doc_Del_Fnc**
   - اسم أوضح: IAS_Get_Document_Delete_Function
   - شرح: جلب أو تنفيذ عملية حذف مستند معين.
   - نوع العملية: إدارية/حذف
   - طبقة CQRS: Application

80. **Ias_Get_Enc_Pass_fnc**
   - اسم أوضح: IAS_Get_Encrypted_Password_Function
   - شرح: جلب أو توليد كلمة مرور مشفرة.
   - نوع العملية: أمان/إعدادات
   - طبقة CQRS: Application

---

# توثيق دوال النظام (Functions) - الجزء 4

## 28. دوال الحركات المالية والمخزنية الخاصة بنظام IAS

81. **Ias_Get_Icode_Reserve_Qty**
   - اسم أوضح: IAS_Get_ItemCode_Reserve_Quantity
   - شرح: جلب كمية الأصناف المحجوزة (غير متاحة للبيع أو الصرف) لصنف محدد.
   - نوع العملية: مخزنية/حجز
   - طبقة CQRS: Query

82. **Ias_Get_Itm_Barcode_Fnc**
   - اسم أوضح: IAS_Get_Item_Barcode_Function
   - شرح: جلب أو توليد باركود لصنف معين.
   - نوع العملية: مخزنية/تعريفية
   - طبقة CQRS: Application

83. **Ias_Get_OB_AC_CC_FNC**
   - اسم أوضح: IAS_Get_OpenBalance_Account_CostCenter_Function
   - شرح: جلب الرصيد الافتتاحي لحساب مرتبط بمركز تكلفة.
   - نوع العملية: مالية/افتتاحية/تكاليف
   - طبقة CQRS: Query

84. **Ias_Get_OB_AC_CC_PJ_FNC**
   - اسم أوضح: IAS_Get_OpenBalance_Account_CostCenter_Project_Function
   - شرح: جلب الرصيد الافتتاحي لحساب مرتبط بمركز تكلفة ومشروع.
   - نوع العملية: مالية/افتتاحية/مشاريع
   - طبقة CQRS: Query

85. **Ias_Get_OB_AC_FNC**
   - اسم أوضح: IAS_Get_OpenBalance_Account_Function
   - شرح: جلب الرصيد الافتتاحي لحساب محدد.
   - نوع العملية: مالية/افتتاحية
   - طبقة CQRS: Query

86. **Ias_Get_Sale_Age**
   - اسم أوضح: IAS_Get_Sale_Age
   - شرح: جلب عمر الصنف بالنسبة لآخر عملية بيع تمت عليه.
   - نوع العملية: مبيعات/تحليلية
   - طبقة CQRS: Query

87. **Ias_Get_Sale_Age_Batch**
   - اسم أوضح: IAS_Get_Sale_Age_Batch
   - شرح: جلب عمر مبيعات دفعة معينة من صنف.
   - نوع العملية: مبيعات/تحليلية/دفعات
   - طبقة CQRS: Query

88. **Ias_Get_Sales_Year_Fnc**
   - اسم أوضح: IAS_Get_Sales_Year_Function
   - شرح: جلب حركة أو بيانات مبيعات صنف خلال سنة معينة.
   - نوع العملية: مبيعات/تقارير
   - طبقة CQRS: Query

89. **Ias_Inv_Doctype_Nm**
   - اسم أوضح: IAS_Inventory_DocumentType_Name
   - شرح: جلب اسم نوع مستند مخزني حسب الكود.
   - نوع العملية: مخزنية/تصنيفية
   - طبقة CQRS: Application

---

## 29. دوال المخزون - تحليل وتقييم الأصناف

90. **Inv_Get_Avg_Itm_Cst_Fnc**
   - اسم أوضح: Inventory_Get_Average_Item_Cost_Function
   - شرح: حساب أو جلب متوسط تكلفة الصنف في المخزون.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

91. **Inv_Get_Itm_Batch_Auto_Sq_Fnc**
   - اسم أوضح: Inventory_Get_Item_Batch_Auto_Sequence_Function
   - شرح: توليد تسلسل تلقائي لتشغيلات الصنف.
   - نوع العملية: مخزنية/تسلسل
   - طبقة CQRS: Application

92. **Inv_Get_Itm_Prmry_Cst_Fnc**
   - اسم أوضح: Inventory_Get_Item_Primary_Cost_Function
   - شرح: جلب التكلفة الأساسية لصنف محدد.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

93. **Inv_Get_Itm_QR_Code_Mthd_No**
   - اسم أوضح: Inventory_Get_Item_QR_Code_Method_Number
   - شرح: جلب أو توليد رقم طريقة QR للصنف.
   - نوع العملية: مخزنية/تعريفية
   - طبقة CQRS: Application

94. **Inv_Get_Itm_Wtavg_Fnc**
   - اسم أوضح: Inventory_Get_Item_WeightedAverage_Function
   - شرح: حساب متوسط التكلفة المرجح لصنف في المخزون.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

95. **Inv_Get_Lst_Itm_Prmry_Cst_Fnc**
   - اسم أوضح: Inventory_Get_Last_Item_Primary_Cost_Function
   - شرح: جلب آخر تكلفة أساسية مسجلة للصنف.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

96. **Inv_Get_Lst_Itm_Wtavg_Fnc**
   - اسم أوضح: Inventory_Get_Last_Item_WeightedAverage_Function
   - شرح: جلب آخر متوسط تكلفة مرجح للصنف.
   - نوع العملية: مالية/مخزنية
   - طبقة CQRS: Query

97. **Inv_Get_Wcode_Cost**
   - اسم أوضح: Inventory_Get_WarehouseCode_Cost
   - شرح: جلب تكلفة الصنف في مستودع محدد.
   - نوع العملية: مالية/مخزنية/مستودعات
   - طبقة CQRS: Query

---

## 30. دوال التسعير والمشتريات

98. **Last_Incoming_Price**
   - اسم أوضح: Last_Incoming_Price
   - شرح: جلب آخر سعر شراء لصنف معين.
   - نوع العملية: مشتريات/تسعير
   - طبقة CQRS: Query

99. **Last_Incoming_Price_To_Date**
   - اسم أوضح: Last_Incoming_Price_To_Date
   - شرح: جلب آخر سعر شراء لصنف حتى تاريخ معين.
   - نوع العملية: مشتريات/تسعير/تاريخي
   - طبقة CQRS: Query

100. **Last_Purchase_Price**
    - اسم أوضح: Last_Purchase_Price
    - شرح: جلب آخر سعر شراء مسجل لصنف.
    - نوع العملية: مشتريات/تسعير
    - طبقة CQRS: Query

101. **Last_Sale_Price**
    - اسم أوضح: Last_Sale_Price
    - شرح: جلب آخر سعر بيع لصنف محدد.
    - نوع العملية: مبيعات/تسعير
    - طبقة CQRS: Query

---

## 31. دوال عامة وتحويلات وقيم افتراضية

102. **NVL22**
    - اسم أوضح: NVL22
    - شرح: دالة عامة لإرجاع قيمة بديلة إذا كانت القيمة الأصلية فارغة (مشابهة لدوال NVL/ISNULL).
    - نوع العملية: عامة/تنسيقات
    - طبقة CQRS: Application

---

## 32. دوال الأرصدة الافتتاحية للمخزون

103. **Open_Stock**
    - اسم أوضح: Open_Stock
    - شرح: جلب رصيد المخزون الافتتاحي لصنف أو مستودع.
    - نوع العملية: مخزنية/افتتاحية
    - طبقة CQRS: Query

104. **Open_Stock_Exp_Bat**
    - اسم أوضح: Open_Stock_Expired_Batch
    - شرح: جلب رصيد المخزون الافتتاحي للدفعات المنتهية الصلاحية.
    - نوع العملية: مخزنية/افتتاحية/دفعات
    - طبقة CQRS: Query

---

## 33. دوال التزامن والتحويلات

105. **Sync_Doc_To_Tra**
    - اسم أوضح: Sync_Document_To_Transaction
    - شرح: مزامنة مستند مع معاملة أو عملية في النظام.
    - نوع العملية: إدارية/تكامل
    - طبقة CQRS: Application

---

## 34. دوال التفقيط (كتابة الأرقام نصيًا)

106. **Tafkeet**
    - اسم أوضح: Tafkeet
    - شرح: تحويل رقم إلى نص مكتوب (تفقيط) بالعربية.
    - نوع العملية: عامة/تنسيقات
    - طبقة CQRS: Application

107. **Tafkeet_E**
    - اسم أوضح: Tafkeet_English
    - شرح: تحويل رقم إلى نص مكتوب بالإنجليزية.
    - نوع العملية: عامة/تنسيقات
    - طبقة CQRS: Application

108. **Tafkeet_F**
    - اسم أوضح: Tafkeet_French
    - شرح: تحويل رقم إلى نص مكتوب بالفرنسية.
    - نوع العملية: عامة/تنسيقات
    - طبقة CQRS: Application

109. **Tafkeet_a**
    - اسم أوضح: Tafkeet_a
    - شرح: تحويل رقم إلى نص مكتوب بطريقة خاصة (قد تكون لهجة محلية أو تنسيق خاص).
    - نوع العملية: عامة/تنسيقات
    - طبقة CQRS: Application

---

## 35. دوال التحقق الخاصة (أنظمة فرعية أو عمليات خاصة)

110. **YS_CHK_SPCL_CHR_FNC**
    - اسم أوضح: YS_Check_Special_Character_Function
    - شرح: التحقق من وجود رموز أو أحرف خاصة في القيم المدخلة.
    - نوع العملية: تحقق/تنسيقات
    - طبقة CQRS: Application

---

## 36. دوال تحليلية خاصة بالسنة المالية

111. **Yr_Get_Icode_Avlqty_Fnc**
    - اسم أوضح: Year_Get_ItemCode_AvailableQuantity_Function
    - شرح: جلب الكمية المتاحة لصنف في سنة مالية محددة.
    - نوع العملية: مخزنية/تحليلية/سنوية
    - طبقة CQRS: Query

112. **Yr_Get_Itm_Age_Fnc**
    - اسم أوضح: Year_Get_Item_Age_Function
    - شرح: جلب عمر صنف في المخزون في سنة مالية محددة.
    - نوع العملية: مخزنية/تحليلية/سنوية
    - طبقة CQRS: Query

113. **Yr_Open_Stock_Fnc**
    - اسم أوضح: Year_Open_Stock_Function
    - شرح: جلب رصيد المخزون الافتتاحي لسنة مالية معينة.
    - نوع العملية: مخزنية/افتتاحية/سنوية
    - طبقة CQRS: Query

---

## 37. دوال الذمم والتحليل المالي للعملاء

114. **Ys_Get_Blnc_Ac_Dtl_Fnc**
    - اسم أوضح: YS_Get_Balance_Account_Detail_Function
    - شرح: جلب تفاصيل رصيد حساب لعميل أو جهة محددة.
    - نوع العملية: مالية/ذمم/تحليلية
    - طبقة CQRS: Query

---

