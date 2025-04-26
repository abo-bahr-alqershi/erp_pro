--------------------------------------------------------------
-- View 1: IAS_V_CHK_CSTTRNS
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_CSTTRNS" ("DOC_TYPE","C_CODE","A_CY","DOC_NO","JV_TYPE","DOC_SER","CC_CODE","RCRD_NO") AS 
SELECT 1 doc_type,D.c_code c_code,a_cy a_cy,D.j_doc_no doc_no,D.jv_type jv_type ,
        M.j_ser doc_ser,D.cc_code cc_code,D.rcrd_no
   From master_journal_v M,detail_journal_v D ,Customer C
  where M.j_ser  = D.j_ser
    and D.a_code = C.c_a_code  
    and D.c_code   = C.c_code  
    and D.c_code Is Not Null
    and nvl(stand_by,0) = 0
 Minus
 Select doc_type,c_code,a_cy,doc_no,jv_type, 
        doc_ser,cc_code,rcrd_no 
   From ias_post_dtl
  where doc_type=1
    and c_code Is Not Null
;

--------------------------------------------------------------
-- View 2: IAS_V_CHK_VNDTRNS
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_VNDTRNS" ("DOC_TYPE","V_CODE","A_CY","J_DOC_NO","JV_TYPE","DOC_SER","CC_CODE","RCRD_NO") AS 
SELECT 1 doc_type,D.v_code v_code,a_cy,D.j_doc_no ,D.jv_type jv_type ,
        M.j_ser doc_ser,D.cc_code,D.rcrd_no
   From Master_journal_v M,Detail_journal_v D ,V_details C
  where M.j_ser  = D.j_ser
    and D.a_code = C.v_a_code  
    and D.v_code   = C.v_code  
    and D.v_code Is Not Null
    and nvl(stand_by,0) = 0
 Minus
 Select doc_type,v_code,a_cy,doc_no ,jv_type jv_type, 
        doc_ser,cc_code,rcrd_no 
   From ias_post_dtl
  where doc_type=1
    and v_code Is Not Null
;

--------------------------------------------------------------
-- View 3: IAS_V_SOQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_SOQTY" ("ORDER_NO","I_CODE","I_QTY") AS 
SELECT Order_detail.ORDER_NO, Order_detail.i_code, Sum(i_qty) i_qty
FROM  Order_detail 
GROUP BY Order_detail.Order_no, Order_detail.i_code
;

--------------------------------------------------------------
-- View 4: IAS_V_BSOQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_BSOQTY" ("SO_NO","I_CODE","I_QTY") AS 
SELECT so_no, IAS_BILL_DTL.i_code, sum(i_qty ) i_qty
 From IAS_BILL_DTL 
WHERE so_no Is Not Null
GROUP BY so_no, IAS_BILL_DTL.i_code
;

--------------------------------------------------------------
-- View 5: IAS_V_CTRANS
--------------------------------------------------------------
CREATE VIEW "IAS_V_CTRANS" ("C_CODE","A_CY") AS 
SELECT c_code,a_cy From ias_post_dtl 
               Where c_code Is Not Null 
               group by c_code,a_cy
;

--------------------------------------------------------------
-- View 6: IAS_V_ITEM_NOT_STORE
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITEM_NOT_STORE" ("I_CODE","W_CODE") AS 
SELECT i_code, w_code 
                From ( Select i_code , w_code 
                         From item_movement  
                        Minus
                        Select i_code ,
                               w_code 
                        From Ias_Itm_Wcode)
;

--------------------------------------------------------------
-- View 7: IAS_V_UPAVLQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_UPAVLQTY" ("I_CODE","W_CODE","AVLQTYMV") AS 
SELECT tb1.I_code I_code,tb1.w_code w_code ,tb1.avlqtyMV  From Ias_Itm_Wcode, 
          (Select item_movement.I_code,w_code, sum(In_out*(nvl(item_movement.p_qty,0)+nvl(item_movement.pf_qty,0))) avlqtyMV  
             From item_movement
            Group by item_movement.I_code,w_code) tb1
            where Ias_Itm_Wcode.I_code=tb1.I_code
              and Ias_Itm_Wcode.w_code=tb1.w_code
              and avlqtyMV  <> avl_qty
;

--------------------------------------------------------------
-- View 8: IAS_V_CHK_CPQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_CPQTY" ("I_CODE","W_CODE","CP_QTY") AS 
SELECT tb1.I_code I_code,tb1.w_code w_code ,tb1.Cp_qty  From Ias_Itm_Wcode, 
          (Select gr_detail.I_code,w_code, nvl(sum(cp_qty),0) Cp_qty
             From gr_detail
            Group by gr_detail.I_code,w_code) tb1
            where Ias_Itm_Wcode.I_Code=tb1.I_Code
              and Ias_Itm_Wcode.w_code=tb1.w_code
              and Cp_qty  <> avl_qty
;

--------------------------------------------------------------
-- View 9: IAS_V_SALE1
--------------------------------------------------------------
CREATE VIEW "IAS_V_SALE1" ("ORDER_NO","ORDER_DATE","C_CODE","I_CODE","I_NAME","ITM_UNT","I_QTY","I_PRICE","AMOUNT") AS 
SELECT a.Order_no,a.Order_date,a.c_code,b.i_code,c.i_name,b.Itm_Unt,b.i_qty,b.I_price, b.I_qty * b.I_price Amount From
					Sales_Order a,Order_detail b,Ias_Itm_Mst c 
					where	a.Order_no = b.Order_no and b.i_code = c.i_code
;

--------------------------------------------------------------
-- View 10: IAS_V_SALE2
--------------------------------------------------------------
CREATE VIEW "IAS_V_SALE2" ("ORDER_NO","ORDER_DATE","C_CODE","PROCESED","I_CODE","I_NAME","ITM_UNT","I_QTY","I_PRICE","AMOUNT") AS 
SELECT a.Order_no,a.Order_date,a.c_code,a.procesed ,b.i_code,c.i_name,b.Itm_Unt,b.i_qty,b.I_price, b.I_qty * b.I_price
				Amount From Sales_Order a,Order_detail b,Ias_Itm_Mst c where
				a.Order_no = b.Order_no and b.i_code = c.i_code
;

--------------------------------------------------------------
-- View 11: IAS_V_SALE3
--------------------------------------------------------------
CREATE VIEW "IAS_V_SALE3" ("ORDER_NO","ORDER_DATE","C_CODE","C_NAME","PROCESED"
,"ORDER_CUR","I_CODE","I_NAME","ITM_UNT","I_QTY","I_PRICE","DISC_AMT","AMOUNT") AS 
SELECT a.Order_no,a.Order_date,a.c_code,a.c_name,a.procesed,a.order_cur ,
                 b.i_code,c.i_name,b.Itm_Unt,b.i_qty,b.i_price, a.disc_amt,b.I_qty * b.i_price Amount 
            From Sales_Order a,Order_detail b,Ias_Itm_Mst c 
           Where a.Order_no = b.Order_no 
             and b.i_code = c.i_code
;

--------------------------------------------------------------
-- View 12: IAS_V_VTRANS
--------------------------------------------------------------
CREATE VIEW "IAS_V_VTRANS" ("V_CODE","A_CY") AS 
SELECT v_code,a_cy  
               From Ias_Post_Dtl Where v_code Is Not Null Group by v_code,a_cy
;

--------------------------------------------------------------
-- View 13: IAS_V_AC_LC_AMT
--------------------------------------------------------------
CREATE VIEW "IAS_V_AC_LC_AMT" ("A_CODE","A_CY","LC_NO","AMT","AMT_F","DR_AMT","CR_AMT","DR_AMT_F","CR_AMT_F") AS 
SELECT A_CODE,A_CY,LC_NO,SUM(AMT) AMT,SUM(AMT_F) AMT_F,SUM(DR_AMT) DR_AMT,
			SUM(CR_AMT) CR_AMT,SUM(DR_AMT_F) DR_AMT_F,SUM(CR_AMT_F) CR_AMT_F
			 From Ias_Post_Dtl 
			WHERE	LC_NO Is Not Null GROUP BY A_CODE,A_CY,LC_NO
;

--------------------------------------------------------------
-- View 14: IAS_V_AC_AMT
--------------------------------------------------------------
CREATE VIEW "IAS_V_AC_AMT" ("A_CODE","A_CY","AMT","AMT_F","DR_AMT","CR_AMT","DR_AMT_F","CR_AMT_F") AS 
SELECT A_CODE,A_CY,SUM(AMT) AMT,SUM(AMT_F) AMT_F ,SUM(DR_AMT) DR_AMT, 
			SUM(CR_AMT) CR_AMT, sum(DR_AMT_F) DR_AMT_F, sum(CR_AMT_F) CR_AMT_F
			FROM Ias_Post_Dtl 
			GROUP BY A_CODE,A_CY
;

--------------------------------------------------------------
-- View 15: IAS_V_BILL_AMT_ERR
--------------------------------------------------------------
CREATE VIEW "IAS_V_BILL_AMT_ERR" ("BILL_SER","BILL_AMT","DISC_AMT","OTHR_AMT") AS 
SELECT bill_ser,round(nvl(bill_amt,0),3) bill_amt,round(nvl(disc_amt,0),3) disc_amt,round(nvl(othr_amt,0),3) Othr_amt
   From IAS_BILL_MST
  where bill_ser Is Not Null
    and nvl(bill_post,0)=0
 Minus
 Select bill_ser,round(nvl(sum(nvl(i_qty,0)*nvl(i_price,0)),0),3),round(nvl(sum(nvl(i_qty,0)*nvl(dis_amt,0)),0),3) ,
        round(nvl(sum(nvl(i_qty,0)*nvl(othr_amt,0)),0),3)
   From IAS_BILL_DTL
  where bill_ser Is Not Null
    group by bill_ser
;

--------------------------------------------------------------
-- View 16: IAS_V_RT_BILL_AMT_ERR
--------------------------------------------------------------
CREATE VIEW "IAS_V_RT_BILL_AMT_ERR" ("RT_BILL_SER","RT_BILL_AMT","DISC_AMT","OTHR_AMT") AS 
SELECT Rt_bill_ser,round(nvl(bill_amt,0),3) bill_amt,round(nvl(disc_amt,0),3) disc_amt,round(nvl(othr_amt,0),3) Othr_amt
   From IAS_RT_BILL_MST
  where Rt_bill_ser Is Not Null
    and nvl(Rt_bill_post,0)=0
 Minus
 Select Rt_bill_ser,round(nvl(sum(nvl(i_qty,0)*nvl(i_price,0)),0),3),round(nvl(sum(nvl(i_qty,0)*nvl(dis_amt,0)),0),3) ,
        round(nvl(sum(nvl(i_qty,0)*nvl(othr_amt,0)),0),3)
   From IAS_RT_BILL_DTL
  where Rt_bill_ser Is Not Null
    group by Rt_bill_ser
;

--------------------------------------------------------------
-- View 17: IAS_V_PI_BILL_AMT_ERR
--------------------------------------------------------------
CREATE VIEW "IAS_V_PI_BILL_AMT_ERR" ("BILL_SER","BILL_AMT","DISC_AMT") AS 
SELECT bill_ser,round(nvl(bill_amt,0),3) bill_amt,round(nvl(disc_amt,0),3) disc_amt
   From Ias_Pi_Bill_Mst
  where bill_ser Is Not Null
    and nvl(bill_post,0)=0
 Minus
 Select bill_ser,round(nvl(sum(nvl(i_qty,0)*nvl(i_price,0)),0),3),round(nvl(sum(nvl(i_qty,0)*nvl(dis_amt,0)),0),3)
   From Ias_Pi_Bill_Dtl
  where bill_ser Is Not Null
    group by bill_ser
;

--------------------------------------------------------------
-- View 18: IAS_V_PR_BILL_AMT_ERR
--------------------------------------------------------------
CREATE VIEW "IAS_V_PR_BILL_AMT_ERR" ("RT_BILL_SER","RT_BILL_AMT","DISC_AMT") AS 
SELECT rt_bill_ser,round(nvl(bill_amt,0),3) bill_amt,round(nvl(disc_amt,0),3) disc_amt
   From Ias_Pr_Bill_Mst
  where rt_bill_ser Is Not Null
    and nvl(rt_bill_post,0)=0
 Minus
 Select rt_bill_ser,round(nvl(sum(nvl(i_qty,0)*nvl(i_price,0)),0),3),round(nvl(sum(nvl(i_qty,0)*nvl(dis_amt,0)),0),3)
   From Ias_Pr_Bill_Dtl
  where rt_bill_ser Is Not Null
    group by rt_bill_ser
;

--------------------------------------------------------------
-- View 19: IAS_V_OUTGOING_AMT_ERR
--------------------------------------------------------------
CREATE VIEW "IAS_V_OUTGOING_AMT_ERR" ("OUT_SER","OUT_AMT","EXP_AMT") AS 
SELECT out_ser,round(nvl(out_amt,0),3) out_amt,round(nvl(exp_amt,0),3) Exp_amt
   From Ias_Outgoing_Mst
  where out_ser Is Not Null
    and nvl(out_post,0)=0
    --and nvl(External_Post,0)=0
 Minus
 Select out_ser,round(nvl(sum(nvl(i_qty,0)*nvl(i_price,0)),0),3),round(nvl(sum(nvl(i_qty,0)*nvl(Exp_amt,0)),0),3)
   From Ias_Outgoing_Dtl outer
  where out_ser Is Not Null
    group by out_ser
;

--------------------------------------------------------------
-- View 20: IAS_V_CST_TRNS
--------------------------------------------------------------
CREATE VIEW "IAS_V_CST_TRNS" ("C_CODE","C_A_NAME","C_E_NAME","A_CY","DOC_NO","DOC_TYPE"
,"DOC_JV_TYPE","DOC_SER","DOC_DATE","DOC_DUE_DATE","DR_AMT","CR_AMT","DR_AMTF","CR_AMTF"
,"DOC_DESC","CASH_NO","CC_CODE","PJ_NO","W_CODE","COL_NO","REP_CODE","DOC_POST","REF_NO"
,"WO_NO","WO_SER","CHEQUE_VALUED","EXTERNAL_POST","RCRD_NO","AD_U_ID","UP_U_ID","AD_DATE"
,"UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR") AS 
SELECT D.Ac_Code_Dtl C_Code, C.C_A_Name, C.C_E_Name, D.A_Cy, D.Doc_No, D.Doc_Type,
																          D.Jv_Type, D.Doc_Ser, D.Doc_Date, D.Doc_Due_Date, D.Dr_Amt,
																          D.Cr_Amt, D.Dr_Amt_F, D.Cr_Amt_F, D.Doc_Desc, D.Cash_No, D.Cc_Code,
																          D.Pj_No, D.W_Code, D.Col_No, D.Rep_Code, D.Doc_Post, D.Ref_No,
																          D.Wo_No, D.Wo_Ser, D.Cheque_Valued, D.External_Post, D.Rcrd_No,
																          D.Ad_U_Id, D.Up_U_Id, D.Ad_Date, D.Up_Date, D.Cmp_No, D.Brn_No,
																          D.Brn_Year, D.Brn_Usr
																   From   Ias_Post_Dtl D,Customer C
																   Where  D.A_Code = C.C_A_Code 
																     And  D.Ac_Code_Dtl = C.C_Code
																     And  Ac_Dtl_Typ=3
;

--------------------------------------------------------------
-- View 21: IAS_V_VND_TRNS
--------------------------------------------------------------
CREATE VIEW "IAS_V_VND_TRNS" ("V_CODE","V_A_NAME","V_E_NAME","A_CY","DOC_NO","DOC_TYPE"
,"DOC_JV_TYPE","DOC_SER","DOC_DATE","DOC_DUE_DATE","DR_AMT","CR_AMT","DR_AMTF","CR_AMTF"
,"DOC_DESC","CASH_NO","CC_CODE","PJ_NO","W_CODE","DOC_POST","REF_NO","CHEQUE_VALUED"
,"EXTERNAL_POST","RCRD_NO","AD_U_ID","UP_U_ID","AD_DATE","UP_DATE","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR") AS 
SELECT 
		       D.V_CODE, V.V_A_NAME,V.V_E_NAME,D.A_CY, D.DOC_NO, 
               D.DOC_TYPE, D.JV_TYPE, D.DOC_SER, 
               D.DOC_DATE, D.DOC_DUE_DATE, D.DR_AMT, 
               D.CR_AMT, D.DR_AMT_F, D.CR_AMT_F, 
               D.DOC_DESC, D.CASH_NO, D.CC_CODE, 
               D.PJ_NO, D.W_CODE, D.DOC_POST, 
               D.REF_NO, D.CHEQUE_VALUED, D.EXTERNAL_POST, 
               D.RCRD_NO, D.AD_U_ID, D.UP_U_ID, 
               D.AD_DATE, D.UP_DATE, D.CMP_NO, 
               D.BRN_NO, D.BRN_YEAR,D.BRN_USR
          From IAS_POST_DTL D, V_DETAILS V
            WHERE D.A_CODE = V.V_A_CODE
             AND D.V_CODE = V.V_CODE
;

--------------------------------------------------------------
-- View 22: IAS_V_DIFF_WTAVG_ITM
--------------------------------------------------------------
CREATE VIEW "IAS_V_DIFF_WTAVG_ITM" ("I_CODE","WT_AVG_AFTER") AS 
SELECT I_Code,
           Round(Avg(Nvl(Wt_Avg_After, 0)) Keep (Dense_Rank Last Order By Rec_No),(Select
 Stkcost_Fraction From Ias_Para_Inv Where Rownum <= 1 )) Wt_Avg_After 
    From Gr_Detail
    Where Rec_No= Rec_No*1
    Group By I_Code
      Minus
    Select I_Code, 
           Round(Nvl(I_Cwtavg, 0), (Select Stkcost_Fraction From Ias_Para_Inv Where Rownum <= 1 ))  I_Cwtavg
    From Ias_Itm_Mst
;

--------------------------------------------------------------
-- View 23: IAS_V_DIFF_WTAVG_WCODE_ITM
--------------------------------------------------------------
CREATE VIEW "IAS_V_DIFF_WTAVG_WCODE_ITM" ("I_CODE","W_CODE","WT_AVG_AFTER") AS 
SELECT I_Code,
           W_Code,
           Round(Avg(Nvl(Wt_Avg_After, 0)) Keep (Dense_Rank Last Order By Rec_No),(Select
 Stkcost_Fraction From Ias_Para_Inv Where Rownum <= 1 )) Wt_Avg_After 
    From Gr_Detail
    Where Rec_No  =Rec_No*1
    Group By I_Code ,W_Code
      Minus
    Select I_Code  ,
           W_Code  , 
           Round(Nvl(I_Cwtavg, 0), (Select Stkcost_Fraction From Ias_Para_Inv Where Rownum <= 1 )) I_Cwtavg 
    From Ias_Itm_Wcode
;

--------------------------------------------------------------
-- View 24: IAS_V_DIFF_WTAVG_WHGCODE_ITM
--------------------------------------------------------------
CREATE VIEW "IAS_V_DIFF_WTAVG_WHGCODE_ITM" ("I_CODE","WHG_CODE","WT_AVG_AFTER") AS 
SELECT Gr.I_Code,
           Gr.Whg_Code,
           Gr.Wt_Avg_After From (
        Select I_Code,
               Whg_Code,
               Round(Avg(Nvl(Wt_Avg_After, 0)) Keep (Dense_Rank Last Order By Rec_No)
,(Select Stkcost_Fraction From Ias_Para_Inv Where Rownum <= 1)) Wt_Avg_After 
    From Gr_Detail
      Where Rec_No = Rec_No*1
       Group By I_Code ,Whg_Code ) Gr ,
    (
    Select Distinct I_Code,
                    Whg_Code, 
                    Round(Nvl(I_Cwtavg, 0), (Select Stkcost_Fraction From Ias_Para_Inv Where Rownum <= 1 )) Wt_Avg_After
     From Ias_Itm_Wcode ) Wcode
    Where Gr.I_Code        = Wcode.I_Code 
    And   Gr.Whg_Code      = Wcode.Whg_Code 
    And   Gr.Wt_Avg_After <> Wcode.Wt_Avg_After
;

--------------------------------------------------------------
-- View 25: IAS_V_CHK_COMP_DATA
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_COMP_DATA" ("I_CODE","DOC_SEQUENCE","STK_COST") AS 
SELECT i_code,doc_sequence,nvl(stk_cost,0) From Ias_Bill_Dtl
           Where nvl(Service_Item,0)<>1
           Minus
          Select i_code,doc_sequence,nvl(stk_cost,0) From Item_Movement
           where doc_type=1
;

--------------------------------------------------------------
-- View 26: IAS_V_CHK_POST
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_POST" ("DOC_TYPE","JV_TYPE","DOC_NO","W_CODE","CC_CODE","DOC_SER") AS 
SELECT 1 doc_type,jv_type,j_doc_no doc_no,0 w_code,0 cc_code,j_ser doc_ser  
   From master_journal_v 
  where nvl(j_post,0)=1
    and nvl(External_Post,0) = 0
 Minus
 Select doc_type,jv_type,doc_no,0 w_code,0 cc_code,doc_ser
  From Ias_Post_Mst 
 where doc_type = 1
   and doc_post = 1
;

--------------------------------------------------------------
-- View 27: IAS_V_CHK_ADJ_INSTLL_AR
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_ADJ_INSTLL_AR" ("ADJ_AMT","DOC_SER","I_NO","C_CODE","RCRD_NO","I_PY") AS 
SELECT nvl(Sum(nvl(PAID_AMT_DOC,0)),0) Adj_amt,doc_ser_ref doc_ser,i_no,c_code,nvl(rcrd_no,0) Rcrd_no,nvl(i_py,0) i_py 
 From IAS_ADJST_INSTALLMENT_DTL
 group by doc_ser_ref,i_no,c_code,nvl(rcrd_no,0),nvl(i_py,0)
 minus
Select nvl(adj_amt,0),bill_ser,i_no,c_code,nvl(rcrd_no,0),nvl(i_py,0)  
  From Installment
;

--------------------------------------------------------------
-- View 28: IAS_V_CHK_ADJ_INSTLL_AP
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_ADJ_INSTLL_AP" ("ADJ_AMT","DOC_SER","I_NO","V_CODE","RCRD_NO","I_PY") AS 
SELECT nvl(Sum(nvl(PAID_AMT_DOC,0)),0) Adj_amt,doc_ser_ref doc_ser,i_no,v_code,nvl(rcrd_no,0) Rcrd_no,nvl(i_py,0) i_py 
 From  IAS_ADJST_INSTALLMENT_AP_DTL
 Group by doc_ser_ref,i_no,v_code,nvl(rcrd_no,0),nvl(i_py,0)
 Minus
Select nvl(adj_amt,0),bill_ser,i_no,v_code,nvl(rcrd_no,0),nvl(i_py,0)  
  From Ias_Installment_PI
;

--------------------------------------------------------------
-- View 29: IAS_V_DOCTYP_USR
--------------------------------------------------------------
CREATE VIEW "IAS_V_DOCTYP_USR" ("CNT","DOC_TYPE","U_ID") AS 
SELECT COUNT(1) ,DOC_TYPE  , AD_U_ID 
  FROM IAS_POST_MST
WHERE AD_U_ID IS NOT NULL AND DOC_TYPE <> 0 
GROUP BY  DOC_TYPE,AD_U_ID
ORDER BY AD_U_ID,DOC_TYPE
;

--------------------------------------------------------------
-- View 30: IAS_V_NY_OPEN_BAL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_OPEN_BAL" ("A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB","AC_DTL_TYP"
,"A_CY","CC_CODE","FROM_CC_CODE","LC_NO","PJ_NO","ACTV_NO","REP_CODE","J_AMT","J_AMT_F"
,"AC_RATE","VERIFY","OB_PY","COL_NO","DOC_SEQUENCE","EXTERNAL_POST","F_BRN_NO"
,"VALUE_DATE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB","AC_DTL_TYP","A_CY","CC_CODE"
,"FROM_CC_CODE","LC_NO","PJ_NO","ACTV_NO","REP_CODE","J_AMT","J_AMT_F","AC_RATE","VERIFY"
,"OB_PY","COL_NO","DOC_SEQUENCE","EXTERNAL_POST","F_BRN_NO","VALUE_DATE","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","PR_REP"
,"AD_TRMNL_NM","UP_TRMNL_NM" From open_bal
;

--------------------------------------------------------------
-- View 31: IAS_V_NY_IAS_ITM_MST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ITM_MST" ("I_CODE","I_NAME","I_E_NAME","G_CODE"
,"GRP_CLASS_CODE","MNG_CODE","SUBG_CODE","ITEM_SIZE","ITEM_TYPE","PRIMARY_COST"
,"I_CWTAVG","I_DESC","ALTER_CODE","MANF_CODE","BLOCKED","INACTIVE","INACTIVE_RES"
,"INACTIVE_DATE","INACTIVE_U_ID","SERVICE_ITM","CASH_SALE","NO_RETURN_SALE"
,"RETURN_PERIOD","KIT_ITM","USE_EXP_DATE","USE_BATCH_NO","USE_SERIALNO","USE_ATTCH"
,"VAT_TYPE","VAT_PER","ALLOW_DISC","DISC_PER","ALLOW_DISC_PI","REST_ITM","DISC_PER_PI"
,"ALLOW_FREE_QTY","FREE_QTY_PER","USE_QTY_FRACTION","UNDER_SELLING","GROUP_NO","ILEV_NO"
,"I_IMG","DAY_ITM_EXPIRE","MIN_LMT_COST_PER","MAX_LMT_COST_PER","FIELD1","FIELD2"
,"FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","ASSISTANT_NO"
,"DETAIL_NO","LENGTH_ITM","WIDTH_ITM","HEIGHT_ITM","SIZE_ITM","AREA_ITM","WEIGHT_ITM"
,"SEASON_ITM","ORE_ITM","MARK_ITM","COMPANY_ITM","COUNTRY_ITM","INCOME_DATE"
,"REQUIREMENT","ITEM_STORE","ASSETS","HAS_COMM","COMM_TYPE","COMM_AMT","ACTIVITY_NO"
,"V_CODE","VNDR_A_CY","VNDR_PRICE","VNDR_I_CODE","HOT_KEY","LOW_LMT_PRNT_FRST"
,"LOW_LMT_PRNT_SCND","LOW_LMT_APP_REQ_ATTCH","LOW_LMT_NOT_APP_REQ_ATTCH","IMP_XLS"
,"DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF","WEIGHTED","BALANCE_NO"
,"RET_ITM_BEFOR_EXP_PRD","MSUR_UNT_REP","PI_BILL_NO","USE_GRANT","GRANT_PERIOD"
,"ITM_COLOR","ITM_MEASURE","USE_WEIGHT","CONN_ITM_SO_INC","LNK_BRCHR","LNK_YOUTUBE"
,"USE_EMP_FLG","ALTR_MLT_FLG","I_F_DESC","REST_ITM_COMBO","USED_ITM","MRP_ITM"
,"MRP_ITM_CLSS","CST_PER","PRFT_MRGN_PRCNT","CHK_AVL_QTY_IN_RES","FOOD_GRP_NO"
,"USE_AUTO_PST_RMS_DATA_TO_INV","HPS_ITM","GNR_ITM_FLG","PRCDR_TYP","HSN_CODE"
,"CST_STANDR","CST_LAST_PROD","ITM_ORDR_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM","SHRT_ITM_L_NM","SHRT_ITM_F_NM"
,"ITM_MIN_QTY","ITM_MAX_QTY") AS 
SELECT "I_CODE","I_NAME","I_E_NAME","G_CODE","GRP_CLASS_CODE","MNG_CODE","SUBG_CODE"
,"ITEM_SIZE","ITEM_TYPE","PRIMARY_COST","I_CWTAVG","I_DESC","ALTER_CODE","MANF_CODE"
,"BLOCKED","INACTIVE","INACTIVE_RES","INACTIVE_DATE","INACTIVE_U_ID","SERVICE_ITM"
,"CASH_SALE","NO_RETURN_SALE","RETURN_PERIOD","KIT_ITM","USE_EXP_DATE","USE_BATCH_NO"
,"USE_SERIALNO","USE_ATTCH","VAT_TYPE","VAT_PER","ALLOW_DISC","DISC_PER","ALLOW_DISC_PI"
,"REST_ITM","DISC_PER_PI","ALLOW_FREE_QTY","FREE_QTY_PER","USE_QTY_FRACTION"
,"UNDER_SELLING","GROUP_NO","ILEV_NO","I_IMG","DAY_ITM_EXPIRE","MIN_LMT_COST_PER"
,"MAX_LMT_COST_PER","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7"
,"FIELD8","FIELD9","FIELD10","ASSISTANT_NO","DETAIL_NO","LENGTH_ITM","WIDTH_ITM"
,"HEIGHT_ITM","SIZE_ITM","AREA_ITM","WEIGHT_ITM","SEASON_ITM","ORE_ITM","MARK_ITM"
,"COMPANY_ITM","COUNTRY_ITM","INCOME_DATE","REQUIREMENT","ITEM_STORE","ASSETS","HAS_COMM"
,"COMM_TYPE","COMM_AMT","ACTIVITY_NO","V_CODE","VNDR_A_CY","VNDR_PRICE","VNDR_I_CODE"
,"HOT_KEY","LOW_LMT_PRNT_FRST","LOW_LMT_PRNT_SCND","LOW_LMT_APP_REQ_ATTCH"
,"LOW_LMT_NOT_APP_REQ_ATTCH","IMP_XLS","DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"WEIGHTED","BALANCE_NO","RET_ITM_BEFOR_EXP_PRD","MSUR_UNT_REP","PI_BILL_NO","USE_GRANT"
,"GRANT_PERIOD","ITM_COLOR","ITM_MEASURE","USE_WEIGHT","CONN_ITM_SO_INC","LNK_BRCHR"
,"LNK_YOUTUBE","USE_EMP_FLG","ALTR_MLT_FLG","I_F_DESC","REST_ITM_COMBO","USED_ITM"
,"MRP_ITM","MRP_ITM_CLSS","CST_PER","PRFT_MRGN_PRCNT","CHK_AVL_QTY_IN_RES","FOOD_GRP_NO"
,"USE_AUTO_PST_RMS_DATA_TO_INV","HPS_ITM","GNR_ITM_FLG","PRCDR_TYP","HSN_CODE"
,"CST_STANDR","CST_LAST_PROD","ITM_ORDR_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM","SHRT_ITM_L_NM","SHRT_ITM_F_NM"
,"ITM_MIN_QTY","ITM_MAX_QTY" From Ias_Itm_Mst
;

--------------------------------------------------------------
-- View 32: IAS_V_NY_ITEM_MOVEMENT
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_ITEM_MOVEMENT" ("DOC_TYPE","BILL_DOC_TYPE","DOC_NO","I_CODE"
,"I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","PF_QTY","I_DATE","I_COST","W_CODE"
,"WHG_CODE","STK_COST","VAT_AMT","DIS_AMT","A_CY","AC_RATE","STK_RATE","CC_CODE","PJ_NO"
,"ACTV_NO","AC_CODE_DTL","AC_DTL_TYP","C_CODE","V_CODE","A_DESC","GR_NO","EXPIRE_DATE"
,"BATCH_NO","RCRD_NO","SERIAL","REF_NO","DOC_SER","OUT_NO","OUT_GR_SER","DOC_SEQUENCE"
,"BARCODE","RT_TYPE","IN_OUT","EXTERNAL_POST","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER"
,"WT_QTY","WT_UNT","ARGMNT_NO","AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR") AS 
SELECT "DOC_TYPE","BILL_DOC_TYPE","DOC_NO","I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE"
,"P_QTY","PF_QTY","I_DATE","I_COST","W_CODE","WHG_CODE","STK_COST","VAT_AMT","DIS_AMT"
,"A_CY","AC_RATE","STK_RATE","CC_CODE","PJ_NO","ACTV_NO","AC_CODE_DTL","AC_DTL_TYP"
,"C_CODE","V_CODE","A_DESC","GR_NO","EXPIRE_DATE","BATCH_NO","RCRD_NO","SERIAL","REF_NO"
,"DOC_SER","OUT_NO","OUT_GR_SER","DOC_SEQUENCE","BARCODE","RT_TYPE","IN_OUT"
,"EXTERNAL_POST","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","WT_QTY","WT_UNT","ARGMNT_NO"
,"AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR" From Item_Movement 
;

--------------------------------------------------------------
-- View 33: IAS_V_NY_GR_NOTE
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_GR_NOTE" ("PI_TYPE","GR_NO","G_SER","INCOM_TYPE","GR_DATE","A_CODE"
,"AC_CODE_DTL","AC_DTL_TYP","A_CY","AC_RATE","STK_RATE","GR_AMT","PI_NO","V_CODE"
,"C_CODE","LC_NO","C_FLAG","W_CODE","CSH_BNK_NO","GR_POST","REF_NO","A_DESC","CC_CODE"
,"PJ_NO","ACTV_NO","ATTACH_CNT","PENDING","PUR_TYPE","DRIVER_NAME","CAR_NO","WORK_SHOP"
,"DOC_SER","DOC_NO","RT_OUT","OUT_DIFF_A_CODE","OUT_DIFF_A_CY","OUT_DIFF_AMT","BOE_NO"
,"USE_VAT","VAT_AMT","PR_REP","PI_DOC_TYPE","EXTERNAL_POST","HUNG","MRP_MT_SQ"
,"MRP_MT_ORDER","MRP_MT_TYPE","UNDER_SELLING","DOC_BRN_NO","DOC_DUE_DATE","VAT_AMT_OTHR"
,"CLC_TYP_NO_TAX","CONN_WITH_PI","FIELD1","FIELD2","FIELD3","AUDIT_REF","AUDIT_REF_DESC"
,"AUDIT_REF_U_ID","AUDIT_REF_DATE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"POST_U_ID","POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "PI_TYPE","GR_NO","G_SER","INCOM_TYPE","GR_DATE","A_CODE","AC_CODE_DTL"
,"AC_DTL_TYP","A_CY","AC_RATE","STK_RATE","GR_AMT","PI_NO","V_CODE","C_CODE","LC_NO"
,"C_FLAG","W_CODE","CSH_BNK_NO","GR_POST","REF_NO","A_DESC","CC_CODE","PJ_NO","ACTV_NO"
,"ATTACH_CNT","PENDING","PUR_TYPE","DRIVER_NAME","CAR_NO","WORK_SHOP","DOC_SER","DOC_NO"
,"RT_OUT","OUT_DIFF_A_CODE","OUT_DIFF_A_CY","OUT_DIFF_AMT","BOE_NO","USE_VAT","VAT_AMT"
,"PR_REP","PI_DOC_TYPE","EXTERNAL_POST","HUNG","MRP_MT_SQ","MRP_MT_ORDER","MRP_MT_TYPE"
,"UNDER_SELLING","DOC_BRN_NO","DOC_DUE_DATE","VAT_AMT_OTHR","CLC_TYP_NO_TAX"
,"CONN_WITH_PI","FIELD1","FIELD2","FIELD3","AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID"
,"AUDIT_REF_DATE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID"
,"POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"AD_TRMNL_NM","UP_TRMNL_NM" From Gr_Note
;

--------------------------------------------------------------
-- View 34: IAS_V_NY_GR_DETAIL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_GR_DETAIL" ("PI_TYPE","GR_NO","G_SER","INCOM_TYPE","GR_DATE"
,"I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","CP_QTY","W_CODE","WHG_CODE"
,"C_PRICE","I_PRICE","STK_COST","STK_RATE","A_CY","AC_RATE","WT_AVG_BEFORE"
,"WT_AVG_AFTER","EXPIRE_DATE","BATCH_NO","CC_CODE","PJ_NO","ACTV_NO","PI_NO","PUR_TYPE"
,"DOC_SER","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF"
,"V_CODE","DIS_AMT","VAT_PER","VAT_AMT","DIFF_AMT","USE_SERIALNO","RCRD_NO","REC_NO"
,"DOC_SEQUENCE","USE_ATTCH","REC_ATTCH","ITEM_DESC","BARCODE","UNDER_SELLING"
,"EXTERNAL_POST","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","POST_CODE","WT_QTY","WT_UNT"
,"ARGMNT_NO","CNTNR_NO","OTHR_AMT_DISC","VAT_AMT_OTHR","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","UP_CNT","OTHR_AMT_ITM") AS 
SELECT "PI_TYPE","GR_NO","G_SER","INCOM_TYPE","GR_DATE","I_CODE","I_QTY","FREE_QTY"
,"ITM_UNT","P_SIZE","P_QTY","CP_QTY","W_CODE","WHG_CODE","C_PRICE","I_PRICE","STK_COST"
,"STK_RATE","A_CY","AC_RATE","WT_AVG_BEFORE","WT_AVG_AFTER","EXPIRE_DATE","BATCH_NO"
,"CC_CODE","PJ_NO","ACTV_NO","PI_NO","PUR_TYPE","DOC_SER","DOC_TYPE_REF"
,"DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF","V_CODE","DIS_AMT"
,"VAT_PER","VAT_AMT","DIFF_AMT","USE_SERIALNO","RCRD_NO","REC_NO","DOC_SEQUENCE"
,"USE_ATTCH","REC_ATTCH","ITEM_DESC","BARCODE","UNDER_SELLING","EXTERNAL_POST","I_LENGTH"
,"I_WIDTH","I_HEIGHT","I_NUMBER","POST_CODE","WT_QTY","WT_UNT","ARGMNT_NO","CNTNR_NO"
,"OTHR_AMT_DISC","VAT_AMT_OTHR","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT"
,"OTHR_AMT_ITM" From Gr_Detail
;

--------------------------------------------------------------
-- View 35: IAS_V_NY_IAS_OPEN_STOCK
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_OPEN_STOCK" ("I_CODE","I_QTY","ITM_UNT","P_SIZE","P_QTY"
,"BARCODE","W_CODE","WHG_CODE","STK_COST","EXPIRE_DATE","BATCH_NO","USE_SERIALNO"
,"V_CODE","RCRD_NO","DOC_SEQUENCE","USE_ATTCH","REC_ATTCH","I_LENGTH","I_WIDTH"
,"I_HEIGHT","I_NUMBER","WT_QTY","WT_UNT","ARGMNT_NO","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","PR_REP","AD_TRMNL_NM"
,"UP_TRMNL_NM") AS 
SELECT "I_CODE","I_QTY","ITM_UNT","P_SIZE","P_QTY","BARCODE","W_CODE","WHG_CODE"
,"STK_COST","EXPIRE_DATE","BATCH_NO","USE_SERIALNO","V_CODE","RCRD_NO","DOC_SEQUENCE"
,"USE_ATTCH","REC_ATTCH","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","WT_QTY","WT_UNT"
,"ARGMNT_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM" From ias_open_stock
;

--------------------------------------------------------------
-- View 36: IAS_V_NY_EX_RATE
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_EX_RATE" ("CUR_NO","CUR_CODE","CUR_NAME","CUR_E_NAME","CUR_RATE"
,"CUR_RATE_POS","CUR_FRACTION","CUR_E_FRACTION","L_F","STOCK_CUR","MAX_CUR_RATE"
,"MIN_CUR_RATE","CUR_FRC_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP"
,"AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "CUR_NO","CUR_CODE","CUR_NAME","CUR_E_NAME","CUR_RATE","CUR_RATE_POS"
,"CUR_FRACTION","CUR_E_FRACTION","L_F","STOCK_CUR","MAX_CUR_RATE","MIN_CUR_RATE"
,"CUR_FRC_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","AD_TRMNL_NM"
,"UP_TRMNL_NM" From Ex_Rate
;

--------------------------------------------------------------
-- View 37: IAS_V_NY_S_PRD_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_S_PRD_DTL" ("PRD_TYP","PRD_NO","PRD_L_NM","PRD_F_NM","F_DATE"
,"T_DATE","YR_NO","INACTV","PRD_SEASON","UP_U_ID","UP_DATE","UP_CNT") AS 
SELECT "PRD_TYP","PRD_NO","PRD_L_NM","PRD_F_NM","F_DATE","T_DATE","YR_NO","INACTV"
,"PRD_SEASON","UP_U_ID","UP_DATE","UP_CNT" From S_PRD_DTL
;

--------------------------------------------------------------
-- View 38: IAS_V_NY_IAS_ITM_WCODE
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ITM_WCODE" ("I_CODE","ITM_UNT","P_SIZE","W_CODE","WHG_CODE"
,"PRIMARY_COST","I_CWTAVG","AVL_QTY","INACTIVE","MIN_LMT_COST_PER","MAX_LMT_COST_PER"
,"UP_DATE","UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "I_CODE","ITM_UNT","P_SIZE","W_CODE","WHG_CODE","PRIMARY_COST","I_CWTAVG"
,"AVL_QTY","INACTIVE","MIN_LMT_COST_PER","MAX_LMT_COST_PER","UP_DATE","UP_CNT","PR_REP"
,"AD_TRMNL_NM","UP_TRMNL_NM" From ias_itm_wcode
;

--------------------------------------------------------------
-- View 39: IAS_V_NY_INSTALLMENT
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_INSTALLMENT" ("DOC_TYPE","BILL_DOC_TYPE","BILL_NO","BILL_SER"
,"DOC_DATE","I_NO","I_DATE","I_AMT","AC_RATE","CHEQUE_NO","CHEQUE_DUE_DATE","CC_CODE"
,"PJ_NO","ACTV_NO","C_CODE","A_CY","PAID_AMT","PAID_DATE","ADJ_AMT","REF_NO","DR_NO"
,"I_PY","EXTERNAL_POST","RCRD_NO","DOC_SEQUENCE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "DOC_TYPE","BILL_DOC_TYPE","BILL_NO","BILL_SER","DOC_DATE","I_NO","I_DATE","I_AMT"
,"AC_RATE","CHEQUE_NO","CHEQUE_DUE_DATE","CC_CODE","PJ_NO","ACTV_NO","C_CODE","A_CY"
,"PAID_AMT","PAID_DATE","ADJ_AMT","REF_NO","DR_NO","I_PY","EXTERNAL_POST","RCRD_NO"
,"DOC_SEQUENCE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","PR_REP","AD_TRMNL_NM"
,"UP_TRMNL_NM" From Installment
;

--------------------------------------------------------------
-- View 40: IAS_V_NY_INSTALLMENT_PI
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_INSTALLMENT_PI" ("DOC_TYPE","DOC_DATE","BILL_DOC_TYPE","BILL_NO"
,"BILL_SER","I_NO","I_DATE","I_AMT","AC_RATE","CHEQUE_NO","CHEQUE_DUE_DATE","CC_CODE"
,"PJ_NO","ACTV_NO","V_CODE","A_CY","PAID_AMT","PAID_DATE","ADJ_AMT","REF_NO","DR_NO"
,"I_PY","EXTERNAL_POST","RCRD_NO","DOC_SEQUENCE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM","DOC_DSC") AS 
SELECT "DOC_TYPE","DOC_DATE","BILL_DOC_TYPE","BILL_NO","BILL_SER","I_NO","I_DATE","I_AMT"
,"AC_RATE","CHEQUE_NO","CHEQUE_DUE_DATE","CC_CODE","PJ_NO","ACTV_NO","V_CODE","A_CY"
,"PAID_AMT","PAID_DATE","ADJ_AMT","REF_NO","DR_NO","I_PY","EXTERNAL_POST","RCRD_NO"
,"DOC_SEQUENCE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","PR_REP","AD_TRMNL_NM"
,"UP_TRMNL_NM","DOC_DSC" From Ias_Installment_pi
;

--------------------------------------------------------------
-- View 41: IAS_V_NY_IAS_ITEM_SERIALNO
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ITEM_SERIALNO" ("DOC_TYPE","BILL_DOC_TYPE","DOC_NO","DOC_SER"
,"DOC_DATE","I_CODE","ITM_UNT","P_SIZE","SERIALNO","DESC_NO","W_CODE","CC_CODE","PJ_NO"
,"ACTV_NO","EXPIRE_DATE","BATCH_NO","FREE_FLG","BILL_COST","OUT_NO","OUT_GR_SER","IN_OUT"
,"RCRD_NO","RCRD_NO_DOC","ACTIVE","ACTIVE_U_ID","ACTIVE_DATE","ACTIVE_NOTE"
,"EXTERNAL_POST","AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR") AS 
SELECT "DOC_TYPE","BILL_DOC_TYPE","DOC_NO","DOC_SER","DOC_DATE","I_CODE","ITM_UNT"
,"P_SIZE","SERIALNO","DESC_NO","W_CODE","CC_CODE","PJ_NO","ACTV_NO","EXPIRE_DATE"
,"BATCH_NO","FREE_FLG","BILL_COST","OUT_NO","OUT_GR_SER","IN_OUT","RCRD_NO","RCRD_NO_DOC"
,"ACTIVE","ACTIVE_U_ID","ACTIVE_DATE","ACTIVE_NOTE","EXTERNAL_POST","AD_DATE","UP_DATE"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR" From IAS_ITEM_SERIALNO
;

--------------------------------------------------------------
-- View 42: IAS_V_NY_IAS_ATTACH_MST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ATTACH_MST" ("ATTCH_NO","ATTCH_A_NAME","ATTCH_E_NAME"
,"OPTIONAL","CONN_C_CODE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP"
,"AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "ATTCH_NO","ATTCH_A_NAME","ATTCH_E_NAME","OPTIONAL","CONN_C_CODE","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM" From
 IAS_ATTACH_MST
;

--------------------------------------------------------------
-- View 43: IAS_V_NY_IAS_ATTACH_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ATTACH_DTL" ("ATTCH_NO","ATTCH_DESC_NO","ATTCH_DESC_A_NAME"
,"ATTCH_DESC_E_NAME","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT") AS 
SELECT "ATTCH_NO","ATTCH_DESC_NO","ATTCH_DESC_A_NAME","ATTCH_DESC_E_NAME","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT" From IAS_ATTACH_DTL
;

--------------------------------------------------------------
-- View 44: IAS_V_NY_IAS_ITM_ATTACH
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ITM_ATTACH" ("I_CODE","ATTCH_NO1","ATTCH_DESC_NO1","ATTCH_NO2"
,"ATTCH_DESC_NO2","ATTCH_NO3","ATTCH_DESC_NO3","ATTCH_NO4","ATTCH_DESC_NO4","ATTCH_NO5"
,"ATTCH_DESC_NO5","FLEX_FIELD","FLEX_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"PR_REP","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "I_CODE","ATTCH_NO1","ATTCH_DESC_NO1","ATTCH_NO2","ATTCH_DESC_NO2","ATTCH_NO3"
,"ATTCH_DESC_NO3","ATTCH_NO4","ATTCH_DESC_NO4","ATTCH_NO5","ATTCH_DESC_NO5","FLEX_FIELD"
,"FLEX_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","AD_TRMNL_NM"
,"UP_TRMNL_NM" From IAS_ITM_ATTACH
;

--------------------------------------------------------------
-- View 45: IAS_V_NY_IAS_ITM_ATTACH_OTHRS
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_IAS_ITM_ATTACH_OTHRS" ("I_CODE","ITM_UNT","P_SIZE","ATTCH_NO1"
,"ATTCH_DESC_NO1","ATTCH_NO2","ATTCH_DESC_NO2","ATTCH_NO3","ATTCH_DESC_NO3","ATTCH_NO4"
,"ATTCH_DESC_NO4","ATTCH_NO5","ATTCH_DESC_NO5","FLEX_FIELD","FLEX_NO","ATTCH_NOTE"
,"DOC_TYPE","DOC_NO","DOC_SER","W_CODE","RCRD_NO_DOC","IN_OUT","CC_CODE","EXPIRE_DATE"
,"BATCH_NO","I_QTY","P_QTY","FREE_QTY","PF_QTY","RES_QTY","RCRD_NO","EXTERNAL_POST"
,"C_CODE","REP_CODE","REC_ATTCH","PREPARE_DATE","DELIVERY_DATE","ANNUAL","DOC_TYPE_REF"
,"DOC_NO_REF","DOC_SER_REF","CP_QTY","RESERVED","T_DATE","UNBLK_U_ID","UNBLK_DATE"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR") AS 
SELECT "I_CODE","ITM_UNT","P_SIZE","ATTCH_NO1","ATTCH_DESC_NO1","ATTCH_NO2"
,"ATTCH_DESC_NO2","ATTCH_NO3","ATTCH_DESC_NO3","ATTCH_NO4","ATTCH_DESC_NO4","ATTCH_NO5"
,"ATTCH_DESC_NO5","FLEX_FIELD","FLEX_NO","ATTCH_NOTE","DOC_TYPE","DOC_NO","DOC_SER"
,"W_CODE","RCRD_NO_DOC","IN_OUT","CC_CODE","EXPIRE_DATE","BATCH_NO","I_QTY","P_QTY"
,"FREE_QTY","PF_QTY","RES_QTY","RCRD_NO","EXTERNAL_POST","C_CODE","REP_CODE","REC_ATTCH"
,"PREPARE_DATE","DELIVERY_DATE","ANNUAL","DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"CP_QTY","RESERVED","T_DATE","UNBLK_U_ID","UNBLK_DATE","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR" From IAS_ITM_ATTACH_OTHRS
;

--------------------------------------------------------------
-- View 46: IAS_V_NY_ITM_ATTACH_MOVEMENT
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_ITM_ATTACH_MOVEMENT" ("I_CODE","ITM_UNT","P_SIZE","ATTCH_NO1"
,"ATTCH_DESC_NO1","ATTCH_NO2","ATTCH_DESC_NO2","ATTCH_NO3","ATTCH_DESC_NO3","ATTCH_NO4"
,"ATTCH_DESC_NO4","ATTCH_NO5","ATTCH_DESC_NO5","FLEX_FIELD","FLEX_NO","REC_ATTCH"
,"ATTCH_NOTE","DOC_TYPE","BILL_DOC_TYPE","DOC_NO","DOC_SER","W_CODE","BILL_COST"
,"RCRD_NO_DOC","IN_OUT","CC_CODE","PJ_NO","ACTV_NO","REP_CODE","R_CODE","C_CODE"
,"EXPIRE_DATE","BATCH_NO","I_QTY","P_QTY","FREE_QTY","PF_QTY","RCRD_NO","EXTERNAL_POST"
,"DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF","OUT_NO","OUT_GR_SER","DOC_DATE","A_CY"
,"AC_RATE","STK_RATE","I_PRICE","DIS_AMT","I_COST","STK_COST","VAT_AMT","OTHR_AMT"
,"V_CODE","RT_TYPE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR") AS 
SELECT "I_CODE","ITM_UNT","P_SIZE","ATTCH_NO1","ATTCH_DESC_NO1","ATTCH_NO2"
,"ATTCH_DESC_NO2","ATTCH_NO3","ATTCH_DESC_NO3","ATTCH_NO4","ATTCH_DESC_NO4","ATTCH_NO5"
,"ATTCH_DESC_NO5","FLEX_FIELD","FLEX_NO","REC_ATTCH","ATTCH_NOTE","DOC_TYPE"
,"BILL_DOC_TYPE","DOC_NO","DOC_SER","W_CODE","BILL_COST","RCRD_NO_DOC","IN_OUT","CC_CODE"
,"PJ_NO","ACTV_NO","REP_CODE","R_CODE","C_CODE","EXPIRE_DATE","BATCH_NO","I_QTY","P_QTY"
,"FREE_QTY","PF_QTY","RCRD_NO","EXTERNAL_POST","DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"OUT_NO","OUT_GR_SER","DOC_DATE","A_CY","AC_RATE","STK_RATE","I_PRICE","DIS_AMT"
,"I_COST","STK_COST","VAT_AMT","OTHR_AMT","V_CODE","RT_TYPE","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR" From IAS_ITM_ATTACH_MOVEMENT
;

--------------------------------------------------------------
-- View 47: IAS_POST_DETAILS
--------------------------------------------------------------
CREATE VIEW "IAS_POST_DETAILS" ("CODE_NO","POST_CODE","CODE_A_NAME","CODE_E_NAME","CODE_SIZE","I_CODE","W_CODE") AS 
SELECT w_Code Code_No,Whg_Code Post_Code,w_Name Code_A_Name,w_E_Name  Code_E_Name,1 Code_Size,w_Code I_Code,w_Code W_Code
                   From WAREHOUSE_DETAILS
;

--------------------------------------------------------------
-- View 48: IAS_V_VNDR_ITM
--------------------------------------------------------------
CREATE VIEW "IAS_V_VNDR_ITM" ("I_CODE","V_CODE","I_PACKING","VNDR_PRICE","MAIN_VNDR"
,"A_CY","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","ITM_UNT","P_SIZE") AS 
SELECT I_Code, V_Code, I_Packing, Vndr_Price, Main_Vndr, A_Cy, 
                          Ad_U_Id, Ad_Date, Up_U_Id,Up_Date,Itm_Unt, P_Size
                     From Ias_Vndr_Itm
;

--------------------------------------------------------------
-- View 49: IAS_V_GR_DETAIL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_GR_DETAIL_YR" ("PI_TYPE","GR_NO","G_SER","INCOM_TYPE","GR_DATE"
,"I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","CP_QTY","W_CODE","WHG_CODE"
,"C_PRICE","I_PRICE","STK_COST","STK_RATE","A_CY","AC_RATE","WT_AVG_BEFORE"
,"WT_AVG_AFTER","EXPIRE_DATE","BATCH_NO","CC_CODE","PJ_NO","ACTV_NO","PI_NO","PUR_TYPE"
,"DOC_SER","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF"
,"V_CODE","DIS_AMT","VAT_PER","VAT_AMT","DIFF_AMT","USE_SERIALNO","RCRD_NO","REC_NO"
,"DOC_SEQUENCE","USE_ATTCH","REC_ATTCH","ITEM_DESC","BARCODE","UNDER_SELLING"
,"EXTERNAL_POST","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","POST_CODE","WT_QTY","WT_UNT"
,"ARGMNT_NO","CNTNR_NO","OTHR_AMT_DISC","VAT_AMT_OTHR","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","UP_CNT","OTHR_AMT_ITM","WEB_SRVC_TRNSFR_DATA_FLG","WEB_SRVC_TRNSFR_DATA_DSC"
,"DIS_AMT_NOT_EFFECT","AVL_QTY_BEFORE","INV_CMLTV_BLNC","INV_WTAVG_FRC"
,"INV_CMLTV_DIFF_FLG","INV_CMLTV_DIFF") AS 
SELECT "PI_TYPE","GR_NO","G_SER","INCOM_TYPE","GR_DATE","I_CODE","I_QTY","FREE_QTY"
,"ITM_UNT","P_SIZE","P_QTY","CP_QTY","W_CODE","WHG_CODE","C_PRICE","I_PRICE","STK_COST"
,"STK_RATE","A_CY","AC_RATE","WT_AVG_BEFORE","WT_AVG_AFTER","EXPIRE_DATE","BATCH_NO"
,"CC_CODE","PJ_NO","ACTV_NO","PI_NO","PUR_TYPE","DOC_SER","DOC_TYPE_REF"
,"DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF","V_CODE","DIS_AMT"
,"VAT_PER","VAT_AMT","DIFF_AMT","USE_SERIALNO","RCRD_NO","REC_NO","DOC_SEQUENCE"
,"USE_ATTCH","REC_ATTCH","ITEM_DESC","BARCODE","UNDER_SELLING","EXTERNAL_POST","I_LENGTH"
,"I_WIDTH","I_HEIGHT","I_NUMBER","POST_CODE","WT_QTY","WT_UNT","ARGMNT_NO","CNTNR_NO"
,"OTHR_AMT_DISC","VAT_AMT_OTHR","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT"
,"OTHR_AMT_ITM","WEB_SRVC_TRNSFR_DATA_FLG","WEB_SRVC_TRNSFR_DATA_DSC"
,"DIS_AMT_NOT_EFFECT","AVL_QTY_BEFORE","INV_CMLTV_BLNC","INV_WTAVG_FRC"
,"INV_CMLTV_DIFF_FLG","INV_CMLTV_DIFF" From Gr_Detail
;

--------------------------------------------------------------
-- View 50: IAS_V_WHTRNS_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_WHTRNS_MST_YR" ("TR_INOUT_TYPE","TR_TYPE","TR_NO","TR_SER","TR_DATE"
,"REF_NO","W_CODE","T_W_CODE","F_W_CODE","CC_CODE","PJ_NO","ACTV_NO","TR_DESC","STK_RATE"
,"TR_POST","TR_AMT","TR_RES","LOAD_NO","ATTACH_CNT","PR_REP","PROCESSED","STK_PROCESSED"
,"PROCESSED_SI","HUNG","T_TR_TYPE","TR_A_CODE","EXP_AMT","C_CODE","DOC_BRN_NO"
,"AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","EXTERNAL_POST","F_TR_NO"
,"F_TR_SER","BOE_NO","TR_COST_TYPE","DIFF_A_CODE","DIFF_A_CY","DIFF_AMT","RTN_TR"
,"FIELD1","FIELD2","FIELD3","DRIVER_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"POST_U_ID","POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "TR_INOUT_TYPE","TR_TYPE","TR_NO","TR_SER","TR_DATE","REF_NO","W_CODE","T_W_CODE"
,"F_W_CODE","CC_CODE","PJ_NO","ACTV_NO","TR_DESC","STK_RATE","TR_POST","TR_AMT","TR_RES"
,"LOAD_NO","ATTACH_CNT","PR_REP","PROCESSED","STK_PROCESSED","PROCESSED_SI","HUNG"
,"T_TR_TYPE","TR_A_CODE","EXP_AMT","C_CODE","DOC_BRN_NO","AUDIT_REF","AUDIT_REF_DESC"
,"AUDIT_REF_U_ID","AUDIT_REF_DATE","EXTERNAL_POST","F_TR_NO","F_TR_SER","BOE_NO"
,"TR_COST_TYPE","DIFF_A_CODE","DIFF_A_CY","DIFF_AMT","RTN_TR","FIELD1","FIELD2","FIELD3"
,"DRIVER_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE"
,"UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM" From Ias_Whtrns_Mst
;

--------------------------------------------------------------
-- View 51: IAS_V_WHTRNS_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_WHTRNS_DTL_YR" ("TR_INOUT_TYPE","TR_TYPE","TR_NO","TR_SER","I_CODE"
,"I_QTY","ITM_UNT","P_SIZE","P_QTY","W_CODE","T_W_CODE","F_W_CODE","TR_QTY","CC_CODE"
,"PJ_NO","ACTV_NO","STK_COST","EXPIRE_DATE","BATCH_NO","USE_SERIALNO","EXP_AMT","RCRD_NO"
,"DOC_SEQUENCE","DOC_SEQUENCE_TR","BOE_NO","F_TR_NO","F_TR_SER","USE_ATTCH","REC_ATTCH"
,"I_PRICE","ITEM_DESC","BARCODE","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF"
,"DOC_SER_REF","V_CODE","EXTERNAL_POST","F_AVL_QTY","T_AVL_QTY","I_LENGTH","I_WIDTH"
,"I_HEIGHT","I_NUMBER","POST_CODE","ARGMNT_NO","WT_QTY","WT_UNT","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR","UP_CNT","WEB_SRVC_TRNSFR_DATA_FLG","WEB_SRVC_TRNSFR_DATA_DSC"
,"DOC_SEQUENCE_REF","TR_QTY_NOT_RECE","DOC_TYPE_REF_DTL","DOC_NO_REF_DTL"
,"DOC_SER_REF_DTL","DOC_SEQUENCE_REF_DTL") AS 
SELECT "TR_INOUT_TYPE","TR_TYPE","TR_NO","TR_SER","I_CODE","I_QTY","ITM_UNT","P_SIZE"
,"P_QTY","W_CODE","T_W_CODE","F_W_CODE","TR_QTY","CC_CODE","PJ_NO","ACTV_NO","STK_COST"
,"EXPIRE_DATE","BATCH_NO","USE_SERIALNO","EXP_AMT","RCRD_NO","DOC_SEQUENCE"
,"DOC_SEQUENCE_TR","BOE_NO","F_TR_NO","F_TR_SER","USE_ATTCH","REC_ATTCH","I_PRICE"
,"ITEM_DESC","BARCODE","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"V_CODE","EXTERNAL_POST","F_AVL_QTY","T_AVL_QTY","I_LENGTH","I_WIDTH","I_HEIGHT"
,"I_NUMBER","POST_CODE","ARGMNT_NO","WT_QTY","WT_UNT","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","UP_CNT","WEB_SRVC_TRNSFR_DATA_FLG","WEB_SRVC_TRNSFR_DATA_DSC"
,"DOC_SEQUENCE_REF","TR_QTY_NOT_RECE","DOC_TYPE_REF_DTL","DOC_NO_REF_DTL"
,"DOC_SER_REF_DTL","DOC_SEQUENCE_REF_DTL" From Ias_Whtrns_Dtl
;

--------------------------------------------------------------
-- View 52: IAS_V_ITEM_MOVEMENT_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITEM_MOVEMENT_YR" ("DOC_TYPE","BILL_DOC_TYPE","DOC_NO","I_CODE"
,"I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","PF_QTY","I_DATE","I_COST","W_CODE"
,"WHG_CODE","STK_COST","VAT_AMT","DIS_AMT","A_CY","AC_RATE","STK_RATE","CC_CODE","PJ_NO"
,"ACTV_NO","AC_CODE_DTL","AC_DTL_TYP","C_CODE","V_CODE","A_DESC","GR_NO","EXPIRE_DATE"
,"BATCH_NO","RCRD_NO","SERIAL","REF_NO","DOC_SER","OUT_NO","OUT_GR_SER","DOC_SEQUENCE"
,"BARCODE","RT_TYPE","IN_OUT","EXTERNAL_POST","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER"
,"WT_QTY","WT_UNT","ARGMNT_NO","AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"FREE_TYP","LEV_NO","I_PRICE_VAT","EMP_NO","DIS_AMT_MST_VAT","DIS_PER","DIS_AMT_DTL"
,"DIS_AMT_DTL_VAT","DIS_PER2","DIS_AMT_DTL2","DIS_AMT_DTL2_VAT","DIS_PER3","DIS_AMT_DTL3"
,"DIS_AMT_DTL3_VAT","OTHR_AMT","VAT_AMT_OTHR","VAT_PER","DIS_AMT_MST") AS 
SELECT "DOC_TYPE","BILL_DOC_TYPE","DOC_NO","I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE"
,"P_QTY","PF_QTY","I_DATE","I_COST","W_CODE","WHG_CODE","STK_COST","VAT_AMT","DIS_AMT"
,"A_CY","AC_RATE","STK_RATE","CC_CODE","PJ_NO","ACTV_NO","AC_CODE_DTL","AC_DTL_TYP"
,"C_CODE","V_CODE","A_DESC","GR_NO","EXPIRE_DATE","BATCH_NO","RCRD_NO","SERIAL","REF_NO"
,"DOC_SER","OUT_NO","OUT_GR_SER","DOC_SEQUENCE","BARCODE","RT_TYPE","IN_OUT"
,"EXTERNAL_POST","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","WT_QTY","WT_UNT","ARGMNT_NO"
,"AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","FREE_TYP","LEV_NO"
,"I_PRICE_VAT","EMP_NO","DIS_AMT_MST_VAT","DIS_PER","DIS_AMT_DTL","DIS_AMT_DTL_VAT"
,"DIS_PER2","DIS_AMT_DTL2","DIS_AMT_DTL2_VAT","DIS_PER3","DIS_AMT_DTL3"
,"DIS_AMT_DTL3_VAT","OTHR_AMT","VAT_AMT_OTHR","VAT_PER","DIS_AMT_MST" From Item_Movement
;

--------------------------------------------------------------
-- View 53: IAS_V_INV_TYPES
--------------------------------------------------------------
CREATE VIEW "IAS_V_INV_TYPES" ("INV_TYPE","TYPE_NO","TYPE_L_NM","TYPE_F_NM","AD_DATE","AD_U_ID","UP_DATE","UP_U_ID") AS 
SELECT Inv_Type ,  TYPE_NO , Type_L_Nm ,  Type_F_Nm ,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID
From 
(
SELECT  1 Inv_Type , REQ_TYPE TYPE_NO ,REQ_NAME Type_L_Nm , REQ_E_NAME Type_F_Nm ,AD_DATE
, AD_U_ID, UP_DATE, UP_U_ID FROM  REQUEST_TYPES
Union All
SELECT  2 Inv_Type , INCOM_TYPE TYPE_NO ,INCOM_NAME Type_L_Nm , INCOM_E_NAME Type_F_Nm 
,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID FROM INCOM_TYPES
Union All
SELECT 3  Inv_Type , OUT_TYPE TYPE_NO ,OUT_NAME Type_L_Nm , OUT_E_NAME Type_F_Nm ,AD_DATE
, AD_U_ID, UP_DATE, UP_U_ID FROM OUT_TYPES
Union All
SELECT  4 Inv_Type , TR_TYPE TYPE_NO ,TR_NAME Type_L_Nm , TR_E_NAME Type_F_Nm ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM TRANSFER_TYPES
Union All
SELECT  5 Inv_Type , STK_TYPE TYPE_NO ,STK_NAME Type_L_Nm , STK_E_NAME Type_F_Nm ,AD_DATE
, AD_U_ID, UP_DATE, UP_U_ID FROM IAS_STK_ADJST_TYPES
Union All
SELECT  6 Inv_Type , INV_TYPE TYPE_NO ,INV_NAME Type_L_Nm , INV_E_NAME Type_F_Nm ,AD_DATE
, AD_U_ID, UP_DATE, UP_U_ID FROM IAS_INV_TYPES)
;

--------------------------------------------------------------
-- View 54: IAS_V_AP_TYPES
--------------------------------------------------------------
CREATE VIEW "IAS_V_AP_TYPES" ("AP_TYPE","TYPE_NO","TYPE_L_NM","TYPE_F_NM","AD_DATE","AD_U_ID","UP_DATE","UP_U_ID") AS 
SELECT Ap_Type ,  TYPE_No , Type_L_Nm ,  Type_F_Nm ,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID
From 
(
SELECT  1 Ap_Type , Pr_TYPE TYPE_No ,Pr_A_NAME Type_L_Nm , Pr_E_NAME Type_F_Nm ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  Ias_Preq_Types
Union All
SELECT  2 Ap_Type , Po_TYPE TYPE_No ,Po_A_NAME Type_L_Nm , Po_E_NAME Type_F_Nm ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  Ias_Porder_Types
Union All
SELECT 3 Ap_Type , GRN_TYPE TYPE_No ,GRN_A_NAME Type_L_Nm , GRN_E_NAME Type_F_Nm ,AD_DATE
, AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_GRN_TYPES
Union All
SELECT  4 Ap_Type , Bill_TYPE_No TYPE_No ,Type_L_NAME Type_L_Nm , Type_F_NAME Type_F_Nm 
,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID FROM  ias_Ap_Bill_Types
Union All
SELECT 6 ap_type, typ_no type_no, typ_l_name type_l_nm,typ_f_name type_f_nm, ad_date,
 ad_u_id, up_date, up_u_id  FROM   IAS_AP_TYPES
;

--------------------------------------------------------------
-- View 55: IAS_V_AR_TYPES
--------------------------------------------------------------
CREATE VIEW "IAS_V_AR_TYPES" ("AR_TYPE","TYPE_NO","TYPE_L_NM","TYPE_F_NM","AD_DATE","AD_U_ID","UP_DATE","UP_U_ID") AS 
SELECT AR_TYPE ,  TYPE_NO , TYPE_L_NM ,  TYPE_F_NM ,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID
FROM 
(
SELECT  1 AR_TYPE , QT_TYPE TYPE_NO ,QT_A_NAME TYPE_L_NM , QT_E_NAME TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_QUOT_TYPES
UNION ALL
SELECT  2 AR_TYPE , SO_TYPE TYPE_NO ,SO_A_NAME TYPE_L_NM , SO_E_NAME TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_SORDER_TYPES
UNION ALL
SELECT 3 AR_TYPE , SI_TYPE TYPE_NO ,SI_A_NAME TYPE_L_NM , SI_E_NAME TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_SALES_TYPES
UNION ALL
SELECT  4 AR_TYPE , SR_TYPE TYPE_NO ,SR_A_NAME TYPEL_NM , SR_E_NAME TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_RT_SALES_TYPES
UNION ALL
SELECT  5 AR_TYPE , RCPT_TYPE_NO TYPE_NO ,RCPT_A_NAME TYPE_L_NM , RCPT_E_NAME TYPE_F_NM 
,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_RCPT_DOC_TYPES
UNION ALL
SELECT  6 AR_TYPE , WO_TYPE_NO TYPE_NO ,WO_A_NAME TYPE_L_NM , WO_E_NAME TYPE_F_NM 
,AD_DATE, AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_WORK_ORDER_TYPES
UNION ALL
SELECT  7 AR_TYPE , TYP_NO TYPE_NO ,TYP_L_NM TYPE_L_NM , TYP_F_NM TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_AR_TYPS WHERE AR_TYPE_NO = 7
UNION ALL
SELECT  8 AR_TYPE , TYP_NO TYPE_NO ,TYP_L_NM TYPE_L_NM , TYP_F_NM TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_AR_TYPS WHERE AR_TYPE_NO = 8
UNION ALL
SELECT  9 AR_TYPE , TYP_NO TYPE_NO ,TYP_L_NM TYPE_L_NM , TYP_F_NM TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_AR_TYPS WHERE AR_TYPE_NO = 9
UNION ALL
SELECT  10 AR_TYPE , TYP_NO TYPE_NO ,TYP_L_NM TYPE_L_NM , TYP_F_NM TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  IAS_AR_TYPS WHERE AR_TYPE_NO = 10
UNION ALL
SELECT  21 AR_TYPE , CODE_NO TYPE_NO ,CODE_L_NM TYPE_L_NM , CODE_F_NM TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  ARS_CODE_DTL WHERE CODE_TYP=21
UNION ALL
SELECT  22 AR_TYPE , CODE_NO TYPE_NO ,CODE_L_NM TYPE_L_NM , CODE_F_NM TYPE_F_NM ,AD_DATE,
 AD_U_ID, UP_DATE, UP_U_ID FROM  ARS_CODE_DTL WHERE CODE_TYP=22
;

--------------------------------------------------------------
-- View 56: IAS_V_USR_WC_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_WC_PRV" ("U_ID","USR_NAME","W_CODE","W_NM","ADD_FLAG","VIEW_FLAG"
,"TRNSFR_WCODE_FLG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.W_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.W_Name, C.W_E_Name),NVL (C.W_E_Name, C.W_Name)) Wc_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Trnsfr_Wcode_Flg,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM Privilege_Wh A, User_R B, Warehouse_Details C
    WHERE A.U_Id = B.U_Id
      AND A.W_Code = C.W_Code
      --AND (Add_Flag = 1 OR View_Flag = 1)
   UNION
   SELECT B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.W_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.W_Name, C.W_E_Name),NVL (C.W_E_Name, C.W_Name)) Wc_Nm,
          0 Add_Flag,
          0 View_Flag,
          0 Trnsfr_Wcode_Flg,
          NULL Ad_U_Id,
          NULL Ad_Date,
          NULL Up_U_Id,
          NULL Up_Date,
          0 Rec_Src
     FROM User_R B, Warehouse_Details C
    WHERE NOT EXISTS
             (SELECT 1
                FROM Privilege_Wh
               WHERE W_Code = C.W_Code AND U_Id = B.U_Id AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 57: IAS_V_USR_JV_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_JV_PRV" ("U_ID","USR_NAME","JV_TYPE","JV_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO'),1 ,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Jv_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO'),1 ,NVL (C.Jv_Name, C.Jv_E_Name),NVL (C.Jv_E_Name, C.Jv_Name)) Jv_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM JV_TYPES_DETAIL A, User_R B, JV_TYPES  C
    WHERE     A.U_Id = B.U_Id
          AND A.Jv_Type = C.Jv_Type
          AND (Add_Flag = 1 OR View_Flag = 1)
   UNION
  SELECT B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO'),1 ,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Jv_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO'),1 ,NVL (C.Jv_Name, C.Jv_E_Name),NVL (C.Jv_E_Name, C.Jv_Name)) Jv_Nm,
          0 Add_Flag,
          0 View_Flag,
          NULL Ad_U_Id,
          NULL Ad_Date,
          NULL Up_U_Id,
          NULL Up_Date,
          0 Rec_Src
     FROM User_R B, JV_TYPES C
    WHERE NOT EXISTS
             (SELECT 1
                FROM JV_TYPES_DETAIL
               WHERE Jv_Type = C.Jv_Type AND U_Id = B.U_Id AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 58: IAS_V_USR_CSH_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_CSH_PRV" ("U_ID","USR_NAME","CASH_TYPE","CASH_NO","CASH_NM","A_CY"
,"ADD_FLAG","VIEW_FLAG","PYMNT","RCVD","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC")
 AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          1 Cash_Type,
          A.Cash_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Cash_Name,
 C.Cash_E_Name),Nvl (C.Cash_E_Name, C.Cash_Name)) Cash_Nm,
          A.A_CY ,
          A.Add_Flag,
          A.View_Flag,
          A.Pymnt,
          A.Rcvd,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Priv_Cash A, User_R B, Cash_In_Hand  C
    Where     A.U_Id         = B.U_Id
           And A.Cash_No    = C.Cash_No
           And A.Cash_Type =  1
           And (Add_Flag = 1 Or View_Flag = 1 Or Pymnt = 1 Or Rcvd = 1)
   Union
  Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          1 Cash_Type,
          C.Cash_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Cash_Name,
 C.Cash_E_Name),Nvl (C.Cash_E_Name, C.Cash_Name)) Cash_Nm,
          A.A_CY ,
          0 Add_Flag,
          0 View_Flag,
          0 Pymnt,
          0 Rcvd,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From Ias_Cash_In_Hand_Dtl A ,User_R B, Cash_In_Hand C
    Where A.Cash_No =C.Cash_No
        And Not Exists
             (Select 1
                From Priv_Cash
               Where Cash_No = C.Cash_No And A_Cy=A.A_Cy  And Cash_Type =  1 And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 59: IAS_V_USR_BNK_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_BNK_PRV" ("U_ID","USR_NAME","CASH_TYPE","BANK_NO","BANK_NM","A_CY"
,"ADD_FLAG","VIEW_FLAG","PYMNT","RCVD","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC")
 AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          2 Cash_Type ,
          A.Cash_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Bank_Name,
 C.Bank_E_Name),Nvl (C.Bank_E_Name, C.Bank_Name)) Bank_Nm,
          A.A_Cy ,
          A.Add_Flag,
          A.View_Flag,
          A.Pymnt,
          A.Rcvd,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Priv_Cash A, User_R B, Cash_At_Bank  C
    Where     A.U_Id         = B.U_Id
           And A.Cash_No    = C.Bank_No
           And A.Cash_Type = 2
            And (Add_Flag = 1 Or View_Flag = 1 Or Pymnt = 1 Or Rcvd = 1)
   Union
  Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          2 Cash_Type,
          C.Bank_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Bank_Name,
 C.Bank_E_Name),Nvl (C.Bank_E_Name, C.Bank_Name)) Bank_Nm,
          A.A_Cy ,
          0 Add_Flag,
          0 View_Flag,
          0 Pymnt,
          0 Rcvd,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From Ias_Cash_At_Bank_Dtl A ,User_R B, Cash_At_Bank C
    Where A.Bank_NO  = C.Bank_NO   
        And Not Exists
             (Select 1
                From Priv_Cash
               Where Cash_No = C.Bank_No   And  A_Cy=A.A_Cy      And Cash_Type =  2 And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 60: IAS_V_USR_CST_CNTR_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_CST_CNTR_PRV" ("U_ID","USR_NAME","CC_CODE","CC_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Cc_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Cc_A_Name,
 C.Cc_E_Name),Nvl (C.Cc_E_Name, C.Cc_A_Name)) Cc_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Privilege_Cc A, User_R B, Cost_Centers C
    Where     A.U_Id = B.U_Id
          And A.Cc_Code = C.Cc_Code
          --And (Add_Flag = 1 Or View_Flag = 1)
          And C.c_s_m=(select cc_type from cost_center_types where affected_by_trans=1) 
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Cc_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Cc_A_Name,
 C.Cc_E_Name),Nvl (C.Cc_E_Name, C.Cc_A_Name)) Cc_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Cost_Centers C
    Where C.c_s_m=(select cc_type from cost_center_types where affected_by_trans=1) 
      And Not Exists
             (Select 1
                From Privilege_Cc
               Where Cc_Code = C.Cc_Code And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 61: IAS_V_USR_PROJCT_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_PROJCT_PRV" ("U_ID","USR_NAME","PJ_NO","PJ_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Pj_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Pj_A_Name,
 C.Pj_E_Name),Nvl (C.Pj_E_Name, C.Pj_A_Name)) Pj_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Priv_Projects A, User_R B, Ias_Projects  C
    Where     A.U_Id = B.U_Id
          And A.Pj_No = C.Pj_No
          --And (Add_Flag = 1 Or View_Flag = 1)
          And Nvl(C.PJ_SUB,0) = 1  
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Pj_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Pj_A_Name,
 C.Pj_E_Name),Nvl (C.Pj_E_Name, C.Pj_A_Name)) Pj_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Projects C
    Where  Nvl(C.PJ_SUB,0) = 1  
     And Not Exists
             (Select 1
                From Ias_Priv_Projects
               Where Pj_No = C.Pj_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 62: IAS_V_USR_ACTIVITY_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_ACTIVITY_PRV" ("U_ID","USR_NAME","ACTV_NO","ACTV_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Actv_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Actv_A_Name,
 C.Actv_E_Name),Nvl (C.Actv_E_Name, C.Actv_A_Name)) Actv_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From IAS_PRIV_ACTVTY A, User_R B, Ias_Actvty  C
    Where     A.U_Id = B.U_Id
          And A.Actv_No = C.Actv_No
          --And (Add_Flag = 1 Or View_Flag = 1)
          And Nvl(C.Actv_Sub,0) = 1 
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Actv_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Actv_A_Name,
 C.Actv_E_Name),Nvl (C.Actv_E_Name, C.Actv_A_Name)) Actv_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Actvty C
    Where Nvl(C.Actv_Sub,0) = 1 
     And Not Exists
             (Select 1
                From IAS_PRIV_ACTVTY
               Where Actv_No = C.Actv_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 63: IAS_V_USR_GLS_NOTE_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_GLS_NOTE_TYP_PRV" ("U_ID","USR_NAME","NOTE_TYPE","NOTE_TYPE_NO"
,"NOTE_NM","ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Note_Type ,
          A.Note_Type_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Note_A_Name,
 C.Note_E_Name),Nvl (C.Note_E_Name, C.Note_A_Name)) Note_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From IAS_PRIV_NOTE_TYPES A, User_R B, Ias_NOTE_TYPES  C
    Where     A.U_Id = B.U_Id
          And A.Note_Type_No = C.Note_Type_No
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Note_Type ,
          C.Note_Type_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Note_A_Name,
 C.Note_E_Name),Nvl (C.Note_E_Name, C.Note_A_Name)) Note_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_NOTE_TYPES C
    Where Not Exists
             (Select 1
                From IAS_PRIV_NOTE_TYPES
               Where Note_Type_No = C.Note_Type_No  And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 64: IAS_V_USR_ITM_ACTVTY_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_ITM_ACTVTY_PRV" ("U_ID","USR_NAME","ACTIVITY_NO","ACTIVITY_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Activity_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Activity_A_Name,
 C.Activity_E_Name),Nvl (C.Activity_E_Name, C.Activity_A_Name)) Activity_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Items_Activity_Priv A, User_R B, Ias_Items_Activity C
    Where     A.U_Id = B.U_Id
          And A.Activity_No = C.Activity_No
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Activity_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Activity_A_Name,
 C.Activity_E_Name),Nvl (C.Activity_E_Name, C.Activity_A_Name)) Activity_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Items_Activity C
    Where Not Exists
             (Select 1
                From Ias_Items_Activity_Priv
               Where Activity_No = C.Activity_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 65: IAS_V_USR_GRP_DTL_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_GRP_DTL_PRV" ("U_ID","USR_NAME","G_CODE","GRP_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.G_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.G_A_Name,
 C.G_E_Name),NVL (C.G_E_Name, C.G_A_Name)) Grp_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM PRIVILEGE_GC A, User_R B, Group_Details C
    WHERE     A.U_Id = B.U_Id
          AND A.G_Code = C.G_Code
          AND (Add_Flag = 1 OR View_Flag = 1)
   UNION
   SELECT B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.G_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.G_A_Name,
 C.G_E_Name),NVL (C.G_E_Name, C.G_A_Name)) Grp_Nm,
          0 Add_Flag,
          0 View_Flag,
          NULL Ad_U_Id,
          NULL Ad_Date,
          NULL Up_U_Id,
          NULL Up_Date,
          0 Rec_Src
     FROM User_R B, Group_Details C
    WHERE NOT EXISTS
             (SELECT 1
                FROM PRIVILEGE_GC
               WHERE G_Code = C.G_Code AND U_Id = B.U_Id AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 66: IAS_V_USR_PRICING_LVL_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_PRICING_LVL_PRV" ("U_ID","USR_NAME","LEV_NO","LEV_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Lev_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Lev_A_Name,
 C.Lev_E_Name),Nvl (C.Lev_E_Name, C.Lev_A_Name)) Lev_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Priv_Price A, User_R B, Ias_Pricing_Levels C
    Where     A.U_Id = B.U_Id
          And A.Lev_No = C.Lev_No
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Lev_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Lev_A_Name,
 C.Lev_E_Name),Nvl (C.Lev_E_Name, C.Lev_A_Name)) Lev_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Pricing_Levels C
    Where Not Exists
             (Select 1
                From Ias_Priv_Price
               Where Lev_No = C.Lev_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 67: IAS_V_USR_INV_INC_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_INV_INC_TYP_PRV" ("U_ID","USR_NAME","INCOM_TYPE","INC_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Incom_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Incom_Name,
 C.Incom_E_Name),Nvl (C.Incom_E_Name, C.Incom_Name)) Inc_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Priv_Income_Type A, User_R B, Incom_Types C
    Where     A.U_Id = B.U_Id
          And A.Incom_Type = C.Incom_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Incom_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Incom_Name,
 C.Incom_E_Name),Nvl (C.Incom_E_Name, C.Incom_Name)) Inc_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Incom_Types C
    Where Not Exists
             (Select 1
                From Priv_Income_Type
               Where Incom_Type = C.Incom_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 68: IAS_V_USR_INV_OUT_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_INV_OUT_TYP_PRV" ("U_ID","USR_NAME","OUT_TYPE","OUT_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name, B.U_E_Name)) Usr_Nm,
          A.Out_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Out_Name, C.Out_E_Name)) Out_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Priv_Out_Type A, User_R B, Out_Types C
    Where     A.U_Id = B.U_Id
          And A.Out_Type = C.Out_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Out_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Out_Name,
 C.Out_E_Name),Nvl (C.Out_E_Name, C.Out_Name)) Out_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Out_Types C
    Where Not Exists
             (Select 1
                From Priv_Out_Type
               Where Out_Type = C.Out_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 69: IAS_V_USR_INV_TRNSFR_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_INV_TRNSFR_TYP_PRV" ("U_ID","USR_NAME","TR_TYPE","TR_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Tr_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Tr_Name, C.Tr_E_Name),Nvl (C.Tr_E_Name, C.Tr_Name)) Tr_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Priv_Trnsfr_Type A, User_R B, Transfer_Types C
    Where     A.U_Id = B.U_Id
          And A.Tr_Type = C.Tr_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Tr_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Tr_Name, C.Tr_E_Name),Nvl (C.Tr_E_Name, C.Tr_Name)) Tr_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Transfer_Types C
    Where Not Exists
             (Select 1
                From Priv_Trnsfr_Type
               Where Tr_Type = C.Tr_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 70: IAS_V_USR_INV_REQ_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_INV_REQ_TYP_PRV" ("U_ID","USR_NAME","REQ_TYPE","REQ_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Req_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Req_Name,
 C.Req_E_Name),Nvl (C.Req_E_Name, C.Req_Name)) Req_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Priv_Req_Type A, User_R B, Request_Types C
    Where     A.U_Id = B.U_Id
          And A.Req_Type = C.Req_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Req_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Req_Name,
 C.Req_E_Name),Nvl (C.Req_E_Name, C.Req_Name)) Req_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Request_Types C
    Where Not Exists
             (Select 1
                From Priv_Req_Type
               Where Req_Type = C.Req_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 71: IAS_V_USR_INV_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_INV_TYP_PRV" ("U_ID","USR_NAME","INV_TYPE","INV_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Inv_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Inv_Name,
 C.Inv_E_Name),Nvl (C.Inv_E_Name, C.Inv_Name)) Inv_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From IAS_PRIV_INV_TYPE A, User_R B,IAS_INV_TYPES C
    Where     A.U_Id = B.U_Id
          And A.Inv_Type = C.Inv_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Inv_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Inv_Name,
 C.Inv_E_Name),Nvl (C.Inv_E_Name, C.Inv_Name)) Inv_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, IAS_INV_TYPES C
    Where Not Exists
             (Select 1
                From IAS_PRIV_INV_TYPE
               Where Inv_Type = C.Inv_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 72: IAS_V_USR_STK_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_STK_TYP_PRV" ("U_ID","USR_NAME","STK_TYPE","STK_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Stk_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Stk_Name,
 C.Stk_E_Name),Nvl (C.Stk_E_Name, C.Stk_Name)) Stk_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Priv_Stk_Adjst_Types A, User_R B,Ias_Stk_Adjst_Types C
    Where     A.U_Id = B.U_Id
          And A.Stk_Type = C.Stk_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Stk_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Stk_Name,
 C.Stk_E_Name),Nvl (C.Stk_E_Name, C.Stk_Name)) Stk_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Stk_Adjst_Types C
    Where Not Exists
             (Select 1
                From Ias_Priv_Stk_Adjst_Types
               Where Stk_Type = C.Stk_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 73: IAS_V_USR_SALES_MAN_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_SALES_MAN_PRV" ("U_ID","USR_NAME","REP_CODE","SALES_MAN_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_nm,
          c.reprs_code,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.reprs_a_name, c.reprs_e_name),
                  NVL (c.reprs_e_name, c.reprs_a_name)
                 ) stk_nm,
          a.add_flag, a.view_flag, a.ad_u_id, a.ad_date, a.up_u_id, a.up_date,
          1 rec_src
     FROM ias_priv_sman a, user_r b, sales_man c
    WHERE a.u_id = b.u_id
      AND a.rep_code = c.reprs_code
      --AND (add_flag = 1 OR view_flag = 1)
   UNION
   SELECT b.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_nm,
          c.reprs_code,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.reprs_a_name, c.reprs_e_name),
                  NVL (c.reprs_e_name, c.reprs_a_name)
                 ) stk_nm,
          0 add_flag, 0 view_flag, NULL ad_u_id, NULL ad_date, NULL up_u_id,
          NULL up_date, 0 rec_src
     FROM user_r b, sales_man c
    WHERE NOT EXISTS (
             SELECT 1
               FROM ias_priv_sman
              WHERE rep_code = c.reprs_code AND u_id = b.u_id
                    AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 74: IAS_V_USR_COLLECTOR_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_COLLECTOR_PRV" ("U_ID","USR_NAME","COL_NO","COL_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Col_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Col_Name,
 C.Col_E_Name),Nvl (C.Col_E_Name, C.Col_Name)) Col_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Priv_Collectors A, User_R B, Collerctor C
    Where     A.U_Id = B.U_Id
          And A.Col_No = C.Col_No
       --   And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Col_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Col_Name,
 C.Col_E_Name),Nvl (C.Col_E_Name, C.Col_Name)) Col_Nm,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Collerctor C
    Where Not Exists
             (Select 1
                From Ias_Priv_Collectors
               Where Col_No = C.Col_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 75: IAS_V_USR_FRM_FLD_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_FRM_FLD_PRV" ("U_ID","USR_NAME","FORM_NO","FLD_NAME","TAB_NAME"
,"PRIV_FLAG","F_ORDER_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Form_No,
          C.Fld_Name,
          C.Tab_Name,
          A.Priv_Flag,
          A.F_Order_No,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Frm_Fld_Priv A, User_R B, Ias_Frm_Fld C
    Where     A.U_Id = B.U_Id
          And A.Form_No  = C.Form_No
          And A.Tab_Name = C.Tab_Name
          And A.Fld_Name = C.Fld_Name
          And Priv_Flag  = 1 
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Form_No,
           C.Fld_Name,
          C.Tab_Name,
          0 Priv_Flag,
          0 F_Order_No,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Frm_Fld C
    Where Not Exists
             (Select 1
                From Ias_Frm_Fld_Priv
               Where Form_No = C.Form_No And Tab_Name = C.Tab_Name    And Fld_Name = C.Fld_Name And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 76: S_V_USR_TP_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_USR_TP_PRV" ("U_ID","USR_NAME","FORM_NO","OBJ_NM","TP_NM","LBL_NO"
,"PRV_FLG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (b.u_a_name,
 b.u_e_name),NVL (b.u_E_name, b.u_A_name)) usr_nm,
          a.form_no,
          c.obj_nm,
          c.tp_nm,
          c.lbl_no,
          a.prv_flg,
          a.ad_u_id,
          a.ad_date,
          a.up_u_id,
          a.up_date,
          1 rec_src
     FROM s_usr_tp_prv a, user_r b, s_tp c
     WHERE a.u_id = b.u_id
          AND a.form_no = c.form_no
          AND a.obj_nm = c.obj_nm
          AND a.tp_nm = c.tp_nm
          AND prv_flg = 1
   UNION
   SELECT b.u_id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (b.u_a_name,
 b.u_e_name),NVL (b.u_e_name, b.u_a_name)) usr_nm,
          c.form_no,
          c.obj_nm,
          c.tp_nm,
          c.lbl_no,
          0 prv_flg,
          NULL ad_u_id,
          NULL ad_date,
          NULL up_u_id,
          NULL up_date,
          0 rec_src
     FROM user_r b, s_tp c
    WHERE NOT EXISTS
                 (SELECT 1
                    FROM s_usr_tp_prv
                   WHERE     form_no = c.form_no
                         AND obj_nm = c.obj_nm
                         AND tp_nm = c.tp_nm
                         AND u_id = b.u_id
                         AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 77: IAS_V_USR_FLG_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_FLG_PRV" ("U_ID","USR_NAME","FLG_CODE","FLG_VALUE","PRIV_FLAG"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Flg_Code,
          C.Flg_Value,
          A.Priv_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From S_FLAGS_PRIV A, User_R B, S_FLAGS C
    Where A.U_Id = B.U_Id
      And A.Flg_Code = C.Flg_Code
      And A.Flg_Value = C.Flg_Value
      And A.Priv_Flag = 1 
    --And C.LBL_NO IS NOT NULL 
      And C.FLG_ST = 1
      AND C.LANG_NO = Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO')
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Flg_Code,
          C.Flg_Value,
          0 Priv_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, S_FLAGS C
    Where C.FLG_ST = 1
      AND C.FLG_PRIV = 1
    --And C.LBL_NO IS NOT NULL 
      AND C.LANG_NO = Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO')
      AND Not Exists
             (Select 1
                From S_FLAGS_PRIV
               Where U_Id = B.U_Id And Flg_Code = C.Flg_Code And   Flg_Value = C.Flg_Value And Rownum <= 1)
;

--------------------------------------------------------------
-- View 78: IAS_V_USR_BRN_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_BRN_PRV" ("U_ID","USR_NAME","BRN_NO","BRN_NM","ADD_FLAG"
,"VIEW_FLAG","FILL_FLAG","ADD_BNF_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Brn_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Brn_Lname,
 C.Brn_Fname),Nvl (C.Brn_Fname, C.Brn_Lname)) Brn_Nm,
          A.Add_Flag,
          A.View_Flag,
          A.Fill_Flag,
          A.ADD_BNF_FLAG,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From S_Brn_Usr_Priv A, User_R B, S_Brn  C
    Where     A.U_Id = B.U_Id
          And A.Brn_No = C.Brn_No
          --And (Add_Flag = 1 Or View_Flag = 1)  
   Union
 Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Brn_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Brn_Fname,
 C.Brn_Lname),Nvl (C.Brn_Lname, C.Brn_Fname)) Brn_Nm,
          0 Add_Flag,
          0 View_Flag,
          0 Fill_Flag,
          0 ADD_BNF_FLAG,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, S_Brn C
    Where Not Exists
             (Select 1
                From S_Brn_Usr_Priv
               Where Brn_No = C.Brn_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 79: IAS_V_USR_GLRQ_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_GLRQ_TYP_PRV" ("U_ID","USR_NAME","RQ_TYPE","RQ_NM","RQ_DOC_TYPE"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Rq_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Rq_Name, C.Rq_E_Name),Nvl (C.Rq_E_Name, C.Rq_Name)) Rq_Nm,
          C.Rq_Doc_Type,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Glrq_Types_Priv A, User_R B, Ias_Glrq_Types  C
    Where A.U_Id = B.U_Id
          And A.Rq_Type = C.Rq_Type
          And A.Rq_Doc_Type = C.Rq_Doc_Type
          And (Add_Flag = 1 Or View_Flag = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Rq_Type,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Rq_Name, C.Rq_E_Name),Nvl (C.Rq_E_Name, C.Rq_Name)) Rq_Nm,
          C.Rq_Doc_Type,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, Ias_Glrq_Types C
    Where Not Exists
             (Select 1
                From Ias_Glrq_Types_Priv
               Where Rq_Type = C.Rq_Type And Rq_Doc_Type = C.Rq_Doc_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 80: IAS_V_USR_REP_SMPLE_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_REP_SMPLE_PRV" ("U_ID","USR_NAME","REP_SMPLE_NO","REP_SMPLE_NM"
,"FORM_NO","REP_SMPLE_DFLT","PRIV_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Rep_Smple_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.SMPL_L_NM,
 C.SMPL_F_NM),Nvl (C.SMPL_F_NM, C.SMPL_L_NM)) REP_SMPLE_NM,          
          A.Form_No,
          A.Rep_Smple_Dflt,
          A.Priv_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Rep_Smple_User A, User_R B, S_SCR_RPRT_SMPL C
    Where A.U_Id = B.U_Id
      AND A.Rep_Smple_No=C.SMPL_NO
      AND A.FORM_NO=C.FORM_NO
    --  And A.Priv_Flag = 1 
  Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          SMPL_NO Rep_Smple_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.SMPL_L_NM,
 C.SMPL_F_NM),Nvl (C.SMPL_F_NM, C.SMPL_L_NM)) REP_SMPLE_NM,
          A.Form_No ,
          0 Rep_Smple_Dflt,
          0 Priv_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From Form_Detail A ,User_R B, S_SCR_RPRT_SMPL C
    Where A.FORM_NO = C.FORM_NO
      And Not Exists
               (Select 1
                  From Ias_Rep_Smple_User
                  Where Ias_Rep_Smple_User.Rep_Smple_No = C.SMPL_NO 
                  And Ias_Rep_Smple_User.Form_No = A.Form_No 
                  And Ias_Rep_Smple_User.U_Id = B.U_Id And Rownum <= 1) 
;

--------------------------------------------------------------
-- View 81: IAS_V_USR_ACC_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_ACC_PRV" ("U_ID","USR_NAME","A_CODE","AC_NM","A_CY","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.A_CODE,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.A_Name, C.A_Name_Eng),NVL (C.A_Name_Eng, C.A_Name)) Ac_Nm,
          A.A_Cy,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM Priv_Acc A, User_R B, Account C
    WHERE     A.U_Id     = B.U_Id
          AND   A.A_Code = C.A_Code
          --AND (Add_Flag   = 1 OR View_Flag = 1)
     And Exists  ( Select 1  From Account_Types  
                    Where Nvl (Affected_By_Trans, 0) = 1
                      And Account_Types.Account_Type = C.A_S_M )              
   UNION
   SELECT B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.A_Code,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.A_Name, C.A_Name_Eng),NVL (C.A_Name_Eng, C.A_Name)) Ac_Nm,
          A.A_Cy,
          0 Add_Flag,
          0 View_Flag,
          NULL Ad_U_Id,
          NULL Ad_Date,
          NULL Up_U_Id,
          NULL Up_Date,
          0 Rec_Src
     FROM Account_Curr A, User_R B, Account C
    WHERE A.A_Code = C.A_Code
          AND NOT EXISTS
                     (SELECT 1
                        FROM Priv_Acc
                       WHERE     A_Code = A.A_Code
                             And    A_Cy     = A.A_Cy
                             AND U_Id        =  B.U_Id
                             AND ROWNUM <= 1)
     And Exists  ( Select 1  From Account_Types  
                       Where Nvl (Affected_By_Trans, 0) = 1
                          And Account_Types.Account_Type = C.A_S_M )
;

--------------------------------------------------------------
-- View 82: IAS_V_USR_CST_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_CST_PRV" ("U_ID","USR_NAME","C_CODE","C_NM","A_CY","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.C_CODE,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.C_A_Name, C.C_E_Name),NVL (C.C_E_Name, C.C_A_Name)) C_Nm,
          A.A_Cy,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM Ias_Priv_Customer A, User_R B, Customer C
    WHERE     A.U_Id = B.U_Id
          AND  A.C_Code = C.C_Code
          --AND (Add_Flag = 1 OR View_Flag = 1)
   UNION
   SELECT B.U_Id,
              Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
              C.C_Code,
              Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.C_A_Name,
 C.C_E_Name),NVL (C.C_E_Name, C.C_A_Name)) C_Nm,
              A.A_Cy,
              0 Add_Flag,
              0 View_Flag,
              NULL Ad_U_Id,
              NULL Ad_Date,
              NULL Up_U_Id,
              NULL Up_Date,
              0 Rec_Src
     FROM Customer_Curr A, User_R B, Customer C
    WHERE A.C_Code = C.C_Code
          AND NOT EXISTS
                     (SELECT 1
                        FROM Ias_Priv_Customer
                       WHERE     C_Code = A.C_Code
                             AND A_Cy = A.A_Cy
                             AND U_Id = B.U_Id
                             AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 83: IAS_V_USR_VNDR_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_VNDR_PRV" ("U_ID","USR_NAME","V_CODE","V_NM","A_CY","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.V_CODE,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.V_A_Name, C.V_E_Name),NVL (C.V_E_Name, C.V_A_Name)) C_Nm,
          A.A_Cy,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM Ias_Priv_Vendor A, User_R B, V_Details C
    WHERE     A.U_Id = B.U_Id
          AND  A.V_Code = C.V_Code
          --AND (Add_Flag = 1 OR View_Flag = 1)
   UNION
   SELECT B.U_Id,
              Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name,
 B.U_E_Name),NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
              C.V_Code,
              Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.V_A_Name,
 C.V_E_Name),NVL (C.V_E_Name, C.V_A_Name)) C_Nm,
              A.A_Cy,
              0 Add_Flag,
              0 View_Flag,
              NULL Ad_U_Id,
              NULL Ad_Date,
              NULL Up_U_Id,
              NULL Up_Date,
              0 Rec_Src
     FROM Vendor_Curr A, User_R B, V_Details C
    WHERE A.V_Code = C.V_Code
          AND NOT EXISTS
                     (SELECT 1
                        FROM Ias_Priv_Vendor
                       WHERE     V_Code = A.V_Code
                             AND A_Cy = A.A_Cy
                             AND U_Id = B.U_Id
                             AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 84: IAS_V_USR_SCR_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_SCR_PRV" ("U_ID","USR_NAME","FORM_NO","FORM_NAME","INCLUDE_FLAG"
,"AD_FLAG","DEL_FLAG","MOD_FLAG","VIEW_FLAG","PRINT_FLAG","VWREP_FLAG","VRFY_FLAG"
,"PST_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC","F_ORDER_NO") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Form_No ,
           C.Form_Name Form_Name ,
          A.Include_Flag,
          A.Ad_Flag,
          A.Del_Flag,
          A.Mod_Flag,
          A.View_Flag,
          A.Print_Flag,
          A.Vwrep_Flag,
          A.Vrfy_Flag,
          A.Pst_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src,
            A.F_Order_No
     From Privilege  A, User_R B, Ias_Form_Name C
    Where     A.U_Id = B.U_Id
          And   A.Form_No = C.Form_No
          And   C.Lang_No= 1
          --And   Include_Flag = 1
  Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.Form_No,
          C.Form_Name Form_Name ,
         0 Include_Flag,
         0 Ad_Flag,
         0 Del_Flag,
         0 Mod_Flag,
         0 View_Flag,
         0 Print_Flag,
         0 Vwrep_Flag,
         0 Vrfy_Flag,
         0 Pst_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src,
            Null F_Order_No
     From User_R B, Ias_Form_Name C
    Where C.Lang_No= 1 
          And Not Exists
             (Select 1
                From Privilege
               Where Form_No = C.Form_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 85: IAS_V_USR_ALRT_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_ALRT_PRV" ("U_ID","USR_NAME","ALRT_NO","PRV_FLG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          DECODE (Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),1, NVL (B.U_A_Name, B.U_E_Name),
                  NVL (B.U_E_Name, B.U_A_Name))Usr_Nm,
          A.ALRT_NO,
          A.Prv_Flg,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     FROM S_USR_ALRT_SYS_PRIV A, User_R B, S_ALRT_SYS_MST C
    WHERE     A.U_Id = B.U_Id
          AND A.ALRT_NO = C.ALRT_NO
          AND Prv_Flg = 1         
   UNION
   SELECT B.U_Id,
          DECODE (Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),
                  1, NVL (B.U_A_Name, B.U_E_Name),
                  NVL (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.ALRT_NO,
          0 Prv_Flg,
          NULL Ad_U_Id,
          NULL Ad_Date,
          NULL Up_U_Id,
          NULL Up_Date,
          0 Rec_Src
     FROM User_R B, S_ALRT_SYS_MST C
    WHERE NOT EXISTS
                 (SELECT 1
                    FROM S_USR_ALRT_SYS_PRIV
                   WHERE     ALRT_NO = C.ALRT_NO
                         AND U_Id = B.U_Id
                         AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 86: S_V_SCR_CSS_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_SCR_CSS_PRV" ("U_ID","USR_NM","SCR_NO","PRV_FLG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.C_Code,
                          Decode (Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),
                                  1, Nvl (B.C_A_Name, B.C_E_Name),
                                  Nvl (B.C_E_Name, B.C_A_Name)
                                 ) Usr_Nm,
                          A.Scr_No, A.Inc_Flg, A.Ad_U_Id, A.Ad_Date, Null Up_U_Id,
                          Null Up_Date, 1 Rec_Src
                   From   S_Scr_Css_Prv A,
                          Customer B,
                          S_Scr_Css C
                   Where  A.C_Code = B.C_Code
                   And    A.Scr_No = C.Scr_No
                   And    A.Inc_Flg = 1
                   And    Nvl (C.Inactive, 0) = 0
                   Union
                   Select B.C_Code,
                          Decode (Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),
                                  1, Nvl (B.C_A_Name, B.C_E_Name),
                                  Nvl (B.C_E_Name, B.C_A_Name)
                                 ) Usr_Nm,
                          C.Scr_No, 0 Prv_Flg, Null Ad_U_Id, Null Ad_Date, Null Up_U_Id,
                          Null Up_Date, 0 Rec_Src
                   From   Customer B,
                          S_Scr_Css C
                   Where  Nvl (C.Inactive, 0) = 0
                   And    Not Exists (
                                 Select 1
                                 From   S_Scr_Css_Prv
                                 Where  C_Code = B.C_Code And Scr_No = C.Scr_No
                                        And Rownum <= 1)
;

--------------------------------------------------------------
-- View 87: IAS_V_ACCNT_BLNC
--------------------------------------------------------------
CREATE VIEW "IAS_V_ACCNT_BLNC" ("A_CODE","AC_A_NM","AC_E_NM","A_CY","CRNT_BLNC_L","CRNT_BLNC_F") AS 
SELECT M.A_CODE,M.A_NAME AC_A_NM,M.A_NAME_ENG AC_E_NM, D.A_CY,NVL(SUM(D.AMT),0) CRNT_BLNC_L  , NVL(SUM(D.AMT_F),0) CRNT_BLNC_F
  FROM ACCOUNT M ,IAS_POST_DTL D
 WHERE M.A_CODE = D.A_CODE 
 GROUP BY M.A_CODE,M.A_NAME,M.A_NAME_ENG, D.A_CY
;

--------------------------------------------------------------
-- View 88: IAS_V_CHK_AC_DTL_TRNS
--------------------------------------------------------------
CREATE VIEW "IAS_V_CHK_AC_DTL_TRNS" ("DOC_TYPE","AC_CODE_DTL","AC_DTL_TYP","A_CY"
,"DOC_NO","JV_TYPE","DOC_SER","CC_CODE","RCRD_NO") AS 
SELECT 1 doc_type,D.ac_code_dtl ,D.ac_dtl_typ,D.a_cy ,D.j_doc_no doc_no,D.jv_type jv_type ,
				        M.j_ser doc_ser,D.cc_code , D.rcrd_no
				   From Master_journal_v M,detail_journal_v D
				  where M.j_ser  = D.j_ser  
				    and D.ac_code_dtl Is Not Null
				    and nvl(stand_by,0) = 0
				 Minus
				 Select doc_type,ac_code_dtl,ac_dtl_typ,a_cy,doc_no doc_no,jv_type jv_type, 
				        doc_ser,cc_code,rcrd_no
				   From Ias_Post_dtl
				  where doc_type=1
				    and ac_code_dtl Is Not Null
;

--------------------------------------------------------------
-- View 89: IAS_V_SMAN_PRM
--------------------------------------------------------------
CREATE VIEW "IAS_V_SMAN_PRM" ("SMAN_TYP","REP_CODE","REP_L_NM","REP_F_NM","W_CODE"
,"CASH_NO","BANK_NO","GRP_CODE","SMAN_PASS","USE_INV_DTS") AS 
(SELECT 1 SMAN_TYP,
           REPRS_CODE REP_CODE,
           REPRS_A_NAME REP_L_NM,
           REPRS_E_NAME REP_F_NM,
           W_CODE,
           CASH_NO,
           BANK_NO,
           GRP_CODE,
           SMAN_PASS,
           NVL (USE_INV_DTS, 0)
      FROM SALES_MAN
    UNION ALL
    SELECT 3 SMAN_TYP,
           PRM_CODE REP_CODE,
           PRM_L_NM REP_L_NM,
           PRM_F_NM REP_F_NM,
           W_CODE,
           CASH_NO,
           BANK_NO,
           GRP_CODE,
           SMAN_PASS PRM_PASS,
           NVL (USE_INV_DTS, 0)
      FROM IAS_PROMOTERS)
;

--------------------------------------------------------------
-- View 90: IAS_V_ITM_UNT
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_UNT" ("I_CODE","I_NAME","I_E_NAME","G_CODE","GRP_CLASS_CODE"
,"MNG_CODE","SUBG_CODE","ITEM_SIZE","ITEM_TYPE","PRIMARY_COST","I_CWTAVG","I_DESC"
,"ALTER_CODE","MANF_CODE","BLOCKED","INACTIVE","INACTIVE_RES","INACTIVE_DATE"
,"INACTIVE_U_ID","SERVICE_ITM","CASH_SALE","NO_RETURN_SALE","RETURN_PERIOD","KIT_ITM"
,"USE_EXP_DATE","USE_BATCH_NO","USE_SERIALNO","USE_ATTCH","VAT_TYPE","VAT_PER"
,"ALLOW_DISC","DISC_PER","ALLOW_DISC_PI","REST_ITM","DISC_PER_PI","ALLOW_FREE_QTY"
,"FREE_QTY_PER","USE_QTY_FRACTION","UNDER_SELLING","GROUP_NO","ILEV_NO","I_IMG"
,"DAY_ITM_EXPIRE","MIN_LMT_COST_PER","MAX_LMT_COST_PER","FIELD1","FIELD2","FIELD3"
,"FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","ASSISTANT_NO"
,"DETAIL_NO","LENGTH_ITM","WIDTH_ITM","HEIGHT_ITM","SIZE_ITM","AREA_ITM","WEIGHT_ITM"
,"SEASON_ITM","ORE_ITM","MARK_ITM","COMPANY_ITM","COUNTRY_ITM","INCOME_DATE"
,"REQUIREMENT","ITEM_STORE","ASSETS","HAS_COMM","COMM_TYPE","COMM_AMT","ACTIVITY_NO"
,"V_CODE","VNDR_A_CY","VNDR_PRICE","VNDR_I_CODE","HOT_KEY","LOW_LMT_PRNT_FRST"
,"LOW_LMT_PRNT_SCND","LOW_LMT_APP_REQ_ATTCH","LOW_LMT_NOT_APP_REQ_ATTCH","IMP_XLS"
,"DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF","WEIGHTED","BALANCE_NO"
,"RET_ITM_BEFOR_EXP_PRD","MSUR_UNT_REP","PI_BILL_NO","USE_GRANT","GRANT_PERIOD"
,"ITM_COLOR","ITM_MEASURE","USE_WEIGHT","CONN_ITM_SO_INC","LNK_BRCHR","LNK_YOUTUBE"
,"USE_EMP_FLG","ALTR_MLT_FLG","I_F_DESC","REST_ITM_COMBO","USED_ITM","MRP_ITM"
,"MRP_ITM_CLSS","CST_PER","PRFT_MRGN_PRCNT","CHK_AVL_QTY_IN_RES","FOOD_GRP_NO"
,"USE_AUTO_PST_RMS_DATA_TO_INV","HPS_ITM","GNR_ITM_FLG","PRCDR_TYP","HSN_CODE"
,"CST_STANDR","CST_LAST_PROD","ITM_ORDR_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM","SHRT_ITM_L_NM","SHRT_ITM_F_NM"
,"ITM_MIN_QTY","ITM_MAX_QTY","SUB_FOOD_GRP_NO","SMPL_TYP","RNT_SRVC","PST_WITH_ADMT"
,"PST_WITH_RNT","HAS_PRCNT","BRTH_SRVC","EQPMNT_SRVC","SRGRY_CLSS","SRVC_SORT","CSSD_FLG"
,"LNDRY_FLG","USE_QR_CODE","ITM_MIN_LMT_QTY","ITM_MAX_LMT_QTY","ITM_ROL_LMT_QTY"
,"DFLT_ASM_ORD_QTY","FILL_ITM_CMPNNT_IN_RMS_INVC","USE_PRICE_EXPIRE_DATE_OPTIONAL"
,"USE_PRICE_BATCH_NO_OPTIONAL","PRCHS_SRVC_AC_CODE","FEED_ITM_FLG","INSRNC_FLG"
,"GTIN_CODE","USE_SRLNO_TYPE","USE_QR_CODE_TYPE","QR_CODE_MTHD_NO"
,"USE_BATCH_NO_AUTO_SQ_FLG","BATCH_NO_MTHD_NO_SQ","EXEC_TAT","EXEC_TAT_UNT"
,"HIDE_ITM_CHF_SCR_FLG","KIT_ITM_CLSSFCTN_TYP","STATCL_CLSS"
,"GET_AVL_QTY_FROM_CMPNNT_FLG","KIT_ITEM_RANK","LMT_QTY_SAL_CST","WGHT_VAL_ITM"
,"USE_ITM_IN_CSS_SYS_FLG","INIT_PRIMARY_COST","CHK_ITM_PCS_MNDTRY_FLG","EXCD_PER"
,"USED_IN_KIT_ITM","MWS_CHK_FLG","DFLT_TIME_MNT","LOST_PRCNT_IN_PRCHS","ITM_UNT","P_SIZE"
,"MAIN_UNIT","SALE_UNIT","PUR_UNIT","STOCK_UNIT","NO_SALE","BARCODE","LVL_UNIT") AS 
SELECT M."I_CODE",M."I_NAME",M."I_E_NAME",M."G_CODE",M."GRP_CLASS_CODE",M."MNG_CODE"
,M."SUBG_CODE",M."ITEM_SIZE",M."ITEM_TYPE",M."PRIMARY_COST",M."I_CWTAVG",M."I_DESC"
,M."ALTER_CODE",M."MANF_CODE",M."BLOCKED",M."INACTIVE",M."INACTIVE_RES",M."INACTIVE_DATE"
,M."INACTIVE_U_ID",M."SERVICE_ITM",M."CASH_SALE",M."NO_RETURN_SALE",M."RETURN_PERIOD"
,M."KIT_ITM",M."USE_EXP_DATE",M."USE_BATCH_NO",M."USE_SERIALNO",M."USE_ATTCH"
,M."VAT_TYPE",M."VAT_PER",M."ALLOW_DISC",M."DISC_PER",M."ALLOW_DISC_PI",M."REST_ITM"
,M."DISC_PER_PI",M."ALLOW_FREE_QTY",M."FREE_QTY_PER",M."USE_QTY_FRACTION"
,M."UNDER_SELLING",M."GROUP_NO",M."ILEV_NO",M."I_IMG",M."DAY_ITM_EXPIRE"
,M."MIN_LMT_COST_PER",M."MAX_LMT_COST_PER",M."FIELD1",M."FIELD2",M."FIELD3",M."FIELD4"
,M."FIELD5",M."FIELD6",M."FIELD7",M."FIELD8",M."FIELD9",M."FIELD10",M."ASSISTANT_NO"
,M."DETAIL_NO",M."LENGTH_ITM",M."WIDTH_ITM",M."HEIGHT_ITM",M."SIZE_ITM",M."AREA_ITM"
,M."WEIGHT_ITM",M."SEASON_ITM",M."ORE_ITM",M."MARK_ITM",M."COMPANY_ITM",M."COUNTRY_ITM"
,M."INCOME_DATE",M."REQUIREMENT",M."ITEM_STORE",M."ASSETS",M."HAS_COMM",M."COMM_TYPE"
,M."COMM_AMT",M."ACTIVITY_NO",M."V_CODE",M."VNDR_A_CY",M."VNDR_PRICE",M."VNDR_I_CODE"
,M."HOT_KEY",M."LOW_LMT_PRNT_FRST",M."LOW_LMT_PRNT_SCND",M."LOW_LMT_APP_REQ_ATTCH"
,M."LOW_LMT_NOT_APP_REQ_ATTCH",M."IMP_XLS",M."DOC_TYPE_REF",M."DOC_NO_REF"
,M."DOC_SER_REF",M."WEIGHTED",M."BALANCE_NO",M."RET_ITM_BEFOR_EXP_PRD",M."MSUR_UNT_REP"
,M."PI_BILL_NO",M."USE_GRANT",M."GRANT_PERIOD",M."ITM_COLOR",M."ITM_MEASURE"
,M."USE_WEIGHT",M."CONN_ITM_SO_INC",M."LNK_BRCHR",M."LNK_YOUTUBE",M."USE_EMP_FLG"
,M."ALTR_MLT_FLG",M."I_F_DESC",M."REST_ITM_COMBO",M."USED_ITM",M."MRP_ITM"
,M."MRP_ITM_CLSS",M."CST_PER",M."PRFT_MRGN_PRCNT",M."CHK_AVL_QTY_IN_RES",M."FOOD_GRP_NO"
,M."USE_AUTO_PST_RMS_DATA_TO_INV",M."HPS_ITM",M."GNR_ITM_FLG",M."PRCDR_TYP",M."HSN_CODE"
,M."CST_STANDR",M."CST_LAST_PROD",M."ITM_ORDR_NO",M."AD_U_ID",M."AD_DATE",M."UP_U_ID"
,M."UP_DATE",M."UP_CNT",M."PR_REP",M."AD_TRMNL_NM",M."UP_TRMNL_NM",M."SHRT_ITM_L_NM"
,M."SHRT_ITM_F_NM",M."ITM_MIN_QTY",M."ITM_MAX_QTY",M."SUB_FOOD_GRP_NO",M."SMPL_TYP"
,M."RNT_SRVC",M."PST_WITH_ADMT",M."PST_WITH_RNT",M."HAS_PRCNT",M."BRTH_SRVC"
,M."EQPMNT_SRVC",M."SRGRY_CLSS",M."SRVC_SORT",M."CSSD_FLG",M."LNDRY_FLG",M."USE_QR_CODE"
,M."ITM_MIN_LMT_QTY",M."ITM_MAX_LMT_QTY",M."ITM_ROL_LMT_QTY",M."DFLT_ASM_ORD_QTY"
,M."FILL_ITM_CMPNNT_IN_RMS_INVC",M."USE_PRICE_EXPIRE_DATE_OPTIONAL"
,M."USE_PRICE_BATCH_NO_OPTIONAL",M."PRCHS_SRVC_AC_CODE",M."FEED_ITM_FLG",M."INSRNC_FLG"
,M."GTIN_CODE",M."USE_SRLNO_TYPE",M."USE_QR_CODE_TYPE",M."QR_CODE_MTHD_NO"
,M."USE_BATCH_NO_AUTO_SQ_FLG",M."BATCH_NO_MTHD_NO_SQ",M."EXEC_TAT",M."EXEC_TAT_UNT"
,M."HIDE_ITM_CHF_SCR_FLG",M."KIT_ITM_CLSSFCTN_TYP",M."STATCL_CLSS"
,M."GET_AVL_QTY_FROM_CMPNNT_FLG",M."KIT_ITEM_RANK",M."LMT_QTY_SAL_CST",M."WGHT_VAL_ITM"
,M."USE_ITM_IN_CSS_SYS_FLG",M."INIT_PRIMARY_COST",M."CHK_ITM_PCS_MNDTRY_FLG",M."EXCD_PER"
,M."USED_IN_KIT_ITM",M."MWS_CHK_FLG",M."DFLT_TIME_MNT",M."LOST_PRCNT_IN_PRCHS" ,D.Itm_UNT
,D.P_SIZE,D.MAIN_UNIT,D.SALE_UNIT,D.PUR_UNIT,
						                        D.STOCK_UNIT,D.NO_SALE,D.BARCODE,D.LVL_UNIT
						                From Ias_Itm_Mst M ,Ias_Itm_Dtl D 
						                 Where M.I_Code = D.I_Code 
;

--------------------------------------------------------------
-- View 91: ITEM_DETAILS
--------------------------------------------------------------
CREATE VIEW "ITEM_DETAILS" ("I_CODE","I_NAME","I_E_NAME","G_CODE","GRP_CLASS_CODE"
,"MNG_CODE","SUBG_CODE","ITEM_SIZE","ITEM_TYPE","PRIMARY_COST","I_CWTAVG","I_DESC"
,"ALTER_CODE","MANF_CODE","BLOCKED","INACTIVE","INACTIVE_RES","INACTIVE_DATE"
,"INACTIVE_U_ID","SERVICE_ITM","CASH_SALE","NO_RETURN_SALE","RETURN_PERIOD","KIT_ITM"
,"USE_EXP_DATE","USE_BATCH_NO","USE_SERIALNO","USE_ATTCH","VAT_TYPE","VAT_PER"
,"ALLOW_DISC","DISC_PER","ALLOW_DISC_PI","REST_ITM","DISC_PER_PI","ALLOW_FREE_QTY"
,"FREE_QTY_PER","USE_QTY_FRACTION","UNDER_SELLING","GROUP_NO","ILEV_NO","I_IMG"
,"DAY_ITM_EXPIRE","MIN_LMT_COST_PER","MAX_LMT_COST_PER","FIELD1","FIELD2","FIELD3"
,"FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","ASSISTANT_NO"
,"DETAIL_NO","LENGTH_ITM","WIDTH_ITM","HEIGHT_ITM","SIZE_ITM","AREA_ITM","WEIGHT_ITM"
,"SEASON_ITM","ORE_ITM","MARK_ITM","COMPANY_ITM","COUNTRY_ITM","INCOME_DATE"
,"REQUIREMENT","ITEM_STORE","ASSETS","HAS_COMM","COMM_TYPE","COMM_AMT","ACTIVITY_NO"
,"V_CODE","VNDR_A_CY","VNDR_PRICE","VNDR_I_CODE","HOT_KEY","LOW_LMT_PRNT_FRST"
,"LOW_LMT_PRNT_SCND","LOW_LMT_APP_REQ_ATTCH","LOW_LMT_NOT_APP_REQ_ATTCH","IMP_XLS"
,"DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF","WEIGHTED","BALANCE_NO"
,"RET_ITM_BEFOR_EXP_PRD","MSUR_UNT_REP","PI_BILL_NO","USE_GRANT","GRANT_PERIOD"
,"ITM_COLOR","ITM_MEASURE","USE_WEIGHT","CONN_ITM_SO_INC","LNK_BRCHR","LNK_YOUTUBE"
,"USE_EMP_FLG","ALTR_MLT_FLG","I_F_DESC","REST_ITM_COMBO","USED_ITM","MRP_ITM"
,"MRP_ITM_CLSS","CST_PER","PRFT_MRGN_PRCNT","CHK_AVL_QTY_IN_RES","FOOD_GRP_NO"
,"USE_AUTO_PST_RMS_DATA_TO_INV","HPS_ITM","GNR_ITM_FLG","PRCDR_TYP","HSN_CODE"
,"CST_STANDR","CST_LAST_PROD","ITM_ORDR_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM","SHRT_ITM_L_NM","SHRT_ITM_F_NM"
,"ITM_MIN_QTY","ITM_MAX_QTY","SUB_FOOD_GRP_NO","SMPL_TYP","RNT_SRVC","PST_WITH_ADMT"
,"PST_WITH_RNT","HAS_PRCNT","BRTH_SRVC","EQPMNT_SRVC","SRGRY_CLSS","SRVC_SORT","CSSD_FLG"
,"LNDRY_FLG","USE_QR_CODE","ITM_MIN_LMT_QTY","ITM_MAX_LMT_QTY","ITM_ROL_LMT_QTY"
,"DFLT_ASM_ORD_QTY","FILL_ITM_CMPNNT_IN_RMS_INVC","USE_PRICE_EXPIRE_DATE_OPTIONAL"
,"USE_PRICE_BATCH_NO_OPTIONAL","PRCHS_SRVC_AC_CODE","FEED_ITM_FLG","INSRNC_FLG"
,"GTIN_CODE","USE_SRLNO_TYPE","USE_QR_CODE_TYPE","QR_CODE_MTHD_NO"
,"USE_BATCH_NO_AUTO_SQ_FLG","BATCH_NO_MTHD_NO_SQ","EXEC_TAT","EXEC_TAT_UNT"
,"HIDE_ITM_CHF_SCR_FLG","KIT_ITM_CLSSFCTN_TYP","STATCL_CLSS"
,"GET_AVL_QTY_FROM_CMPNNT_FLG","KIT_ITEM_RANK","LMT_QTY_SAL_CST","WGHT_VAL_ITM"
,"USE_ITM_IN_CSS_SYS_FLG","INIT_PRIMARY_COST","CHK_ITM_PCS_MNDTRY_FLG","EXCD_PER"
,"USED_IN_KIT_ITM","MWS_CHK_FLG","DFLT_TIME_MNT","LOST_PRCNT_IN_PRCHS","G_PARENT"
,"G_SIZE","CNT_UNIT","ITM_UNT","UNIT","P_SIZE","MAIN_UNIT","SALE_UNIT","PUR_UNIT"
,"STOCK_UNIT","NO_SALE","BARCODE","LVL_UNIT") AS 
SELECT M."I_CODE",M."I_NAME",M."I_E_NAME",M."G_CODE",M."GRP_CLASS_CODE",M."MNG_CODE"
,M."SUBG_CODE",M."ITEM_SIZE",M."ITEM_TYPE",M."PRIMARY_COST",M."I_CWTAVG",M."I_DESC"
,M."ALTER_CODE",M."MANF_CODE",M."BLOCKED",M."INACTIVE",M."INACTIVE_RES",M."INACTIVE_DATE"
,M."INACTIVE_U_ID",M."SERVICE_ITM",M."CASH_SALE",M."NO_RETURN_SALE",M."RETURN_PERIOD"
,M."KIT_ITM",M."USE_EXP_DATE",M."USE_BATCH_NO",M."USE_SERIALNO",M."USE_ATTCH"
,M."VAT_TYPE",M."VAT_PER",M."ALLOW_DISC",M."DISC_PER",M."ALLOW_DISC_PI",M."REST_ITM"
,M."DISC_PER_PI",M."ALLOW_FREE_QTY",M."FREE_QTY_PER",M."USE_QTY_FRACTION"
,M."UNDER_SELLING",M."GROUP_NO",M."ILEV_NO",M."I_IMG",M."DAY_ITM_EXPIRE"
,M."MIN_LMT_COST_PER",M."MAX_LMT_COST_PER",M."FIELD1",M."FIELD2",M."FIELD3",M."FIELD4"
,M."FIELD5",M."FIELD6",M."FIELD7",M."FIELD8",M."FIELD9",M."FIELD10",M."ASSISTANT_NO"
,M."DETAIL_NO",M."LENGTH_ITM",M."WIDTH_ITM",M."HEIGHT_ITM",M."SIZE_ITM",M."AREA_ITM"
,M."WEIGHT_ITM",M."SEASON_ITM",M."ORE_ITM",M."MARK_ITM",M."COMPANY_ITM",M."COUNTRY_ITM"
,M."INCOME_DATE",M."REQUIREMENT",M."ITEM_STORE",M."ASSETS",M."HAS_COMM",M."COMM_TYPE"
,M."COMM_AMT",M."ACTIVITY_NO",M."V_CODE",M."VNDR_A_CY",M."VNDR_PRICE",M."VNDR_I_CODE"
,M."HOT_KEY",M."LOW_LMT_PRNT_FRST",M."LOW_LMT_PRNT_SCND",M."LOW_LMT_APP_REQ_ATTCH"
,M."LOW_LMT_NOT_APP_REQ_ATTCH",M."IMP_XLS",M."DOC_TYPE_REF",M."DOC_NO_REF"
,M."DOC_SER_REF",M."WEIGHTED",M."BALANCE_NO",M."RET_ITM_BEFOR_EXP_PRD",M."MSUR_UNT_REP"
,M."PI_BILL_NO",M."USE_GRANT",M."GRANT_PERIOD",M."ITM_COLOR",M."ITM_MEASURE"
,M."USE_WEIGHT",M."CONN_ITM_SO_INC",M."LNK_BRCHR",M."LNK_YOUTUBE",M."USE_EMP_FLG"
,M."ALTR_MLT_FLG",M."I_F_DESC",M."REST_ITM_COMBO",M."USED_ITM",M."MRP_ITM"
,M."MRP_ITM_CLSS",M."CST_PER",M."PRFT_MRGN_PRCNT",M."CHK_AVL_QTY_IN_RES",M."FOOD_GRP_NO"
,M."USE_AUTO_PST_RMS_DATA_TO_INV",M."HPS_ITM",M."GNR_ITM_FLG",M."PRCDR_TYP",M."HSN_CODE"
,M."CST_STANDR",M."CST_LAST_PROD",M."ITM_ORDR_NO",M."AD_U_ID",M."AD_DATE",M."UP_U_ID"
,M."UP_DATE",M."UP_CNT",M."PR_REP",M."AD_TRMNL_NM",M."UP_TRMNL_NM",M."SHRT_ITM_L_NM"
,M."SHRT_ITM_F_NM",M."ITM_MIN_QTY",M."ITM_MAX_QTY",M."SUB_FOOD_GRP_NO",M."SMPL_TYP"
,M."RNT_SRVC",M."PST_WITH_ADMT",M."PST_WITH_RNT",M."HAS_PRCNT",M."BRTH_SRVC"
,M."EQPMNT_SRVC",M."SRGRY_CLSS",M."SRVC_SORT",M."CSSD_FLG",M."LNDRY_FLG",M."USE_QR_CODE"
,M."ITM_MIN_LMT_QTY",M."ITM_MAX_LMT_QTY",M."ITM_ROL_LMT_QTY",M."DFLT_ASM_ORD_QTY"
,M."FILL_ITM_CMPNNT_IN_RMS_INVC",M."USE_PRICE_EXPIRE_DATE_OPTIONAL"
,M."USE_PRICE_BATCH_NO_OPTIONAL",M."PRCHS_SRVC_AC_CODE",M."FEED_ITM_FLG",M."INSRNC_FLG"
,M."GTIN_CODE",M."USE_SRLNO_TYPE",M."USE_QR_CODE_TYPE",M."QR_CODE_MTHD_NO"
,M."USE_BATCH_NO_AUTO_SQ_FLG",M."BATCH_NO_MTHD_NO_SQ",M."EXEC_TAT",M."EXEC_TAT_UNT"
,M."HIDE_ITM_CHF_SCR_FLG",M."KIT_ITM_CLSSFCTN_TYP",M."STATCL_CLSS"
,M."GET_AVL_QTY_FROM_CMPNNT_FLG",M."KIT_ITEM_RANK",M."LMT_QTY_SAL_CST",M."WGHT_VAL_ITM"
,M."USE_ITM_IN_CSS_SYS_FLG",M."INIT_PRIMARY_COST",M."CHK_ITM_PCS_MNDTRY_FLG",M."EXCD_PER"
,M."USED_IN_KIT_ITM",M."MWS_CHK_FLG",M."DFLT_TIME_MNT",M."LOST_PRCNT_IN_PRCHS" ,Null
 G_Parent ,Null G_Size , Null Cnt_Unit ,D.Itm_UNT,D.Itm_UNT Unit,D.P_SIZE,D.MAIN_UNIT
,D.SALE_UNIT,D.PUR_UNIT,
                        D.STOCK_UNIT,D.NO_SALE,D.BARCODE,D.LVL_UNIT    
                  From Ias_Itm_Mst M ,Ias_Itm_Dtl D 
                   Where M.I_Code = D.I_Code
                    --AND  D.MAIN_UNIT = 1 
;

--------------------------------------------------------------
-- View 92: S_V_EMP_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_EMP_PRV" ("U_ID","USR_NAME","EMPNO_HRCHYNO","EMPNM_HRCHYNM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
	          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
	                  1, NVL (b.u_a_name, b.u_e_name),
	                  NVL (b.u_e_name, b.u_a_name)
	                 ) usr_nm,
	          a.empno_hrchyno,
	          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
	                  1, NVL (c.emp_l_nm, c.emp_f_nm),
	                  NVL (c.emp_f_nm, c.emp_l_nm)
	                 ) empnm_hrchynm,
	          a.add_flag, a.view_flag, a.ad_u_id, a.ad_date, a.up_u_id, a.up_date,
	          1 rec_src
	     FROM s_emp_prv a, user_r b, s_emp c
	    WHERE a.u_id = b.u_id
	      AND a.empno_hrchyno = c.emp_no
	      AND a.emp_prv_typ = 1
	      AND (add_flag = 1 OR view_flag = 1)
	   UNION
	   SELECT b.u_id,
	          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
	                  1, NVL (b.u_a_name, b.u_e_name),
	                  NVL (b.u_e_name, b.u_a_name)
	                 ) usr_nm,
	          c.emp_no empno_hrchyno,
	          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
	                  1, NVL (c.emp_l_nm, c.emp_f_nm),
	                  NVL (c.emp_f_nm, c.emp_l_nm)
	                 ) empnm_hrchynm,
	          0 add_flag, 0 view_flag, NULL ad_u_id, NULL ad_date, NULL up_u_id,
	          NULL up_date, 0 rec_src
	     FROM user_r b, s_emp c
	    WHERE NOT EXISTS (
	             SELECT 1
	               FROM s_emp_prv
	              WHERE empno_hrchyno = c.emp_no
	                AND u_id = b.u_id
	                AND emp_prv_typ = 1
	                AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 93: S_V_HRCHY_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_HRCHY_PRV" ("U_ID","USR_NAME","EMPNO_HRCHYNO","EMPNM_HRCHYNM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
				          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
				                  1, NVL (b.u_a_name, b.u_e_name),
				                  NVL (b.u_e_name, b.u_a_name)
				                 ) usr_nm,
				          a.empno_hrchyno,
				          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
				                  1, NVL (c.hrchy_l_nm, c.hrchy_f_nm),
				                  NVL (c.hrchy_f_nm, c.hrchy_l_nm)
				                 ) empnm_hrchynm,
				          a.add_flag, a.view_flag, a.ad_u_id, a.ad_date, a.up_u_id, a.up_date,
				          1 rec_src
				     FROM s_emp_prv a, user_r b, s_hrchy c
				    WHERE a.u_id = b.u_id
				      AND a.empno_hrchyno = c.hrchy_no
				      AND a.emp_prv_typ = 2
				      AND (add_flag = 1 OR view_flag = 1)
				   UNION
				   SELECT b.u_id,
				          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
				                  1, NVL (b.u_a_name, b.u_e_name),
				                  NVL (b.u_e_name, b.u_a_name)
				                 ) usr_nm,
				          c.hrchy_no empno_hrchyno,
				          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
				                  1, NVL (c.hrchy_l_nm, c.hrchy_f_nm),
				                  NVL (c.hrchy_f_nm, c.hrchy_l_nm)
				                 ) empnm_hrchynm,
				          0 add_flag, 0 view_flag, NULL ad_u_id, NULL ad_date, NULL up_u_id,
				          NULL up_date, 0 rec_src
				     FROM user_r b, s_hrchy c
				    WHERE NOT EXISTS (
				             SELECT 1
				               FROM s_emp_prv
				              WHERE empno_hrchyno = c.hrchy_no
				                AND u_id = b.u_id
				                AND emp_prv_typ = 2
				                AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 94: IAS_V_ITM_MOV_EXP_BTCH_AVLQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_MOV_EXP_BTCH_AVLQTY" ("I_CODE","W_CODE","EXPIRE_DATE","BATCH_NO","AVL_QTY") AS 
SELECT I_CODE, W_CODE,EXPIRE_DATE, BATCH_NO, SUM( (NVL(P_QTY, 0) + NVL(PF_QTY, 0) ) * IN_OUT) AVL_QTY
                   FROM ITEM_MOVEMENT
                     GROUP BY I_CODE, W_CODE,EXPIRE_DATE, BATCH_NO
;

--------------------------------------------------------------
-- View 95: IAS_V_NY_OUT_REQUEST_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_OUT_REQUEST_DTL" ("OUT_REQ_TYPE","OUT_REQ_NO","OUT_REQ_SER"
,"I_CODE","I_QTY","ITM_UNT","P_SIZE","P_QTY","W_CODE","RCRD_NO","BARCODE","USE_ATTCH"
,"REC_ATTCH","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","ITEM_DESC","EXTERNAL_POST"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","EXPIRE_DATE","BATCH_NO") AS 
SELECT q.out_req_type, q.out_req_no, q.out_req_ser, q.i_code,
																												          mov_data.i_qty, q.itm_unt, q.p_size,
																												          (mov_data.i_qty * q.p_size) p_qty, q.w_code, q.rcrd_no, q.barcode,
																												          q.use_attch, q.rec_attch, q.i_length, q.i_width, q.i_height,
																												          q.i_number, q.item_desc, q.external_post, q.cmp_no, q.brn_no,
																												          q.brn_year, q.brn_usr,q.Expire_Date, q.Batch_No
																												   FROM   ias_out_request_dtl q,
																												          (SELECT   doc_ser, i_code, itm_unt, SUM (NVL (i_qty, 0)) i_qty
																												           FROM     (SELECT out_req_ser doc_ser, i_code, itm_unt,
																												                            NVL (i_qty, 0) i_qty
																												                     FROM   ias_out_request_dtl
																												                     UNION ALL
																												                     SELECT   doc_ser_ref doc_ser, i_code, itm_unt,
																												                              SUM (NVL (i_qty, 0)) * -1 i_qty
																												                     FROM     ias_outgoing_dtl 
																												                   WHERE    doc_type_ref = 31
																												                     AND      doc_ser_ref IS NOT NULL  
																												                     GROUP BY doc_ser_ref,
																												                              i_code,
																												                              itm_unt
																												                     UNION ALL
																												                     SELECT   doc_ser_ref doc_ser, i_code, itm_unt,
																												                              SUM (NVL (i_qty, 0)) * -1 i_qty
																												                     FROM     ias_whtrns_dtl 
																												                   WHERE    doc_type_ref = 31
																												                     AND      doc_ser_ref IS NOT NULL  
																												                     GROUP BY doc_ser_ref,
																												                              i_code,
																												                              itm_unt         )
																												           GROUP BY doc_ser,
																												                    i_code,
																												                    itm_unt
																												           HAVING   SUM (NVL (i_qty, 0)) > 0) mov_data
																												   WHERE  q.out_req_ser = mov_data.doc_ser
																												   AND    q.i_code = mov_data.i_code
																												   AND    q.itm_unt = mov_data.itm_unt
																												   AND    NVL (mov_data.i_qty, 0) >= 0
;

--------------------------------------------------------------
-- View 96: IAS_V_NY_GR_INCOMING_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_GR_INCOMING_DTL" ("INCOM_TYPE","INC_NO","INC_SER","I_CODE","I_QTY"
,"ITM_UNT","P_SIZE","P_QTY","W_CODE","RCRD_NO","BARCODE","USE_ATTCH","REC_ATTCH"
,"I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","ITEM_DESC","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","EXPIRE_DATE","BATCH_NO") AS 
SELECT q.incom_type, q.inc_no, q.inc_ser, q.i_code, mov_data.i_qty,
																												          q.itm_unt, q.p_size, (mov_data.i_qty * q.p_size) p_qty, q.w_code,
																												          q.rcrd_no, q.barcode, q.use_attch, q.rec_attch, q.i_length,
																												          q.i_width, q.i_height, q.i_number, q.item_desc, q.cmp_no, q.brn_no,
																												          q.brn_year, q.brn_usr,q.Expire_Date, q.Batch_No
																												   FROM   ias_gr_incoming_dtl q,
																												          (SELECT   doc_ser, i_code, itm_unt, SUM (NVL (i_qty, 0)) i_qty
																												           FROM     (SELECT inc_ser doc_ser, i_code, itm_unt,
																												                            NVL (i_qty, 0) i_qty
																												                     FROM   ias_gr_incoming_dtl
																												                     UNION ALL
																												                     SELECT    doc_ser_ref doc_ser, i_code, itm_unt,
																												                              SUM (NVL (i_qty, 0)) * -1 i_qty
																												                     FROM     Gr_Detail
																												                     WHERE    doc_type_ref = 32
																												                     AND      doc_ser_ref IS NOT NULL                                         
																												                     GROUP BY doc_ser_ref,
																												                              i_code,
																												                              itm_unt)
																												           GROUP BY doc_ser,
																												                    i_code,
																												                    itm_unt
																												           HAVING   SUM (NVL (i_qty, 0)) > 0) mov_data
																												   WHERE  q.inc_ser = mov_data.doc_ser
																												   AND    q.i_code = mov_data.i_code
																												   AND    q.itm_unt = mov_data.itm_unt
																												   AND    NVL (mov_data.i_qty, 0) >= 0
;

--------------------------------------------------------------
-- View 97: IAS_V_NY_ORDER_DETAIL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_ORDER_DETAIL" ("SO_TYPE","ORDER_NO","ORDER_SER","I_CODE","I_QTY"
,"FREE_QTY","P_SIZE","P_QTY","I_PRICE","RES_DATE","RES_QTY","W_CODE","RESERVED","RCRD_NO"
,"BARCODE","USE_ATTCH","REC_ATTCH","ITEM_DESC","EXTERNAL_POST","CANCELED","EXPIRE_DATE"
,"BATCH_NO","VAT_PER","VAT_AMT","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","FIELD_DTL1"
,"FIELD_DTL2","FIELD_DTL3","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","ITM_UNT"
,"WT_QTY","WT_UNT","DIS_PER","DIS_AMT_DTL","DIS_PER2","DIS_AMT_DTL2","DIS_PER3"
,"DIS_AMT_DTL3","DIS_AMT","DIS_AMT_MST","EMP_NO","SUB_C_CODE","DIS_AMT_DTL_VAT"
,"DIS_AMT_MST_VAT","VAT_AMT_DIS_DTL_VAT","VAT_AMT_AFTR_DIS","VAT_AMT_BFR_DIS"
,"VAT_AMT_DIS_MST_VAT","DOC_SEQ","PKG_UNT","PKG_UNT_SIZE","PKG_QTY","PKG_LENGTH"
,"PKG_WIDTH","PKG_HEIGHT","PKG_SIZE","PKG_WEIGHT","SI_TYPE","OTHR_AMT","INSRNCE_LOAD_PER"
,"INSRNCE_LOAD_AMT","INSRNCE_ADD_LMT","INSRNCE_APPRVD_CODE","I_PRICE_VAT","MEASUR_PRICE"
,"DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF","CC_CODE","PJ_NO","ACTV_NO"
,"STK_COST","USED_ITM","ARGMNT_NO","OTHR_AMT_DISC","VAT_AMT_OTHR","F_TIME","T_TIME"
,"DIS_AMT_AFTR_VAT","DIS_AMT_DTL2_VAT","DIS_AMT_DTL3_VAT","VAT_AMT_DIS_DTL2_VAT"
,"VAT_AMT_DIS_DTL3_VAT","PO_NO","PO_SER","FIELD_DTL4","FIELD_DTL5","FIELD_DTL6"
,"FIELD_DTL7","FIELD_DTL8","FIELD_DTL9","FIELD_DTL10","LEV_NO","I_PRICE_LEV_NO"
,"BILL_DOC_TYPE") AS 
SELECT O.SO_TYPE, O.ORDER_NO, O.ORDER_SER, 
               O.I_CODE, Mov_Data.I_Qty, Mov_Data.Free_Qty,
               O.P_Size, (Mov_Data.I_Qty*O.P_Size) P_Qty, O.I_Price,
               O.RES_DATE, O.RES_QTY, O.W_CODE, 
               O.RESERVED, O.RCRD_NO, O.BARCODE, 
               O.USE_ATTCH, O.REC_ATTCH, O.ITEM_DESC, 
               O.EXTERNAL_POST, O.CANCELED, O.EXPIRE_DATE, 
               O.BATCH_NO, O.VAT_PER, O.VAT_AMT, 
               O.I_LENGTH, O.I_WIDTH, O.I_HEIGHT, 
               O.I_NUMBER, O.FIELD_DTL1, O.FIELD_DTL2, 
               O.FIELD_DTL3, O.CMP_NO, O.BRN_NO, 
               O.BRN_YEAR, O.BRN_USR, O.UP_CNT, 
               O.ITM_UNT, O.WT_QTY, O.WT_UNT, 
               O.DIS_PER, O.DIS_AMT_DTL, O.DIS_PER2, 
               O.DIS_AMT_DTL2, O.DIS_PER3, O.DIS_AMT_DTL3, 
               O.DIS_AMT, O.DIS_AMT_MST, O.EMP_NO, 
               O.SUB_C_CODE, 
               Dis_Amt_Dtl_Vat, Dis_Amt_Mst_Vat, Vat_Amt_Dis_Dtl_Vat, 
                Vat_Amt_Aftr_Dis, Vat_Amt_Bfr_Dis, Vat_Amt_Dis_Mst_Vat, 
                Doc_Seq,   
                Pkg_Unt, Pkg_Unt_Size, Pkg_Qty, 
                Pkg_Length, Pkg_Width, Pkg_Height, 
                Pkg_Size, Pkg_Weight,  
                  Si_Type, 
                Othr_Amt, Insrnce_Load_Per, Insrnce_Load_Amt, 
                Insrnce_Add_Lmt, Insrnce_Apprvd_Code, I_Price_Vat, 
                Measur_Price, Doc_Type_Ref, Doc_No_Ref, 
                Doc_Ser_Ref, Doc_Sequence_Ref, Cc_Code, 
                Pj_No, Actv_No, Stk_Cost, 
                Used_Itm,    Argmnt_No, 
                 Othr_Amt_Disc, Vat_Amt_Othr, 
                F_Time, T_Time, Dis_Amt_Aftr_Vat, 
                Dis_Amt_Dtl2_Vat, Dis_Amt_Dtl3_Vat, Vat_Amt_Dis_Dtl2_Vat, 
                Vat_Amt_Dis_Dtl3_Vat, Po_No, Po_Ser, 
                Field_Dtl4, Field_Dtl5, Field_Dtl6, 
                Field_Dtl7, Field_Dtl8, Field_Dtl9, 
                Field_Dtl10, Lev_no, I_price_lev_no, Bill_doc_type
            From Order_Detail O,(Select Doc_Ser,I_Code,Rcrd_No,Sum(Nvl(I_Qty,0)) I_Qty,Sum(Nvl(Free_Qty,0)) Free_Qty 
                                  From( Select Order_Ser Doc_Ser,I_Code,Rcrd_No,Nvl(I_Qty,0) I_Qty,Nvl(Free_Qty,0) Free_Qty
                                          From Order_Detail 
                                        Union All
                                        Select Doc_Ser_Ref Doc_Ser,I_Code,Rcrd_No_Ref
,Sum(Nvl(I_Qty,0))*-1 I_Qty,Sum(Nvl(Free_Qty,0))*-1 Free_Qty
                                          From Ias_Bill_Dtl
                                         Where Doc_Type_Ref=53
                                           And Doc_Ser_Ref Is Not Null
                                           And Rcrd_No_Ref Is Not Null
                                         Group By Doc_Ser_Ref,I_Code,Rcrd_No_Ref)
                                Group By Doc_Ser,I_Code,Rcrd_No
                                Having Sum(Nvl(I_Qty,0))+Sum(Nvl(Free_Qty,0))>0) Mov_Data
            Where O.Order_Ser=Mov_Data.Doc_Ser
            And O.I_Code=Mov_Data.I_Code
            And O.Rcrd_No=Mov_Data.Rcrd_No 
            And Nvl(Canceled,0)=0  
            And Nvl(Mov_Data.I_Qty,0)>=0
            And Nvl(Mov_Data.Free_Qty,0)>=0
;

--------------------------------------------------------------
-- View 98: IAS_V_NY_P_REQUEST_DETAIL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_P_REQUEST_DETAIL" ("PR_TYPE","PR_NO","PR_SER","I_CODE","I_QTY"
,"P_SIZE","P_QTY","W_CODE","RCRD_NO","ITEM_DESC","USE_ATTCH","REC_ATTCH","AVL_QTY"
,"ARIV_QTY","PO_QTY","I_MIN_QTY","LAST_INCOME_PRICE","BARCODE","OUT_REQ_NO","OUT_REQ_SER"
,"DOC_SEQUENCE","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","NOT_PO_PRV_QTY","PO_PRV_QTY"
,"EXPIRE_DATE","BATCH_NO","PUR_CNT","LOST_DAY","I_ROL","SQTY","POQTY","POQTY_OPEN"
,"LAST_INCOME_QTY","LAST_INCOME_DATE","LAST_EXP_DATE","LAST_FREE_QTY","PER_LAST_FREE_QTY"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","ITM_UNT","WT_QTY","CC_CODE","PJ_NO"
,"ACTV_NO","I_PRICE","WT_UNT") AS 
SELECT RQ.PR_TYPE, RQ.PR_NO, RQ.PR_SER, RQ.I_CODE, RQ.I_QTY, RQ.P_SIZE, P_QTY, RQ.W_CODE, RQ.RCRD_NO, RQ.ITEM_DESC, RQ.USE_ATTCH,
       RQ.REC_ATTCH, RQ.AVL_QTY, RQ.ARIV_QTY, RQ.PO_QTY, RQ.I_MIN_QTY,
 RQ.LAST_INCOME_PRICE, RQ.BARCODE, RQ.OUT_REQ_NO, RQ.OUT_REQ_SER,
       RQ.DOC_SEQUENCE, RQ.I_LENGTH, RQ.I_WIDTH, RQ.I_HEIGHT, RQ.I_NUMBER,
 RQ.NOT_PO_PRV_QTY, RQ.PO_PRV_QTY, RQ.EXPIRE_DATE, RQ.BATCH_NO,
       RQ.PUR_CNT, RQ.LOST_DAY, RQ.I_ROL, RQ.SQTY, RQ.POQTY, RQ.POQTY_OPEN,
 RQ.LAST_INCOME_QTY, RQ.LAST_INCOME_DATE, RQ.LAST_EXP_DATE, RQ.LAST_FREE_QTY,
       RQ.PER_LAST_FREE_QTY, RQ.CMP_NO, RQ.BRN_NO, RQ.BRN_YEAR, RQ.BRN_USR, RQ.UP_CNT,
 RQ.ITM_UNT, RQ.WT_QTY, RQ.CC_CODE, RQ.PJ_NO, RQ.ACTV_NO, RQ.I_PRICE, RQ.WT_UNT 
    From P_Request_Detail RQ,(Select Doc_Ser,I_Code,Sum(Nvl(I_Qty,0)) I_Qty 
                          From( Select PR_SER  Doc_Ser,I_Code,Nvl(I_Qty,0) I_Qty
                                  From P_Request_Detail 
                                Union All
                                Select PR_SER Doc_Ser,I_Code,Sum(Nvl(I_Qty,0))*-1 I_Qty
                                  From P_Order_Detail 
                                 Where  PR_SER Is Not Null                                   
                                 Group By PR_SER,I_Code)
                        Group By Doc_Ser,I_Code
                        Having Sum(Nvl(I_Qty,0))>0) Mov_Data
    Where RQ.PR_SER=Mov_Data.Doc_Ser
    And RQ.I_Code=Mov_Data.I_Code
    And Nvl(Mov_Data.I_Qty,0)>=0
;

--------------------------------------------------------------
-- View 99: IAS_V_NY_P_ORDER_DETAIL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_P_ORDER_DETAIL" ("PO_TYPE","PO_NO","PO_SER","I_CODE","I_QTY"
,"FREE_QTY","P_SIZE","P_QTY","W_CODE","DOC_TYPE_REF","PR_NO","PR_SER","QT_NO","QT_SER"
,"I_PRICE","RCRD_NO","ITEM_DESC","BARCODE","USE_ATTCH","REC_ATTCH","PI_QTY","PI_FREE_QTY"
,"AVL_QTY","ITM_CWTAVG","LAST_INCOME_PRICE","DOC_SEQUENCE","DOC_SEQUENCE_PRQ","CANCELED"
,"EXPIRE_DATE","BATCH_NO","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","DIS_AMT"
,"DIS_AMT_MST","DIS_PER","DIS_AMT_DTL","DIS_PER2","DIS_AMT_DTL2","DIS_PER3"
,"DIS_AMT_DTL3","UNIT_SIZE","U_QTY","NOT_BILL_PRV_QTY","BILL_PRV_QTY","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR","UP_CNT","ITM_UNT","WT_QTY","CC_CODE","PJ_NO","ACTV_NO","WT_UNT"
,"I_PRICE_VAT","OTHR_AMT","VAT_PER","VAT_AMT","ARGMNT_NO","DLVRY_DATE","PKG_UNT"
,"PKG_UNT_SIZE","PKG_QTY","PKG_LENGTH","PKG_WIDTH","PKG_HEIGHT","PKG_SIZE","PKG_WEIGHT"
,"DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF","PJ_NO_REF") AS 
SELECT PO.PO_TYPE, PO.PO_NO, PO.PO_SER, PO.I_CODE,Mov_Data.I_Qty I_QTY, Mov_Data.Free_Qty
 FREE_QTY, PO.P_SIZE,(Mov_Data.I_Qty*PO.P_Size) P_QTY , PO.W_CODE, PO.DOC_TYPE_REF,
 PO.PR_NO,
        PO.PR_SER, PO.QT_NO, PO.QT_SER, PO.I_PRICE, PO.RCRD_NO, PO.ITEM_DESC, PO.BARCODE,
 PO.USE_ATTCH, PO.REC_ATTCH, PO.PI_QTY, PO.PI_FREE_QTY, PO.AVL_QTY, 
        PO.ITM_CWTAVG, PO.LAST_INCOME_PRICE, PO.DOC_SEQUENCE, PO.DOC_SEQUENCE_PRQ,
 PO.CANCELED, PO.EXPIRE_DATE, PO.BATCH_NO, PO.I_LENGTH,
        PO.I_WIDTH, PO.I_HEIGHT, PO.I_NUMBER, PO.DIS_AMT, PO.DIS_AMT_MST, PO.DIS_PER,
 PO.DIS_AMT_DTL, PO.DIS_PER2, PO.DIS_AMT_DTL2, PO.DIS_PER3, PO.DIS_AMT_DTL3,
        PO.UNIT_SIZE, PO.U_QTY, PO.NOT_BILL_PRV_QTY, PO.BILL_PRV_QTY, PO.CMP_NO,
 PO.BRN_NO, PO.BRN_YEAR, PO.BRN_USR, PO.UP_CNT, PO.ITM_UNT, PO.WT_QTY, PO.CC_CODE,
        PO.PJ_NO, PO.ACTV_NO, PO.WT_UNT ,
        I_Price_Vat, Othr_Amt, 
     Vat_Per, Vat_Amt, Argmnt_No, 
     Dlvry_Date,  Pkg_Unt, 
     Pkg_Unt_Size, Pkg_Qty, Pkg_Length, 
     Pkg_Width, Pkg_Height, Pkg_Size, 
     Pkg_Weight, Doc_No_Ref, Doc_Ser_Ref, 
     Doc_Sequence_Ref,  Pj_No_Ref      
    From P_Order_Detail PO,(Select Doc_Ser,I_Code,DOC_SEQUENCE,Sum(Nvl(I_Qty,0)) I_Qty,Sum(Nvl(Free_Qty,0)) Free_Qty 
                          From( Select Po_Ser Doc_Ser,I_Code,DOC_SEQUENCE ,Nvl(I_Qty,0) I_Qty,Nvl(Free_Qty,0) Free_Qty
                                  From P_Order_Detail 
                                Union All
                                Select PO_SER Doc_Ser,I_Code,DOC_SEQUENCE_GRN_PO
 DOC_SEQUENCE,Sum(Nvl(I_Qty,0))*-1 I_Qty,Sum(Nvl(Free_Qty,0))*-1 Free_Qty
                                  From Ias_Pi_Bill_Dtl
                                 Where  PO_SER Is Not Null
                                   And DOC_SEQUENCE_GRN_PO Is Not Null
                                 Group By PO_SER,I_Code,DOC_SEQUENCE_GRN_PO)
                        Group By Doc_Ser,I_Code,Doc_Sequence
                        Having Sum(Nvl(I_Qty,0))+Sum(Nvl(Free_Qty,0))>0) Mov_Data
    Where PO.Po_Ser=Mov_Data.Doc_Ser
      And PO.I_Code=Mov_Data.I_Code
      And PO.Doc_Sequence=Mov_Data.Doc_Sequence 
      And Nvl(Canceled,0)=0       
      And Nvl(Mov_Data.I_Qty,0)>=0
      And Nvl(Mov_Data.Free_Qty,0)>=0
;

--------------------------------------------------------------
-- View 100: IAS_V_NY_VND_QUOT_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_VND_QUOT_DTL" ("QT_NO","QT_SER","I_CODE","I_QTY","P_SIZE","P_QTY"
,"I_PRICE","RCRD_NO","PR_NO","PR_SER","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT"
,"ITM_UNT","ITEM_DESC","FIELD_DTL1","FIELD_DTL2","FIELD_DTL3","FIELD_DTL4","FIELD_DTL5")
 AS 
SELECT VQ.QT_NO, VQ.QT_SER, VQ.I_CODE, Mov_Data.I_Qty, VQ.P_SIZE,
 (Mov_Data.I_Qty*VQ.P_Size) P_QTY, VQ.I_PRICE, VQ.RCRD_NO, VQ.PR_NO, VQ.PR_SER,
       VQ.CMP_NO, VQ.BRN_NO, VQ.BRN_YEAR, VQ.BRN_USR, VQ.UP_CNT, VQ.ITM_UNT, VQ.ITEM_DESC,
       VQ.FIELD_DTL1, VQ.FIELD_DTL2, VQ.FIELD_DTL3, VQ.FIELD_DTL4, VQ.FIELD_DTL5 
    From IAS_VND_QUOT_DTL VQ,(Select Doc_Ser,I_Code,Sum(Nvl(I_Qty,0)) I_Qty 
                          From( Select QT_SER Doc_Ser,I_Code,Nvl(I_Qty,0) I_Qty
                                  From IAS_VND_QUOT_DTL 
                                Union All
                                Select QT_SER Doc_Ser,I_Code,Sum(Nvl(I_Qty,0))*-1 I_Qty
                                  From P_Order_Detail
                                 Where QT_SER Is Not Null
                                 Group By QT_SER,I_Code)
                        Group By Doc_Ser,I_Code
                        Having Sum(Nvl(I_Qty,0))>0) Mov_Data
    Where VQ.QT_SER=Mov_Data.Doc_Ser
    And VQ.I_Code=Mov_Data.I_Code
    And Nvl(Mov_Data.I_Qty,0)>=0
;

--------------------------------------------------------------
-- View 101: IAS_V_NY_QUOTATION_DETAIL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_QUOTATION_DETAIL" ("QT_TYPE","QUOT_NO","QUOT_SER","I_CODE","I_QTY"
,"P_SIZE","P_QTY","I_PRICE","W_CODE","VAT_PER","VAT_AMT","RCRD_NO","BARCODE","USE_ATTCH"
,"FREE_QTY","REC_ATTCH","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","ITEM_DESC"
,"FIELD_DTL1","FIELD_DTL2","FIELD_DTL3","EXTERNAL_POST","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","UP_CNT","ITM_UNT","WT_QTY","WT_UNT","DIS_PER","DIS_AMT_DTL","DIS_PER2"
,"DIS_AMT_DTL2","DIS_PER3","DIS_AMT_DTL3","DIS_AMT_MST","DIS_AMT","EXPIRE_DATE"
,"BATCH_NO") AS 
SELECT Q.QT_TYPE, Q.QUOT_NO, Q.QUOT_SER, 
       Q.I_CODE, Mov_Data.I_Qty, Q.P_SIZE, 
       (Mov_Data.I_Qty*Q.P_Size) P_Qty, Q.I_PRICE, Q.W_CODE, 
       Q.VAT_PER, Q.VAT_AMT, Q.RCRD_NO, 
       Q.BARCODE, Q.USE_ATTCH, Q.FREE_QTY, 
       Q.REC_ATTCH, Q.I_LENGTH, Q.I_WIDTH, 
       Q.I_HEIGHT, Q.I_NUMBER, Q.ITEM_DESC, 
       Q.FIELD_DTL1, Q.FIELD_DTL2, Q.FIELD_DTL3, 
       Q.EXTERNAL_POST, Q.CMP_NO, Q.BRN_NO, 
       Q.BRN_YEAR, Q.BRN_USR, Q.UP_CNT, 
       Q.ITM_UNT, Q.WT_QTY, Q.WT_UNT, 
       Q.DIS_PER, Q.DIS_AMT_DTL, Q.DIS_PER2, 
       Q.DIS_AMT_DTL2, Q.DIS_PER3, Q.DIS_AMT_DTL3, 
       Q.DIS_AMT_MST, Q.DIS_AMT, Q.EXPIRE_DATE, 
       Q.BATCH_NO
    From Quotation_Detail Q,(Select Doc_Ser,I_Code,Sum(Nvl(I_Qty,0)) I_Qty,Sum(Nvl(Free_Qty,0)) Free_Qty 
                          From( Select Quot_Ser Doc_Ser,I_Code,Nvl(I_Qty,0) I_Qty,Nvl(Free_Qty,0) Free_Qty
                                  From Quotation_Detail 
                                Union All
                                Select M.Quot_Ser Doc_Ser,D.I_Code,Sum(Nvl(D.I_Qty,0))*-1 I_Qty,Sum(Nvl(D.Free_Qty,0))*-1 Free_Qty
                                  From Sales_Order M,Order_Detail D
                                 Where M.Order_Ser=D.Order_Ser
                                   And M.Quot_Ser Is Not Null
                                 Group By M.Quot_Ser,D.I_Code)
                        Group By Doc_Ser,I_Code
                        Having Sum(Nvl(I_Qty,0))+Sum(Nvl(Free_Qty,0))>0) Mov_Data
    Where Q.Quot_Ser=Mov_Data.Doc_Ser
    And Q.I_Code=Mov_Data.I_Code
    And Nvl(Mov_Data.I_Qty,0)>=0
    And Nvl(Mov_Data.Free_Qty,0)>=0
;

--------------------------------------------------------------
-- View 102: BGT_V_TRNS
--------------------------------------------------------------
CREATE VIEW "BGT_V_TRNS" ("DOC_TYP","BRN_NO","DOC_NO","DOC_SER","DOC_DATE","A_CODE"
,"CC_CODE","PJ_NO","ACTV_NO","A_CY","PRD_NO","BDGT_PRD_TYPE","F_DATE","T_DATE","DOC_DESC"
,"AMT_L_ADD","AMT_F_ADD","AMT_L_DISC","AMT_F_DISC","DOC_NO_REF","DOC_SER_REF") AS 
(SELECT 73 doc_typ,
           M.BRN_NO,
           m.doc_no,
           m.doc_ser,
           m.doc_date,
           d.a_code,
           d.cc_code,
           d.pj_no,
           d.actv_no,
           d.a_cy,
           d.prd_no,
           D.BDGT_PRD_TYPE,
           D.F_DATE,
           D.T_DATE,
           D.DOC_DESC,
           d.amt_l amt_l_add,
           d.amt_f amt_f_add,
           0 amt_l_disc,
           0 amt_f_disc,
           m.doc_no doc_no_ref,
           m.doc_ser doc_ser_ref
    FROM   ias_bdgt_blnc_dtl d,
           ias_bdgt_blnc_mst m
    WHERE  m.doc_ser = d.doc_ser
    UNION ALL
    SELECT 74 doc_typ,
           M.BRN_NO,
           m.doc_no,
           m.doc_ser,
           m.doc_date,
           d.a_code,
           d.cc_code,
           d.pj_no,
           d.actv_no,
           d.a_cy,
           d.prd_no,
           D.BDGT_PRD_TYPE,
           D.F_DATE,
           D.T_DATE,
           D.DOC_DESC,
           d.amt_l_add amt_l_add,
           d.amt_f_add amt_f_add,
           d.amt_l_disc amt_l_disc,
           d.amt_f_disc amt_f_disc,
           d.doc_no_ref,
           d.doc_ser_ref
    FROM   gls_edit_bdgt_blnc_dtl d,
           gls_edit_bdgt_blnc_mst m
    WHERE  m.doc_ser = d.doc_ser
    UNION
    SELECT 75 doc_typ,
           M.BRN_NO,
           m.doc_no,
           m.doc_ser,
           m.doc_date,
           m.a_code,
           m.cc_code,
           m.pj_no,
           m.actv_no,
           m.a_cy,
           m.prd_no,
           M.BDGT_PRD_TYPE,
           NULL,
           NULL,
           M.DOC_DESC,
           0 amt_l_add,
           0 amt_f_add,
           m.amt_l amt_l_disc,
           m.amt_f amt_f_disc,
           m.doc_no_ref,
           m.doc_ser_ref
    FROM   gls_mov_bdgt_dtl d,
           gls_mov_bdgt_mst m
    WHERE  m.doc_ser = d.doc_ser
    UNION
    SELECT 75 doc_typ,
           M.BRN_NO,
           m.doc_no,
           m.doc_ser,
           m.doc_date,
           m.a_code,
           d.cc_code,
           d.pj_no,
           d.actv_no,
           d.a_cy,
           d.prd_no,
           D.BDGT_PRD_TYPE,
           D.F_DATE,
           D.T_DATE,
           D.DOC_DESC,
           d.amt_l amt_l_add,
           d.amt_f amt_f_add,
           0 amt_l_disc,
           0 amt_f_disc,
           d.doc_no_ref,
           d.doc_ser_ref
    FROM   gls_mov_bdgt_dtl d,
           gls_mov_bdgt_mst m
    WHERE  m.doc_ser = d.doc_ser)
;

--------------------------------------------------------------
-- View 103: IAS_V_USR_PUR_MAN_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_PUR_MAN_PRV" ("U_ID","USR_NAME","PMAN_CODE","PMAN_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_nm,
          c.pman_code,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.pman_a_name, c.pman_e_name),
                  NVL (c.pman_e_name, c.pman_a_name)
                 ) pman_nm,
          a.add_flag,
          a.view_flag,
          a.ad_u_id,
          a.ad_date,
          a.up_u_id,
          a.up_date,
          1 rec_src
   FROM   Ias_Priv_Pman a,
          user_r b,
          Ias_Purchs_Man c
   WHERE  a.u_id = b.u_id
   AND    a.Pman_Code = c.Pman_Code
   AND    (add_flag = 1 OR view_flag = 1)
   UNION
   SELECT b.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_nm,
          c.pman_code,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.pman_a_name, c.pman_e_name),
                  NVL (c.pman_e_name, c.pman_a_name)
                 ) pman_nm,
          0 add_flag,
          0 view_flag,
          NULL ad_u_id,
          NULL ad_date,
          NULL up_u_id,
          NULL up_date,
          0 rec_src
   FROM   user_r b,
          Ias_Purchs_Man c
   WHERE  NOT EXISTS (
               SELECT 1
               FROM   Ias_Priv_Pman
               WHERE  pman_code = c.pman_code AND u_id = b.u_id
                      AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 104: IAS_V_CST_VND_TRNS
--------------------------------------------------------------
CREATE VIEW "IAS_V_CST_VND_TRNS" ("C_CODE","C_A_NAME","C_E_NAME","A_CY","DOC_NO"
,"DOC_TYPE","DOC_JV_TYPE","DOC_SER","DOC_DATE","DOC_DUE_DATE","DR_AMT","CR_AMT","DR_AMTF"
,"CR_AMTF","DOC_DESC","CASH_NO","CC_CODE","PJ_NO","W_CODE","COL_NO","REP_CODE","DOC_POST"
,"REF_NO","WO_NO","WO_SER","CHEQUE_VALUED","EXTERNAL_POST","RCRD_NO","AD_U_ID","UP_U_ID"
,"AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR") AS 
SELECT 
                   C.C_CODE, C.C_A_NAME,C.C_E_NAME,D.A_CY, D.DOC_NO, 
                   D.DOC_TYPE, D.JV_TYPE, D.DOC_SER, 
                   D.DOC_DATE, D.DOC_DUE_DATE, D.DR_AMT, 
                   D.CR_AMT, D.DR_AMT_F, D.CR_AMT_F, 
                   D.DOC_DESC, D.CASH_NO, D.CC_CODE, 
                   D.PJ_NO, D.W_CODE, D.COL_NO, 
                   D.REP_CODE, D.DOC_POST, D.REF_NO, 
                   D.WO_NO, D.WO_SER, D.CHEQUE_VALUED, 
                   D.EXTERNAL_POST, D.RCRD_NO, D.AD_U_ID, 
                   D.UP_U_ID, D.AD_DATE, D.UP_DATE, 
                   D.CMP_NO, D.BRN_NO, D.BRN_YEAR, 
                   D.BRN_USR
            FROM IAS_POST_DTL D, CUSTOMER C
            WHERE (D.A_CODE = C.C_A_CODE AND D.C_CODE = C.C_CODE)
               OR (NVL(C.C_VENDOR,'-1')=NVL(D.V_CODE,'0'))
;

--------------------------------------------------------------
-- View 105: IAS_FREIGHT_ITM_SUM_VW
--------------------------------------------------------------
CREATE VIEW "IAS_FREIGHT_ITM_SUM_VW" ("FREIGHT_NO","PO_TYPE","PO_NO","PO_SER","I_CODE"
,"I_NAME","I_E_NAME","ITM_UNT","I_QTY","P_SIZE","P_QTY","W_CODE","FREIGHT_SER","DOC_NO"
,"DOC_SER") AS 
SELECT D.Freight_No, D.Po_Type, D.Po_No, D.Po_Ser, D.I_Code,M.I_Name,M.I_E_Name,D.Itm_Unt
, Sum(D.I_Qty) I_Qty, D.P_Size, Sum(D.P_Qty) P_Qty, D.W_Code, D.Freight_Ser,D.Doc_No,
 D.Doc_Ser
            From Ias_Freight_Dtl D,Ias_Itm_Mst M
               Where M.I_Code=D.I_Code 
                  Group By D.Freight_No, D.Po_Type, D.Po_No, D.Po_Ser, D.I_Code,D.Itm_Unt, D.P_Size, D.W_Code, 
                  D.Freight_Ser, D.Doc_No, D.Doc_Ser,M.I_Name,M.I_E_Name
;

--------------------------------------------------------------
-- View 106: IAS_V_ITM_ONLINE_QT_PRM
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_ONLINE_QT_PRM" ("QUOT_NO","QUOT_SER","QUOT_CUR","F_DATE","T_DATE"
,"BILL_DOC_TYPE","I_CODE","ITM_UNT","I_PRICE") AS 
SELECT Ias_Qut_Prm_Mst.Quot_No,
									        Ias_Qut_Prm_Mst.Quot_Ser,
									        Ias_Qut_Prm_Mst.Quot_Cur,
									        Ias_Qut_Prm_Mst.F_Date,
									        Ias_Qut_Prm_Mst.T_Date,
									        Ias_Qut_Prm_Mst.Bill_Doc_Type,
									        Ias_Qut_Prm_Dtl.I_Code,
									        Ias_Qut_Prm_Dtl.Itm_Unt,
									        Ias_Qut_Prm_Dtl.I_Price  
									   From Ias_Qut_Prm_Mst,Ias_Qut_Prm_Dtl,Ias_Itm_Online
									  Where Ias_Qut_Prm_Mst.Quot_Ser = Ias_Qut_Prm_Dtl.Quot_Ser   
									   And Ias_Qut_Prm_Dtl.I_Code=Ias_Itm_Online.I_Code
									   And Ias_Qut_Prm_Dtl.Itm_Unt=Ias_Itm_Online.Itm_Unt
									   And Ias_Qut_Prm_Mst.Qt_Prm_Type=1
									   And Ias_Qut_Prm_Mst.Qt_Prm_Method=1
									   And Nvl(Ias_Qut_Prm_Mst.Inactive,0)=0
;

--------------------------------------------------------------
-- View 107: IAS_V_ITM_AVLQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_AVLQTY" ("I_CODE","I_NAME","ITM_UNT","I_IMG","I_PRICE","W_CODE","BRN_NO","AVL_QTY","RSRV_QTY") AS 
SELECT m.i_code, m.i_name, d.itm_unt, m.i_img, i.i_price, w.w_code,wh.conn_brn_no,
          (w.avl_qty / d.p_size) avl_qty,
          (SELECT NVL (SUM (NVL (cp_qty, 0)), 0) / NVL (d.p_size, 1)
           FROM   ias_reserve_dtl
           WHERE  i_code = m.i_code
           AND    NVL (w_code, 0) = w.w_code
           AND    t_date >= SYSDATE
           AND    NVL (reserved, 0) = 1
           AND    NVL (cp_qty, 0) >= 0) rsrv_qty
   FROM   ias_itm_mst m,
          ias_itm_dtl d,
          ias_itm_wcode w,
          ias_item_price i,
          warehouse_details wh
   WHERE  m.i_code = d.i_code
   AND    m.i_code = w.i_code
   AND    w.w_code = wh.w_code
   AND    m.i_code(+) = i.i_code
   AND    d.i_code = w.i_code
   AND    d.i_code(+) = i.i_code
   AND    d.itm_unt(+) = i.itm_unt
   AND    w.i_code(+) = i.i_code
   AND    EXISTS (
                SELECT 1
                FROM   ias_pricing_levels
                WHERE  NVL (lev_deflt, 0) = 1 AND lev_no(+) = i.lev_no
                       AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 108: GLS_V_USR_ACCNT_DTL_PRV
--------------------------------------------------------------
CREATE VIEW "GLS_V_USR_ACCNT_DTL_PRV" ("U_ID","USR_NAME","AC_CODE_DTL","AC_CODE_DTL_NM"
,"AC_DTL_TYP","AC_DTL_TYP_NM","CUR_CODE","ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
                                                                    Decode (
 Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name, B.U_E_Name),NVL
 (B.U_E_Name, B.U_A_Name)) Usr_Nm,
                                                                    A.AC_CODE_DTL,
                                                                    Decode (
 Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.AC_CODE_DTL_L_NM,
 C.AC_CODE_DTL_F_NM),NVL (C.AC_CODE_DTL_F_NM, C.AC_CODE_DTL_L_NM)) AC_CODE_DTL_NM,
                                                                    A.AC_DTL_TYP,
                                                                    YS_GEN_PKG.GET_FLG_NM
 ('AC_DTL_TYP', A.AC_DTL_TYP, IAS_PRMTR_PKG.GETPVAL(P_PRMTR =>'LANG_NO')) AC_DTL_TYP_NM, 
         
                                                                    A.CUR_CODE,          
                                                                    A.Add_Flag,
                                                                    A.View_Flag,
                                                                    A.Ad_U_Id,
                                                                    A.Ad_Date,
                                                                    A.Up_U_Id,
                                                                    A.Up_Date,
                                                                    1 Rec_Src
                                                               FROM GLS_ACCNT_DTL_PRIV A, User_R B, GLS_ACCNT_DTL C
                                                              WHERE A.U_Id = B.U_Id
                                                                AND A.AC_CODE_DTL = C.AC_CODE_DTL
                                                                AND A.AC_DTL_TYP  = C.AC_DTL_TYP          
                                                             UNION
                                                             SELECT B.U_Id,
                                                                    Decode (
 Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (B.U_A_Name, B.U_E_Name),NVL
 (B.U_E_Name, B.U_A_Name)) Usr_Nm,
                                                                    C.AC_CODE_DTL,
                                                                    Decode (
 Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,NVL (C.AC_CODE_DTL_L_NM,
 C.AC_CODE_DTL_F_NM),NVL (C.AC_CODE_DTL_F_NM, C.AC_CODE_DTL_L_NM)) AC_CODE_DTL_NM,
                                                                    A.AC_DTL_TYP,
                                                                    YS_GEN_PKG.GET_FLG_NM
 ('AC_DTL_TYP', A.AC_DTL_TYP, IAS_PRMTR_PKG.GETPVAL(P_PRMTR =>'LANG_NO')) AC_DTL_TYP_NM,
                                                                    A.CUR_CODE,          
                                                                    0 Add_Flag,
                                                                    0 View_Flag,
                                                                    NULL Ad_U_Id,
                                                                    NULL Ad_Date,
                                                                    NULL Up_U_Id,
                                                                    NULL Up_Date,
                                                                    0 Rec_Src
                                                               FROM GLS_ACCNT_DTL_CURR A, User_R B, GLS_ACCNT_DTL C
                                                              WHERE A.AC_CODE_DTL = C.AC_CODE_DTL
                                                                AND A.AC_DTL_TYP  = C.AC_DTL_TYP
                                                                    AND NOT EXISTS
                                                                               (SELECT 1
                                                                                  FROM GLS_ACCNT_DTL_PRIV
                                                                                 WHERE AC_CODE_DTL = A.AC_CODE_DTL
                                                                                   AND AC_DTL_TYP  = A.AC_DTL_TYP
                                                                                   And CUR_CODE    = A.CUR_CODE
                                                                                   AND U_Id        =  B.U_Id
                                                                                   AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 109: HPS_V_USR_DCTR_PRV
--------------------------------------------------------------
CREATE VIEW "HPS_V_USR_DCTR_PRV" ("U_ID","USR_NAME","DCTR_NO","DCTR_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
																												          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
																												                  1, NVL (b.u_a_name, b.u_e_name),
																												                  NVL (b.u_e_name, b.u_a_name)
																												                 ) usr_name,
																												          c.dctr_no,
																												          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
																												                  1, NVL (c.dctr_l_nm, c.dctr_f_nm),
																												                  NVL (c.dctr_f_nm, c.dctr_l_nm)
																												                 ) dctr_nm,
																												          a.add_flag, a.view_flag, a.ad_u_id, a.ad_date, a.up_u_id, a.up_date,
																												          1 rec_src
																												   FROM   hps_dctr_prv a,
																												          user_r b,
																												          hps_dctr c
																												   WHERE  a.u_id = b.u_id AND a.dctr_no = c.dctr_no
																												   UNION
																												   SELECT b.u_id,
																												          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
																												                  1, NVL (b.u_a_name, b.u_e_name),
																												                  NVL (b.u_e_name, b.u_a_name)
																												                 ) usr_name,
																												          c.dctr_no,
																												          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
																												                  1, NVL (c.dctr_l_nm, c.dctr_f_nm),
																												                  NVL (c.dctr_f_nm, c.dctr_l_nm)
																												                 ) dctr_nm,
																												          0 add_flag, 0 view_flag, NULL ad_u_id, NULL ad_date, NULL up_u_id,
																												          NULL up_date, 0 rec_src
																												   FROM   user_r b,
																												          hps_dctr c
																												   WHERE  NOT EXISTS (
																												                   SELECT 1
																												                   FROM   hps_dctr_prv
																												                   WHERE  dctr_no = c.dctr_no AND u_id = b.u_id
																												                          AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 110: IAS_V_ITM_UNT_BARCODE
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_UNT_BARCODE" ("I_CODE","BARCODE","BATCH_NO","EXPIRE_DATE"
,"FLEX_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","PR_REP","UP_CNT","ITM_UNT","P_SIZE"
,"AD_TRMNL_NM","UP_TRMNL_NM","NO_SALE","NO_PRINT") AS 
SELECT I_CODE, BARCODE, NULL BATCH_NO, NULL EXPIRE_DATE, NULL FLEX_NO,
				          AD_U_ID, AD_DATE, UP_U_ID, UP_DATE, NULL PR_REP, UP_CNT,
				          ITM_UNT, P_SIZE, NULL AD_TRMNL_NM, NULL UP_TRMNL_NM, NO_SALE,
				          NULL NO_PRINT
				   FROM   IAS_ITM_DTL
;

--------------------------------------------------------------
-- View 111: IAS_V_USR_GNR_CODE_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_GNR_CODE_PRV" ("U_ID","USR_NAME","MAIN_TYP","SUB_TYP","TYPE_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT        A.U_ID,
                     DECODE (IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_NO'), 1, NVL
 (B.U_A_NAME, B.U_E_NAME), NVL (B.U_E_NAME, B.U_A_NAME) ) USR_NM,
                     A.MAIN_TYP,
                     C.SUB_NO,
                     DECODE (IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_NO'), 1, NVL
 (C.SUB_L_NAME, C.SUB_F_NAME), NVL (C.SUB_F_NAME, C.SUB_L_NAME) )
                                                                                         
                                                     TYPE_NM,
                     A.ADD_FLAG,
                     A.VIEW_FLAG,
                     A.AD_U_ID,
                     A.AD_DATE,
                     A.UP_U_ID,
                     A.UP_DATE,
                     1 REC_SRC
       FROM          IAS_GNR_CODE_PRV A,
                     USER_R B,
                     IAS_GNR_CODE_DTL C
       WHERE         C.MAIN_CODE = A.MAIN_TYP
       AND           A.SUB_TYP = C.SUB_NO
       AND           A.MAIN_TYP = C.MAIN_CODE
       AND           A.U_ID = B.U_ID
       AND           (ADD_FLAG = 1 OR VIEW_FLAG = 1)
       UNION
       SELECT        B.U_ID,
                     DECODE (IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_NO'), 1, NVL
 (B.U_A_NAME, B.U_E_NAME), NVL (B.U_E_NAME, B.U_A_NAME) ) USR_NM,
                     A.MAIN_CODE,
                     A.SUB_NO,
                     DECODE (IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_NO'), 1, NVL
 (A.SUB_L_NAME, A.SUB_F_NAME), NVL (A.SUB_F_NAME, A.SUB_L_NAME) )
                                                                                         
                                                     TYPE_NM,
                     0 ADD_FLAG,
                     0 VIEW_FLAG,
                     NULL AD_U_ID,
                     NULL AD_DATE,
                     NULL UP_U_ID,
                     NULL UP_DATE,
                     0 REC_SRC
       FROM          IAS_GNR_CODE_DTL A,
                     USER_R B
       WHERE         NOT EXISTS (SELECT        1
                                 FROM          IAS_GNR_CODE_PRV
                                 WHERE         SUB_TYP = A.SUB_NO AND MAIN_TYP = A.MAIN_CODE AND U_ID = B.U_ID)
;

--------------------------------------------------------------
-- View 112: GLS_V_AC_CODE_DTL_SUB
--------------------------------------------------------------
CREATE VIEW "GLS_V_AC_CODE_DTL_SUB" ("AC_CODE_DTL_SUB","AC_CODE_DTL_SUB_L_NM"
,"AC_CODE_DTL_SUB_F_NM","AC_CODE_DTL","INACTV","INACTV_RSON","INACTV_DATE") AS 
(SELECT d.PTNT_NO, d.PTNT_L_NM, d.PTNT_f_NM, null,inactv,null,null        
    FROM     hps_ptnt d    )
;

--------------------------------------------------------------
-- View 113: IAS_V_GL_CSHFLW_AC
--------------------------------------------------------------
CREATE VIEW "IAS_V_GL_CSHFLW_AC" ("A_CODE","RCRD_NO_DTL","DOC_NO","DOC_SER","RCRD_NO"
,"UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM","A_ANALYSIS") AS 
SELECT 
																				decode(i.a_code,null,a.a_code,i.a_code) a_code , I.RCRD_NO_DTL, I.DOC_NO, 
																				   I.DOC_SER, I.RCRD_NO, I.UP_CNT, 
																				   I.PR_REP, I.AD_TRMNL_NM, I.UP_TRMNL_NM, 
																				   I.A_ANALYSIS
																				FROM IAS_GL_CSHFLW_AC i ,account a
																			  WHERE  nvl(a.a_analysis,0)= DECODE (i.a_analysis, NULL, nvl(a.a_analysis,0), i.a_analysis) 
                                             and  nvl(a.a_code,'0')= DECODE (i.a_code, NULL, nvl(a.a_code,'0'), i.a_code) 
;

--------------------------------------------------------------
-- View 114: GLS_V_ACCNT_DTL
--------------------------------------------------------------
CREATE VIEW "GLS_V_ACCNT_DTL" ("AC_CODE","AC_CODE_DTL","AC_CODE_DTL_L_NM"
,"AC_CODE_DTL_F_NM","AC_DTL_TYP","AC_DTL_TYP_DTL","INACTV","INACTV_RSON","INACTV_DATE")
 AS 
(SELECT D.ac_code, D.ac_code_dtl,D.ac_code_dtl_L_nm,D.ac_code_dtl_F_nm, 
 Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (D.Ac_code) AC_DTL_TYP , 1 ,INACTV,INACTV_RSON,INACTV_DATE
   FROM   GlS_ACCNT_DTL_GRPS M,GlS_ACCNT_DTL D 
   WHERE  m.GRP_AC_code = D.AC_code
     AND  Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (D.AC_code) IN (5,6) 
     AND  M.ac_dtl_typ_DTL=1
   UNION ALL 
   SELECT  D.AC_CODE, D.DCTR_NO,D.DCTR_L_NM,D.DCTR_F_NM, Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ
 (D.Ac_code) AC_DTL_TYP , 10,INACTV,INACTV_RSON,INACTV_DATE
     FROM  GlS_ACCNT_DTL_GRPS M,HPS_DCTR D
    WHERE  M.GRP_AC_code = D.AC_code 
      AND  M.ac_dtl_typ_DTL=10  
      AND Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (D.AC_CODE) IN (5,6) 
      )
    ORDER BY  ac_code_dtl,ac_dtl_typ,ac_code
;

--------------------------------------------------------------
-- View 115: GLS_V_ACCNT_DTL_CURR
--------------------------------------------------------------
CREATE VIEW "GLS_V_ACCNT_DTL_CURR" ("AC_CODE_DTL","AC_DTL_TYP","CUR_CODE","AC_CODE"
,"INACTV","INACTV_RSON","INACTV_DATE","AC_DTL_TYP_DTL") AS 
(SELECT  D.ac_code_dtl, Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (M.Ac_code) AC_DTL_TYP,D.CUR_CODE,
 M.Ac_code,D.INACTV, D.INACTV_RSON,D.INACTV_DATE,1
             FROM  GlS_ACCNT_DTL M,GlS_ACCNT_DTL_CURR D  
             WHERE M.AC_code_DTL = D.AC_code_DTL 
               and M.Ac_Dtl_typ = D.Ac_Dtl_typ
               AND Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (M.Ac_code) IN (5,6) 
           UNION ALL 
           SELECT   M.DCTR_NO,Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (D.A_code) AC_DTL_TYP,D.A_CY, D.A_code,D.INACTIVE,NULL,NULL, 10
             FROM   HPS_DCTR M,ACCOUNT_CURR D 
            WHERE M.AC_code = D.A_code 
              AND Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (D.A_code) IN (5,6) 
              )
            ORDER BY  ac_code_dtl,AC_DTL_TYP,CUR_CODE
;

--------------------------------------------------------------
-- View 116: GLS_V_ACCNT_DTL_CURR2
--------------------------------------------------------------
CREATE VIEW "GLS_V_ACCNT_DTL_CURR2" ("AC_CODE","AC_CODE_DTL","AC_DTL_TYP"
,"AC_DTL_TYP_DTL","CUR_CODE","INACTV","INACTV_RSON","INACTV_DATE") AS 
SELECT DISTINCT M.A_Code AC_CODE,NULL AC_CODE_DTL,M.AC_DTL_TYP,0 ac_dtl_typ_DTL,  A_cy
 cur_code ,INACTIVE,NULL inactv_rson ,NULL inactv_date
            From Ias_Acc_Tree M,Account_Curr D
                Where M.a_code=D.a_code
                  And MN_SUB=1
                  AND M.AC_DTL_TYP IN(0,7)     
    UNION ALL                   
    Select DISTINCT D.A_Code AC_CODE,TO_CHAR(cash_no) AC_CODE_DTL
,YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (D.A_Code) AC_DTL_TYP,0 ac_dtl_typ_DTL,  A_cy CUR_CODE
,D.INACTIVE,NULL inactv_rson,D.INACTIVE_DATE
                From IAS_CASH_IN_HAND_DTL D
                where YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (D.A_Code)=1            
    UNION ALL          
    Select DISTINCT D.A_Code AC_CODE,TO_CHAR(D.BANK_NO) AC_CODE_DTL
,YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (D.A_Code) AC_DTL_TYP,0 ac_dtl_typ_DTL,  A_cy CUR_CODE
,D.INACTIVE,NULL inactv_rson,D.INACTIVE_DATE
                From IAS_CASH_AT_BANK_DTL D 
                where YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (D.A_Code)=2                         
    UNION ALL          
    Select DISTINCT M.C_A_Code AC_CODE,M.C_CODE AC_CODE_DTL,YS_AC_DTL_PKG.Get_Ac_Dtl_Typ
 (M.C_A_Code) AC_DTL_TYP,0 ac_dtl_typ_DTL, A_cy  CUR_CODE,D.INACTIVE,NULL inactv_rson
,NULL INACTIVE_DATE
                From customer M,customer_curr D 
                 where M.C_CODE=D.C_CODE
                AND YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (M.C_A_Code)=3                    
    UNION ALL           
    Select DISTINCT M.V_A_Code AC_CODE,M.v_CODE AC_CODE_DTL,YS_AC_DTL_PKG.Get_Ac_Dtl_Typ
 (M.V_A_Code) AC_DTL_TYP,0 ac_dtl_typ_DTL,  A_cy CUR_CODE ,D.INACTIVE,NULL inactv_rson
,NULL INACTIVE_DATE
                From v_details M,VENDOR_CURR D 
                 where M.V_CODE=D.V_CODE
                AND YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (M.V_A_Code)=4                       
    UNION ALL
    SELECT DISTINCT M.a_code ac_code, TO_CHAR (EMP_NO) ac_code_dtl,
                    ys_ac_dtl_pkg.get_ac_dtl_typ (M.a_code) ac_dtl_typ,
                    0 ac_dtl_typ_dtl, a_cy cur_code, d.inactive,
                    NULL inactv_rson, d.inactive_date
    FROM            ACCOUNT_CURR M ,S_EMP d
    WHERE           ys_ac_dtl_pkg.get_ac_dtl_typ (M.a_code) = 7
    UNION ALL          
    Select DISTINCT M.AC_CODE ,M.AC_CODE_DTL,YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (AC_CODE)
 AC_DTL_TYP,1 ac_dtl_typ_DTL, D.CUR_CODE   ,d.inactv, d.inactv_rson, d.inactv_date
                From gls_accnt_dtl M, gls_accnt_dtl_curr D
                 WHERE  m.ac_code_dtl = d.ac_code_dtl
                   AND    m.ac_dtl_typ = d.ac_dtl_typ  
                   And YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (AC_CODE) IN(5,6)               
    UNION ALL        
    Select DISTINCT M.AC_CODE ,AC_CODE_DTL,YS_AC_DTL_PKG.Get_Ac_Dtl_Typ (AC_CODE)
 AC_DTL_TYP,10 ac_dtl_typ_DTL, D.A_CY CUR_CODE   ,d.INACTIVE,  NULL inactv_rson, NULL
 inactv_date
                FROM   hps_dctr m, account_curr d
                        WHERE  m.ac_code = d.a_code
                        AND    ys_ac_dtl_pkg.get_ac_dtl_typ (d.a_code) IN (5, 6)
  ) 
  ORDER BY ac_dtl_typ,AC_CODE, AC_CODE_DTL,ac_dtl_typ_DTL,cur_code
;

--------------------------------------------------------------
-- View 117: GLS_V_ACCNT_DTL_PRIV
--------------------------------------------------------------
CREATE VIEW "GLS_V_ACCNT_DTL_PRIV" ("U_ID","AC_CODE_DTL","AC_DTL_TYP","CUR_CODE","ADD_FLAG","VIEW_FLAG","AC_DTL_TYP_DTL") AS 
(SELECT  D.U_ID,D.ac_code_dtl,D.AC_DTL_TYP, D.CUR_CODE, D.ADD_FLAG,D.VIEW_FLAG, 1
     FROM  GLS_ACCNT_DTL_PRIV D  
   UNION ALL 
   SELECT   D.U_ID,M.DCTR_NO,Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (M.AC_code),C.A_CY, D.ADD_FLAG,D.VIEW_FLAG, 10
     FROM  HPS_DCTR M, HPS_DCTR_PRV D,ACCOUNT_CURR C 
    WHERE   M.DCTR_NO =D.DCTR_NO
      AND M.AC_code = C.A_code 
      AND Ys_Ac_Dtl_Pkg.Get_Ac_Dtl_Typ (M.AC_code) IN (5,6) 
      )
    ORDER BY  U_ID,AC_DTL_TYP,ac_code_dtl,CUR_CODE
;

--------------------------------------------------------------
-- View 118: IAS_V_AC_CODE_DTL_BLNC
--------------------------------------------------------------
CREATE VIEW "IAS_V_AC_CODE_DTL_BLNC" ("A_CODE","AC_CODE_DTL","AC_DTL_TYP","A_CY","AMT","AMT_F") AS 
SELECT m.a_code,d.ac_code_dtl,d.ac_dtl_typ, d.a_cy,NVL (SUM (d.amt), 0) amt, NVL (SUM (d.amt_f), 0) amt_f
					    From account M, Ias_Post_Dtl D
						 where M.a_code  = D.a_code
						 AND m.AC_DTL_TYP = d.AC_DTL_TYP
				        group by m.a_code,d.ac_code_dtl,d.ac_dtl_typ ,d.a_cy
				        order by ac_dtl_typ,a_code,ac_code_dtl
;

--------------------------------------------------------------
-- View 119: GLS_V_ACC_CC
--------------------------------------------------------------
CREATE VIEW "GLS_V_ACC_CC" ("A_CODE","AC_TREE","A_NAME","A_NAME_ENG","A_LEVEL","A_PARENT"
,"A_S_M","MN_SUB_AC","A_GROUPING","A_REPORT","CLASS_NO","AC_CLOSE","DR","A_ANALYSIS"
,"AC_DTL_TYP","CC_CODE","CC_TREE","CC_A_NAME","CC_E_NAME","C_LEVEL","C_PARENT","C_S_M"
,"MN_SUB_CC","C_GROUPING","INACTIVE") AS 
SELECT a_code, ac_tree, a_name, a_name_eng, a_level, a_parent, a_s_m,
          ac.mn_sub mn_sub_ac, a_grouping, a_report, class_no, ac_close,DR,
          a_analysis, ac_dtl_typ, cc_code, cc_tree, cc_a_name, cc_e_name,
          c_level, c_parent, c_s_m, cc.mn_sub mn_sub_cc, c_grouping, inactive
   FROM   ias_acc_tree ac,
          ias_cc_tree cc
;

--------------------------------------------------------------
-- View 120: BGT_V_BLNC
--------------------------------------------------------------
CREATE VIEW "BGT_V_BLNC" ("DOC_NO","DOC_SER","DOC_DATE","REF_NO","DOC_DESC","DOC_NOTE"
,"AC_TREE","A_CODE","A_CY","PRD_NO","CC_CODE","PJ_NO","ACTV_NO","BRN_YEAR","F_DATE"
,"T_DATE","BDGT_PRD_TYPE","BDGT_TYPE","BRN_NO","AD_U_ID","MN_SUB","A_S_M","A_LEVEL"
,"A_REPORT","EST_BLNC") AS 
SELECT   a.doc_no, a.doc_ser, a.doc_date, a.ref_no, a.doc_desc, a.doc_note,
            c.ac_tree, c.a_code, a.a_cy, b.prd_no, b.cc_code, b.pj_no,
            b.actv_no, b.brn_year, b.f_date, b.t_date, a.bdgt_prd_type,
            a.bdgt_type,a.BRN_NO,a.ad_u_id, c.mn_sub,C.A_S_M,C.A_LEVEL,C.a_report,
            ROUND
               (SUM
                   (DECODE
                       (ys_gen_pkg.get_fld_value ('IAS_PARA_GL',
                                                  'nvl(Use_Multi_Cur_Bdgt,0)'
                                                 ),
                        0, NVL (b.amt_l, 0)
                         + NVL (b.amt_l_add, 0)
                         + NVL (b.amt_l_add_mov, 0)
                         - NVL (b.amt_l_disc, 0)
                         - NVL (b.amt_l_disc_mov, 0),
                        DECODE (a.a_cy,
                                ys_gen_pkg.get_local_cur, NVL (b.amt_l, 0)
                                 + NVL (b.amt_l_add, 0)
                                 + NVL (b.amt_l_add_mov, 0)
                                 - NVL (b.amt_l_disc, 0)
                                 - NVL (b.amt_l_disc_mov, 0),
                                  NVL (b.amt_f, 0)
                                + NVL (b.amt_f_add, 0)
                                + NVL (b.amt_f_add_mov, 0)
                                - NVL (b.amt_f_disc, 0)
                                - NVL (b.amt_f_disc_mov, 0)
                               )
                       )
                   ),
                4
               ) est_blnc
   FROM     ias_bdgt_blnc_mst a,
            ias_bdgt_blnc_dtl b,
            ias_acc_tree c
   WHERE    a.doc_ser = b.doc_ser AND b.a_code = c.a_code
   GROUP BY a.doc_no,
            a.doc_ser,
            a.doc_date,
            a.ref_no,
            a.doc_desc,
            a.doc_note,
            c.ac_tree,
            c.a_code,
            a.a_cy,
            b.prd_no,
            b.cc_code,
            b.pj_no,
            b.actv_no,
            b.brn_year,
            b.f_date,
            b.t_date,
            a.bdgt_prd_type,
            a.bdgt_type,
            a.BRN_NO,
            a.ad_u_id,
            c.mn_sub,
            C.A_S_M,
            C.A_LEVEL,
            C.a_report
;

--------------------------------------------------------------
-- View 121: S_V_USR_MOBILE_SCR_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_USR_MOBILE_SCR_PRV" ("U_ID","USR_NM","SCR_NO","ADD_FLAG","PRV_FLG"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_ID,
				          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
				                  1, NVL (b.u_a_name, b.u_e_name),
				                  NVL (b.u_e_name, b.u_a_name)
				                 ) usr_nm,
				          a.scr_no, a.add_flag, a.prv_flg, a.ad_u_id, a.ad_date, a.up_u_id,
				          a.up_date, 1 rec_src
				     FROM s_mobile_scr_prv a, user_r b, s_mobile_scr c
				    WHERE a.u_id = b.u_id
				      AND a.scr_no = c.scr_no
				      AND (a.add_flag = 1 OR prv_flg = 1)
				      AND NVL (c.inactive, 0) = 0
				   UNION
				   SELECT b.u_id,
				          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
				                  1, NVL (b.u_a_name, b.u_e_name),
				                  NVL (b.u_e_name, b.u_a_name)
				                 ) usr_nm,
				          c.scr_no, 0 add_flag, 0 prv_flg, NULL ad_u_id, NULL ad_date,
				          NULL up_u_id, NULL up_date, 0 rec_src
				     FROM user_r b, s_mobile_scr c
				    WHERE NVL (c.inactive, 0) = 0
				      AND NOT EXISTS (
				                     SELECT 1
				                       FROM s_mobile_scr_prv
				                      WHERE u_id = b.u_id AND scr_no = c.scr_no
				                            AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 122: GLS_V_JRNL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_JRNL_DTL_YR" ("ROW_ID","UMARKER","JV_TYPE","J_DOC_NO","J_SER","A_CODE"
,"AC_CODE_DTL","AC_CODE_DTL_SUB","AC_DTL_TYP","A_CY","J_DESC","J_AMT","J_AMT_F","AC_RATE"
,"CC_CODE","PJ_NO","ACTV_NO","C_CODE","V_CODE","REP_CODE","COL_NO","LC_NO","GR_NO"
,"CSH_BNK_NO","RCRD_NO","RCRD_NO_ORD","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF"
,"DOC_SER_REF","DOC_DUE_DATE","BILL_NO","BILL_SER","CASHIER_NO","I_NO","WO_NO","WO_SER"
,"REF_NO","CNTRCT_NO","CNTRCT_SRL","CNTRCT_BTCH","CHEQUE_NO","NOTE_NO","DOC_SEQUENCE"
,"EXTERNAL_POST","DOC_BRN_NO","NOTE","DOC_SEQUENCE_REF","RCRD_NO_REF","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM","CLC_TYP_NO_TAX","TAX_PRCNT","TAX_AMT","HRS_DOC_TYP_REF","HRS_DOC_SRL_REF"
,"HRS_DOC_NO_REF","FLD1","FLD2","FLD3","FLD4","FLD5") AS 
SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB
,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F,AC_RATE,CC_CODE,PJ_NO,ACTV_NO,C_CODE,V_CODE
,REP_CODE,COL_NO,LC_NO,GR_NO,CSH_BNK_NO,RCRD_NO,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF
,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE,BILL_NO,BILL_SER,CASHIER_NO,I_NO,WO_NO,WO_SER,REF_NO
,CNTRCT_NO,CNTRCT_SRL,CNTRCT_BTCH,CHEQUE_NO,NOTE_NO,DOC_SEQUENCE,EXTERNAL_POST,DOC_BRN_NO
,NOTE,DOC_SEQUENCE_REF,RCRD_NO_REF,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,CLC_TYP_NO_TAX,TAX_PRCNT,TAX_AMT
,HRS_DOC_TYP_REF,HRS_DOC_SRL_REF,HRS_DOC_NO_REF,FLD1,FLD2,FLD3,FLD4,FLD5 FROM
 IAS20181.DETAIL_JOURNAL_V UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO
,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F,AC_RATE
,CC_CODE,PJ_NO,ACTV_NO,C_CODE,V_CODE,REP_CODE,COL_NO,LC_NO,GR_NO,CSH_BNK_NO,RCRD_NO
,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE,BILL_NO
,BILL_SER,CASHIER_NO,I_NO,WO_NO,WO_SER,REF_NO,CNTRCT_NO,CNTRCT_SRL,CNTRCT_BTCH,CHEQUE_NO
,NOTE_NO,DOC_SEQUENCE,EXTERNAL_POST,DOC_BRN_NO,NOTE,DOC_SEQUENCE_REF,RCRD_NO_REF,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,CLC_TYP_NO_TAX,TAX_PRCNT,TAX_AMT,HRS_DOC_TYP_REF,HRS_DOC_SRL_REF,HRS_DOC_NO_REF,FLD1
,FLD2,FLD3,FLD4,FLD5 FROM IAS20191.DETAIL_JOURNAL_V UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , JV_TYPE,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY
,J_DESC,J_AMT,J_AMT_F,AC_RATE,CC_CODE,PJ_NO,ACTV_NO,C_CODE,V_CODE,REP_CODE,COL_NO,LC_NO
,GR_NO,CSH_BNK_NO,RCRD_NO,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF
,DOC_DUE_DATE,BILL_NO,BILL_SER,CASHIER_NO,I_NO,WO_NO,WO_SER,REF_NO,CNTRCT_NO,CNTRCT_SRL
,CNTRCT_BTCH,CHEQUE_NO,NOTE_NO,DOC_SEQUENCE,EXTERNAL_POST,DOC_BRN_NO,NOTE
,DOC_SEQUENCE_REF,RCRD_NO_REF,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,CLC_TYP_NO_TAX,TAX_PRCNT,TAX_AMT
,HRS_DOC_TYP_REF,HRS_DOC_SRL_REF,HRS_DOC_NO_REF,FLD1,FLD2,FLD3,FLD4,FLD5 FROM
 IAS20201.DETAIL_JOURNAL_V UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO
,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F,AC_RATE
,CC_CODE,PJ_NO,ACTV_NO,C_CODE,V_CODE,REP_CODE,COL_NO,LC_NO,GR_NO,CSH_BNK_NO,RCRD_NO
,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE,BILL_NO
,BILL_SER,CASHIER_NO,I_NO,WO_NO,WO_SER,REF_NO,CNTRCT_NO,CNTRCT_SRL,CNTRCT_BTCH,CHEQUE_NO
,NOTE_NO,DOC_SEQUENCE,EXTERNAL_POST,DOC_BRN_NO,NOTE,DOC_SEQUENCE_REF,RCRD_NO_REF,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,CLC_TYP_NO_TAX,TAX_PRCNT,TAX_AMT,HRS_DOC_TYP_REF,HRS_DOC_SRL_REF,HRS_DOC_NO_REF,FLD1
,FLD2,FLD3,FLD4,FLD5 FROM IAS20211.DETAIL_JOURNAL_V UNION ALL  SELECT ROWID ROW_ID,2
 UMARKER , JV_TYPE,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY
,J_DESC,J_AMT,J_AMT_F,AC_RATE,CC_CODE,PJ_NO,ACTV_NO,C_CODE,V_CODE,REP_CODE,COL_NO,LC_NO
,GR_NO,CSH_BNK_NO,RCRD_NO,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF
,DOC_DUE_DATE,BILL_NO,BILL_SER,CASHIER_NO,I_NO,WO_NO,WO_SER,REF_NO,CNTRCT_NO,CNTRCT_SRL
,CNTRCT_BTCH,CHEQUE_NO,NOTE_NO,DOC_SEQUENCE,EXTERNAL_POST,DOC_BRN_NO,NOTE
,DOC_SEQUENCE_REF,RCRD_NO_REF,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,CLC_TYP_NO_TAX,TAX_PRCNT,TAX_AMT
,HRS_DOC_TYP_REF,HRS_DOC_SRL_REF,HRS_DOC_NO_REF,FLD1,FLD2,FLD3,FLD4,FLD5 FROM
 DETAIL_JOURNAL_V WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 123: IAS_V_BILL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_BILL_DTL_YR" ("ROW_ID","UMARKER","BILL_DOC_TYPE","BILL_NO","BILL_SER"
,"I_CODE","I_QTY","ITM_UNT","P_SIZE","P_QTY","I_PRICE","STK_COST","OUT_QTY"
,"OUT_FREE_QTY","W_CODE","CC_CODE","PJ_NO","ACTV_NO","EXPIRE_DATE","BATCH_NO","FREE_QTY"
,"DIS_PER","DIS_AMT","DIS_AMT_MST","DIS_AMT_DTL","DIS_AFTR_VAT_MST","DIS_AMT_DTL_VAT"
,"DIS_AMT_MST_VAT","VAT_AMT_DIS_DTL_VAT","VAT_AMT_AFTR_DIS","VAT_AMT_BFR_DIS"
,"VAT_AMT_DIS_MST_VAT","DIS_AMT_AFTR_VAT","OTHR_AMT_DISC","VAT_PER","VAT_AMT","OTHR_AMT"
,"USE_SERIALNO","SERVICE_ITEM","RCRD_NO","DOC_SEQUENCE","ITEM_DESC","SI_TYPE","BARCODE"
,"SO_NO","SO_SER","DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF","EXTERNAL_POST","BILL_PY"
,"USE_ATTCH","REC_ATTCH","ADD_DIS_AMT_MST","ADD_DIS_AMT_DTL","DIS_PER2","DIS_AMT_DTL2"
,"DIS_PER3","DIS_AMT_DTL3","RCRD_NO_REF","EMP_NO","I_LENGTH","I_PRICE_VAT","I_WIDTH"
,"I_HEIGHT","I_NUMBER","WT_UNT","WT_QTY","POST_CODE","QT_PRM_NO","QT_PRM_SER"
,"QT_PRM_RCRD_NO","INSRNCE_LOAD_PER","INSRNCE_LOAD_AMT","INSRNCE_ADD_LMT"
,"INSRNCE_APPRVD_CODE","SUB_C_CODE","I_PRICE_OUTGONG","PKG_UNT","PKG_UNT_SIZE","PKG_QTY"
,"PKG_LENGTH","PKG_WIDTH","PKG_HEIGHT","PKG_SIZE","PKG_WEIGHT","FIELD_DTL1","FIELD_DTL2"
,"FIELD_DTL3","MEASUR_PRICE","ARGMNT_NO","CPN_QTY","DOC_SEQ_TMP","USED_ITM"
,"VAT_AMT_OTHR","PRM_GRP_NO","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","COMM_PER"
,"COMM_AMT_DTL","DOC_SEQUENCE_REF","UP_CNT","DIS_PER_QT_PRM","DIS_AMT_DTL_QT_PRM"
,"DIS_AMT_DTL_QT_PRM_VAT","DIS_AMT_DTL2_VAT","DIS_AMT_DTL3_VAT","VAT_AMT_DIS_DTL2_VAT"
,"VAT_AMT_DIS_DTL3_VAT","FIELD_DTL4","FIELD_DTL5","FIELD_DTL6","FIELD_DTL7","FIELD_DTL8"
,"FIELD_DTL9","FIELD_DTL10","LEV_NO","I_PRICE_LEV_NO","OTHR_AMT_ITM","OUT_QTY_YR"
,"OUT_FREE_QTY_YR","INSRNCE_ADD_LMT_MST","FREE_TYP") AS 
SELECT ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_QTY,ITM_UNT
,P_SIZE,P_QTY,I_PRICE,STK_COST,OUT_QTY,OUT_FREE_QTY,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER,DIS_AMT,DIS_AMT_MST,DIS_AMT_DTL,DIS_AFTR_VAT_MST
,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS
,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,OTHR_AMT_DISC,VAT_PER,VAT_AMT,OTHR_AMT,USE_SERIALNO
,SERVICE_ITEM,RCRD_NO,DOC_SEQUENCE,ITEM_DESC,SI_TYPE,BARCODE,SO_NO,SO_SER,DOC_TYPE_REF
,DOC_NO_REF,DOC_SER_REF,EXTERNAL_POST,BILL_PY,USE_ATTCH,REC_ATTCH,ADD_DIS_AMT_MST
,ADD_DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,RCRD_NO_REF,EMP_NO,I_LENGTH
,I_PRICE_VAT,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,QT_PRM_NO,QT_PRM_SER
,QT_PRM_RCRD_NO,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT,INSRNCE_APPRVD_CODE
,SUB_C_CODE,I_PRICE_OUTGONG,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT
,PKG_SIZE,PKG_WEIGHT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,MEASUR_PRICE,ARGMNT_NO,CPN_QTY
,DOC_SEQ_TMP,USED_ITM,VAT_AMT_OTHR,PRM_GRP_NO,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,COMM_PER
,COMM_AMT_DTL,DOC_SEQUENCE_REF,UP_CNT,DIS_PER_QT_PRM,DIS_AMT_DTL_QT_PRM
,DIS_AMT_DTL_QT_PRM_VAT,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT
,VAT_AMT_DIS_DTL3_VAT,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9
,FIELD_DTL10,LEV_NO,I_PRICE_LEV_NO,OTHR_AMT_ITM,OUT_QTY_YR,OUT_FREE_QTY_YR
,INSRNCE_ADD_LMT_MST,FREE_TYP FROM IAS20181.IAS_BILL_DTL     UNION ALL  SELECT ROWID
 ROW_ID,1 UMARKER , BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,OUT_QTY,OUT_FREE_QTY,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO
,FREE_QTY,DIS_PER,DIS_AMT,DIS_AMT_MST,DIS_AMT_DTL,DIS_AFTR_VAT_MST,DIS_AMT_DTL_VAT
,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT
,DIS_AMT_AFTR_VAT,OTHR_AMT_DISC,VAT_PER,VAT_AMT,OTHR_AMT,USE_SERIALNO,SERVICE_ITEM
,RCRD_NO,DOC_SEQUENCE,ITEM_DESC,SI_TYPE,BARCODE,SO_NO,SO_SER,DOC_TYPE_REF,DOC_NO_REF
,DOC_SER_REF,EXTERNAL_POST,BILL_PY,USE_ATTCH,REC_ATTCH,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL
,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,RCRD_NO_REF,EMP_NO,I_LENGTH,I_PRICE_VAT
,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO
,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT,INSRNCE_APPRVD_CODE,SUB_C_CODE
,I_PRICE_OUTGONG,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE
,PKG_WEIGHT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,MEASUR_PRICE,ARGMNT_NO,CPN_QTY,DOC_SEQ_TMP
,USED_ITM,VAT_AMT_OTHR,PRM_GRP_NO,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,COMM_PER,COMM_AMT_DTL
,DOC_SEQUENCE_REF,UP_CNT,DIS_PER_QT_PRM,DIS_AMT_DTL_QT_PRM,DIS_AMT_DTL_QT_PRM_VAT
,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10,LEV_NO,I_PRICE_LEV_NO
,OTHR_AMT_ITM,OUT_QTY_YR,OUT_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM
 IAS20191.IAS_BILL_DTL     UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE
,BILL_NO,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,OUT_QTY,OUT_FREE_QTY
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER,DIS_AMT,DIS_AMT_MST
,DIS_AMT_DTL,DIS_AFTR_VAT_MST,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT
,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,OTHR_AMT_DISC
,VAT_PER,VAT_AMT,OTHR_AMT,USE_SERIALNO,SERVICE_ITEM,RCRD_NO,DOC_SEQUENCE,ITEM_DESC
,SI_TYPE,BARCODE,SO_NO,SO_SER,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,EXTERNAL_POST,BILL_PY
,USE_ATTCH,REC_ATTCH,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,RCRD_NO_REF,EMP_NO,I_LENGTH,I_PRICE_VAT,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT
,WT_QTY,POST_CODE,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT
,INSRNCE_ADD_LMT,INSRNCE_APPRVD_CODE,SUB_C_CODE,I_PRICE_OUTGONG,PKG_UNT,PKG_UNT_SIZE
,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,FIELD_DTL1,FIELD_DTL2
,FIELD_DTL3,MEASUR_PRICE,ARGMNT_NO,CPN_QTY,DOC_SEQ_TMP,USED_ITM,VAT_AMT_OTHR,PRM_GRP_NO
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,COMM_PER,COMM_AMT_DTL,DOC_SEQUENCE_REF,UP_CNT
,DIS_PER_QT_PRM,DIS_AMT_DTL_QT_PRM,DIS_AMT_DTL_QT_PRM_VAT,DIS_AMT_DTL2_VAT
,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,FIELD_DTL4,FIELD_DTL5
,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10,LEV_NO,I_PRICE_LEV_NO
,OTHR_AMT_ITM,OUT_QTY_YR,OUT_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM
 IAS20201.IAS_BILL_DTL     UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE
,BILL_NO,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,OUT_QTY,OUT_FREE_QTY
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER,DIS_AMT,DIS_AMT_MST
,DIS_AMT_DTL,DIS_AFTR_VAT_MST,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT
,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,OTHR_AMT_DISC
,VAT_PER,VAT_AMT,OTHR_AMT,USE_SERIALNO,SERVICE_ITEM,RCRD_NO,DOC_SEQUENCE,ITEM_DESC
,SI_TYPE,BARCODE,SO_NO,SO_SER,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,EXTERNAL_POST,BILL_PY
,USE_ATTCH,REC_ATTCH,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,RCRD_NO_REF,EMP_NO,I_LENGTH,I_PRICE_VAT,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT
,WT_QTY,POST_CODE,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT
,INSRNCE_ADD_LMT,INSRNCE_APPRVD_CODE,SUB_C_CODE,I_PRICE_OUTGONG,PKG_UNT,PKG_UNT_SIZE
,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,FIELD_DTL1,FIELD_DTL2
,FIELD_DTL3,MEASUR_PRICE,ARGMNT_NO,CPN_QTY,DOC_SEQ_TMP,USED_ITM,VAT_AMT_OTHR,PRM_GRP_NO
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,COMM_PER,COMM_AMT_DTL,DOC_SEQUENCE_REF,UP_CNT
,DIS_PER_QT_PRM,DIS_AMT_DTL_QT_PRM,DIS_AMT_DTL_QT_PRM_VAT,DIS_AMT_DTL2_VAT
,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,FIELD_DTL4,FIELD_DTL5
,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10,LEV_NO,I_PRICE_LEV_NO
,OTHR_AMT_ITM,OUT_QTY_YR,OUT_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM
 IAS20211.IAS_BILL_DTL     UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , BILL_DOC_TYPE
,BILL_NO,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,OUT_QTY,OUT_FREE_QTY
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER,DIS_AMT,DIS_AMT_MST
,DIS_AMT_DTL,DIS_AFTR_VAT_MST,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT
,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,OTHR_AMT_DISC
,VAT_PER,VAT_AMT,OTHR_AMT,USE_SERIALNO,SERVICE_ITEM,RCRD_NO,DOC_SEQUENCE,ITEM_DESC
,SI_TYPE,BARCODE,SO_NO,SO_SER,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,EXTERNAL_POST,BILL_PY
,USE_ATTCH,REC_ATTCH,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,RCRD_NO_REF,EMP_NO,I_LENGTH,I_PRICE_VAT,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT
,WT_QTY,POST_CODE,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT
,INSRNCE_ADD_LMT,INSRNCE_APPRVD_CODE,SUB_C_CODE,I_PRICE_OUTGONG,PKG_UNT,PKG_UNT_SIZE
,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,FIELD_DTL1,FIELD_DTL2
,FIELD_DTL3,MEASUR_PRICE,ARGMNT_NO,CPN_QTY,DOC_SEQ_TMP,USED_ITM,VAT_AMT_OTHR,PRM_GRP_NO
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,COMM_PER,COMM_AMT_DTL,DOC_SEQUENCE_REF,UP_CNT
,DIS_PER_QT_PRM,DIS_AMT_DTL_QT_PRM,DIS_AMT_DTL_QT_PRM_VAT,DIS_AMT_DTL2_VAT
,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,FIELD_DTL4,FIELD_DTL5
,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10,LEV_NO,I_PRICE_LEV_NO
,OTHR_AMT_ITM,OUT_QTY_YR,OUT_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM IAS_BILL_DTL  
   WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 124: IAS_V_BILL_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_BILL_MST_YR" ("ROW_ID","UMARKER","BILL_DOC_TYPE","BILL_NO","BILL_SER"
,"BILL_DATE","BILL_CURRENCY","BILL_RATE","STOCK_RATE","C_CODE","C_NAME","A_CODE"
,"CHEQUE_NO","NOTE_NO","CHEQUE_AMT","CHEQUE_DUE_DATE","BILL_DUE_DATE","BILL_POST"
,"DISC_AMT","DISC_AMT_MST","DISC_AMT_DTL","DISC_AMT_MST_VAT","VAT_AMT_DISC_MST"
,"OTHR_AMT","VAT_AMT","BILL_AMT","CPN_AMT","W_CODE","R_CODE","REP_CODE","EMP_NO","REF_NO"
,"CASH_NO","CC_CODE","PJ_NO","ACTV_NO","CR_CARD_NO","CR_CARD_AMT","CREDIT_CARD","SI_TYPE"
,"ATTACH_CNT","EXPORT","STAND_BY","COL_NO","CASH_AC_FCC","CASH_NO_FCC","A_DESC"
,"COMM_PER","PR_REP","PROCESSED","BILL_PY","EXTERNAL_POST","LOAD_NO","LOAD_SER"
,"AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","BILL_NO_CONN"
,"BILL_SER_CONN","CLC_TYP_NO_TAX","AC_AMT","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5"
,"FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","FIELD11","FIELD12","FIELD13","FIELD14"
,"C_TEL","C_ADDRESS","RECEIVE_NM","DOC_NO_PDA","PDA_NM","CR_CARD_NO_SCND"
,"CR_CARD_AMT_SCND","CR_CARD_NO_THRD","CR_CARD_AMT_THRD","DRIVER_NO","ADD_DISC_AMT_MST"
,"ADD_DISC_AMT_DTL","OTHR_AMT_DISC","PAID_AMT","PAID_BILL","PAID_U_ID","PAID_DATE"
,"REC_INV_BILL","REC_INV_U_ID","REC_INV_DATE","BILL_VALUED","VALUE_DATE","POS_POST"
,"CR_DOC_NO_REF","BILL_WITHOUT_AUTO_OTHR_AMT","CR_VALUED","CR_VALUED_SCND"
,"CR_VALUED_THRD","CR_DOC_NO_REF_SCND","CR_DOC_NO_REF_THRD","CR_VALUE_DATE"
,"CR_VALUE_DATE_SCND","CR_VALUE_DATE_THRD","CR_CARD_COMM_PER","CR_CARD_COMM_PER_SCND"
,"CR_CARD_COMM_PER_THRD","QT_PRM_NO","QT_PRM_SER","QT_PRM_RCRD_NO","PRM_CODE"
,"DOC_BRN_NO","CMPNY_NO","MOBILE_NO","SEND_TEL_SUCCESS","SEND_TEL_RESULTCODE"
,"NOT_USE_QUT_PRM","INSRNCE_CMP_NO","INSRNCE_BNF_NO","INSRNCE_PRSON_NM","INSRNCE_CARD_NO"
,"INSRNCE_CARD_NO_FMLY","INSRNCE_RLTN_TYP","INSRNCE_CLSS_NO","INSRNCE_LOAD_PER"
,"INSRNCE_DIAGNOSIS","INSRNCE_MDCL_NO","INSRNCE_APPRVD_CODE","INSRNCE_CSH_AMT"
,"COMM_AMT_DTL","CONN_SI_WITH_OUTGONG","C_CODE_CSH","CPN_FLG","CST_GCC","REC_NOTE"
,"TANK_CODE","POINT_RPLC_AMT","VAT_AMT_OTHR","C_TAX_CODE","CNTRCT_DATE","CNTRCT_NO"
,"CRD_NO_DISC","CRD_DISC_PER","DOC_SRL_CNTRCT","CNTRCT_BTCH_NO","POINT_TYP_NO"
,"POINT_CALC_TYP_NO","POINT_CNT","POINT_CNT_ALL","POINT_RPLC_CNT","ASS_AMT"
,"DISC_AMT_AFTR_VAT","CLC_INSRNCE_LOAD_AMT_MTHD","AC_CODE","AC_CODE_DTL","AC_DTL_TYP"
,"PYMNT_AC","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE"
,"UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM","CLC_TAX_INSRNC_CMPNY_FLG","PTNT_NO","DCTR_NO","PTNT_TYP","DOC_NO_ADMSON"
,"DOC_SRL_ADMSON","DOC_SER_EXTRNL","CNCL_FLG","CLC_VAT_PRICE_TYP","OUT_BILL_TYP"
,"SFDA_DCTR_NO","SFDA_PTNT_ID","SFDA_PRSPCT_NO","SFDA_PRSPCT_DATE","RMS_BILL_DOC_TYPE"
,"RMS_FREE_FLG","CR_CARD_MAX_COMM_AMT","CR_CARD_MAX_COMM_AMT_SCND"
,"CR_CARD_MAX_COMM_AMT_THRD","HRS_DOC_NO_REF","HRS_DOC_TYPE_REF","HRS_DOC_SER_REF"
,"CLC_TAX_FREE_QTY_FLG","INSRNCE_ADD_LMT_MST","INSRNCE_MDCN_CHRONIC_FLG","DOC_M_SQ"
,"ADVNC_PYMNT_PRCNT_CNTRCT","CR_CARD_CST_NO","CR_CARD_CST_NO_SCND","CR_CARD_CST_NO_THRD"
,"CR_CARD_DOC_NO_REF","CR_CARD_DOC_NO_REF_SCND","CR_CARD_DOC_NO_REF_THRD","CR_CARD_DSC"
,"CR_CARD_DSC_SCND","CR_CARD_DSC_THRD","AD_DATE_CLK","BILL_STAT_TYP"
,"INSRNCE_ADD_LMT_DOC","INSRNCE_ADD_LMT_DTL","INSRNCE_LMT_AMT_LOC_DOC"
,"WEB_SRVC_TRNSFR_DATA_FLG","WEB_SRVC_UUID") AS 
SELECT ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY
,BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,NOTE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,BILL_DUE_DATE,BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,OTHR_AMT,VAT_AMT,BILL_AMT,CPN_AMT,W_CODE,R_CODE,REP_CODE,EMP_NO,REF_NO
,CASH_NO,CC_CODE,PJ_NO,ACTV_NO,CR_CARD_NO,CR_CARD_AMT,CREDIT_CARD,SI_TYPE,ATTACH_CNT
,EXPORT,STAND_BY,COL_NO,CASH_AC_FCC,CASH_NO_FCC,A_DESC,COMM_PER,PR_REP,PROCESSED,BILL_PY
,EXTERNAL_POST,LOAD_NO,LOAD_SER,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE
,BILL_NO_CONN,BILL_SER_CONN,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5
,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,FIELD11,FIELD12,FIELD13,FIELD14,C_TEL,C_ADDRESS
,RECEIVE_NM,DOC_NO_PDA,PDA_NM,CR_CARD_NO_SCND,CR_CARD_AMT_SCND,CR_CARD_NO_THRD
,CR_CARD_AMT_THRD,DRIVER_NO,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,PAID_AMT
,PAID_BILL,PAID_U_ID,PAID_DATE,REC_INV_BILL,REC_INV_U_ID,REC_INV_DATE,BILL_VALUED
,VALUE_DATE,POS_POST,CR_DOC_NO_REF,BILL_WITHOUT_AUTO_OTHR_AMT,CR_VALUED,CR_VALUED_SCND
,CR_VALUED_THRD,CR_DOC_NO_REF_SCND,CR_DOC_NO_REF_THRD,CR_VALUE_DATE,CR_VALUE_DATE_SCND
,CR_VALUE_DATE_THRD,CR_CARD_COMM_PER,CR_CARD_COMM_PER_SCND,CR_CARD_COMM_PER_THRD
,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,PRM_CODE,DOC_BRN_NO,CMPNY_NO,MOBILE_NO
,SEND_TEL_SUCCESS,SEND_TEL_RESULTCODE,NOT_USE_QUT_PRM,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_PRSON_NM,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO
,INSRNCE_LOAD_PER,INSRNCE_DIAGNOSIS,INSRNCE_MDCL_NO,INSRNCE_APPRVD_CODE,INSRNCE_CSH_AMT
,COMM_AMT_DTL,CONN_SI_WITH_OUTGONG,C_CODE_CSH,CPN_FLG,CST_GCC,REC_NOTE,TANK_CODE
,POINT_RPLC_AMT,VAT_AMT_OTHR,C_TAX_CODE,CNTRCT_DATE,CNTRCT_NO,CRD_NO_DISC,CRD_DISC_PER
,DOC_SRL_CNTRCT,CNTRCT_BTCH_NO,POINT_TYP_NO,POINT_CALC_TYP_NO,POINT_CNT,POINT_CNT_ALL
,POINT_RPLC_CNT,ASS_AMT,DISC_AMT_AFTR_VAT,CLC_INSRNCE_LOAD_AMT_MTHD,AC_CODE,AC_CODE_DTL
,AC_DTL_TYP,PYMNT_AC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,CLC_TAX_INSRNC_CMPNY_FLG,PTNT_NO,DCTR_NO,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON
,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,OUT_BILL_TYP,SFDA_DCTR_NO,SFDA_PTNT_ID
,SFDA_PRSPCT_NO,SFDA_PRSPCT_DATE,RMS_BILL_DOC_TYPE,RMS_FREE_FLG,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF
,HRS_DOC_SER_REF,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,INSRNCE_MDCN_CHRONIC_FLG
,DOC_M_SQ,ADVNC_PYMNT_PRCNT_CNTRCT,CR_CARD_CST_NO,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO_THRD
,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF_THRD,CR_CARD_DSC
,CR_CARD_DSC_SCND,CR_CARD_DSC_THRD,AD_DATE_CLK,BILL_STAT_TYP,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,WEB_SRVC_TRNSFR_DATA_FLG,WEB_SRVC_UUID FROM
 IAS20181.IAS_BILL_MST     UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE
,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY,BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE
,CHEQUE_NO,NOTE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE,BILL_DUE_DATE,BILL_POST,DISC_AMT
,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT,VAT_AMT_DISC_MST,OTHR_AMT,VAT_AMT,BILL_AMT
,CPN_AMT,W_CODE,R_CODE,REP_CODE,EMP_NO,REF_NO,CASH_NO,CC_CODE,PJ_NO,ACTV_NO,CR_CARD_NO
,CR_CARD_AMT,CREDIT_CARD,SI_TYPE,ATTACH_CNT,EXPORT,STAND_BY,COL_NO,CASH_AC_FCC
,CASH_NO_FCC,A_DESC,COMM_PER,PR_REP,PROCESSED,BILL_PY,EXTERNAL_POST,LOAD_NO,LOAD_SER
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,BILL_NO_CONN,BILL_SER_CONN
,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,FIELD11,FIELD12,FIELD13,FIELD14,C_TEL,C_ADDRESS,RECEIVE_NM,DOC_NO_PDA,PDA_NM
,CR_CARD_NO_SCND,CR_CARD_AMT_SCND,CR_CARD_NO_THRD,CR_CARD_AMT_THRD,DRIVER_NO
,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,PAID_AMT,PAID_BILL,PAID_U_ID,PAID_DATE
,REC_INV_BILL,REC_INV_U_ID,REC_INV_DATE,BILL_VALUED,VALUE_DATE,POS_POST,CR_DOC_NO_REF
,BILL_WITHOUT_AUTO_OTHR_AMT,CR_VALUED,CR_VALUED_SCND,CR_VALUED_THRD,CR_DOC_NO_REF_SCND
,CR_DOC_NO_REF_THRD,CR_VALUE_DATE,CR_VALUE_DATE_SCND,CR_VALUE_DATE_THRD,CR_CARD_COMM_PER
,CR_CARD_COMM_PER_SCND,CR_CARD_COMM_PER_THRD,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,PRM_CODE
,DOC_BRN_NO,CMPNY_NO,MOBILE_NO,SEND_TEL_SUCCESS,SEND_TEL_RESULTCODE,NOT_USE_QUT_PRM
,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_PRSON_NM,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY
,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO,INSRNCE_LOAD_PER,INSRNCE_DIAGNOSIS,INSRNCE_MDCL_NO
,INSRNCE_APPRVD_CODE,INSRNCE_CSH_AMT,COMM_AMT_DTL,CONN_SI_WITH_OUTGONG,C_CODE_CSH,CPN_FLG
,CST_GCC,REC_NOTE,TANK_CODE,POINT_RPLC_AMT,VAT_AMT_OTHR,C_TAX_CODE,CNTRCT_DATE,CNTRCT_NO
,CRD_NO_DISC,CRD_DISC_PER,DOC_SRL_CNTRCT,CNTRCT_BTCH_NO,POINT_TYP_NO,POINT_CALC_TYP_NO
,POINT_CNT,POINT_CNT_ALL,POINT_RPLC_CNT,ASS_AMT,DISC_AMT_AFTR_VAT
,CLC_INSRNCE_LOAD_AMT_MTHD,AC_CODE,AC_CODE_DTL,AC_DTL_TYP,PYMNT_AC,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,CLC_TAX_INSRNC_CMPNY_FLG,PTNT_NO,DCTR_NO
,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP
,OUT_BILL_TYP,SFDA_DCTR_NO,SFDA_PTNT_ID,SFDA_PRSPCT_NO,SFDA_PRSPCT_DATE,RMS_BILL_DOC_TYPE
,RMS_FREE_FLG,CR_CARD_MAX_COMM_AMT,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD
,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST
,INSRNCE_MDCN_CHRONIC_FLG,DOC_M_SQ,ADVNC_PYMNT_PRCNT_CNTRCT,CR_CARD_CST_NO
,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO_THRD,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_SCND
,CR_CARD_DOC_NO_REF_THRD,CR_CARD_DSC,CR_CARD_DSC_SCND,CR_CARD_DSC_THRD,AD_DATE_CLK
,BILL_STAT_TYP,INSRNCE_ADD_LMT_DOC,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC
,WEB_SRVC_TRNSFR_DATA_FLG,WEB_SRVC_UUID FROM IAS20191.IAS_BILL_MST     UNION ALL  SELECT
 ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY
,BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,NOTE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,BILL_DUE_DATE,BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,OTHR_AMT,VAT_AMT,BILL_AMT,CPN_AMT,W_CODE,R_CODE,REP_CODE,EMP_NO,REF_NO
,CASH_NO,CC_CODE,PJ_NO,ACTV_NO,CR_CARD_NO,CR_CARD_AMT,CREDIT_CARD,SI_TYPE,ATTACH_CNT
,EXPORT,STAND_BY,COL_NO,CASH_AC_FCC,CASH_NO_FCC,A_DESC,COMM_PER,PR_REP,PROCESSED,BILL_PY
,EXTERNAL_POST,LOAD_NO,LOAD_SER,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE
,BILL_NO_CONN,BILL_SER_CONN,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5
,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,FIELD11,FIELD12,FIELD13,FIELD14,C_TEL,C_ADDRESS
,RECEIVE_NM,DOC_NO_PDA,PDA_NM,CR_CARD_NO_SCND,CR_CARD_AMT_SCND,CR_CARD_NO_THRD
,CR_CARD_AMT_THRD,DRIVER_NO,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,PAID_AMT
,PAID_BILL,PAID_U_ID,PAID_DATE,REC_INV_BILL,REC_INV_U_ID,REC_INV_DATE,BILL_VALUED
,VALUE_DATE,POS_POST,CR_DOC_NO_REF,BILL_WITHOUT_AUTO_OTHR_AMT,CR_VALUED,CR_VALUED_SCND
,CR_VALUED_THRD,CR_DOC_NO_REF_SCND,CR_DOC_NO_REF_THRD,CR_VALUE_DATE,CR_VALUE_DATE_SCND
,CR_VALUE_DATE_THRD,CR_CARD_COMM_PER,CR_CARD_COMM_PER_SCND,CR_CARD_COMM_PER_THRD
,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,PRM_CODE,DOC_BRN_NO,CMPNY_NO,MOBILE_NO
,SEND_TEL_SUCCESS,SEND_TEL_RESULTCODE,NOT_USE_QUT_PRM,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_PRSON_NM,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO
,INSRNCE_LOAD_PER,INSRNCE_DIAGNOSIS,INSRNCE_MDCL_NO,INSRNCE_APPRVD_CODE,INSRNCE_CSH_AMT
,COMM_AMT_DTL,CONN_SI_WITH_OUTGONG,C_CODE_CSH,CPN_FLG,CST_GCC,REC_NOTE,TANK_CODE
,POINT_RPLC_AMT,VAT_AMT_OTHR,C_TAX_CODE,CNTRCT_DATE,CNTRCT_NO,CRD_NO_DISC,CRD_DISC_PER
,DOC_SRL_CNTRCT,CNTRCT_BTCH_NO,POINT_TYP_NO,POINT_CALC_TYP_NO,POINT_CNT,POINT_CNT_ALL
,POINT_RPLC_CNT,ASS_AMT,DISC_AMT_AFTR_VAT,CLC_INSRNCE_LOAD_AMT_MTHD,AC_CODE,AC_CODE_DTL
,AC_DTL_TYP,PYMNT_AC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,CLC_TAX_INSRNC_CMPNY_FLG,PTNT_NO,DCTR_NO,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON
,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,OUT_BILL_TYP,SFDA_DCTR_NO,SFDA_PTNT_ID
,SFDA_PRSPCT_NO,SFDA_PRSPCT_DATE,RMS_BILL_DOC_TYPE,RMS_FREE_FLG,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF
,HRS_DOC_SER_REF,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,INSRNCE_MDCN_CHRONIC_FLG
,DOC_M_SQ,ADVNC_PYMNT_PRCNT_CNTRCT,CR_CARD_CST_NO,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO_THRD
,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF_THRD,CR_CARD_DSC
,CR_CARD_DSC_SCND,CR_CARD_DSC_THRD,AD_DATE_CLK,BILL_STAT_TYP,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,WEB_SRVC_TRNSFR_DATA_FLG,WEB_SRVC_UUID FROM
 IAS20201.IAS_BILL_MST     UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , BILL_DOC_TYPE
,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY,BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE
,CHEQUE_NO,NOTE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE,BILL_DUE_DATE,BILL_POST,DISC_AMT
,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT,VAT_AMT_DISC_MST,OTHR_AMT,VAT_AMT,BILL_AMT
,CPN_AMT,W_CODE,R_CODE,REP_CODE,EMP_NO,REF_NO,CASH_NO,CC_CODE,PJ_NO,ACTV_NO,CR_CARD_NO
,CR_CARD_AMT,CREDIT_CARD,SI_TYPE,ATTACH_CNT,EXPORT,STAND_BY,COL_NO,CASH_AC_FCC
,CASH_NO_FCC,A_DESC,COMM_PER,PR_REP,PROCESSED,BILL_PY,EXTERNAL_POST,LOAD_NO,LOAD_SER
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,BILL_NO_CONN,BILL_SER_CONN
,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,FIELD11,FIELD12,FIELD13,FIELD14,C_TEL,C_ADDRESS,RECEIVE_NM,DOC_NO_PDA,PDA_NM
,CR_CARD_NO_SCND,CR_CARD_AMT_SCND,CR_CARD_NO_THRD,CR_CARD_AMT_THRD,DRIVER_NO
,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,PAID_AMT,PAID_BILL,PAID_U_ID,PAID_DATE
,REC_INV_BILL,REC_INV_U_ID,REC_INV_DATE,BILL_VALUED,VALUE_DATE,POS_POST,CR_DOC_NO_REF
,BILL_WITHOUT_AUTO_OTHR_AMT,CR_VALUED,CR_VALUED_SCND,CR_VALUED_THRD,CR_DOC_NO_REF_SCND
,CR_DOC_NO_REF_THRD,CR_VALUE_DATE,CR_VALUE_DATE_SCND,CR_VALUE_DATE_THRD,CR_CARD_COMM_PER
,CR_CARD_COMM_PER_SCND,CR_CARD_COMM_PER_THRD,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,PRM_CODE
,DOC_BRN_NO,CMPNY_NO,MOBILE_NO,SEND_TEL_SUCCESS,SEND_TEL_RESULTCODE,NOT_USE_QUT_PRM
,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_PRSON_NM,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY
,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO,INSRNCE_LOAD_PER,INSRNCE_DIAGNOSIS,INSRNCE_MDCL_NO
,INSRNCE_APPRVD_CODE,INSRNCE_CSH_AMT,COMM_AMT_DTL,CONN_SI_WITH_OUTGONG,C_CODE_CSH,CPN_FLG
,CST_GCC,REC_NOTE,TANK_CODE,POINT_RPLC_AMT,VAT_AMT_OTHR,C_TAX_CODE,CNTRCT_DATE,CNTRCT_NO
,CRD_NO_DISC,CRD_DISC_PER,DOC_SRL_CNTRCT,CNTRCT_BTCH_NO,POINT_TYP_NO,POINT_CALC_TYP_NO
,POINT_CNT,POINT_CNT_ALL,POINT_RPLC_CNT,ASS_AMT,DISC_AMT_AFTR_VAT
,CLC_INSRNCE_LOAD_AMT_MTHD,AC_CODE,AC_CODE_DTL,AC_DTL_TYP,PYMNT_AC,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,CLC_TAX_INSRNC_CMPNY_FLG,PTNT_NO,DCTR_NO
,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP
,OUT_BILL_TYP,SFDA_DCTR_NO,SFDA_PTNT_ID,SFDA_PRSPCT_NO,SFDA_PRSPCT_DATE,RMS_BILL_DOC_TYPE
,RMS_FREE_FLG,CR_CARD_MAX_COMM_AMT,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD
,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST
,INSRNCE_MDCN_CHRONIC_FLG,DOC_M_SQ,ADVNC_PYMNT_PRCNT_CNTRCT,CR_CARD_CST_NO
,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO_THRD,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_SCND
,CR_CARD_DOC_NO_REF_THRD,CR_CARD_DSC,CR_CARD_DSC_SCND,CR_CARD_DSC_THRD,AD_DATE_CLK
,BILL_STAT_TYP,INSRNCE_ADD_LMT_DOC,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC
,WEB_SRVC_TRNSFR_DATA_FLG,WEB_SRVC_UUID FROM IAS20211.IAS_BILL_MST     UNION ALL  SELECT
 ROWID ROW_ID,2 UMARKER , BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY
,BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,NOTE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,BILL_DUE_DATE,BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,OTHR_AMT,VAT_AMT,BILL_AMT,CPN_AMT,W_CODE,R_CODE,REP_CODE,EMP_NO,REF_NO
,CASH_NO,CC_CODE,PJ_NO,ACTV_NO,CR_CARD_NO,CR_CARD_AMT,CREDIT_CARD,SI_TYPE,ATTACH_CNT
,EXPORT,STAND_BY,COL_NO,CASH_AC_FCC,CASH_NO_FCC,A_DESC,COMM_PER,PR_REP,PROCESSED,BILL_PY
,EXTERNAL_POST,LOAD_NO,LOAD_SER,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE
,BILL_NO_CONN,BILL_SER_CONN,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5
,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,FIELD11,FIELD12,FIELD13,FIELD14,C_TEL,C_ADDRESS
,RECEIVE_NM,DOC_NO_PDA,PDA_NM,CR_CARD_NO_SCND,CR_CARD_AMT_SCND,CR_CARD_NO_THRD
,CR_CARD_AMT_THRD,DRIVER_NO,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,PAID_AMT
,PAID_BILL,PAID_U_ID,PAID_DATE,REC_INV_BILL,REC_INV_U_ID,REC_INV_DATE,BILL_VALUED
,VALUE_DATE,POS_POST,CR_DOC_NO_REF,BILL_WITHOUT_AUTO_OTHR_AMT,CR_VALUED,CR_VALUED_SCND
,CR_VALUED_THRD,CR_DOC_NO_REF_SCND,CR_DOC_NO_REF_THRD,CR_VALUE_DATE,CR_VALUE_DATE_SCND
,CR_VALUE_DATE_THRD,CR_CARD_COMM_PER,CR_CARD_COMM_PER_SCND,CR_CARD_COMM_PER_THRD
,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,PRM_CODE,DOC_BRN_NO,CMPNY_NO,MOBILE_NO
,SEND_TEL_SUCCESS,SEND_TEL_RESULTCODE,NOT_USE_QUT_PRM,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_PRSON_NM,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO
,INSRNCE_LOAD_PER,INSRNCE_DIAGNOSIS,INSRNCE_MDCL_NO,INSRNCE_APPRVD_CODE,INSRNCE_CSH_AMT
,COMM_AMT_DTL,CONN_SI_WITH_OUTGONG,C_CODE_CSH,CPN_FLG,CST_GCC,REC_NOTE,TANK_CODE
,POINT_RPLC_AMT,VAT_AMT_OTHR,C_TAX_CODE,CNTRCT_DATE,CNTRCT_NO,CRD_NO_DISC,CRD_DISC_PER
,DOC_SRL_CNTRCT,CNTRCT_BTCH_NO,POINT_TYP_NO,POINT_CALC_TYP_NO,POINT_CNT,POINT_CNT_ALL
,POINT_RPLC_CNT,ASS_AMT,DISC_AMT_AFTR_VAT,CLC_INSRNCE_LOAD_AMT_MTHD,AC_CODE,AC_CODE_DTL
,AC_DTL_TYP,PYMNT_AC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,CLC_TAX_INSRNC_CMPNY_FLG,PTNT_NO,DCTR_NO,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON
,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,OUT_BILL_TYP,SFDA_DCTR_NO,SFDA_PTNT_ID
,SFDA_PRSPCT_NO,SFDA_PRSPCT_DATE,RMS_BILL_DOC_TYPE,RMS_FREE_FLG,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF
,HRS_DOC_SER_REF,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,INSRNCE_MDCN_CHRONIC_FLG
,DOC_M_SQ,ADVNC_PYMNT_PRCNT_CNTRCT,CR_CARD_CST_NO,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO_THRD
,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF_THRD,CR_CARD_DSC
,CR_CARD_DSC_SCND,CR_CARD_DSC_THRD,AD_DATE_CLK,BILL_STAT_TYP,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,WEB_SRVC_TRNSFR_DATA_FLG,WEB_SRVC_UUID FROM
 IAS_BILL_MST     WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 125: IAS_V_PI_BILL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_PI_BILL_DTL_YR" ("ROW_ID","UMARKER","PUR_TYPE","BILL_DOC_TYPE"
,"BILL_NO","BILL_SER","I_CODE","I_NM","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY"
,"I_PRICE","STK_COST","INC_QTY","INC_FREE_QTY","W_CODE","CC_CODE","PJ_NO","ACTV_NO"
,"EXPIRE_DATE","BATCH_NO","DIS_AMT_MST","DIS_PER","DIS_AMT_DTL","DIS_PER2","DIS_AMT_DTL2"
,"DIS_PER3","DIS_AMT_DTL3","DIS_AMT","VAT_PER","VAT_AMT","ADD_AMT","OTHR_AMT"
,"USE_SERIALNO","RCRD_NO","DOC_SEQUENCE","DOC_SEQUENCE_GRN_PO","ITEM_DESC","BARCODE"
,"PO_NO","PO_SER","GRN_NO","GRN_SER","USE_ATTCH","REC_ATTCH","DIS_AMT_NOT_EFFECT"
,"ADD_DIS_AMT_MST","ADD_DIS_AMT_DTL","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER"
,"POST_CODE","UNIT_SIZE","U_QTY","GR_REF","DOC_TYPE","DOC_SEQUENCE_PO","PO_ORDER_NO"
,"PO_ORDER_SER","WT_QTY","WT_UNT","SERVICE_ITM","FREE_QTY_PROFT","I_PRICE_VAT"
,"CNTRCT_NO","CNTNR_NO","CNTRCT_SER","CNTRCT_BTCH_NO","FREIGHT_NO","FREIGHT_SER"
,"FREIGHT_DOC_SEQUENCE","OTHR_AMT_DISC","VAT_AMT_OTHR","DOC_NO_REF","DOC_SER_REF"
,"DOC_TYP_REF","DOC_SEQUENCE_REF","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","ARGMNT_NO"
,"OTHR_AMT_ITM","PKG_UNT","PKG_UNT_SIZE","PKG_QTY","PKG_LENGTH","PKG_WIDTH","PKG_HEIGHT"
,"PKG_SIZE","PKG_WEIGHT","UP_CNT","SALE_PRICE","FIELD_DTL1","FIELD_DTL2","FIELD_DTL3"
,"FIELD_DTL4","FIELD_DTL5","FIELD_DTL6","FIELD_DTL7","FIELD_DTL8","FIELD_DTL9"
,"FIELD_DTL10","BARCODE_PRNT","LAST_INCOME_PRICE","ACTUL_QTY","LOS_QTY") AS 
SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_NM,I_QTY
,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,INC_QTY,INC_FREE_QTY,W_CODE,CC_CODE,PJ_NO
,ACTV_NO,EXPIRE_DATE,BATCH_NO,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2
,DIS_PER3,DIS_AMT_DTL3,DIS_AMT,VAT_PER,VAT_AMT,ADD_AMT,OTHR_AMT,USE_SERIALNO,RCRD_NO
,DOC_SEQUENCE,DOC_SEQUENCE_GRN_PO,ITEM_DESC,BARCODE,PO_NO,PO_SER,GRN_NO,GRN_SER,USE_ATTCH
,REC_ATTCH,DIS_AMT_NOT_EFFECT,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,POST_CODE,UNIT_SIZE,U_QTY,GR_REF,DOC_TYPE,DOC_SEQUENCE_PO,PO_ORDER_NO
,PO_ORDER_SER,WT_QTY,WT_UNT,SERVICE_ITM,FREE_QTY_PROFT,I_PRICE_VAT,CNTRCT_NO,CNTNR_NO
,CNTRCT_SER,CNTRCT_BTCH_NO,FREIGHT_NO,FREIGHT_SER,FREIGHT_DOC_SEQUENCE,OTHR_AMT_DISC
,VAT_AMT_OTHR,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,ARGMNT_NO,OTHR_AMT_ITM,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH
,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,UP_CNT,SALE_PRICE,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10
,BARCODE_PRNT,LAST_INCOME_PRICE,ACTUL_QTY,LOS_QTY FROM IAS20181.IAS_PI_BILL_DTL  UNION
 ALL  SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_NM
,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,INC_QTY,INC_FREE_QTY,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2
,DIS_PER3,DIS_AMT_DTL3,DIS_AMT,VAT_PER,VAT_AMT,ADD_AMT,OTHR_AMT,USE_SERIALNO,RCRD_NO
,DOC_SEQUENCE,DOC_SEQUENCE_GRN_PO,ITEM_DESC,BARCODE,PO_NO,PO_SER,GRN_NO,GRN_SER,USE_ATTCH
,REC_ATTCH,DIS_AMT_NOT_EFFECT,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,POST_CODE,UNIT_SIZE,U_QTY,GR_REF,DOC_TYPE,DOC_SEQUENCE_PO,PO_ORDER_NO
,PO_ORDER_SER,WT_QTY,WT_UNT,SERVICE_ITM,FREE_QTY_PROFT,I_PRICE_VAT,CNTRCT_NO,CNTNR_NO
,CNTRCT_SER,CNTRCT_BTCH_NO,FREIGHT_NO,FREIGHT_SER,FREIGHT_DOC_SEQUENCE,OTHR_AMT_DISC
,VAT_AMT_OTHR,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,ARGMNT_NO,OTHR_AMT_ITM,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH
,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,UP_CNT,SALE_PRICE,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10
,BARCODE_PRNT,LAST_INCOME_PRICE,ACTUL_QTY,LOS_QTY FROM IAS20191.IAS_PI_BILL_DTL  UNION
 ALL  SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_NM
,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,INC_QTY,INC_FREE_QTY,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2
,DIS_PER3,DIS_AMT_DTL3,DIS_AMT,VAT_PER,VAT_AMT,ADD_AMT,OTHR_AMT,USE_SERIALNO,RCRD_NO
,DOC_SEQUENCE,DOC_SEQUENCE_GRN_PO,ITEM_DESC,BARCODE,PO_NO,PO_SER,GRN_NO,GRN_SER,USE_ATTCH
,REC_ATTCH,DIS_AMT_NOT_EFFECT,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,POST_CODE,UNIT_SIZE,U_QTY,GR_REF,DOC_TYPE,DOC_SEQUENCE_PO,PO_ORDER_NO
,PO_ORDER_SER,WT_QTY,WT_UNT,SERVICE_ITM,FREE_QTY_PROFT,I_PRICE_VAT,CNTRCT_NO,CNTNR_NO
,CNTRCT_SER,CNTRCT_BTCH_NO,FREIGHT_NO,FREIGHT_SER,FREIGHT_DOC_SEQUENCE,OTHR_AMT_DISC
,VAT_AMT_OTHR,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,ARGMNT_NO,OTHR_AMT_ITM,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH
,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,UP_CNT,SALE_PRICE,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10
,BARCODE_PRNT,LAST_INCOME_PRICE,ACTUL_QTY,LOS_QTY FROM IAS20201.IAS_PI_BILL_DTL  UNION
 ALL  SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_NM
,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,INC_QTY,INC_FREE_QTY,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2
,DIS_PER3,DIS_AMT_DTL3,DIS_AMT,VAT_PER,VAT_AMT,ADD_AMT,OTHR_AMT,USE_SERIALNO,RCRD_NO
,DOC_SEQUENCE,DOC_SEQUENCE_GRN_PO,ITEM_DESC,BARCODE,PO_NO,PO_SER,GRN_NO,GRN_SER,USE_ATTCH
,REC_ATTCH,DIS_AMT_NOT_EFFECT,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,POST_CODE,UNIT_SIZE,U_QTY,GR_REF,DOC_TYPE,DOC_SEQUENCE_PO,PO_ORDER_NO
,PO_ORDER_SER,WT_QTY,WT_UNT,SERVICE_ITM,FREE_QTY_PROFT,I_PRICE_VAT,CNTRCT_NO,CNTNR_NO
,CNTRCT_SER,CNTRCT_BTCH_NO,FREIGHT_NO,FREIGHT_SER,FREIGHT_DOC_SEQUENCE,OTHR_AMT_DISC
,VAT_AMT_OTHR,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,ARGMNT_NO,OTHR_AMT_ITM,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH
,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,UP_CNT,SALE_PRICE,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10
,BARCODE_PRNT,LAST_INCOME_PRICE,ACTUL_QTY,LOS_QTY FROM IAS20211.IAS_PI_BILL_DTL  UNION
 ALL  SELECT ROWID ROW_ID,2 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,I_CODE,I_NM
,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,INC_QTY,INC_FREE_QTY,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2
,DIS_PER3,DIS_AMT_DTL3,DIS_AMT,VAT_PER,VAT_AMT,ADD_AMT,OTHR_AMT,USE_SERIALNO,RCRD_NO
,DOC_SEQUENCE,DOC_SEQUENCE_GRN_PO,ITEM_DESC,BARCODE,PO_NO,PO_SER,GRN_NO,GRN_SER,USE_ATTCH
,REC_ATTCH,DIS_AMT_NOT_EFFECT,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,POST_CODE,UNIT_SIZE,U_QTY,GR_REF,DOC_TYPE,DOC_SEQUENCE_PO,PO_ORDER_NO
,PO_ORDER_SER,WT_QTY,WT_UNT,SERVICE_ITM,FREE_QTY_PROFT,I_PRICE_VAT,CNTRCT_NO,CNTNR_NO
,CNTRCT_SER,CNTRCT_BTCH_NO,FREIGHT_NO,FREIGHT_SER,FREIGHT_DOC_SEQUENCE,OTHR_AMT_DISC
,VAT_AMT_OTHR,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,ARGMNT_NO,OTHR_AMT_ITM,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH
,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT,UP_CNT,SALE_PRICE,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10
,BARCODE_PRNT,LAST_INCOME_PRICE,ACTUL_QTY,LOS_QTY FROM IAS_PI_BILL_DTL  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 126: IAS_V_PI_BILL_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_PI_BILL_MST_YR" ("ROW_ID","UMARKER","PUR_TYPE","BILL_DOC_TYPE"
,"BILL_NO","BILL_SER","BILL_DATE","BILL_CURRENCY","BILL_RATE","STOCK_RATE","V_CODE"
,"V_NAME","LC_NO","A_CODE","AC_CODE_DTL","AC_DTL_TYP","CHEQUE_NO","CHEQUE_AMT"
,"CHEQUE_DUE_DATE","BILL_DUE_DATE","BILL_POST","BILL_GOOD_REC","DISC_AMT","DISC_AMT_MST"
,"DISC_AMT_DTL","VAT_AMT","BILL_AMT","OTHR_AMT","BILL_WITHOUT_OTHR_AMT","W_CODE","REF_NO"
,"CASH_NO","CASH_NO_FCC","CC_CODE","PJ_NO","CASH_AC_FCC","A_DESC","DRIVER_NAME","CAR_NO"
,"CLC_VAT_PRICE_TYP","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7"
,"FIELD8","FIELD9","FIELD10","PR_REP","EXP_AMT","USE_VAT","EXTERNAL_POST","BILL_TYPE_NO"
,"CNCT_WTH_CNTRCT","CNTRCT_NO","CNTRCT_SER","ACTV_NO","HUNG","FREIGHT_METHOD"
,"UNDER_SELLING","BILL_NO_V_CODE","PMAN_CODE","ADD_AMT_TYPE","DISC_AMT_NOT_EFFECT"
,"ADD_DISC_AMT_MST","ADD_DISC_AMT_DTL","RCV_BILL_DATE","BILL_DATE_V_CODE","DOC_AMT"
,"DOC_BRN_NO","DOC_TYPE","BILL_NO_REF","BILL_SER_REF","SRVC_BILL","CNTRCT_BTCH_NO"
,"BILL_NO_CONN","BILL_SER_CONN","VND_GCC","V_ADDRESS","V_TAX_CODE","CR_NO"
,"OTHR_AMT_DISC","VAT_AMT_OTHR","AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID"
,"AUDIT_REF_DATE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID"
,"POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"CLC_TYP_NO_TAX","ARV_DATE","FRGHT_RGSTR_DATE","AD_TRMNL_NM","UP_TRMNL_NM"
,"POST_TAX_DUE_AC_CODE","USE_TDS_FLG","AC_CODE","AC_AMT","PYMNT_AC","LVL_NO_PRICE"
,"CLC_TAX_FREE_QTY_FLG") AS 
SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE
,BILL_CURRENCY,BILL_RATE,STOCK_RATE,V_CODE,V_NAME,LC_NO,A_CODE,AC_CODE_DTL,AC_DTL_TYP
,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE,BILL_DUE_DATE,BILL_POST,BILL_GOOD_REC,DISC_AMT
,DISC_AMT_MST,DISC_AMT_DTL,VAT_AMT,BILL_AMT,OTHR_AMT,BILL_WITHOUT_OTHR_AMT,W_CODE,REF_NO
,CASH_NO,CASH_NO_FCC,CC_CODE,PJ_NO,CASH_AC_FCC,A_DESC,DRIVER_NAME,CAR_NO
,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,PR_REP,EXP_AMT,USE_VAT,EXTERNAL_POST,BILL_TYPE_NO,CNCT_WTH_CNTRCT,CNTRCT_NO,CNTRCT_SER
,ACTV_NO,HUNG,FREIGHT_METHOD,UNDER_SELLING,BILL_NO_V_CODE,PMAN_CODE,ADD_AMT_TYPE
,DISC_AMT_NOT_EFFECT,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,RCV_BILL_DATE,BILL_DATE_V_CODE
,DOC_AMT,DOC_BRN_NO,DOC_TYPE,BILL_NO_REF,BILL_SER_REF,SRVC_BILL,CNTRCT_BTCH_NO
,BILL_NO_CONN,BILL_SER_CONN,VND_GCC,V_ADDRESS,V_TAX_CODE,CR_NO,OTHR_AMT_DISC,VAT_AMT_OTHR
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,CLC_TYP_NO_TAX,ARV_DATE,FRGHT_RGSTR_DATE,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE
,USE_TDS_FLG,AC_CODE,AC_AMT,PYMNT_AC,LVL_NO_PRICE,CLC_TAX_FREE_QTY_FLG FROM
 IAS20181.IAS_PI_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE
,BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY,BILL_RATE,STOCK_RATE,V_CODE
,V_NAME,LC_NO,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,BILL_DUE_DATE,BILL_POST,BILL_GOOD_REC,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,VAT_AMT
,BILL_AMT,OTHR_AMT,BILL_WITHOUT_OTHR_AMT,W_CODE,REF_NO,CASH_NO,CASH_NO_FCC,CC_CODE,PJ_NO
,CASH_AC_FCC,A_DESC,DRIVER_NAME,CAR_NO,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,PR_REP,EXP_AMT,USE_VAT,EXTERNAL_POST
,BILL_TYPE_NO,CNCT_WTH_CNTRCT,CNTRCT_NO,CNTRCT_SER,ACTV_NO,HUNG,FREIGHT_METHOD
,UNDER_SELLING,BILL_NO_V_CODE,PMAN_CODE,ADD_AMT_TYPE,DISC_AMT_NOT_EFFECT,ADD_DISC_AMT_MST
,ADD_DISC_AMT_DTL,RCV_BILL_DATE,BILL_DATE_V_CODE,DOC_AMT,DOC_BRN_NO,DOC_TYPE,BILL_NO_REF
,BILL_SER_REF,SRVC_BILL,CNTRCT_BTCH_NO,BILL_NO_CONN,BILL_SER_CONN,VND_GCC,V_ADDRESS
,V_TAX_CODE,CR_NO,OTHR_AMT_DISC,VAT_AMT_OTHR,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,ARV_DATE,FRGHT_RGSTR_DATE
,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE,USE_TDS_FLG,AC_CODE,AC_AMT,PYMNT_AC
,LVL_NO_PRICE,CLC_TAX_FREE_QTY_FLG FROM IAS20191.IAS_PI_BILL_MST  UNION ALL  SELECT ROWID
 ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY
,BILL_RATE,STOCK_RATE,V_CODE,V_NAME,LC_NO,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO
,CHEQUE_AMT,CHEQUE_DUE_DATE,BILL_DUE_DATE,BILL_POST,BILL_GOOD_REC,DISC_AMT,DISC_AMT_MST
,DISC_AMT_DTL,VAT_AMT,BILL_AMT,OTHR_AMT,BILL_WITHOUT_OTHR_AMT,W_CODE,REF_NO,CASH_NO
,CASH_NO_FCC,CC_CODE,PJ_NO,CASH_AC_FCC,A_DESC,DRIVER_NAME,CAR_NO,CLC_VAT_PRICE_TYP,FIELD1
,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,PR_REP,EXP_AMT,USE_VAT
,EXTERNAL_POST,BILL_TYPE_NO,CNCT_WTH_CNTRCT,CNTRCT_NO,CNTRCT_SER,ACTV_NO,HUNG
,FREIGHT_METHOD,UNDER_SELLING,BILL_NO_V_CODE,PMAN_CODE,ADD_AMT_TYPE,DISC_AMT_NOT_EFFECT
,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,RCV_BILL_DATE,BILL_DATE_V_CODE,DOC_AMT,DOC_BRN_NO
,DOC_TYPE,BILL_NO_REF,BILL_SER_REF,SRVC_BILL,CNTRCT_BTCH_NO,BILL_NO_CONN,BILL_SER_CONN
,VND_GCC,V_ADDRESS,V_TAX_CODE,CR_NO,OTHR_AMT_DISC,VAT_AMT_OTHR,AUDIT_REF,AUDIT_REF_DESC
,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,ARV_DATE
,FRGHT_RGSTR_DATE,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE,USE_TDS_FLG,AC_CODE,AC_AMT
,PYMNT_AC,LVL_NO_PRICE,CLC_TAX_FREE_QTY_FLG FROM IAS20201.IAS_PI_BILL_MST  UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PUR_TYPE,BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE
,BILL_CURRENCY,BILL_RATE,STOCK_RATE,V_CODE,V_NAME,LC_NO,A_CODE,AC_CODE_DTL,AC_DTL_TYP
,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE,BILL_DUE_DATE,BILL_POST,BILL_GOOD_REC,DISC_AMT
,DISC_AMT_MST,DISC_AMT_DTL,VAT_AMT,BILL_AMT,OTHR_AMT,BILL_WITHOUT_OTHR_AMT,W_CODE,REF_NO
,CASH_NO,CASH_NO_FCC,CC_CODE,PJ_NO,CASH_AC_FCC,A_DESC,DRIVER_NAME,CAR_NO
,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,PR_REP,EXP_AMT,USE_VAT,EXTERNAL_POST,BILL_TYPE_NO,CNCT_WTH_CNTRCT,CNTRCT_NO,CNTRCT_SER
,ACTV_NO,HUNG,FREIGHT_METHOD,UNDER_SELLING,BILL_NO_V_CODE,PMAN_CODE,ADD_AMT_TYPE
,DISC_AMT_NOT_EFFECT,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,RCV_BILL_DATE,BILL_DATE_V_CODE
,DOC_AMT,DOC_BRN_NO,DOC_TYPE,BILL_NO_REF,BILL_SER_REF,SRVC_BILL,CNTRCT_BTCH_NO
,BILL_NO_CONN,BILL_SER_CONN,VND_GCC,V_ADDRESS,V_TAX_CODE,CR_NO,OTHR_AMT_DISC,VAT_AMT_OTHR
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,CLC_TYP_NO_TAX,ARV_DATE,FRGHT_RGSTR_DATE,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE
,USE_TDS_FLG,AC_CODE,AC_AMT,PYMNT_AC,LVL_NO_PRICE,CLC_TAX_FREE_QTY_FLG FROM
 IAS20211.IAS_PI_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , PUR_TYPE
,BILL_DOC_TYPE,BILL_NO,BILL_SER,BILL_DATE,BILL_CURRENCY,BILL_RATE,STOCK_RATE,V_CODE
,V_NAME,LC_NO,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,BILL_DUE_DATE,BILL_POST,BILL_GOOD_REC,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,VAT_AMT
,BILL_AMT,OTHR_AMT,BILL_WITHOUT_OTHR_AMT,W_CODE,REF_NO,CASH_NO,CASH_NO_FCC,CC_CODE,PJ_NO
,CASH_AC_FCC,A_DESC,DRIVER_NAME,CAR_NO,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,PR_REP,EXP_AMT,USE_VAT,EXTERNAL_POST
,BILL_TYPE_NO,CNCT_WTH_CNTRCT,CNTRCT_NO,CNTRCT_SER,ACTV_NO,HUNG,FREIGHT_METHOD
,UNDER_SELLING,BILL_NO_V_CODE,PMAN_CODE,ADD_AMT_TYPE,DISC_AMT_NOT_EFFECT,ADD_DISC_AMT_MST
,ADD_DISC_AMT_DTL,RCV_BILL_DATE,BILL_DATE_V_CODE,DOC_AMT,DOC_BRN_NO,DOC_TYPE,BILL_NO_REF
,BILL_SER_REF,SRVC_BILL,CNTRCT_BTCH_NO,BILL_NO_CONN,BILL_SER_CONN,VND_GCC,V_ADDRESS
,V_TAX_CODE,CR_NO,OTHR_AMT_DISC,VAT_AMT_OTHR,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,ARV_DATE,FRGHT_RGSTR_DATE
,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE,USE_TDS_FLG,AC_CODE,AC_AMT,PYMNT_AC
,LVL_NO_PRICE,CLC_TAX_FREE_QTY_FLG FROM IAS_PI_BILL_MST  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 127: IAS_V_POST_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_POST_DTL_YR" ("ROW_ID","UMARKER","DOC_TYPE","JV_TYPE","DOC_NO"
,"DOC_SER","W_CODE","CC_CODE","PJ_NO","ACTV_NO","CASH_NO","A_CODE","AC_CODE_DTL"
,"AC_CODE_DTL_SUB","AC_DTL_TYP","A_CY","DR_AMT","CR_AMT","DR_AMT_F","CR_AMT_F","AMT"
,"AMT_F","DOC_DATE","DOC_DUE_DATE","DOC_DESC","MNTH","D_YEAR","REF_NO","DOC_POST"
,"DOC_CLOSE","INV_CLOSE","CB_BEFORE","CB_AFTER","LC_NO","C_CODE","V_CODE","C_V_CODE"
,"V_C_CODE","COL_NO","REP_CODE","CR_CARD_TYPE","R_CODE","HRCHY_NO","WO_NO","WO_SER"
,"CHEQUE_NO","NOTE_NO","CHEQUE_VALUED","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF"
,"DOC_SER_REF","DOC_SEQUENCE","EXTERNAL_POST","RCRD_NO","G_CODE","WHG_CODE","TRMNL_NAME"
,"INSTALL_TYPE","MOV_DOC_PY","FROM_CC_CODE","F_BRN_NO","DOC_BRN_NO","CASHIER_NO"
,"INSRNCE_CMP_NO","INSRNCE_BNF_NO","INSRNCE_CARD_NO","INSRNCE_CARD_NO_FMLY"
,"INSRNCE_RLTN_TYP","AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE"
,"CNFRM","CNFRM_DESC","CNFRM_U_ID","CNFRM_DATE","POST_U_ID","POST_DATE","UNPOST_U_ID"
,"UNPOST_DATE","DOC_SEQUENCE_REF","RCRD_NO_REF","CRD_CARD_NO","CRD_CARD_NO_REF"
,"CR_CARD_DSC","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR","DOC_NO_MNL","DOC_DATE_MNL") AS 
SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE,CC_CODE,PJ_NO
,ACTV_NO,CASH_NO,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT,CR_AMT
,DR_AMT_F,CR_AMT_F,AMT,AMT_F,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO,DOC_POST
,DOC_CLOSE,INV_CLOSE,CB_BEFORE,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE,COL_NO
,REP_CODE,CR_CARD_TYPE,R_CODE,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO,CHEQUE_VALUED
,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO
,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO
,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY
,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC
,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF
,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL FROM IAS20181.IAS_POST_DTL
     UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE
,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT
,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO
,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE
,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO
,CHEQUE_VALUED,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE
,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE
,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_CARD_NO
,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL
 FROM IAS20191.IAS_POST_DTL     Where Doc_Type <> 0  UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE
,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F
,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE
,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE
,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO,CHEQUE_VALUED,DOC_TYPE_REF,DOC_JV_TYPE_REF
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME
,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO
,INSRNCE_BNF_NO,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF
,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO
,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL FROM IAS20201.IAS_POST_DTL     Where Doc_Type
 <> 0  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE
,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT
,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO
,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE
,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO
,CHEQUE_VALUED,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE
,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE
,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_CARD_NO
,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL
 FROM IAS20211.IAS_POST_DTL     Where Doc_Type <> 0  UNION ALL  SELECT ROWID ROW_ID,2
 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE
,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F
,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE
,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE
,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO,CHEQUE_VALUED,DOC_TYPE_REF,DOC_JV_TYPE_REF
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME
,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO
,INSRNCE_BNF_NO,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF
,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO
,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL FROM IAS_POST_DTL     WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 128: IAS_V_PR_BILL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_PR_BILL_DTL_YR" ("ROW_ID","UMARKER","RT_BILL_DOC_TYPE","RT_BILL_NO"
,"RT_BILL_SER","BILL_NO","BILL_DOC_TYPE","BILL_SER","I_CODE","I_QTY","ITM_UNT","P_SIZE"
,"P_QTY","I_PRICE","STK_COST","W_CODE","CC_CODE","PJ_NO","ACTV_NO","EXPIRE_DATE"
,"BATCH_NO","FREE_QTY","DIS_PER","DIS_AMT_DTL","DIS_PER2","DIS_AMT_DTL2","DIS_PER3"
,"DIS_AMT_DTL3","DIS_AMT_MST","DIS_AMT","VAT_PER","VAT_AMT","OTHR_AMT","USE_SERIALNO"
,"SI_RCRD_NO","RCRD_NO","DOC_SEQUENCE","DOC_SEQUENCE_PI","ITEM_DESC","USE_ATTCH"
,"REC_ATTCH","DIS_AMT_NOT_EFFECT","BARCODE","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER"
,"POST_CODE","WT_QTY","WT_UNT","DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"DOC_SEQUENCE_REF","SERVICE_ITM","I_PRICE_VAT","ARGMNT_NO","ADD_DIS_AMT_MST"
,"ADD_DIS_AMT_DTL","OTHR_AMT_DISC","VAT_AMT_OTHR","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"OTHR_AMT_ITM","UP_CNT","FIELD_DTL1","FIELD_DTL2","FIELD_DTL3","FIELD_DTL4","FIELD_DTL5"
,"FIELD_DTL6","FIELD_DTL7","FIELD_DTL8","FIELD_DTL9","FIELD_DTL10") AS 
SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,BILL_NO
,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2
,DIS_PER3,DIS_AMT_DTL3,DIS_AMT_MST,DIS_AMT,VAT_PER,VAT_AMT,OTHR_AMT,USE_SERIALNO
,SI_RCRD_NO,RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_PI,ITEM_DESC,USE_ATTCH,REC_ATTCH
,DIS_AMT_NOT_EFFECT,BARCODE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,POST_CODE,WT_QTY,WT_UNT
,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,SERVICE_ITM,I_PRICE_VAT,ARGMNT_NO
,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,OTHR_AMT_ITM,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5
,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10 FROM IAS20181.IAS_PR_BILL_DTL 
 UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER
,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE
,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER,DIS_AMT_DTL,DIS_PER2
,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,DIS_AMT_MST,DIS_AMT,VAT_PER,VAT_AMT,OTHR_AMT
,USE_SERIALNO,SI_RCRD_NO,RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_PI,ITEM_DESC,USE_ATTCH
,REC_ATTCH,DIS_AMT_NOT_EFFECT,BARCODE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,POST_CODE,WT_QTY
,WT_UNT,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,SERVICE_ITM,I_PRICE_VAT
,ARGMNT_NO,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,OTHR_AMT_ITM,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10 FROM
 IAS20191.IAS_PR_BILL_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE
,RT_BILL_NO,RT_BILL_SER,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER
,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,DIS_AMT_MST,DIS_AMT,VAT_PER
,VAT_AMT,OTHR_AMT,USE_SERIALNO,SI_RCRD_NO,RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_PI,ITEM_DESC
,USE_ATTCH,REC_ATTCH,DIS_AMT_NOT_EFFECT,BARCODE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER
,POST_CODE,WT_QTY,WT_UNT,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,SERVICE_ITM
,I_PRICE_VAT,ARGMNT_NO,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,CMP_NO
,BRN_NO,BRN_YEAR,BRN_USR,OTHR_AMT_ITM,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10 FROM
 IAS20201.IAS_PR_BILL_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE
,RT_BILL_NO,RT_BILL_SER,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER
,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,DIS_AMT_MST,DIS_AMT,VAT_PER
,VAT_AMT,OTHR_AMT,USE_SERIALNO,SI_RCRD_NO,RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_PI,ITEM_DESC
,USE_ATTCH,REC_ATTCH,DIS_AMT_NOT_EFFECT,BARCODE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER
,POST_CODE,WT_QTY,WT_UNT,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,SERVICE_ITM
,I_PRICE_VAT,ARGMNT_NO,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,CMP_NO
,BRN_NO,BRN_YEAR,BRN_USR,OTHR_AMT_ITM,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10 FROM
 IAS20211.IAS_PR_BILL_DTL  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , RT_BILL_DOC_TYPE
,RT_BILL_NO,RT_BILL_SER,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_QTY,DIS_PER
,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,DIS_AMT_MST,DIS_AMT,VAT_PER
,VAT_AMT,OTHR_AMT,USE_SERIALNO,SI_RCRD_NO,RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_PI,ITEM_DESC
,USE_ATTCH,REC_ATTCH,DIS_AMT_NOT_EFFECT,BARCODE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER
,POST_CODE,WT_QTY,WT_UNT,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,SERVICE_ITM
,I_PRICE_VAT,ARGMNT_NO,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,CMP_NO
,BRN_NO,BRN_YEAR,BRN_USR,OTHR_AMT_ITM,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10 FROM IAS_PR_BILL_DTL 
 WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 129: IAS_V_PR_BILL_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_PR_BILL_MST_YR" ("ROW_ID","UMARKER","RT_BILL_DOC_TYPE","RT_BILL_NO"
,"RT_BILL_SER","P_YEAR","RT_BILL_DATE","RT_BILL_CURRENCY","RT_BILL_RATE","STOCK_RATE"
,"C_CODE","V_CODE","V_NAME","A_CODE","AC_CODE_DTL","AC_DTL_TYP","CHEQUE_NO","CHEQUE_AMT"
,"CHEQUE_DUE_DATE","RT_BILL_DUE_DATE","RT_BILL_POST","DISC_AMT_MST","DISC_AMT_DTL"
,"DISC_AMT","BILL_AMT","VAT_AMT","OTHR_AMT","W_CODE","CASH_NO","CASH_NO_FCC","REF_NO"
,"CC_CODE","PJ_NO","ACTV_NO","PR_PRICE_TYPE","DIFF_AC_CODE","CASH_AC_FCC","A_DESC"
,"PREV_YEAR","RETURN_RES","PR_REP","DISC_AMT_NOT_EFFECT","HUNG","BILL_NO_V_CODE"
,"BILL_DATE_V_CODE","PMAN_CODE","DOC_BRN_NO","SRVC_BILL","CLC_VAT_PRICE_TYP","FIELD1"
,"FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10"
,"TYP_NO","VND_GCC","USE_VAT","ADD_DISC_AMT_MST","ADD_DISC_AMT_DTL","OTHR_AMT_DISC"
,"VAT_AMT_OTHR","AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE","UNPOST_U_ID"
,"UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","CLC_TYP_NO_TAX","AD_TRMNL_NM"
,"UP_TRMNL_NM","POST_TAX_DUE_AC_CODE","AC_CODE","AC_AMT","PYMNT_AC"
,"CLC_TAX_FREE_QTY_FLG","DELIVERD","DELIVERD_U_ID","DELIVERD_DATE","DELIVERD_RES") AS 
SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR
,RT_BILL_DATE,RT_BILL_CURRENCY,RT_BILL_RATE,STOCK_RATE,C_CODE,V_CODE,V_NAME,A_CODE
,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE,RT_BILL_DUE_DATE
,RT_BILL_POST,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,CASH_NO
,CASH_NO_FCC,REF_NO,CC_CODE,PJ_NO,ACTV_NO,PR_PRICE_TYPE,DIFF_AC_CODE,CASH_AC_FCC,A_DESC
,PREV_YEAR,RETURN_RES,PR_REP,DISC_AMT_NOT_EFFECT,HUNG,BILL_NO_V_CODE,BILL_DATE_V_CODE
,PMAN_CODE,DOC_BRN_NO,SRVC_BILL,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5
,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,TYP_NO,VND_GCC,USE_VAT,ADD_DISC_AMT_MST
,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,AD_TRMNL_NM,UP_TRMNL_NM
,POST_TAX_DUE_AC_CODE,AC_CODE,AC_AMT,PYMNT_AC,CLC_TAX_FREE_QTY_FLG,DELIVERD,DELIVERD_U_ID
,DELIVERD_DATE,DELIVERD_RES FROM IAS20181.IAS_PR_BILL_MST  UNION ALL  SELECT ROWID ROW_ID
,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY
,RT_BILL_RATE,STOCK_RATE,C_CODE,V_CODE,V_NAME,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO
,CHEQUE_AMT,CHEQUE_DUE_DATE,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT_MST,DISC_AMT_DTL
,DISC_AMT,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,CASH_NO,CASH_NO_FCC,REF_NO,CC_CODE,PJ_NO
,ACTV_NO,PR_PRICE_TYPE,DIFF_AC_CODE,CASH_AC_FCC,A_DESC,PREV_YEAR,RETURN_RES,PR_REP
,DISC_AMT_NOT_EFFECT,HUNG,BILL_NO_V_CODE,BILL_DATE_V_CODE,PMAN_CODE,DOC_BRN_NO,SRVC_BILL
,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,TYP_NO,VND_GCC,USE_VAT,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,CLC_TYP_NO_TAX,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE,AC_CODE,AC_AMT,PYMNT_AC
,CLC_TAX_FREE_QTY_FLG,DELIVERD,DELIVERD_U_ID,DELIVERD_DATE,DELIVERD_RES FROM
 IAS20191.IAS_PR_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE
,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY,RT_BILL_RATE,STOCK_RATE
,C_CODE,V_CODE,V_NAME,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT,BILL_AMT,VAT_AMT
,OTHR_AMT,W_CODE,CASH_NO,CASH_NO_FCC,REF_NO,CC_CODE,PJ_NO,ACTV_NO,PR_PRICE_TYPE
,DIFF_AC_CODE,CASH_AC_FCC,A_DESC,PREV_YEAR,RETURN_RES,PR_REP,DISC_AMT_NOT_EFFECT,HUNG
,BILL_NO_V_CODE,BILL_DATE_V_CODE,PMAN_CODE,DOC_BRN_NO,SRVC_BILL,CLC_VAT_PRICE_TYP,FIELD1
,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,TYP_NO,VND_GCC,USE_VAT
,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,AUDIT_REF,AUDIT_REF_DESC
,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,AD_TRMNL_NM
,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE,AC_CODE,AC_AMT,PYMNT_AC,CLC_TAX_FREE_QTY_FLG,DELIVERD
,DELIVERD_U_ID,DELIVERD_DATE,DELIVERD_RES FROM IAS20201.IAS_PR_BILL_MST  UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR
,RT_BILL_DATE,RT_BILL_CURRENCY,RT_BILL_RATE,STOCK_RATE,C_CODE,V_CODE,V_NAME,A_CODE
,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE,RT_BILL_DUE_DATE
,RT_BILL_POST,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,CASH_NO
,CASH_NO_FCC,REF_NO,CC_CODE,PJ_NO,ACTV_NO,PR_PRICE_TYPE,DIFF_AC_CODE,CASH_AC_FCC,A_DESC
,PREV_YEAR,RETURN_RES,PR_REP,DISC_AMT_NOT_EFFECT,HUNG,BILL_NO_V_CODE,BILL_DATE_V_CODE
,PMAN_CODE,DOC_BRN_NO,SRVC_BILL,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5
,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,TYP_NO,VND_GCC,USE_VAT,ADD_DISC_AMT_MST
,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,AD_TRMNL_NM,UP_TRMNL_NM
,POST_TAX_DUE_AC_CODE,AC_CODE,AC_AMT,PYMNT_AC,CLC_TAX_FREE_QTY_FLG,DELIVERD,DELIVERD_U_ID
,DELIVERD_DATE,DELIVERD_RES FROM IAS20211.IAS_PR_BILL_MST  UNION ALL  SELECT ROWID ROW_ID
,2 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY
,RT_BILL_RATE,STOCK_RATE,C_CODE,V_CODE,V_NAME,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CHEQUE_NO
,CHEQUE_AMT,CHEQUE_DUE_DATE,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT_MST,DISC_AMT_DTL
,DISC_AMT,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,CASH_NO,CASH_NO_FCC,REF_NO,CC_CODE,PJ_NO
,ACTV_NO,PR_PRICE_TYPE,DIFF_AC_CODE,CASH_AC_FCC,A_DESC,PREV_YEAR,RETURN_RES,PR_REP
,DISC_AMT_NOT_EFFECT,HUNG,BILL_NO_V_CODE,BILL_DATE_V_CODE,PMAN_CODE,DOC_BRN_NO,SRVC_BILL
,CLC_VAT_PRICE_TYP,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,TYP_NO,VND_GCC,USE_VAT,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,VAT_AMT_OTHR
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,CLC_TYP_NO_TAX,AD_TRMNL_NM,UP_TRMNL_NM,POST_TAX_DUE_AC_CODE,AC_CODE,AC_AMT,PYMNT_AC
,CLC_TAX_FREE_QTY_FLG,DELIVERD,DELIVERD_U_ID,DELIVERD_DATE,DELIVERD_RES FROM
 IAS_PR_BILL_MST  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 130: GLS_V_RQ_JRNL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_RQ_JRNL_DTL_YR" ("ROW_ID","UMARKER","JV_TYPE","J_DOC_NO","J_SER"
,"A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB","AC_DTL_TYP","A_CY","J_DESC","J_AMT","J_AMT_F"
,"AC_RATE","CC_CODE","PJ_NO","REP_CODE","COL_NO","LC_NO","GR_NO","ACTV_NO","NOTE_NO"
,"DOC_BRN_NO","RCRD_NO","RCRD_NO_ORD","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF"
,"DOC_SER_REF","DOC_DUE_DATE","NOTE","BILL_NO","BILL_SER","I_NO","WO_NO","WO_SER"
,"REF_NO","CHEQUE_NO","DOC_SEQUENCE","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","CLC_TYP_NO_TAX","EXTERNAL_POST","FLD1","FLD2"
,"FLD3","FLD4","FLD5") AS 
SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB
,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F,AC_RATE,CC_CODE,PJ_NO,REP_CODE,COL_NO,LC_NO,GR_NO
,ACTV_NO,NOTE_NO,DOC_BRN_NO,RCRD_NO,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF
,DOC_SER_REF,DOC_DUE_DATE,NOTE,BILL_NO,BILL_SER,I_NO,WO_NO,WO_SER,REF_NO,CHEQUE_NO
,DOC_SEQUENCE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,CLC_TYP_NO_TAX,EXTERNAL_POST,FLD1,FLD2,FLD3,FLD4,FLD5 FROM IAS20181.IAS_RQ_JRNL_DTL 
 UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL
,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F,AC_RATE,CC_CODE,PJ_NO,REP_CODE
,COL_NO,LC_NO,GR_NO,ACTV_NO,NOTE_NO,DOC_BRN_NO,RCRD_NO,RCRD_NO_ORD,DOC_TYPE_REF
,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE,NOTE,BILL_NO,BILL_SER,I_NO,WO_NO
,WO_SER,REF_NO,CHEQUE_NO,DOC_SEQUENCE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO
,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,EXTERNAL_POST,FLD1,FLD2,FLD3,FLD4,FLD5 FROM
 IAS20191.IAS_RQ_JRNL_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO
,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F,AC_RATE
,CC_CODE,PJ_NO,REP_CODE,COL_NO,LC_NO,GR_NO,ACTV_NO,NOTE_NO,DOC_BRN_NO,RCRD_NO,RCRD_NO_ORD
,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE,NOTE,BILL_NO,BILL_SER
,I_NO,WO_NO,WO_SER,REF_NO,CHEQUE_NO,DOC_SEQUENCE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,EXTERNAL_POST,FLD1,FLD2,FLD3,FLD4,FLD5
 FROM IAS20201.IAS_RQ_JRNL_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE
,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,J_DESC,J_AMT,J_AMT_F
,AC_RATE,CC_CODE,PJ_NO,REP_CODE,COL_NO,LC_NO,GR_NO,ACTV_NO,NOTE_NO,DOC_BRN_NO,RCRD_NO
,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE,NOTE
,BILL_NO,BILL_SER,I_NO,WO_NO,WO_SER,REF_NO,CHEQUE_NO,DOC_SEQUENCE,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,EXTERNAL_POST,FLD1,FLD2
,FLD3,FLD4,FLD5 FROM IAS20211.IAS_RQ_JRNL_DTL  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER ,
 JV_TYPE,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,J_DESC,J_AMT
,J_AMT_F,AC_RATE,CC_CODE,PJ_NO,REP_CODE,COL_NO,LC_NO,GR_NO,ACTV_NO,NOTE_NO,DOC_BRN_NO
,RCRD_NO,RCRD_NO_ORD,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,DOC_DUE_DATE
,NOTE,BILL_NO,BILL_SER,I_NO,WO_NO,WO_SER,REF_NO,CHEQUE_NO,DOC_SEQUENCE,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,EXTERNAL_POST,FLD1
,FLD2,FLD3,FLD4,FLD5 FROM IAS_RQ_JRNL_DTL  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 131: GLS_V_RQ_JRNL_MST_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_RQ_JRNL_MST_YR" ("ROW_ID","UMARKER","JV_TYPE","J_DOC_NO","J_SER"
,"J_DATE","BATCH_VAL","REF_NO","REVRS_JRNL","PERIODICAL_JRNL","CASH_RESERVE","STAND_BY"
,"LINK_USE","ATTACH_NO","T_DESC","CLS_ZERO_AC_BLNC","PROCESED","APPROVED","APRV_U_ID"
,"APRV_DATE","APRV_DSC","INACTIVE","INACTIVE_RES","INACTIVE_U_ID","INACTIVE_DATE"
,"BEN_NAME","REC_NAME","REQ_SIDE","REQ_RES","DOC_TYPE","FIELD1","FIELD2","FIELD3"
,"FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"AD_TRMNL_NM","UP_TRMNL_NM","DOC_NO_YR","DOC_SRL_YR","MOVD_YR","EXTERNAL_POST") AS 
SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,J_DATE,BATCH_VAL,REF_NO,REVRS_JRNL
,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO,T_DESC,CLS_ZERO_AC_BLNC
,PROCESED,APPROVED,APRV_U_ID,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES,INACTIVE_U_ID
,INACTIVE_DATE,BEN_NAME,REC_NAME,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR
,EXTERNAL_POST FROM IAS20181.IAS_RQ_JRNL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 JV_TYPE,J_DOC_NO,J_SER,J_DATE,BATCH_VAL,REF_NO,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE
,STAND_BY,LINK_USE,ATTACH_NO,T_DESC,CLS_ZERO_AC_BLNC,PROCESED,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME
,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM
 IAS20191.IAS_RQ_JRNL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO
,J_SER,J_DATE,BATCH_VAL,REF_NO,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE
,ATTACH_NO,T_DESC,CLS_ZERO_AC_BLNC,PROCESED,APPROVED,APRV_U_ID,APRV_DATE,APRV_DSC
,INACTIVE,INACTIVE_RES,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME,REQ_SIDE,REQ_RES
,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM IAS20201.IAS_RQ_JRNL_MST 
 UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,J_DATE,BATCH_VAL
,REF_NO,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO,T_DESC
,CLS_ZERO_AC_BLNC,PROCESED,APPROVED,APRV_U_ID,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES
,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2
,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR
,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM IAS20211.IAS_RQ_JRNL_MST  UNION ALL  SELECT ROWID
 ROW_ID,2 UMARKER , JV_TYPE,J_DOC_NO,J_SER,J_DATE,BATCH_VAL,REF_NO,REVRS_JRNL
,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO,T_DESC,CLS_ZERO_AC_BLNC
,PROCESED,APPROVED,APRV_U_ID,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES,INACTIVE_U_ID
,INACTIVE_DATE,BEN_NAME,REC_NAME,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR
,EXTERNAL_POST FROM IAS_RQ_JRNL_MST  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 132: GLS_V_RQ_VCHR_DTL_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_RQ_VCHR_DTL_YR" ("ROW_ID","UMARKER","VOUCHER_TYPE","VOUCHER_PAY_TYPE"
,"VOUCHER_NO","CASH_NO","V_SER","A_CODE","AC_CODE_DTL","AC_DTL_TYP","A_CY","AC_DESC"
,"AC_AMT","AC_AMTF","EX_RATE","CC_CODE","PJ_NO","REP_CODE","CSH_BNK_NO","CHEQUE_NO"
,"VALUE_DATE","CHEQUE_VALUED","NOTE_NO","BANK_NO","LC_NO","CI_NO","CI_SER","HRS_PAY_NO"
,"K_NO","K_SER","BILL_NO","BILL_SER","I_NO","WO_NO","WO_SER","REF_NO","OTR_AMT_L"
,"OTR_AMT_F","RCRD_NO","BLMNT_DATE","NOTE","DOC_SEQUENCE","DOC_TYPE_REF"
,"DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF","CONN_V_NO","CONN_V_SER","CONN_V_AMT"
,"DOC_BRN_NO","ACTV_NO","AC_CODE_DTL_SUB","FLD1","FLD2","FLD3","FLD4","FLD5","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"CLC_TYP_NO_TAX","BNK_AC_CODE","CRD_CARD_TYP","CRD_CARD_NO","CRD_ACODE_REC_LETTER"
,"CRD_COMM_AC","CRD_COMM_CALC_TYP","CRD_COMM_PER","CRD_VAT_COMM_PER","CRD_DUE_PRD"
,"CRD_PRSSES_NO","CRD_COMM_AMT_L","CRD_VAT_COMM_AMT_L","CRD_WTHDRW_AMT_L","CRD_COMM_AMT"
,"CRD_ACY_MAX_COMM","CRD_VAT_COMM_AMT","EXTERNAL_POST") AS 
SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,V_SER
,A_CODE,AC_CODE_DTL,AC_DTL_TYP,A_CY,AC_DESC,AC_AMT,AC_AMTF,EX_RATE,CC_CODE,PJ_NO,REP_CODE
,CSH_BNK_NO,CHEQUE_NO,VALUE_DATE,CHEQUE_VALUED,NOTE_NO,BANK_NO,LC_NO,CI_NO,CI_SER
,HRS_PAY_NO,K_NO,K_SER,BILL_NO,BILL_SER,I_NO,WO_NO,WO_SER,REF_NO,OTR_AMT_L,OTR_AMT_F
,RCRD_NO,BLMNT_DATE,NOTE,DOC_SEQUENCE,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF
,CONN_V_NO,CONN_V_SER,CONN_V_AMT,DOC_BRN_NO,ACTV_NO,AC_CODE_DTL_SUB,FLD1,FLD2,FLD3,FLD4
,FLD5,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,CLC_TYP_NO_TAX,BNK_AC_CODE,CRD_CARD_TYP,CRD_CARD_NO,CRD_ACODE_REC_LETTER,CRD_COMM_AC
,CRD_COMM_CALC_TYP,CRD_COMM_PER,CRD_VAT_COMM_PER,CRD_DUE_PRD,CRD_PRSSES_NO,CRD_COMM_AMT_L
,CRD_VAT_COMM_AMT_L,CRD_WTHDRW_AMT_L,CRD_COMM_AMT,CRD_ACY_MAX_COMM,CRD_VAT_COMM_AMT
,EXTERNAL_POST FROM IAS20181.IAS_RQ_VCHR_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,V_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP
,A_CY,AC_DESC,AC_AMT,AC_AMTF,EX_RATE,CC_CODE,PJ_NO,REP_CODE,CSH_BNK_NO,CHEQUE_NO
,VALUE_DATE,CHEQUE_VALUED,NOTE_NO,BANK_NO,LC_NO,CI_NO,CI_SER,HRS_PAY_NO,K_NO,K_SER
,BILL_NO,BILL_SER,I_NO,WO_NO,WO_SER,REF_NO,OTR_AMT_L,OTR_AMT_F,RCRD_NO,BLMNT_DATE,NOTE
,DOC_SEQUENCE,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,CONN_V_NO,CONN_V_SER
,CONN_V_AMT,DOC_BRN_NO,ACTV_NO,AC_CODE_DTL_SUB,FLD1,FLD2,FLD3,FLD4,FLD5,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,BNK_AC_CODE
,CRD_CARD_TYP,CRD_CARD_NO,CRD_ACODE_REC_LETTER,CRD_COMM_AC,CRD_COMM_CALC_TYP,CRD_COMM_PER
,CRD_VAT_COMM_PER,CRD_DUE_PRD,CRD_PRSSES_NO,CRD_COMM_AMT_L,CRD_VAT_COMM_AMT_L
,CRD_WTHDRW_AMT_L,CRD_COMM_AMT,CRD_ACY_MAX_COMM,CRD_VAT_COMM_AMT,EXTERNAL_POST FROM
 IAS20191.IAS_RQ_VCHR_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,V_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,A_CY,AC_DESC
,AC_AMT,AC_AMTF,EX_RATE,CC_CODE,PJ_NO,REP_CODE,CSH_BNK_NO,CHEQUE_NO,VALUE_DATE
,CHEQUE_VALUED,NOTE_NO,BANK_NO,LC_NO,CI_NO,CI_SER,HRS_PAY_NO,K_NO,K_SER,BILL_NO,BILL_SER
,I_NO,WO_NO,WO_SER,REF_NO,OTR_AMT_L,OTR_AMT_F,RCRD_NO,BLMNT_DATE,NOTE,DOC_SEQUENCE
,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,CONN_V_NO,CONN_V_SER,CONN_V_AMT
,DOC_BRN_NO,ACTV_NO,AC_CODE_DTL_SUB,FLD1,FLD2,FLD3,FLD4,FLD5,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,BNK_AC_CODE,CRD_CARD_TYP
,CRD_CARD_NO,CRD_ACODE_REC_LETTER,CRD_COMM_AC,CRD_COMM_CALC_TYP,CRD_COMM_PER
,CRD_VAT_COMM_PER,CRD_DUE_PRD,CRD_PRSSES_NO,CRD_COMM_AMT_L,CRD_VAT_COMM_AMT_L
,CRD_WTHDRW_AMT_L,CRD_COMM_AMT,CRD_ACY_MAX_COMM,CRD_VAT_COMM_AMT,EXTERNAL_POST FROM
 IAS20201.IAS_RQ_VCHR_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,V_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,A_CY,AC_DESC
,AC_AMT,AC_AMTF,EX_RATE,CC_CODE,PJ_NO,REP_CODE,CSH_BNK_NO,CHEQUE_NO,VALUE_DATE
,CHEQUE_VALUED,NOTE_NO,BANK_NO,LC_NO,CI_NO,CI_SER,HRS_PAY_NO,K_NO,K_SER,BILL_NO,BILL_SER
,I_NO,WO_NO,WO_SER,REF_NO,OTR_AMT_L,OTR_AMT_F,RCRD_NO,BLMNT_DATE,NOTE,DOC_SEQUENCE
,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,CONN_V_NO,CONN_V_SER,CONN_V_AMT
,DOC_BRN_NO,ACTV_NO,AC_CODE_DTL_SUB,FLD1,FLD2,FLD3,FLD4,FLD5,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,BNK_AC_CODE,CRD_CARD_TYP
,CRD_CARD_NO,CRD_ACODE_REC_LETTER,CRD_COMM_AC,CRD_COMM_CALC_TYP,CRD_COMM_PER
,CRD_VAT_COMM_PER,CRD_DUE_PRD,CRD_PRSSES_NO,CRD_COMM_AMT_L,CRD_VAT_COMM_AMT_L
,CRD_WTHDRW_AMT_L,CRD_COMM_AMT,CRD_ACY_MAX_COMM,CRD_VAT_COMM_AMT,EXTERNAL_POST FROM
 IAS20211.IAS_RQ_VCHR_DTL  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,V_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,A_CY,AC_DESC
,AC_AMT,AC_AMTF,EX_RATE,CC_CODE,PJ_NO,REP_CODE,CSH_BNK_NO,CHEQUE_NO,VALUE_DATE
,CHEQUE_VALUED,NOTE_NO,BANK_NO,LC_NO,CI_NO,CI_SER,HRS_PAY_NO,K_NO,K_SER,BILL_NO,BILL_SER
,I_NO,WO_NO,WO_SER,REF_NO,OTR_AMT_L,OTR_AMT_F,RCRD_NO,BLMNT_DATE,NOTE,DOC_SEQUENCE
,DOC_TYPE_REF,DOC_JV_TYPE_REF,DOC_NO_REF,DOC_SER_REF,CONN_V_NO,CONN_V_SER,CONN_V_AMT
,DOC_BRN_NO,ACTV_NO,AC_CODE_DTL_SUB,FLD1,FLD2,FLD3,FLD4,FLD5,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX,BNK_AC_CODE,CRD_CARD_TYP
,CRD_CARD_NO,CRD_ACODE_REC_LETTER,CRD_COMM_AC,CRD_COMM_CALC_TYP,CRD_COMM_PER
,CRD_VAT_COMM_PER,CRD_DUE_PRD,CRD_PRSSES_NO,CRD_COMM_AMT_L,CRD_VAT_COMM_AMT_L
,CRD_WTHDRW_AMT_L,CRD_COMM_AMT,CRD_ACY_MAX_COMM,CRD_VAT_COMM_AMT,EXTERNAL_POST FROM
 IAS_RQ_VCHR_DTL  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 133: GLS_V_RQ_VCHR_MST_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_RQ_VCHR_MST_YR" ("ROW_ID","UMARKER","VOUCHER_TYPE","VOUCHER_PAY_TYPE"
,"VOUCHER_NO","CASH_NO","A_CY","V_SER","VOUCHER_DATE","CASH_AMT","CASH_AMTF","EX_RATE"
,"REF_NO","REF_NAME","A_DESC","STAND_BY","TRANSFER","CHEQ_TYPE","COL_NO","CC_CODE"
,"PJ_NO","ATTACH_NO","COMM_PER","VOUCHER_NO_PY","VOUCHER_DATE_PY","MOVE_CHEQ_PY"
,"V_TYPE_NO","DOC_SEQUENCE","ACTV_NO","DOC_BRN_NO","PROCESED","APPROVED","APRV_U_ID"
,"APRV_DATE","APRV_DSC","INACTIVE","INACTIVE_RES","INACTIVE_U_ID","INACTIVE_DATE"
,"BEN_NAME","REC_NAME","REQ_SIDE","REQ_RES","DOC_TYPE","FIELD1","FIELD2","FIELD3"
,"FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"AD_TRMNL_NM","UP_TRMNL_NM","DOC_NO_YR","DOC_SRL_YR","MOVD_YR","EXTERNAL_POST") AS 
SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY
,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE,REF_NO,REF_NAME,A_DESC,STAND_BY,TRANSFER
,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ATTACH_NO,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY
,MOVE_CHEQ_PY,V_TYPE_NO,DOC_SEQUENCE,ACTV_NO,DOC_BRN_NO,PROCESED,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME
,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM
 IAS20181.IAS_RQ_VCHR_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE
,REF_NO,REF_NAME,A_DESC,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ATTACH_NO
,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY,V_TYPE_NO,DOC_SEQUENCE,ACTV_NO
,DOC_BRN_NO,PROCESED,APPROVED,APRV_U_ID,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES
,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2
,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR
,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM IAS20191.IAS_RQ_VCHR_MST  UNION ALL  SELECT ROWID
 ROW_ID,1 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY,V_SER
,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE,REF_NO,REF_NAME,A_DESC,STAND_BY,TRANSFER
,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ATTACH_NO,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY
,MOVE_CHEQ_PY,V_TYPE_NO,DOC_SEQUENCE,ACTV_NO,DOC_BRN_NO,PROCESED,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME
,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM
 IAS20201.IAS_RQ_VCHR_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE
,REF_NO,REF_NAME,A_DESC,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ATTACH_NO
,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY,V_TYPE_NO,DOC_SEQUENCE,ACTV_NO
,DOC_BRN_NO,PROCESED,APPROVED,APRV_U_ID,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES
,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2
,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR
,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM IAS20211.IAS_RQ_VCHR_MST  UNION ALL  SELECT ROWID
 ROW_ID,2 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY,V_SER
,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE,REF_NO,REF_NAME,A_DESC,STAND_BY,TRANSFER
,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ATTACH_NO,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY
,MOVE_CHEQ_PY,V_TYPE_NO,DOC_SEQUENCE,ACTV_NO,DOC_BRN_NO,PROCESED,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,INACTIVE,INACTIVE_RES,INACTIVE_U_ID,INACTIVE_DATE,BEN_NAME,REC_NAME
,REQ_SIDE,REQ_RES,DOC_TYPE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,AD_TRMNL_NM,UP_TRMNL_NM,DOC_NO_YR,DOC_SRL_YR,MOVD_YR,EXTERNAL_POST FROM IAS_RQ_VCHR_MST 
 WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 134: IAS_V_RT_BILL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_RT_BILL_DTL_YR" ("ROW_ID","UMARKER","RT_BILL_DOC_TYPE","RT_BILL_NO"
,"RT_BILL_SER","BILL_NO","BILL_DOC_TYPE","BILL_SER","I_CODE","I_QTY","ITM_UNT","P_SIZE"
,"P_QTY","I_PRICE","STK_COST","W_CODE","CC_CODE","PJ_NO","ACTV_NO","V_CODE","SR_TYPE"
,"EXPIRE_DATE","BATCH_NO","FREE_QTY","SERVICE_ITEM","DIS_PER","DIS_AMT","DIS_AMT_MST"
,"DIS_AMT_DTL","DIS_AMT_DTL_VAT","DIS_AMT_MST_VAT","VAT_AMT_DIS_DTL_VAT"
,"VAT_AMT_AFTR_DIS","VAT_AMT_BFR_DIS","VAT_AMT_DIS_MST_VAT","DIS_AMT_AFTR_VAT","VAT_PER"
,"VAT_AMT","OTHR_AMT","RET_QTY","RET_FREE_QTY","USE_SERIALNO","DIS_AFTR_VAT_MST"
,"SI_RCRD_NO","RCRD_NO","RCRD_NO_REF","DOC_SEQUENCE","DOC_SEQUENCE_SI","ITEM_DESC"
,"BARCODE","EXTERNAL_POST","RT_BILL_PY","USE_ATTCH","REC_ATTCH","DIS_PER2","DIS_AMT_DTL2"
,"DIS_PER3","DIS_AMT_DTL3","I_PRICE_VAT","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER"
,"POST_CODE","WT_UNT","WT_QTY","FIELD_DTL1","FIELD_DTL2","FIELD_DTL3","INSRNCE_LOAD_PER"
,"INSRNCE_LOAD_AMT","INSRNCE_ADD_LMT","EMP_NO","DOC_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"SUB_C_CODE","COMM_PER","COMM_AMT_DTL","ARGMNT_NO","USED_ITM","VAT_AMT_OTHR"
,"ADD_DIS_AMT_MST","ADD_DIS_AMT_DTL","OTHR_AMT_DISC","QT_PRM_NO","QT_PRM_SER"
,"QT_PRM_RCRD_NO","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","DIS_AMT_DTL2_VAT"
,"DIS_AMT_DTL3_VAT","VAT_AMT_DIS_DTL2_VAT","VAT_AMT_DIS_DTL3_VAT","RET_QTY_YR"
,"RET_FREE_QTY_YR","INSRNCE_ADD_LMT_MST","FREE_TYP") AS 
SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,BILL_NO
,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,V_CODE,SR_TYPE,EXPIRE_DATE,BATCH_NO,FREE_QTY,SERVICE_ITEM,DIS_PER,DIS_AMT
,DIS_AMT_MST,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT
,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,VAT_PER,VAT_AMT
,OTHR_AMT,RET_QTY,RET_FREE_QTY,USE_SERIALNO,DIS_AFTR_VAT_MST,SI_RCRD_NO,RCRD_NO
,RCRD_NO_REF,DOC_SEQUENCE,DOC_SEQUENCE_SI,ITEM_DESC,BARCODE,EXTERNAL_POST,RT_BILL_PY
,USE_ATTCH,REC_ATTCH,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,I_PRICE_VAT,I_LENGTH
,I_WIDTH,I_HEIGHT,I_NUMBER,POST_CODE,WT_UNT,WT_QTY,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT,EMP_NO,DOC_TYPE_REF,DOC_NO_REF
,DOC_SER_REF,SUB_C_CODE,COMM_PER,COMM_AMT_DTL,ARGMNT_NO,USED_ITM,VAT_AMT_OTHR
,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,CMP_NO
,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT
,VAT_AMT_DIS_DTL3_VAT,RET_QTY_YR,RET_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM
 IAS20181.IAS_RT_BILL_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE
,RT_BILL_NO,RT_BILL_SER,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,V_CODE,SR_TYPE,EXPIRE_DATE,BATCH_NO
,FREE_QTY,SERVICE_ITEM,DIS_PER,DIS_AMT,DIS_AMT_MST,DIS_AMT_DTL,DIS_AMT_DTL_VAT
,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT
,DIS_AMT_AFTR_VAT,VAT_PER,VAT_AMT,OTHR_AMT,RET_QTY,RET_FREE_QTY,USE_SERIALNO
,DIS_AFTR_VAT_MST,SI_RCRD_NO,RCRD_NO,RCRD_NO_REF,DOC_SEQUENCE,DOC_SEQUENCE_SI,ITEM_DESC
,BARCODE,EXTERNAL_POST,RT_BILL_PY,USE_ATTCH,REC_ATTCH,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,POST_CODE,WT_UNT,WT_QTY
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT
,EMP_NO,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,SUB_C_CODE,COMM_PER,COMM_AMT_DTL,ARGMNT_NO
,USED_ITM,VAT_AMT_OTHR,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,QT_PRM_NO,QT_PRM_SER
,QT_PRM_RCRD_NO,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT
,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,RET_QTY_YR,RET_FREE_QTY_YR,INSRNCE_ADD_LMT_MST
,FREE_TYP FROM IAS20191.IAS_RT_BILL_DTL  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY
,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,V_CODE,SR_TYPE
,EXPIRE_DATE,BATCH_NO,FREE_QTY,SERVICE_ITEM,DIS_PER,DIS_AMT,DIS_AMT_MST,DIS_AMT_DTL
,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS
,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,VAT_PER,VAT_AMT,OTHR_AMT,RET_QTY,RET_FREE_QTY
,USE_SERIALNO,DIS_AFTR_VAT_MST,SI_RCRD_NO,RCRD_NO,RCRD_NO_REF,DOC_SEQUENCE
,DOC_SEQUENCE_SI,ITEM_DESC,BARCODE,EXTERNAL_POST,RT_BILL_PY,USE_ATTCH,REC_ATTCH,DIS_PER2
,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER
,POST_CODE,WT_UNT,WT_QTY,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,INSRNCE_LOAD_PER
,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT,EMP_NO,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,SUB_C_CODE
,COMM_PER,COMM_AMT_DTL,ARGMNT_NO,USED_ITM,VAT_AMT_OTHR,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL
,OTHR_AMT_DISC,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT
,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,RET_QTY_YR
,RET_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM IAS20201.IAS_RT_BILL_DTL  UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,BILL_NO
,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE
,PJ_NO,ACTV_NO,V_CODE,SR_TYPE,EXPIRE_DATE,BATCH_NO,FREE_QTY,SERVICE_ITEM,DIS_PER,DIS_AMT
,DIS_AMT_MST,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT
,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT,DIS_AMT_AFTR_VAT,VAT_PER,VAT_AMT
,OTHR_AMT,RET_QTY,RET_FREE_QTY,USE_SERIALNO,DIS_AFTR_VAT_MST,SI_RCRD_NO,RCRD_NO
,RCRD_NO_REF,DOC_SEQUENCE,DOC_SEQUENCE_SI,ITEM_DESC,BARCODE,EXTERNAL_POST,RT_BILL_PY
,USE_ATTCH,REC_ATTCH,DIS_PER2,DIS_AMT_DTL2,DIS_PER3,DIS_AMT_DTL3,I_PRICE_VAT,I_LENGTH
,I_WIDTH,I_HEIGHT,I_NUMBER,POST_CODE,WT_UNT,WT_QTY,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3
,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT,EMP_NO,DOC_TYPE_REF,DOC_NO_REF
,DOC_SER_REF,SUB_C_CODE,COMM_PER,COMM_AMT_DTL,ARGMNT_NO,USED_ITM,VAT_AMT_OTHR
,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,QT_PRM_NO,QT_PRM_SER,QT_PRM_RCRD_NO,CMP_NO
,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT,VAT_AMT_DIS_DTL2_VAT
,VAT_AMT_DIS_DTL3_VAT,RET_QTY_YR,RET_FREE_QTY_YR,INSRNCE_ADD_LMT_MST,FREE_TYP FROM
 IAS20211.IAS_RT_BILL_DTL  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , RT_BILL_DOC_TYPE
,RT_BILL_NO,RT_BILL_SER,BILL_NO,BILL_DOC_TYPE,BILL_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,V_CODE,SR_TYPE,EXPIRE_DATE,BATCH_NO
,FREE_QTY,SERVICE_ITEM,DIS_PER,DIS_AMT,DIS_AMT_MST,DIS_AMT_DTL,DIS_AMT_DTL_VAT
,DIS_AMT_MST_VAT,VAT_AMT_DIS_DTL_VAT,VAT_AMT_AFTR_DIS,VAT_AMT_BFR_DIS,VAT_AMT_DIS_MST_VAT
,DIS_AMT_AFTR_VAT,VAT_PER,VAT_AMT,OTHR_AMT,RET_QTY,RET_FREE_QTY,USE_SERIALNO
,DIS_AFTR_VAT_MST,SI_RCRD_NO,RCRD_NO,RCRD_NO_REF,DOC_SEQUENCE,DOC_SEQUENCE_SI,ITEM_DESC
,BARCODE,EXTERNAL_POST,RT_BILL_PY,USE_ATTCH,REC_ATTCH,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,POST_CODE,WT_UNT,WT_QTY
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,INSRNCE_LOAD_PER,INSRNCE_LOAD_AMT,INSRNCE_ADD_LMT
,EMP_NO,DOC_TYPE_REF,DOC_NO_REF,DOC_SER_REF,SUB_C_CODE,COMM_PER,COMM_AMT_DTL,ARGMNT_NO
,USED_ITM,VAT_AMT_OTHR,ADD_DIS_AMT_MST,ADD_DIS_AMT_DTL,OTHR_AMT_DISC,QT_PRM_NO,QT_PRM_SER
,QT_PRM_RCRD_NO,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,DIS_AMT_DTL2_VAT,DIS_AMT_DTL3_VAT
,VAT_AMT_DIS_DTL2_VAT,VAT_AMT_DIS_DTL3_VAT,RET_QTY_YR,RET_FREE_QTY_YR,INSRNCE_ADD_LMT_MST
,FREE_TYP FROM IAS_RT_BILL_DTL  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 135: IAS_V_RT_BILL_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_RT_BILL_MST_YR" ("ROW_ID","UMARKER","RT_BILL_DOC_TYPE","RT_BILL_NO"
,"RT_BILL_SER","P_YEAR","RT_BILL_DATE","RT_BILL_CURRENCY","RT_BILL_RATE","STOCK_RATE"
,"C_CODE","C_NAME","A_CODE","CHEQUE_NO","CHEQUE_AMT","CHEQUE_DUE_DATE","RT_BILL_DUE_DATE"
,"RT_BILL_POST","DISC_AMT","DISC_AMT_MST","DISC_AMT_DTL","DISC_AMT_MST_VAT"
,"VAT_AMT_DISC_MST","BILL_AMT","VAT_AMT","OTHR_AMT","W_CODE","R_CODE","CASH_NO","CC_CODE"
,"PJ_NO","ACTV_NO","CASH_AC_FCC","CASH_NO_FCC","REP_CODE","EMP_NO","SR_TYPE","COMM_PER"
,"REF_NO","A_DESC","ATTACH_CNT","RETURN_RES","PROCESSED","PR_REP","PREV_YEAR"
,"CLASSIFY_NO","CLASSIFY_SER","RT_BILL_PY","EXTERNAL_POST","DISC_AMT_AFTR_VAT"
,"AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","W_CODE_BILL"
,"CC_CODE_BILL","REP_CODE_BILL","RETURN_TYPE","PAID_RT_BILL","PAID_U_ID","PAID_DATE"
,"REC_INV_RT_BILL","REC_INV_U_ID","REC_INV_DATE","STAND_BY","NOTE_NO","DRIVER_NO"
,"DOC_BRN_NO","RES_TYP","PRM_CODE","DOC_NO_PDA","PDA_NM","INSRNCE_CMP_NO"
,"INSRNCE_BNF_NO","INSRNCE_PRSON_NM","INSRNCE_CARD_NO","INSRNCE_CARD_NO_FMLY"
,"INSRNCE_RLTN_TYP","INSRNCE_CLSS_NO","INSRNCE_CSH_AMT","COMM_AMT_DTL","CST_GCC","EXPORT"
,"VAT_AMT_OTHR","ADD_DISC_AMT_MST","ADD_DISC_AMT_DTL","OTHR_AMT_DISC","WITHOUT_VAT"
,"RT_VAT_PRD_TYP","C_TEL","C_CODE_CSH","POINT_RPLC_AMT","POINT_TYP_NO","POINT_CNT"
,"POINT_RPLC_CNT","CREDIT_CARD","CR_CARD_NO","CR_CARD_AMT","CR_CARD_COMM_PER"
,"CR_CARD_NO_SCND","CR_CARD_AMT_SCND","CR_CARD_COMM_PER_SCND","CR_CARD_NO_THRD"
,"CR_CARD_AMT_THRD","CR_CARD_COMM_PER_THRD","CLC_TYP_NO_TAX","AC_AMT","FIELD1","FIELD2"
,"FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE","UNPOST_U_ID"
,"UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM"
,"PTNT_NO","DCTR_NO","PTNT_TYP","DOC_NO_ADMSON","DOC_SRL_ADMSON","AC_CODE","AC_CODE_DTL"
,"AC_DTL_TYP","PYMNT_AC","INSRNCE_LOAD_PER","DOC_SER_EXTRNL","CNCL_FLG"
,"CLC_VAT_PRICE_TYP","COL_NO","RMS_RT_BILL_DOC_TYPE","RMS_FREE_FLG","HRS_DOC_NO_REF"
,"HRS_DOC_TYPE_REF","HRS_DOC_SER_REF","RT_BILL_TYP","CLC_TAX_FREE_QTY_FLG"
,"INSRNCE_ADD_LMT_MST","AD_DATE_CLK","INSRNCE_ADD_LMT_DOC","INSRNCE_ADD_LMT_DTL"
,"INSRNCE_LMT_AMT_LOC_DOC","CR_CARD_DSC","CR_CARD_DSC_SCND","CR_CARD_DSC_THRD"
,"CR_CARD_CST_NO_THRD","CR_CARD_CST_NO_SCND","CR_CARD_CST_NO","CR_CARD_DOC_NO_REF_SCND"
,"CR_CARD_DOC_NO_REF","CR_CARD_DOC_NO_REF_THRD","CR_CARD_MAX_COMM_AMT"
,"CR_CARD_MAX_COMM_AMT_SCND","CR_CARD_MAX_COMM_AMT_THRD","DOC_M_SQ"
,"WEB_SRVC_TRNSFR_DATA_FLG","WEB_SRVC_UUID") AS 
SELECT ROWID ROW_ID,1 UMARKER , RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR
,RT_BILL_DATE,RT_BILL_CURRENCY,RT_BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO
,CHEQUE_AMT,CHEQUE_DUE_DATE,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT,DISC_AMT_MST
,DISC_AMT_DTL,DISC_AMT_MST_VAT,VAT_AMT_DISC_MST,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,R_CODE
,CASH_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_AC_FCC,CASH_NO_FCC,REP_CODE,EMP_NO,SR_TYPE,COMM_PER
,REF_NO,A_DESC,ATTACH_CNT,RETURN_RES,PROCESSED,PR_REP,PREV_YEAR,CLASSIFY_NO,CLASSIFY_SER
,RT_BILL_PY,EXTERNAL_POST,DISC_AMT_AFTR_VAT,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,W_CODE_BILL,CC_CODE_BILL,REP_CODE_BILL,RETURN_TYPE,PAID_RT_BILL,PAID_U_ID
,PAID_DATE,REC_INV_RT_BILL,REC_INV_U_ID,REC_INV_DATE,STAND_BY,NOTE_NO,DRIVER_NO
,DOC_BRN_NO,RES_TYP,PRM_CODE,DOC_NO_PDA,PDA_NM,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_PRSON_NM,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO
,INSRNCE_CSH_AMT,COMM_AMT_DTL,CST_GCC,EXPORT,VAT_AMT_OTHR,ADD_DISC_AMT_MST
,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,WITHOUT_VAT,RT_VAT_PRD_TYP,C_TEL,C_CODE_CSH
,POINT_RPLC_AMT,POINT_TYP_NO,POINT_CNT,POINT_RPLC_CNT,CREDIT_CARD,CR_CARD_NO,CR_CARD_AMT
,CR_CARD_COMM_PER,CR_CARD_NO_SCND,CR_CARD_AMT_SCND,CR_CARD_COMM_PER_SCND,CR_CARD_NO_THRD
,CR_CARD_AMT_THRD,CR_CARD_COMM_PER_THRD,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,PTNT_NO,DCTR_NO,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,AC_CODE,AC_CODE_DTL
,AC_DTL_TYP,PYMNT_AC,INSRNCE_LOAD_PER,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,COL_NO
,RMS_RT_BILL_DOC_TYPE,RMS_FREE_FLG,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF
,RT_BILL_TYP,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,AD_DATE_CLK,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,CR_CARD_DSC,CR_CARD_DSC_SCND
,CR_CARD_DSC_THRD,CR_CARD_CST_NO_THRD,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO
,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_THRD,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,DOC_M_SQ,WEB_SRVC_TRNSFR_DATA_FLG
,WEB_SRVC_UUID FROM IAS20181.IAS_RT_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY
,RT_BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,R_CODE,CASH_NO,CC_CODE,PJ_NO,ACTV_NO
,CASH_AC_FCC,CASH_NO_FCC,REP_CODE,EMP_NO,SR_TYPE,COMM_PER,REF_NO,A_DESC,ATTACH_CNT
,RETURN_RES,PROCESSED,PR_REP,PREV_YEAR,CLASSIFY_NO,CLASSIFY_SER,RT_BILL_PY,EXTERNAL_POST
,DISC_AMT_AFTR_VAT,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,W_CODE_BILL
,CC_CODE_BILL,REP_CODE_BILL,RETURN_TYPE,PAID_RT_BILL,PAID_U_ID,PAID_DATE,REC_INV_RT_BILL
,REC_INV_U_ID,REC_INV_DATE,STAND_BY,NOTE_NO,DRIVER_NO,DOC_BRN_NO,RES_TYP,PRM_CODE
,DOC_NO_PDA,PDA_NM,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_PRSON_NM,INSRNCE_CARD_NO
,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO,INSRNCE_CSH_AMT,COMM_AMT_DTL
,CST_GCC,EXPORT,VAT_AMT_OTHR,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,WITHOUT_VAT
,RT_VAT_PRD_TYP,C_TEL,C_CODE_CSH,POINT_RPLC_AMT,POINT_TYP_NO,POINT_CNT,POINT_RPLC_CNT
,CREDIT_CARD,CR_CARD_NO,CR_CARD_AMT,CR_CARD_COMM_PER,CR_CARD_NO_SCND,CR_CARD_AMT_SCND
,CR_CARD_COMM_PER_SCND,CR_CARD_NO_THRD,CR_CARD_AMT_THRD,CR_CARD_COMM_PER_THRD
,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,PTNT_NO,DCTR_NO
,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,AC_CODE,AC_CODE_DTL,AC_DTL_TYP,PYMNT_AC
,INSRNCE_LOAD_PER,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,COL_NO,RMS_RT_BILL_DOC_TYPE
,RMS_FREE_FLG,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF,RT_BILL_TYP
,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,AD_DATE_CLK,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,CR_CARD_DSC,CR_CARD_DSC_SCND
,CR_CARD_DSC_THRD,CR_CARD_CST_NO_THRD,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO
,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_THRD,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,DOC_M_SQ,WEB_SRVC_TRNSFR_DATA_FLG
,WEB_SRVC_UUID FROM IAS20191.IAS_RT_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY
,RT_BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,R_CODE,CASH_NO,CC_CODE,PJ_NO,ACTV_NO
,CASH_AC_FCC,CASH_NO_FCC,REP_CODE,EMP_NO,SR_TYPE,COMM_PER,REF_NO,A_DESC,ATTACH_CNT
,RETURN_RES,PROCESSED,PR_REP,PREV_YEAR,CLASSIFY_NO,CLASSIFY_SER,RT_BILL_PY,EXTERNAL_POST
,DISC_AMT_AFTR_VAT,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,W_CODE_BILL
,CC_CODE_BILL,REP_CODE_BILL,RETURN_TYPE,PAID_RT_BILL,PAID_U_ID,PAID_DATE,REC_INV_RT_BILL
,REC_INV_U_ID,REC_INV_DATE,STAND_BY,NOTE_NO,DRIVER_NO,DOC_BRN_NO,RES_TYP,PRM_CODE
,DOC_NO_PDA,PDA_NM,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_PRSON_NM,INSRNCE_CARD_NO
,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO,INSRNCE_CSH_AMT,COMM_AMT_DTL
,CST_GCC,EXPORT,VAT_AMT_OTHR,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,WITHOUT_VAT
,RT_VAT_PRD_TYP,C_TEL,C_CODE_CSH,POINT_RPLC_AMT,POINT_TYP_NO,POINT_CNT,POINT_RPLC_CNT
,CREDIT_CARD,CR_CARD_NO,CR_CARD_AMT,CR_CARD_COMM_PER,CR_CARD_NO_SCND,CR_CARD_AMT_SCND
,CR_CARD_COMM_PER_SCND,CR_CARD_NO_THRD,CR_CARD_AMT_THRD,CR_CARD_COMM_PER_THRD
,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,PTNT_NO,DCTR_NO
,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,AC_CODE,AC_CODE_DTL,AC_DTL_TYP,PYMNT_AC
,INSRNCE_LOAD_PER,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,COL_NO,RMS_RT_BILL_DOC_TYPE
,RMS_FREE_FLG,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF,RT_BILL_TYP
,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,AD_DATE_CLK,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,CR_CARD_DSC,CR_CARD_DSC_SCND
,CR_CARD_DSC_THRD,CR_CARD_CST_NO_THRD,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO
,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_THRD,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,DOC_M_SQ,WEB_SRVC_TRNSFR_DATA_FLG
,WEB_SRVC_UUID FROM IAS20201.IAS_RT_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY
,RT_BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,R_CODE,CASH_NO,CC_CODE,PJ_NO,ACTV_NO
,CASH_AC_FCC,CASH_NO_FCC,REP_CODE,EMP_NO,SR_TYPE,COMM_PER,REF_NO,A_DESC,ATTACH_CNT
,RETURN_RES,PROCESSED,PR_REP,PREV_YEAR,CLASSIFY_NO,CLASSIFY_SER,RT_BILL_PY,EXTERNAL_POST
,DISC_AMT_AFTR_VAT,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,W_CODE_BILL
,CC_CODE_BILL,REP_CODE_BILL,RETURN_TYPE,PAID_RT_BILL,PAID_U_ID,PAID_DATE,REC_INV_RT_BILL
,REC_INV_U_ID,REC_INV_DATE,STAND_BY,NOTE_NO,DRIVER_NO,DOC_BRN_NO,RES_TYP,PRM_CODE
,DOC_NO_PDA,PDA_NM,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_PRSON_NM,INSRNCE_CARD_NO
,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO,INSRNCE_CSH_AMT,COMM_AMT_DTL
,CST_GCC,EXPORT,VAT_AMT_OTHR,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,WITHOUT_VAT
,RT_VAT_PRD_TYP,C_TEL,C_CODE_CSH,POINT_RPLC_AMT,POINT_TYP_NO,POINT_CNT,POINT_RPLC_CNT
,CREDIT_CARD,CR_CARD_NO,CR_CARD_AMT,CR_CARD_COMM_PER,CR_CARD_NO_SCND,CR_CARD_AMT_SCND
,CR_CARD_COMM_PER_SCND,CR_CARD_NO_THRD,CR_CARD_AMT_THRD,CR_CARD_COMM_PER_THRD
,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,PTNT_NO,DCTR_NO
,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,AC_CODE,AC_CODE_DTL,AC_DTL_TYP,PYMNT_AC
,INSRNCE_LOAD_PER,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,COL_NO,RMS_RT_BILL_DOC_TYPE
,RMS_FREE_FLG,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF,RT_BILL_TYP
,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,AD_DATE_CLK,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,CR_CARD_DSC,CR_CARD_DSC_SCND
,CR_CARD_DSC_THRD,CR_CARD_CST_NO_THRD,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO
,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_THRD,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,DOC_M_SQ,WEB_SRVC_TRNSFR_DATA_FLG
,WEB_SRVC_UUID FROM IAS20211.IAS_RT_BILL_MST  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER ,
 RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,P_YEAR,RT_BILL_DATE,RT_BILL_CURRENCY
,RT_BILL_RATE,STOCK_RATE,C_CODE,C_NAME,A_CODE,CHEQUE_NO,CHEQUE_AMT,CHEQUE_DUE_DATE
,RT_BILL_DUE_DATE,RT_BILL_POST,DISC_AMT,DISC_AMT_MST,DISC_AMT_DTL,DISC_AMT_MST_VAT
,VAT_AMT_DISC_MST,BILL_AMT,VAT_AMT,OTHR_AMT,W_CODE,R_CODE,CASH_NO,CC_CODE,PJ_NO,ACTV_NO
,CASH_AC_FCC,CASH_NO_FCC,REP_CODE,EMP_NO,SR_TYPE,COMM_PER,REF_NO,A_DESC,ATTACH_CNT
,RETURN_RES,PROCESSED,PR_REP,PREV_YEAR,CLASSIFY_NO,CLASSIFY_SER,RT_BILL_PY,EXTERNAL_POST
,DISC_AMT_AFTR_VAT,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,W_CODE_BILL
,CC_CODE_BILL,REP_CODE_BILL,RETURN_TYPE,PAID_RT_BILL,PAID_U_ID,PAID_DATE,REC_INV_RT_BILL
,REC_INV_U_ID,REC_INV_DATE,STAND_BY,NOTE_NO,DRIVER_NO,DOC_BRN_NO,RES_TYP,PRM_CODE
,DOC_NO_PDA,PDA_NM,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_PRSON_NM,INSRNCE_CARD_NO
,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,INSRNCE_CLSS_NO,INSRNCE_CSH_AMT,COMM_AMT_DTL
,CST_GCC,EXPORT,VAT_AMT_OTHR,ADD_DISC_AMT_MST,ADD_DISC_AMT_DTL,OTHR_AMT_DISC,WITHOUT_VAT
,RT_VAT_PRD_TYP,C_TEL,C_CODE_CSH,POINT_RPLC_AMT,POINT_TYP_NO,POINT_CNT,POINT_RPLC_CNT
,CREDIT_CARD,CR_CARD_NO,CR_CARD_AMT,CR_CARD_COMM_PER,CR_CARD_NO_SCND,CR_CARD_AMT_SCND
,CR_CARD_COMM_PER_SCND,CR_CARD_NO_THRD,CR_CARD_AMT_THRD,CR_CARD_COMM_PER_THRD
,CLC_TYP_NO_TAX,AC_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9
,FIELD10,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,PTNT_NO,DCTR_NO
,PTNT_TYP,DOC_NO_ADMSON,DOC_SRL_ADMSON,AC_CODE,AC_CODE_DTL,AC_DTL_TYP,PYMNT_AC
,INSRNCE_LOAD_PER,DOC_SER_EXTRNL,CNCL_FLG,CLC_VAT_PRICE_TYP,COL_NO,RMS_RT_BILL_DOC_TYPE
,RMS_FREE_FLG,HRS_DOC_NO_REF,HRS_DOC_TYPE_REF,HRS_DOC_SER_REF,RT_BILL_TYP
,CLC_TAX_FREE_QTY_FLG,INSRNCE_ADD_LMT_MST,AD_DATE_CLK,INSRNCE_ADD_LMT_DOC
,INSRNCE_ADD_LMT_DTL,INSRNCE_LMT_AMT_LOC_DOC,CR_CARD_DSC,CR_CARD_DSC_SCND
,CR_CARD_DSC_THRD,CR_CARD_CST_NO_THRD,CR_CARD_CST_NO_SCND,CR_CARD_CST_NO
,CR_CARD_DOC_NO_REF_SCND,CR_CARD_DOC_NO_REF,CR_CARD_DOC_NO_REF_THRD,CR_CARD_MAX_COMM_AMT
,CR_CARD_MAX_COMM_AMT_SCND,CR_CARD_MAX_COMM_AMT_THRD,DOC_M_SQ,WEB_SRVC_TRNSFR_DATA_FLG
,WEB_SRVC_UUID FROM IAS_RT_BILL_MST  WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 136: IAS_V_ITM_MOVMNT_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_MOVMNT_YR" ("ROW_ID","UMARKER","DOC_TYPE","BILL_DOC_TYPE","DOC_NO"
,"I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","PF_QTY","I_DATE","I_COST"
,"W_CODE","WHG_CODE","STK_COST","VAT_AMT","DIS_AMT","A_CY","AC_RATE","STK_RATE","CC_CODE"
,"PJ_NO","ACTV_NO","AC_CODE_DTL","AC_DTL_TYP","C_CODE","V_CODE","A_DESC","GR_NO"
,"EXPIRE_DATE","BATCH_NO","RCRD_NO","SERIAL","REF_NO","DOC_SER","OUT_NO","OUT_GR_SER"
,"DOC_SEQUENCE","BARCODE","RT_TYPE","IN_OUT","EXTERNAL_POST","I_LENGTH","I_WIDTH"
,"I_HEIGHT","I_NUMBER","WT_QTY","WT_UNT","ARGMNT_NO","AD_DATE","UP_DATE","CMP_NO"
,"BRN_NO","BRN_YEAR","BRN_USR","FREE_TYP","LEV_NO","I_PRICE_VAT","EMP_NO"
,"DIS_AMT_MST_VAT","DIS_PER","DIS_AMT_DTL","DIS_AMT_DTL_VAT","DIS_PER2","DIS_AMT_DTL2"
,"DIS_AMT_DTL2_VAT","DIS_PER3","DIS_AMT_DTL3","DIS_AMT_DTL3_VAT","OTHR_AMT"
,"VAT_AMT_OTHR","VAT_PER","DIS_AMT_MST") AS 
SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,BILL_DOC_TYPE,DOC_NO,I_CODE,I_QTY,FREE_QTY
,ITM_UNT,P_SIZE,P_QTY,PF_QTY,I_DATE,I_COST,W_CODE,WHG_CODE,STK_COST,VAT_AMT,DIS_AMT,A_CY
,AC_RATE,STK_RATE,CC_CODE,PJ_NO,ACTV_NO,AC_CODE_DTL,AC_DTL_TYP,C_CODE,V_CODE,A_DESC,GR_NO
,EXPIRE_DATE,BATCH_NO,RCRD_NO,SERIAL,REF_NO,DOC_SER,OUT_NO,OUT_GR_SER,DOC_SEQUENCE
,BARCODE,RT_TYPE,IN_OUT,EXTERNAL_POST,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_QTY,WT_UNT
,ARGMNT_NO,AD_DATE,UP_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,FREE_TYP,LEV_NO,I_PRICE_VAT
,EMP_NO,DIS_AMT_MST_VAT,DIS_PER,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_PER2,DIS_AMT_DTL2
,DIS_AMT_DTL2_VAT,DIS_PER3,DIS_AMT_DTL3,DIS_AMT_DTL3_VAT,OTHR_AMT,VAT_AMT_OTHR,VAT_PER
,DIS_AMT_MST FROM IAS20181.ITEM_MOVEMENT    UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 DOC_TYPE,BILL_DOC_TYPE,DOC_NO,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,PF_QTY,I_DATE
,I_COST,W_CODE,WHG_CODE,STK_COST,VAT_AMT,DIS_AMT,A_CY,AC_RATE,STK_RATE,CC_CODE,PJ_NO
,ACTV_NO,AC_CODE_DTL,AC_DTL_TYP,C_CODE,V_CODE,A_DESC,GR_NO,EXPIRE_DATE,BATCH_NO,RCRD_NO
,SERIAL,REF_NO,DOC_SER,OUT_NO,OUT_GR_SER,DOC_SEQUENCE,BARCODE,RT_TYPE,IN_OUT
,EXTERNAL_POST,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_QTY,WT_UNT,ARGMNT_NO,AD_DATE,UP_DATE
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,FREE_TYP,LEV_NO,I_PRICE_VAT,EMP_NO,DIS_AMT_MST_VAT
,DIS_PER,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_PER2,DIS_AMT_DTL2,DIS_AMT_DTL2_VAT,DIS_PER3
,DIS_AMT_DTL3,DIS_AMT_DTL3_VAT,OTHR_AMT,VAT_AMT_OTHR,VAT_PER,DIS_AMT_MST FROM
 IAS20191.ITEM_MOVEMENT    Where Doc_Type <> 0  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER 
, DOC_TYPE,BILL_DOC_TYPE,DOC_NO,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,PF_QTY,I_DATE
,I_COST,W_CODE,WHG_CODE,STK_COST,VAT_AMT,DIS_AMT,A_CY,AC_RATE,STK_RATE,CC_CODE,PJ_NO
,ACTV_NO,AC_CODE_DTL,AC_DTL_TYP,C_CODE,V_CODE,A_DESC,GR_NO,EXPIRE_DATE,BATCH_NO,RCRD_NO
,SERIAL,REF_NO,DOC_SER,OUT_NO,OUT_GR_SER,DOC_SEQUENCE,BARCODE,RT_TYPE,IN_OUT
,EXTERNAL_POST,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_QTY,WT_UNT,ARGMNT_NO,AD_DATE,UP_DATE
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,FREE_TYP,LEV_NO,I_PRICE_VAT,EMP_NO,DIS_AMT_MST_VAT
,DIS_PER,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_PER2,DIS_AMT_DTL2,DIS_AMT_DTL2_VAT,DIS_PER3
,DIS_AMT_DTL3,DIS_AMT_DTL3_VAT,OTHR_AMT,VAT_AMT_OTHR,VAT_PER,DIS_AMT_MST FROM
 IAS20201.ITEM_MOVEMENT    Where Doc_Type <> 0  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER 
, DOC_TYPE,BILL_DOC_TYPE,DOC_NO,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,PF_QTY,I_DATE
,I_COST,W_CODE,WHG_CODE,STK_COST,VAT_AMT,DIS_AMT,A_CY,AC_RATE,STK_RATE,CC_CODE,PJ_NO
,ACTV_NO,AC_CODE_DTL,AC_DTL_TYP,C_CODE,V_CODE,A_DESC,GR_NO,EXPIRE_DATE,BATCH_NO,RCRD_NO
,SERIAL,REF_NO,DOC_SER,OUT_NO,OUT_GR_SER,DOC_SEQUENCE,BARCODE,RT_TYPE,IN_OUT
,EXTERNAL_POST,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_QTY,WT_UNT,ARGMNT_NO,AD_DATE,UP_DATE
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,FREE_TYP,LEV_NO,I_PRICE_VAT,EMP_NO,DIS_AMT_MST_VAT
,DIS_PER,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_PER2,DIS_AMT_DTL2,DIS_AMT_DTL2_VAT,DIS_PER3
,DIS_AMT_DTL3,DIS_AMT_DTL3_VAT,OTHR_AMT,VAT_AMT_OTHR,VAT_PER,DIS_AMT_MST FROM
 IAS20211.ITEM_MOVEMENT    Where Doc_Type <> 0  UNION ALL  SELECT ROWID ROW_ID,2 UMARKER 
, DOC_TYPE,BILL_DOC_TYPE,DOC_NO,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,PF_QTY,I_DATE
,I_COST,W_CODE,WHG_CODE,STK_COST,VAT_AMT,DIS_AMT,A_CY,AC_RATE,STK_RATE,CC_CODE,PJ_NO
,ACTV_NO,AC_CODE_DTL,AC_DTL_TYP,C_CODE,V_CODE,A_DESC,GR_NO,EXPIRE_DATE,BATCH_NO,RCRD_NO
,SERIAL,REF_NO,DOC_SER,OUT_NO,OUT_GR_SER,DOC_SEQUENCE,BARCODE,RT_TYPE,IN_OUT
,EXTERNAL_POST,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_QTY,WT_UNT,ARGMNT_NO,AD_DATE,UP_DATE
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,FREE_TYP,LEV_NO,I_PRICE_VAT,EMP_NO,DIS_AMT_MST_VAT
,DIS_PER,DIS_AMT_DTL,DIS_AMT_DTL_VAT,DIS_PER2,DIS_AMT_DTL2,DIS_AMT_DTL2_VAT,DIS_PER3
,DIS_AMT_DTL3,DIS_AMT_DTL3_VAT,OTHR_AMT,VAT_AMT_OTHR,VAT_PER,DIS_AMT_MST FROM
 ITEM_MOVEMENT    WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 137: GLS_V_JRNL_MST_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_JRNL_MST_YR" ("ROW_ID","UMARKER","JV_TYPE","J_DOC_NO","J_SER","J_POST"
,"J_DATE","BATCH_VAL","REF_NO","REVRS_JRNL","PERIODICAL_JRNL","CASH_RESERVE","STAND_BY"
,"LINK_USE","ATTACH_NO","BEN_NAME","REC_NAME","T_DESC","AUDIT_REF","AUDIT_REF_DESC"
,"AUDIT_REF_U_ID","AUDIT_REF_DATE","PR_REP","CLS_ZERO_AC_BLNC","EXTERNAL_POST","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE","UNPOST_U_ID"
,"UNPOST_DATE","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8"
,"FIELD9","FIELD10","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM")
 AS 
SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,J_POST,J_DATE,BATCH_VAL,REF_NO
,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO,BEN_NAME,REC_NAME
,T_DESC,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,PR_REP,CLS_ZERO_AC_BLNC
,EXTERNAL_POST,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM FROM IAS20181.MASTER_JOURNAL_V
 UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO,J_SER,J_POST,J_DATE
,BATCH_VAL,REF_NO,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO
,BEN_NAME,REC_NAME,T_DESC,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,PR_REP
,CLS_ZERO_AC_BLNC,EXTERNAL_POST,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID
,POST_DATE,UNPOST_U_ID,UNPOST_DATE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7
,FIELD8,FIELD9,FIELD10,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM FROM
 IAS20191.MASTER_JOURNAL_V UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , JV_TYPE,J_DOC_NO
,J_SER,J_POST,J_DATE,BATCH_VAL,REF_NO,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY
,LINK_USE,ATTACH_NO,BEN_NAME,REC_NAME,T_DESC,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,PR_REP,CLS_ZERO_AC_BLNC,EXTERNAL_POST,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5
,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM FROM IAS20201.MASTER_JOURNAL_V UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 JV_TYPE,J_DOC_NO,J_SER,J_POST,J_DATE,BATCH_VAL,REF_NO,REVRS_JRNL,PERIODICAL_JRNL
,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO,BEN_NAME,REC_NAME,T_DESC,AUDIT_REF
,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,PR_REP,CLS_ZERO_AC_BLNC,EXTERNAL_POST
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM FROM IAS20211.MASTER_JOURNAL_V UNION ALL 
 SELECT ROWID ROW_ID,2 UMARKER , JV_TYPE,J_DOC_NO,J_SER,J_POST,J_DATE,BATCH_VAL,REF_NO
,REVRS_JRNL,PERIODICAL_JRNL,CASH_RESERVE,STAND_BY,LINK_USE,ATTACH_NO,BEN_NAME,REC_NAME
,T_DESC,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,PR_REP,CLS_ZERO_AC_BLNC
,EXTERNAL_POST,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM FROM MASTER_JOURNAL_V WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 138: IAS_V_P_ORDER_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_P_ORDER_MST_YR" ("ROW_ID","UMARKER","PO_TYPE","PO_NO","PO_SER"
,"PO_DATE","V_CODE","V_NAME","CUR_CODE","CC_CODE","PJ_NO","ACTV_NO","PO_PROCESSED"
,"PO_DESC","REF_NO","PO_PARTIAL","PO_CLOSED","DISC_AMT","INSPECT","ENTRY_NO","INACTIVE"
,"INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES","APPROVED","APRV_U_ID","APRV_DATE"
,"APRV_DSC","RES_INACTIVE","PUR_TYPE","INS_TERMS","INS_NO","INS_COMP","INS_DATE"
,"PO_WITHOUT_OTHR_AMT","DELIVERY_DATE","PLACE_DELIVERY","PAY_TERMS","MODE_DISPATCH"
,"FREIGHT_CURR","CNTCT_PERSON","NEED_CHECK_QTY","VND_PI_NO","RECEIVE_DATE","PO_DOC_TYPE"
,"DESC_INS_TEARMS","DISC_AMT_MST","DISC_AMT_DTL","PO_CHECKED","PO_LOCKED"
,"BILL_NO_V_CODE","BILL_DATE_V_CODE","CLC_VAT_PRICE_TYP","FIELD1","FIELD2","FIELD3"
,"FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","CNTRCT_NO","CNTRCT_SER"
,"SRVC_BILL","ASSGN_TO_U_ID","ASSGN_U_ID","ASSGN_DATE","USE_VAT","RQRD_FRGHT_DATA"
,"OTHR_AMT","VAT_AMT","CONTAINER_NO","FREIGHT_LST_DATE","COSTING_TYPE_NO"
,"PORT_OF_FREIGHT","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO"
,"BRN_NO","BRN_YEAR","BRN_USR","CLC_TYP_NO_TAX","AD_TRMNL_NM","UP_TRMNL_NM"
,"LVL_NO_PRICE","PO_COMP","CLC_TAX_FREE_QTY_FLG","DOC_M_SQ","PO_EXPIRE_DATE","PO_TNDR_NO"
,"CUR_RATE","PMAN_CODE") AS 
SELECT ROWID ROW_ID,1 UMARKER , PO_TYPE,PO_NO,PO_SER,PO_DATE,V_CODE,V_NAME,CUR_CODE
,CC_CODE,PJ_NO,ACTV_NO,PO_PROCESSED,PO_DESC,REF_NO,PO_PARTIAL,PO_CLOSED,DISC_AMT,INSPECT
,ENTRY_NO,INACTIVE,INACTIVE_U_ID,INACTIVE_DATE,INACTIVE_RES,APPROVED,APRV_U_ID,APRV_DATE
,APRV_DSC,RES_INACTIVE,PUR_TYPE,INS_TERMS,INS_NO,INS_COMP,INS_DATE,PO_WITHOUT_OTHR_AMT
,DELIVERY_DATE,PLACE_DELIVERY,PAY_TERMS,MODE_DISPATCH,FREIGHT_CURR,CNTCT_PERSON
,NEED_CHECK_QTY,VND_PI_NO,RECEIVE_DATE,PO_DOC_TYPE,DESC_INS_TEARMS,DISC_AMT_MST
,DISC_AMT_DTL,PO_CHECKED,PO_LOCKED,BILL_NO_V_CODE,BILL_DATE_V_CODE,CLC_VAT_PRICE_TYP
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CNTRCT_NO
,CNTRCT_SER,SRVC_BILL,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,USE_VAT,RQRD_FRGHT_DATA
,OTHR_AMT,VAT_AMT,CONTAINER_NO,FREIGHT_LST_DATE,COSTING_TYPE_NO,PORT_OF_FREIGHT,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX
,AD_TRMNL_NM,UP_TRMNL_NM,LVL_NO_PRICE,PO_COMP,CLC_TAX_FREE_QTY_FLG,DOC_M_SQ
,PO_EXPIRE_DATE,PO_TNDR_NO,CUR_RATE,PMAN_CODE FROM IAS20181.P_ORDER          UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PO_TYPE,PO_NO,PO_SER,PO_DATE,V_CODE,V_NAME,CUR_CODE
,CC_CODE,PJ_NO,ACTV_NO,PO_PROCESSED,PO_DESC,REF_NO,PO_PARTIAL,PO_CLOSED,DISC_AMT,INSPECT
,ENTRY_NO,INACTIVE,INACTIVE_U_ID,INACTIVE_DATE,INACTIVE_RES,APPROVED,APRV_U_ID,APRV_DATE
,APRV_DSC,RES_INACTIVE,PUR_TYPE,INS_TERMS,INS_NO,INS_COMP,INS_DATE,PO_WITHOUT_OTHR_AMT
,DELIVERY_DATE,PLACE_DELIVERY,PAY_TERMS,MODE_DISPATCH,FREIGHT_CURR,CNTCT_PERSON
,NEED_CHECK_QTY,VND_PI_NO,RECEIVE_DATE,PO_DOC_TYPE,DESC_INS_TEARMS,DISC_AMT_MST
,DISC_AMT_DTL,PO_CHECKED,PO_LOCKED,BILL_NO_V_CODE,BILL_DATE_V_CODE,CLC_VAT_PRICE_TYP
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CNTRCT_NO
,CNTRCT_SER,SRVC_BILL,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,USE_VAT,RQRD_FRGHT_DATA
,OTHR_AMT,VAT_AMT,CONTAINER_NO,FREIGHT_LST_DATE,COSTING_TYPE_NO,PORT_OF_FREIGHT,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX
,AD_TRMNL_NM,UP_TRMNL_NM,LVL_NO_PRICE,PO_COMP,CLC_TAX_FREE_QTY_FLG,DOC_M_SQ
,PO_EXPIRE_DATE,PO_TNDR_NO,CUR_RATE,PMAN_CODE FROM IAS20191.P_ORDER          UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PO_TYPE,PO_NO,PO_SER,PO_DATE,V_CODE,V_NAME,CUR_CODE
,CC_CODE,PJ_NO,ACTV_NO,PO_PROCESSED,PO_DESC,REF_NO,PO_PARTIAL,PO_CLOSED,DISC_AMT,INSPECT
,ENTRY_NO,INACTIVE,INACTIVE_U_ID,INACTIVE_DATE,INACTIVE_RES,APPROVED,APRV_U_ID,APRV_DATE
,APRV_DSC,RES_INACTIVE,PUR_TYPE,INS_TERMS,INS_NO,INS_COMP,INS_DATE,PO_WITHOUT_OTHR_AMT
,DELIVERY_DATE,PLACE_DELIVERY,PAY_TERMS,MODE_DISPATCH,FREIGHT_CURR,CNTCT_PERSON
,NEED_CHECK_QTY,VND_PI_NO,RECEIVE_DATE,PO_DOC_TYPE,DESC_INS_TEARMS,DISC_AMT_MST
,DISC_AMT_DTL,PO_CHECKED,PO_LOCKED,BILL_NO_V_CODE,BILL_DATE_V_CODE,CLC_VAT_PRICE_TYP
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CNTRCT_NO
,CNTRCT_SER,SRVC_BILL,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,USE_VAT,RQRD_FRGHT_DATA
,OTHR_AMT,VAT_AMT,CONTAINER_NO,FREIGHT_LST_DATE,COSTING_TYPE_NO,PORT_OF_FREIGHT,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX
,AD_TRMNL_NM,UP_TRMNL_NM,LVL_NO_PRICE,PO_COMP,CLC_TAX_FREE_QTY_FLG,DOC_M_SQ
,PO_EXPIRE_DATE,PO_TNDR_NO,CUR_RATE,PMAN_CODE FROM IAS20201.P_ORDER          UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PO_TYPE,PO_NO,PO_SER,PO_DATE,V_CODE,V_NAME,CUR_CODE
,CC_CODE,PJ_NO,ACTV_NO,PO_PROCESSED,PO_DESC,REF_NO,PO_PARTIAL,PO_CLOSED,DISC_AMT,INSPECT
,ENTRY_NO,INACTIVE,INACTIVE_U_ID,INACTIVE_DATE,INACTIVE_RES,APPROVED,APRV_U_ID,APRV_DATE
,APRV_DSC,RES_INACTIVE,PUR_TYPE,INS_TERMS,INS_NO,INS_COMP,INS_DATE,PO_WITHOUT_OTHR_AMT
,DELIVERY_DATE,PLACE_DELIVERY,PAY_TERMS,MODE_DISPATCH,FREIGHT_CURR,CNTCT_PERSON
,NEED_CHECK_QTY,VND_PI_NO,RECEIVE_DATE,PO_DOC_TYPE,DESC_INS_TEARMS,DISC_AMT_MST
,DISC_AMT_DTL,PO_CHECKED,PO_LOCKED,BILL_NO_V_CODE,BILL_DATE_V_CODE,CLC_VAT_PRICE_TYP
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CNTRCT_NO
,CNTRCT_SER,SRVC_BILL,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,USE_VAT,RQRD_FRGHT_DATA
,OTHR_AMT,VAT_AMT,CONTAINER_NO,FREIGHT_LST_DATE,COSTING_TYPE_NO,PORT_OF_FREIGHT,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX
,AD_TRMNL_NM,UP_TRMNL_NM,LVL_NO_PRICE,PO_COMP,CLC_TAX_FREE_QTY_FLG,DOC_M_SQ
,PO_EXPIRE_DATE,PO_TNDR_NO,CUR_RATE,PMAN_CODE FROM IAS20211.P_ORDER          UNION ALL 
 SELECT ROWID ROW_ID,2 UMARKER , PO_TYPE,PO_NO,PO_SER,PO_DATE,V_CODE,V_NAME,CUR_CODE
,CC_CODE,PJ_NO,ACTV_NO,PO_PROCESSED,PO_DESC,REF_NO,PO_PARTIAL,PO_CLOSED,DISC_AMT,INSPECT
,ENTRY_NO,INACTIVE,INACTIVE_U_ID,INACTIVE_DATE,INACTIVE_RES,APPROVED,APRV_U_ID,APRV_DATE
,APRV_DSC,RES_INACTIVE,PUR_TYPE,INS_TERMS,INS_NO,INS_COMP,INS_DATE,PO_WITHOUT_OTHR_AMT
,DELIVERY_DATE,PLACE_DELIVERY,PAY_TERMS,MODE_DISPATCH,FREIGHT_CURR,CNTCT_PERSON
,NEED_CHECK_QTY,VND_PI_NO,RECEIVE_DATE,PO_DOC_TYPE,DESC_INS_TEARMS,DISC_AMT_MST
,DISC_AMT_DTL,PO_CHECKED,PO_LOCKED,BILL_NO_V_CODE,BILL_DATE_V_CODE,CLC_VAT_PRICE_TYP
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,CNTRCT_NO
,CNTRCT_SER,SRVC_BILL,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,USE_VAT,RQRD_FRGHT_DATA
,OTHR_AMT,VAT_AMT,CONTAINER_NO,FREIGHT_LST_DATE,COSTING_TYPE_NO,PORT_OF_FREIGHT,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,CLC_TYP_NO_TAX
,AD_TRMNL_NM,UP_TRMNL_NM,LVL_NO_PRICE,PO_COMP,CLC_TAX_FREE_QTY_FLG,DOC_M_SQ
,PO_EXPIRE_DATE,PO_TNDR_NO,CUR_RATE,PMAN_CODE FROM P_ORDER          WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 139: IAS_V_P_ORDER_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_P_ORDER_DTL_YR" ("ROW_ID","UMARKER","PO_TYPE","PO_NO","PO_SER"
,"I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","W_CODE","DOC_TYPE_REF","PR_NO"
,"PR_SER","QT_NO","QT_SER","I_PRICE","RCRD_NO","ITEM_DESC","BARCODE","USE_ATTCH"
,"REC_ATTCH","PI_QTY","PI_FREE_QTY","AVL_QTY","ITM_CWTAVG","LAST_INCOME_PRICE"
,"DOC_SEQUENCE","DOC_SEQUENCE_PRQ","CANCELED","EXPIRE_DATE","BATCH_NO","I_PRICE_VAT"
,"I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","DIS_AMT","DIS_AMT_MST","DIS_PER"
,"DIS_AMT_DTL","DIS_PER2","DIS_AMT_DTL2","DIS_PER3","DIS_AMT_DTL3","UNIT_SIZE","U_QTY"
,"NOT_BILL_PRV_QTY","BILL_PRV_QTY","WT_QTY","WT_UNT","CC_CODE","PJ_NO","ACTV_NO"
,"OTHR_AMT","VAT_PER","VAT_AMT","ARGMNT_NO","DLVRY_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","PKG_UNT","PKG_UNT_SIZE","PKG_QTY","PKG_LENGTH","PKG_WIDTH","PKG_HEIGHT"
,"PKG_SIZE","PKG_WEIGHT","DOC_NO_REF","DOC_SER_REF","DOC_SEQUENCE_REF","UP_CNT"
,"PJ_NO_REF","SALE_PRICE","DOC_SEQ_TMP","FIELD_DTL1","FIELD_DTL2","FIELD_DTL3"
,"FIELD_DTL4","FIELD_DTL5","FIELD_DTL6","FIELD_DTL7","FIELD_DTL8","FIELD_DTL9"
,"FIELD_DTL10") AS 
SELECT ROWID ROW_ID,1 UMARKER , PO_TYPE,PO_NO,PO_SER,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE
,P_QTY,W_CODE,DOC_TYPE_REF,PR_NO,PR_SER,QT_NO,QT_SER,I_PRICE,RCRD_NO,ITEM_DESC,BARCODE
,USE_ATTCH,REC_ATTCH,PI_QTY,PI_FREE_QTY,AVL_QTY,ITM_CWTAVG,LAST_INCOME_PRICE,DOC_SEQUENCE
,DOC_SEQUENCE_PRQ,CANCELED,EXPIRE_DATE,BATCH_NO,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,DIS_AMT,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,UNIT_SIZE,U_QTY,NOT_BILL_PRV_QTY,BILL_PRV_QTY,WT_QTY,WT_UNT,CC_CODE,PJ_NO
,ACTV_NO,OTHR_AMT,VAT_PER,VAT_AMT,ARGMNT_NO,DLVRY_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,UP_CNT,PJ_NO_REF,SALE_PRICE,DOC_SEQ_TMP
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10 FROM IAS20181.P_ORDER_DETAIL   UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , PO_TYPE,PO_NO,PO_SER,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,W_CODE
,DOC_TYPE_REF,PR_NO,PR_SER,QT_NO,QT_SER,I_PRICE,RCRD_NO,ITEM_DESC,BARCODE,USE_ATTCH
,REC_ATTCH,PI_QTY,PI_FREE_QTY,AVL_QTY,ITM_CWTAVG,LAST_INCOME_PRICE,DOC_SEQUENCE
,DOC_SEQUENCE_PRQ,CANCELED,EXPIRE_DATE,BATCH_NO,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,DIS_AMT,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,UNIT_SIZE,U_QTY,NOT_BILL_PRV_QTY,BILL_PRV_QTY,WT_QTY,WT_UNT,CC_CODE,PJ_NO
,ACTV_NO,OTHR_AMT,VAT_PER,VAT_AMT,ARGMNT_NO,DLVRY_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,UP_CNT,PJ_NO_REF,SALE_PRICE,DOC_SEQ_TMP
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10 FROM IAS20191.P_ORDER_DETAIL   UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , PO_TYPE,PO_NO,PO_SER,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,W_CODE
,DOC_TYPE_REF,PR_NO,PR_SER,QT_NO,QT_SER,I_PRICE,RCRD_NO,ITEM_DESC,BARCODE,USE_ATTCH
,REC_ATTCH,PI_QTY,PI_FREE_QTY,AVL_QTY,ITM_CWTAVG,LAST_INCOME_PRICE,DOC_SEQUENCE
,DOC_SEQUENCE_PRQ,CANCELED,EXPIRE_DATE,BATCH_NO,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,DIS_AMT,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,UNIT_SIZE,U_QTY,NOT_BILL_PRV_QTY,BILL_PRV_QTY,WT_QTY,WT_UNT,CC_CODE,PJ_NO
,ACTV_NO,OTHR_AMT,VAT_PER,VAT_AMT,ARGMNT_NO,DLVRY_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,UP_CNT,PJ_NO_REF,SALE_PRICE,DOC_SEQ_TMP
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10 FROM IAS20201.P_ORDER_DETAIL   UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , PO_TYPE,PO_NO,PO_SER,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,W_CODE
,DOC_TYPE_REF,PR_NO,PR_SER,QT_NO,QT_SER,I_PRICE,RCRD_NO,ITEM_DESC,BARCODE,USE_ATTCH
,REC_ATTCH,PI_QTY,PI_FREE_QTY,AVL_QTY,ITM_CWTAVG,LAST_INCOME_PRICE,DOC_SEQUENCE
,DOC_SEQUENCE_PRQ,CANCELED,EXPIRE_DATE,BATCH_NO,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,DIS_AMT,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,UNIT_SIZE,U_QTY,NOT_BILL_PRV_QTY,BILL_PRV_QTY,WT_QTY,WT_UNT,CC_CODE,PJ_NO
,ACTV_NO,OTHR_AMT,VAT_PER,VAT_AMT,ARGMNT_NO,DLVRY_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,UP_CNT,PJ_NO_REF,SALE_PRICE,DOC_SEQ_TMP
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10 FROM IAS20211.P_ORDER_DETAIL   UNION ALL  SELECT ROWID ROW_ID,2
 UMARKER , PO_TYPE,PO_NO,PO_SER,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,W_CODE
,DOC_TYPE_REF,PR_NO,PR_SER,QT_NO,QT_SER,I_PRICE,RCRD_NO,ITEM_DESC,BARCODE,USE_ATTCH
,REC_ATTCH,PI_QTY,PI_FREE_QTY,AVL_QTY,ITM_CWTAVG,LAST_INCOME_PRICE,DOC_SEQUENCE
,DOC_SEQUENCE_PRQ,CANCELED,EXPIRE_DATE,BATCH_NO,I_PRICE_VAT,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,DIS_AMT,DIS_AMT_MST,DIS_PER,DIS_AMT_DTL,DIS_PER2,DIS_AMT_DTL2,DIS_PER3
,DIS_AMT_DTL3,UNIT_SIZE,U_QTY,NOT_BILL_PRV_QTY,BILL_PRV_QTY,WT_QTY,WT_UNT,CC_CODE,PJ_NO
,ACTV_NO,OTHR_AMT,VAT_PER,VAT_AMT,ARGMNT_NO,DLVRY_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,PKG_UNT,PKG_UNT_SIZE,PKG_QTY,PKG_LENGTH,PKG_WIDTH,PKG_HEIGHT,PKG_SIZE,PKG_WEIGHT
,DOC_NO_REF,DOC_SER_REF,DOC_SEQUENCE_REF,UP_CNT,PJ_NO_REF,SALE_PRICE,DOC_SEQ_TMP
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10 FROM P_ORDER_DETAIL   WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 140: IAS_V_P_REQUEST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_P_REQUEST_YR" ("ROW_ID","UMARKER","PR_TYPE","PR_NO","PR_SER","PR_DATE"
,"W_CODE","CC_CODE","PJ_NO","ACTV_NO","HRCHY_NO","PR_DESC","SIDE_REQ","REQ_AVL_DATE"
,"PR_SELECTED","PR_PARTIAL","APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","ASSGN_TO_U_ID"
,"ASSGN_U_ID","ASSGN_DATE","OUT_REQ_TYPE","OUT_REQ_NO","OUT_REQ_SER","INACTIVE"
,"INACTIVE_U_ID","INACTIVE_RES","INACTIVE_DATE","REF_NO","V_CODE","V_NAME","AD_U_ID"
,"AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"AD_TRMNL_NM","UP_TRMNL_NM","USE_AUTO_SYNC_VNDR","A_CY") AS 
SELECT ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO,PR_SER,PR_DATE,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,HRCHY_NO,PR_DESC,SIDE_REQ,REQ_AVL_DATE,PR_SELECTED,PR_PARTIAL,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,OUT_REQ_TYPE,OUT_REQ_NO
,OUT_REQ_SER,INACTIVE,INACTIVE_U_ID,INACTIVE_RES,INACTIVE_DATE,REF_NO,V_CODE,V_NAME
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,USE_AUTO_SYNC_VNDR,A_CY FROM IAS20181.P_REQUEST        UNION ALL  SELECT
 ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO,PR_SER,PR_DATE,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,HRCHY_NO,PR_DESC,SIDE_REQ,REQ_AVL_DATE,PR_SELECTED,PR_PARTIAL,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,OUT_REQ_TYPE,OUT_REQ_NO
,OUT_REQ_SER,INACTIVE,INACTIVE_U_ID,INACTIVE_RES,INACTIVE_DATE,REF_NO,V_CODE,V_NAME
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,USE_AUTO_SYNC_VNDR,A_CY FROM IAS20191.P_REQUEST        UNION ALL  SELECT
 ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO,PR_SER,PR_DATE,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,HRCHY_NO,PR_DESC,SIDE_REQ,REQ_AVL_DATE,PR_SELECTED,PR_PARTIAL,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,OUT_REQ_TYPE,OUT_REQ_NO
,OUT_REQ_SER,INACTIVE,INACTIVE_U_ID,INACTIVE_RES,INACTIVE_DATE,REF_NO,V_CODE,V_NAME
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,USE_AUTO_SYNC_VNDR,A_CY FROM IAS20201.P_REQUEST        UNION ALL  SELECT
 ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO,PR_SER,PR_DATE,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,HRCHY_NO,PR_DESC,SIDE_REQ,REQ_AVL_DATE,PR_SELECTED,PR_PARTIAL,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,OUT_REQ_TYPE,OUT_REQ_NO
,OUT_REQ_SER,INACTIVE,INACTIVE_U_ID,INACTIVE_RES,INACTIVE_DATE,REF_NO,V_CODE,V_NAME
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,USE_AUTO_SYNC_VNDR,A_CY FROM IAS20211.P_REQUEST        UNION ALL  SELECT
 ROWID ROW_ID,2 UMARKER , PR_TYPE,PR_NO,PR_SER,PR_DATE,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,HRCHY_NO,PR_DESC,SIDE_REQ,REQ_AVL_DATE,PR_SELECTED,PR_PARTIAL,APPROVED,APRV_U_ID
,APRV_DATE,APRV_DSC,ASSGN_TO_U_ID,ASSGN_U_ID,ASSGN_DATE,OUT_REQ_TYPE,OUT_REQ_NO
,OUT_REQ_SER,INACTIVE,INACTIVE_U_ID,INACTIVE_RES,INACTIVE_DATE,REF_NO,V_CODE,V_NAME
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,PR_REP,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,USE_AUTO_SYNC_VNDR,A_CY FROM P_REQUEST        WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 141: IAS_V_P_REQUEST_DETAIL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_P_REQUEST_DETAIL_YR" ("ROW_ID","UMARKER","PR_TYPE","PR_NO","PR_SER"
,"I_CODE","I_QTY","ITM_UNT","P_SIZE","P_QTY","W_CODE","RCRD_NO","ITEM_DESC","USE_ATTCH"
,"REC_ATTCH","AVL_QTY","AVL_QTY_ALL","ARIV_QTY","PO_QTY","I_MIN_QTY","LAST_INCOME_PRICE"
,"BARCODE","OUT_REQ_NO","OUT_REQ_SER","DOC_SEQUENCE","I_LENGTH","I_WIDTH","I_HEIGHT"
,"I_NUMBER","NOT_PO_PRV_QTY","PO_PRV_QTY","WT_QTY","WT_UNT","EXPIRE_DATE","BATCH_NO"
,"PUR_CNT","LOST_DAY","I_ROL","SQTY","POQTY","POQTY_OPEN","LAST_INCOME_QTY"
,"LAST_INCOME_DATE","LAST_EXP_DATE","LAST_FREE_QTY","PER_LAST_FREE_QTY","I_PRICE"
,"CC_CODE","PJ_NO","ACTV_NO","ARGMNT_NO","DOC_NO_REF","DOC_SER_REF","DOC_TYP_REF"
,"DOC_SEQUENCE_REF","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","FIELD_DTL1"
,"FIELD_DTL2","FIELD_DTL3","FIELD_DTL4","FIELD_DTL5","FIELD_DTL6","FIELD_DTL7"
,"FIELD_DTL8","FIELD_DTL9","FIELD_DTL10","MANUAL_REF_NO","SHIP_DATE","EXPCTD_QTY"
,"DIS_PER","DIS_AMT_DTL") AS 
SELECT ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO,PR_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,W_CODE,RCRD_NO,ITEM_DESC,USE_ATTCH,REC_ATTCH,AVL_QTY,AVL_QTY_ALL,ARIV_QTY,PO_QTY
,I_MIN_QTY,LAST_INCOME_PRICE,BARCODE,OUT_REQ_NO,OUT_REQ_SER,DOC_SEQUENCE,I_LENGTH,I_WIDTH
,I_HEIGHT,I_NUMBER,NOT_PO_PRV_QTY,PO_PRV_QTY,WT_QTY,WT_UNT,EXPIRE_DATE,BATCH_NO,PUR_CNT
,LOST_DAY,I_ROL,SQTY,POQTY,POQTY_OPEN,LAST_INCOME_QTY,LAST_INCOME_DATE,LAST_EXP_DATE
,LAST_FREE_QTY,PER_LAST_FREE_QTY,I_PRICE,CC_CODE,PJ_NO,ACTV_NO,ARGMNT_NO,DOC_NO_REF
,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10,MANUAL_REF_NO,SHIP_DATE,EXPCTD_QTY,DIS_PER,DIS_AMT_DTL FROM
 IAS20181.P_REQUEST_DETAIL UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO
,PR_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,W_CODE,RCRD_NO,ITEM_DESC,USE_ATTCH,REC_ATTCH
,AVL_QTY,AVL_QTY_ALL,ARIV_QTY,PO_QTY,I_MIN_QTY,LAST_INCOME_PRICE,BARCODE,OUT_REQ_NO
,OUT_REQ_SER,DOC_SEQUENCE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,NOT_PO_PRV_QTY,PO_PRV_QTY
,WT_QTY,WT_UNT,EXPIRE_DATE,BATCH_NO,PUR_CNT,LOST_DAY,I_ROL,SQTY,POQTY,POQTY_OPEN
,LAST_INCOME_QTY,LAST_INCOME_DATE,LAST_EXP_DATE,LAST_FREE_QTY,PER_LAST_FREE_QTY,I_PRICE
,CC_CODE,PJ_NO,ACTV_NO,ARGMNT_NO,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10,MANUAL_REF_NO
,SHIP_DATE,EXPCTD_QTY,DIS_PER,DIS_AMT_DTL FROM IAS20191.P_REQUEST_DETAIL UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO,PR_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,W_CODE,RCRD_NO,ITEM_DESC,USE_ATTCH,REC_ATTCH,AVL_QTY,AVL_QTY_ALL,ARIV_QTY,PO_QTY
,I_MIN_QTY,LAST_INCOME_PRICE,BARCODE,OUT_REQ_NO,OUT_REQ_SER,DOC_SEQUENCE,I_LENGTH,I_WIDTH
,I_HEIGHT,I_NUMBER,NOT_PO_PRV_QTY,PO_PRV_QTY,WT_QTY,WT_UNT,EXPIRE_DATE,BATCH_NO,PUR_CNT
,LOST_DAY,I_ROL,SQTY,POQTY,POQTY_OPEN,LAST_INCOME_QTY,LAST_INCOME_DATE,LAST_EXP_DATE
,LAST_FREE_QTY,PER_LAST_FREE_QTY,I_PRICE,CC_CODE,PJ_NO,ACTV_NO,ARGMNT_NO,DOC_NO_REF
,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10,MANUAL_REF_NO,SHIP_DATE,EXPCTD_QTY,DIS_PER,DIS_AMT_DTL FROM
 IAS20201.P_REQUEST_DETAIL UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , PR_TYPE,PR_NO
,PR_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY,W_CODE,RCRD_NO,ITEM_DESC,USE_ATTCH,REC_ATTCH
,AVL_QTY,AVL_QTY_ALL,ARIV_QTY,PO_QTY,I_MIN_QTY,LAST_INCOME_PRICE,BARCODE,OUT_REQ_NO
,OUT_REQ_SER,DOC_SEQUENCE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,NOT_PO_PRV_QTY,PO_PRV_QTY
,WT_QTY,WT_UNT,EXPIRE_DATE,BATCH_NO,PUR_CNT,LOST_DAY,I_ROL,SQTY,POQTY,POQTY_OPEN
,LAST_INCOME_QTY,LAST_INCOME_DATE,LAST_EXP_DATE,LAST_FREE_QTY,PER_LAST_FREE_QTY,I_PRICE
,CC_CODE,PJ_NO,ACTV_NO,ARGMNT_NO,DOC_NO_REF,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4
,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8,FIELD_DTL9,FIELD_DTL10,MANUAL_REF_NO
,SHIP_DATE,EXPCTD_QTY,DIS_PER,DIS_AMT_DTL FROM IAS20211.P_REQUEST_DETAIL UNION ALL 
 SELECT ROWID ROW_ID,2 UMARKER , PR_TYPE,PR_NO,PR_SER,I_CODE,I_QTY,ITM_UNT,P_SIZE,P_QTY
,W_CODE,RCRD_NO,ITEM_DESC,USE_ATTCH,REC_ATTCH,AVL_QTY,AVL_QTY_ALL,ARIV_QTY,PO_QTY
,I_MIN_QTY,LAST_INCOME_PRICE,BARCODE,OUT_REQ_NO,OUT_REQ_SER,DOC_SEQUENCE,I_LENGTH,I_WIDTH
,I_HEIGHT,I_NUMBER,NOT_PO_PRV_QTY,PO_PRV_QTY,WT_QTY,WT_UNT,EXPIRE_DATE,BATCH_NO,PUR_CNT
,LOST_DAY,I_ROL,SQTY,POQTY,POQTY_OPEN,LAST_INCOME_QTY,LAST_INCOME_DATE,LAST_EXP_DATE
,LAST_FREE_QTY,PER_LAST_FREE_QTY,I_PRICE,CC_CODE,PJ_NO,ACTV_NO,ARGMNT_NO,DOC_NO_REF
,DOC_SER_REF,DOC_TYP_REF,DOC_SEQUENCE_REF,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT
,FIELD_DTL1,FIELD_DTL2,FIELD_DTL3,FIELD_DTL4,FIELD_DTL5,FIELD_DTL6,FIELD_DTL7,FIELD_DTL8
,FIELD_DTL9,FIELD_DTL10,MANUAL_REF_NO,SHIP_DATE,EXPCTD_QTY,DIS_PER,DIS_AMT_DTL FROM
 P_REQUEST_DETAIL WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 142: GLS_V_VCHR_MST_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_VCHR_MST_YR" ("ROW_ID","UMARKER","VOUCHER_TYPE","VOUCHER_PAY_TYPE"
,"VOUCHER_NO","CASH_NO","A_CY","V_SER","VOUCHER_DATE","CASH_AMT","CASH_AMTF","EX_RATE"
,"VOUCHER_POST","REF_NO","REF_NAME","A_DESC","REC_NAME","STAND_BY","TRANSFER","CHEQ_TYPE"
,"COL_NO","CC_CODE","PJ_NO","ACTV_NO","ATTACH_NO","PR_REP","COMM_PER","VOUCHER_NO_PY"
,"VOUCHER_DATE_PY","MOVE_CHEQ_PY","MOVE_CHEQ_CY","V_TYPE_NO","EXTERNAL_POST","AUDIT_REF"
,"AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","FIELD1","FIELD2","FIELD3","FIELD4"
,"FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","POST_U_ID","POST_DATE"
,"UNPOST_U_ID","UNPOST_DATE","DOC_SEQUENCE","DOC_BRN_NO","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM"
,"DOC_SER_EXTRNL","REP_CODE","AC_CODE_DTL","AC_DTL_TYP") AS 
SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY
,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE,VOUCHER_POST,REF_NO,REF_NAME,A_DESC
,REC_NAME,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ACTV_NO,ATTACH_NO,PR_REP
,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY,MOVE_CHEQ_CY,V_TYPE_NO,EXTERNAL_POST
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE
,DOC_SEQUENCE,DOC_BRN_NO,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_SER_EXTRNL,REP_CODE,AC_CODE_DTL,AC_DTL_TYP FROM
 IAS20181.VOUCHERS         UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE
,VOUCHER_POST,REF_NO,REF_NAME,A_DESC,REC_NAME,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE
,PJ_NO,ACTV_NO,ATTACH_NO,PR_REP,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY
,MOVE_CHEQ_CY,V_TYPE_NO,EXTERNAL_POST,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE,DOC_BRN_NO,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,DOC_SER_EXTRNL,REP_CODE,AC_CODE_DTL,AC_DTL_TYP FROM IAS20191.VOUCHERS         UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY
,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE,VOUCHER_POST,REF_NO,REF_NAME,A_DESC
,REC_NAME,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ACTV_NO,ATTACH_NO,PR_REP
,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY,MOVE_CHEQ_CY,V_TYPE_NO,EXTERNAL_POST
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE
,DOC_SEQUENCE,DOC_BRN_NO,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_SER_EXTRNL,REP_CODE,AC_CODE_DTL,AC_DTL_TYP FROM
 IAS20201.VOUCHERS         UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , VOUCHER_TYPE
,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE
,VOUCHER_POST,REF_NO,REF_NAME,A_DESC,REC_NAME,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE
,PJ_NO,ACTV_NO,ATTACH_NO,PR_REP,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY
,MOVE_CHEQ_CY,V_TYPE_NO,EXTERNAL_POST,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE,DOC_BRN_NO,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM
,DOC_SER_EXTRNL,REP_CODE,AC_CODE_DTL,AC_DTL_TYP FROM IAS20211.VOUCHERS         UNION ALL 
 SELECT ROWID ROW_ID,2 UMARKER , VOUCHER_TYPE,VOUCHER_PAY_TYPE,VOUCHER_NO,CASH_NO,A_CY
,V_SER,VOUCHER_DATE,CASH_AMT,CASH_AMTF,EX_RATE,VOUCHER_POST,REF_NO,REF_NAME,A_DESC
,REC_NAME,STAND_BY,TRANSFER,CHEQ_TYPE,COL_NO,CC_CODE,PJ_NO,ACTV_NO,ATTACH_NO,PR_REP
,COMM_PER,VOUCHER_NO_PY,VOUCHER_DATE_PY,MOVE_CHEQ_PY,MOVE_CHEQ_CY,V_TYPE_NO,EXTERNAL_POST
,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,FIELD1,FIELD2,FIELD3,FIELD4
,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE
,DOC_SEQUENCE,DOC_BRN_NO,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,DOC_SER_EXTRNL,REP_CODE,AC_CODE_DTL,AC_DTL_TYP FROM
 VOUCHERS         WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 143: GLS_V_VCHR_DTL_YR
--------------------------------------------------------------
CREATE VIEW "GLS_V_VCHR_DTL_YR" ("ROW_ID","UMARKER","VOUCHER_TYPE","VOUCHER_PAY_TYPE"
,"VOUCHER_NO","CASH_NO","V_SER","A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB"
,"AC_CODE_DTL_SUB_END","AC_CODE_DTL_SUB_DR_COMM","AC_DTL_TYP","A_CY","AC_DESC","AC_AMT"
,"AC_AMTF","EX_RATE","CC_CODE","PJ_NO","ACTV_NO","C_CODE","V_CODE","REP_CODE"
,"CSH_BNK_NO","CHEQUE_NO","VALUE_DATE","CHEQUE_POST","CHEQUE_VALUED","ENDRSMNT","NOTE_NO"
,"BANK_NO","BANK_NM","BANK_BRN_NO","A_CODE_END","C_CODE_END","V_CODE_END","RETURN_RES"
,"LC_NO","CI_NO","CI_SER","HRS_PAY_NO","K_NO","K_SER","BILL_NO","BILL_SER","I_NO","WO_NO"
,"WO_SER","CNTRCT_NO","CNTRCT_SRL","CNTRCT_BTCH","REP_COMM_AMT","REF_NO","RCRD_NO"
,"CONN_V_NO","CONN_V_SER","CONN_V_AMT","EXTERNAL_POST","BLMNT_DATE","DOC_SEQUENCE_REF"
,"DOC_SEQUENCE","CASHIER_NO","NOTE","AC_CODE_DR_COMM","AC_CODE_DTL_DR_COMM"
,"AC_DTL_TYP_DR_COMM","OTR_AMT_L","OTR_AMT_F","AUDIT_REF","AUDIT_REF_DESC"
,"AUDIT_REF_U_ID","AUDIT_REF_DATE","AC_DTL_TYP_END","AC_CODE_DTL_END","DOC_TYPE_REF"
,"DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF","DOC_BRN_NO","POST_U_ID","POST_DATE"
,"UNPOST_U_ID","UNPOST_DATE","F_CNTRCT_DATE","T_CNTRCT_DATE","F_CNTRCT_DATE_AH"
,"T_CNTRCT_DATE_AH","CRD_CARD_NO","CRD_ACODE_REC_LETTER","CRD_COMM_AC"
,"CRD_COMM_CALC_TYP","CRD_COMM_PER","CRD_VAT_COMM_PER","CRD_DUE_PRD","CRD_PRSSES_NO"
,"FLD1","FLD2","FLD3","FLD4","FLD5","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","CRD_COMM_AMT_L","CRD_VAT_COMM_AMT_L"
,"CRD_WTHDRW_AMT_L","CRD_CARD_TYP","ENDRSMNT_DATE","ENDRSMNT_POST","ENDRSMNT_POST_U_ID"
,"ENDRSMNT_UNPOST_U_ID","ENDRSMNT_POST_DATE","ENDRSMNT_UNPOST_DATE"
,"ENDRSMNT_AUDIT_REF_U_ID","ENDRSMNT_AUDIT_REF","ENDRSMNT_AUDIT_REF_DESC"
,"ENDRSMNT_UAUDIT_REF_DATE","ENDRSMNT_AUDIT_REF_DATE","CLC_TYP_NO_TAX","TAX_PRCNT"
,"TAX_AMT","CRD_COMM_AMT","CRD_VAT_COMM_AMT","CRD_ACY_MAX_COMM","CRD_WTHDRW_AMT"
,"CRD_PRCSS_MAX_COMM_AMT") AS 
CREATE VIEW "IAS_V_POST_DTL_OPN_YR" ("ROW_ID","UMARKER","DOC_TYPE","JV_TYPE","DOC_NO"
,"DOC_SER","W_CODE","CC_CODE","PJ_NO","ACTV_NO","CASH_NO","A_CODE","AC_CODE_DTL"
,"AC_CODE_DTL_SUB","AC_DTL_TYP","A_CY","DR_AMT","CR_AMT","DR_AMT_F","CR_AMT_F","AMT"
,"AMT_F","DOC_DATE","DOC_DUE_DATE","DOC_DESC","MNTH","D_YEAR","REF_NO","DOC_POST"
,"DOC_CLOSE","INV_CLOSE","CB_BEFORE","CB_AFTER","LC_NO","C_CODE","V_CODE","C_V_CODE"
,"V_C_CODE","COL_NO","REP_CODE","CR_CARD_TYPE","R_CODE","HRCHY_NO","WO_NO","WO_SER"
,"CHEQUE_NO","NOTE_NO","CHEQUE_VALUED","DOC_SEQUENCE","EXTERNAL_POST","RCRD_NO","G_CODE"
,"WHG_CODE","TRMNL_NAME","INSTALL_TYPE","MOV_DOC_PY","FROM_CC_CODE","F_BRN_NO"
,"DOC_BRN_NO","CASHIER_NO","INSRNCE_CMP_NO","INSRNCE_BNF_NO","INSRNCE_CARD_NO"
,"INSRNCE_CARD_NO_FMLY","INSRNCE_RLTN_TYP","AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID"
,"AUDIT_REF_DATE","CNFRM","CNFRM_DESC","CNFRM_U_ID","CNFRM_DATE","POST_U_ID","POST_DATE"
,"UNPOST_U_ID","UNPOST_DATE","DOC_SEQUENCE_REF","RCRD_NO_REF","CRD_CARD_NO"
,"CRD_CARD_NO_REF","CR_CARD_DSC","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","DOC_NO_MNL","DOC_DATE_MNL") AS 
SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE,CC_CODE,PJ_NO
,ACTV_NO,CASH_NO,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT,CR_AMT
,DR_AMT_F,CR_AMT_F,AMT,AMT_F,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO,DOC_POST
,DOC_CLOSE,INV_CLOSE,CB_BEFORE,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE,COL_NO
,REP_CODE,CR_CARD_TYPE,R_CODE,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO,CHEQUE_VALUED
,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE,MOV_DOC_PY
,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC
,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF
,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,DOC_NO_MNL,DOC_DATE_MNL FROM IAS20181.IAS_POST_DTL     UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE
,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F
,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE
,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE
,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO,CHEQUE_VALUED,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO
,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO
,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY
,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC
,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF
,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL FROM IAS20191.IAS_POST_DTL
     UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE
,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT
,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO
,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE
,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO
,CHEQUE_VALUED,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE
,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC
,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF
,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,DOC_NO_MNL,DOC_DATE_MNL FROM IAS20201.IAS_POST_DTL     UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE
,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F
,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE
,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE
,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO,CHEQUE_VALUED,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO
,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO
,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY
,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC
,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF
,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE
,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,DOC_NO_MNL,DOC_DATE_MNL FROM IAS20211.IAS_POST_DTL
     UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , DOC_TYPE,JV_TYPE,DOC_NO,DOC_SER,W_CODE
,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_CODE,AC_CODE_DTL,AC_CODE_DTL_SUB,AC_DTL_TYP,A_CY,DR_AMT
,CR_AMT,DR_AMT_F,CR_AMT_F,AMT,AMT_F,DOC_DATE,DOC_DUE_DATE,DOC_DESC,MNTH,D_YEAR,REF_NO
,DOC_POST,DOC_CLOSE,INV_CLOSE,CB_BEFORE,CB_AFTER,LC_NO,C_CODE,V_CODE,C_V_CODE,V_C_CODE
,COL_NO,REP_CODE,CR_CARD_TYPE,R_CODE,HRCHY_NO,WO_NO,WO_SER,CHEQUE_NO,NOTE_NO
,CHEQUE_VALUED,DOC_SEQUENCE,EXTERNAL_POST,RCRD_NO,G_CODE,WHG_CODE,TRMNL_NAME,INSTALL_TYPE
,MOV_DOC_PY,FROM_CC_CODE,F_BRN_NO,DOC_BRN_NO,CASHIER_NO,INSRNCE_CMP_NO,INSRNCE_BNF_NO
,INSRNCE_CARD_NO,INSRNCE_CARD_NO_FMLY,INSRNCE_RLTN_TYP,AUDIT_REF,AUDIT_REF_DESC
,AUDIT_REF_U_ID,AUDIT_REF_DATE,CNFRM,CNFRM_DESC,CNFRM_U_ID,CNFRM_DATE,POST_U_ID,POST_DATE
,UNPOST_U_ID,UNPOST_DATE,DOC_SEQUENCE_REF,RCRD_NO_REF,CRD_CARD_NO,CRD_CARD_NO_REF
,CR_CARD_DSC,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,DOC_NO_MNL,DOC_DATE_MNL FROM IAS_POST_DTL     WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 144: DTS_V_ITM_DTL_PPC
--------------------------------------------------------------
CREATE VIEW "DTS_V_ITM_DTL_PPC" ("GRNO","ITMCODE","ITMNAME","ITMUNTCODE","ITMFNAME"
,"ITMSIZE","ITMPCODE","ITMPSIZE","BOONSPERC","DISPERC","PRICE","SUBPRICE","ADDFLDTEXT1"
,"USEDIS","USEEXPR","USEBATCHNO") AS 
SELECT G.Grp_Code GrNo,
	          G.I_Code Itmcode,
	          I.I_Name Itmname,
	          G.Itm_Unt Itmuntcode,
	          I.I_E_Name Itmfname,
	          G.P_Size Itmsize,
	          G.I_Code Itmpcode,
	          C.P_Size Itmpsize,
	          I.Free_Qty_Per Boonsperc,
	          I.Disc_Per Disperc,
	          C.I_Price Price,
	          0 Subprice,
	          I.Field1 Addfldtext1,
	          I.Allow_Disc Usedis,
	          I.Use_Exp_Date Useexpr,
	          I.Use_Batch_No Usebatchno
	     FROM Dts_Grp_Dtl G, Ias_Itm_Mst I, Ias_Item_Price C
	    WHERE     G.I_Code = I.I_Code
	          AND G.I_Code = C.I_Code
	          AND I.I_Code = C.I_Code
	          AND C.Lev_No = G.Lev_No
;

--------------------------------------------------------------
-- View 145: IAS_V_USR_DTS_OPTN_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_DTS_OPTN_PRV" ("U_ID","USR_NM","OPTN_NO","OPTN_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
		          Decode (Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),
		             1, Nvl (B.U_A_Name, B.U_E_Name),
		             Nvl (B.U_E_Name, B.U_A_Name))
		             Usr_Nm,
		          C.Optn_No,
		          Ys_Gen_Pkg.Get_Prompt(Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),C.Lbl_No) Optn_Nm,
		          A.Optn_Flg Add_Flag,
		          0 View_Flag,
		          A.Ad_U_Id,
		          A.Ad_Date,
		          A.Up_U_Id,
		          A.Up_Date,
		          1 Rec_Src
		   From Dts_Optn_Priv A, User_R B, Dts_Optn C
		   Where     A.U_Id     = B.U_Id
		         And A.Optn_No  = C.Optn_No
		         And A.Optn_Flg = 1 
		   Union
		   Select B.U_Id,
		          Decode (Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),
		             1, Nvl (B.U_A_Name, B.U_E_Name),
		             Nvl (B.U_E_Name, B.U_A_Name))
		             Usr_Nm,
		          C.Optn_No,
		          Ys_Gen_Pkg.Get_Prompt(Ias_Prmtr_Pkg.Getpval (P_Prmtr => 'LANG_NO'),C.Lbl_No) Optn_Nm,
		          0 Add_Flag,
		          0 View_Flag,
		          Null Ad_U_Id,
		          Null Ad_Date,
		          Null Up_U_Id,
		          Null Up_Date,
		          0 Rec_Src
		   From User_R B, Dts_Optn C 
		   Where  1=1
		     And Not Exists
		            (Select 1
		             From Dts_Optn_Priv
		             Where Optn_No = C.Optn_No And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 146: IAS_V_ERR_CC_BILL
--------------------------------------------------------------
CREATE VIEW "IAS_V_ERR_CC_BILL" ("BILL_SER","CC_CODE") AS 
SELECT bill_ser,cc_code 
			   From Ias_Bill_Mst where bill_ser Is Not null 
			  Minus 
			 Select bill_ser,cc_code 
			   From Ias_Bill_Dtl where bill_ser Is Not Null
;

--------------------------------------------------------------
-- View 147: IAS_V_ERR_CC_RT_BILL
--------------------------------------------------------------
CREATE VIEW "IAS_V_ERR_CC_RT_BILL" ("RT_BILL_SER","CC_CODE") AS 
SELECT Rt_bill_ser,cc_code 
			   From Ias_rt_bill_Mst where Rt_bill_ser is not null 
			  Minus 
			 Select Rt_bill_ser,cc_code 
			   From Ias_rt_bill_Dtl where Rt_bill_ser is not null
;

--------------------------------------------------------------
-- View 148: IAS_V_ERR_CC_OUTGOING
--------------------------------------------------------------
CREATE VIEW "IAS_V_ERR_CC_OUTGOING" ("OUT_SER","CC_CODE") AS 
SELECT OUT_SER,CC_CODE 
			   From Ias_Outgoing_Mst where out_ser is not null 
			  Minus 
			 Select OUT_SER,CC_CODE 
			   From Ias_Outgoing_Dtl where out_ser is not null
;

--------------------------------------------------------------
-- View 149: IAS_V_ERR_CC_INCOMING
--------------------------------------------------------------
CREATE VIEW "IAS_V_ERR_CC_INCOMING" ("G_SER","CC_CODE") AS 
SELECT G_SER,CC_CODE 
			   From GR_NOTE where Pi_Type = 5 And  G_ser is not null 
			  Minus 
			 Select G_SER,CC_CODE 
			   From Gr_detail where Pi_Type = 5 And G_ser is not null
;

--------------------------------------------------------------
-- View 150: IAS_V_PO_DIFF_QTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_PO_DIFF_QTY" ("PO_NO","PO_DATE","V_CODE","V_NAME","I_CODE","I_NAME"
,"I_E_NAME","UNIT","I_PRICE","DIS_AMT","I_QTY","O_QTY","DIFF_Q","PO_TYPE","PO_SER"
,"AD_U_ID","BRN_NO") AS 
SELECT   b.po_no,
						             a.po_date,
						             a.v_code,
						             v_name,
						             b.i_code,
						             NVL( c.i_name, c.i_e_name ) i_name,
						             NVL( c.i_e_name, c.i_name ) i_e_name,
						             b.itm_unt unit,
						             b.i_price,
						             SUM( ( ( b.dis_amt_dtl + b.dis_amt_dtl2 + b.dis_amt_dtl3 ) + b.dis_amt_mst )) dis_amt,
						             NVL( SUM( NVL( b.i_qty, 0 )), 0 ) / DECODE( COUNT( d.i_code ),
						                                                         0, 1,
						                                                         COUNT( d.i_code )
						                                                       ) i_qty,
						             NVL( SUM( NVL( d.i_qty, 0 )), 0 ) o_qty,
						             ( (     NVL( SUM( NVL( b.i_qty, 0 )), 0 )
						                   / DECODE( COUNT( d.i_code ),
						                             0, 1,
						                             COUNT( d.i_code )
						                           )
						                 - NVL( SUM( NVL( d.i_qty, 0 )), 0 )
						               )
						             ) diff_q,
						             b.po_type,
						             a.po_ser,
						             a.ad_u_id,
						             a.brn_no
						    FROM     p_order a,
						             p_order_detail b,
						             ias_itm_mst c,
						             ias_pi_bill_dtl d
						    WHERE    a.po_no = b.po_no
						    AND      a.po_ser = b.po_ser
						    AND      b.i_code = c.i_code
						    AND      NVL( a.approved, 0 ) = 1
						    AND      NVL( b.canceled, 0 ) = 0
						    AND      b.i_code = d.i_code(+)
						    AND      b.po_ser = d.po_ser(+)
						    GROUP BY b.po_no,
						             b.po_ser,
						             a.po_date,
						             a.v_code,
						             v_name,
						             b.i_code,
						             c.i_name,
						             c.i_e_name,
						             b.itm_unt,
						             b.i_price,
						             b.rcrd_no,
						             b.po_type,
						             a.po_ser,
						             a.ad_u_id,
						             a.brn_no
						    ORDER BY b.po_no,
						             b.rcrd_no
;

--------------------------------------------------------------
-- View 151: GLS_V_PST_DTL_VCHR_CHQ
--------------------------------------------------------------
CREATE VIEW "GLS_V_PST_DTL_VCHR_CHQ" ("BNK_UONION","DOC_TYPE","JV_TYPE","DOC_NO"
,"DOC_SER","W_CODE","CC_CODE","PJ_NO","ACTV_NO","CASH_NO","A_CODE","A_CY","DR_AMT"
,"CR_AMT","DR_AMT_F","CR_AMT_F","AMT","AMT_F","DOC_DATE","DOC_DUE_DATE","DOC_DESC","MNTH"
,"D_YEAR","REF_NO","DOC_POST","DOC_CLOSE","INV_CLOSE","CB_BEFORE","CB_AFTER","LC_NO"
,"C_V_CODE","V_C_CODE","COL_NO","REP_CODE","R_CODE","HRCHY_NO","WO_NO","WO_SER"
,"CHEQUE_NO","NOTE_NO","CHEQUE_VALUED","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF"
,"DOC_SER_REF","DOC_SEQUENCE","EXTERNAL_POST","RCRD_NO","G_CODE","WHG_CODE","TRMNL_NAME"
,"INSTALL_TYPE","MOV_DOC_PY","FROM_CC_CODE","F_BRN_NO","DOC_BRN_NO","CASHIER_NO"
,"AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","CNFRM","CNFRM_DESC","CNFRM_U_ID","CNFRM_DATE","POST_U_ID"
,"POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"AC_CODE_DTL","AC_DTL_TYP","INSRNCE_CMP_NO","INSRNCE_BNF_NO","INSRNCE_CARD_NO"
,"INSRNCE_CARD_NO_FMLY","NSRNCE_RLTN_TYP","CR_CARD_TYPE","DOC_SEQUENCE_REF","RCRD_NO_REF"
,"CRD_CARD_NO","CRD_CARD_NO_REF","CR_CARD_DSC","AC_CODE_DTL_SUB","DOC_NO_MNL"
,"DOC_DATE_MNL") AS 
SELECT  0 BNK_UONION,
           CASE WHEN D.VOUCHER_TYPE=1 THEN 2 ELSE 3 END      DOC_TYPE,
           D.VOUCHER_PAY_TYPE            JV_TYPE,
           D.VOUCHER_NO          DOC_NO,
           D.V_SER               DOC_SER,
           0              W_CODE,
           D.CC_CODE,
           D.PJ_NO,
           D.ACTV_NO,
           D.CASH_NO,
           D.A_CODE,
           D.A_CY,
           CASE WHEN D.AC_AMT > 0 THEN AC_AMT ELSE NULL END       DR_AMT,
           CASE WHEN D.AC_AMT < 0 THEN AC_AMT * -1 ELSE NULL END CR_AMT,
           CASE WHEN D.AC_AMTF > 0 THEN AC_AMTF ELSE NULL END   DR_AMT_F,
           CASE WHEN D.AC_AMTF < 0 THEN AC_AMTF * -1 ELSE NULL END  CR_AMT_F,
           D.AC_AMT        AMT,
           D.AC_AMTF       AMT_F,
           M.VOUCHER_DATE    DOC_DATE,
           D.VALUE_DATE        DOC_DUE_DATE,
           D.AC_DESC          DOC_DESC,
           1         MNTH,
           D.BRN_YEAR    D_YEAR,
           D.REF_NO,
           D.cheque_post             DOC_POST,
           0      DOC_CLOSE,
           0      INV_CLOSE,
           0     CB_BEFORE,
           0     CB_AFTER,
           D.LC_NO,
           NULL   C_V_CODE,
           NULL   V_C_CODE,
           NULL   COL_NO,
           D.REP_CODE,
           NULL  R_CODE,
           0      HRCHY_NO,
           D.WO_NO,
           D.WO_SER,
           D.CHEQUE_NO,
           D.NOTE_NO,
           D.CHEQUE_VALUED,
           D.DOC_TYPE_REF,
           D.DOC_JV_TYPE_REF,
           D.DOC_NO_REF,
           D.DOC_SER_REF,
           D.DOC_SEQUENCE,
           D.EXTERNAL_POST,
           D.RCRD_NO,
           0 G_CODE,
           0  WHG_CODE,
           0 TRMNL_NAME,
           NULL INSTALL_TYPE,
           NULL     MOV_DOC_PY,
           NULL       FROM_CC_CODE,
           NULL     F_BRN_NO,
           D.DOC_BRN_NO,
           D.CASHIER_NO,
           D.AUDIT_REF,
           D.AUDIT_REF_DESC,
           D.AUDIT_REF_U_ID,
           D.AUDIT_REF_DATE,
           D.AD_U_ID,
           D.AD_DATE,
           D.UP_U_ID,
           D.UP_DATE,
           D.UP_CNT,
           0 CNFRM,
           0 CNFRM_DESC,
           0 CNFRM_U_ID,
           0 CNFRM_DATE,
           D.POST_U_ID,
           D.POST_DATE,
           D.UNPOST_U_ID,
           D.UNPOST_DATE,
           D.CMP_NO,
           D.BRN_NO,
           D.BRN_YEAR,
           D.BRN_USR,
           D.AC_CODE_DTL,
           D.AC_DTL_TYP,
           NULL    INSRNCE_CMP_NO,
           NULL            INSRNCE_BNF_NO,
           NULL          INSRNCE_CARD_NO,
           NULL         INSRNCE_CARD_NO_FMLY,
           NULL           INSRNCE_RLTN_TYP,
           NULL         CR_CARD_TYPE,
           D.DOC_SEQUENCE_REF,
           NULL           RCRD_NO_REF,
           D.CRD_CARD_NO,
           NULL        CRD_CARD_NO_REF,
           NULL        CR_CARD_DSC,
           D.AC_CODE_DTL_SUB,
           0     DOC_NO_MNL,
           0    DOC_DATE_MNL
    FROM   VOUCHERS M,VOUCHER_DETAIL D
   WHERE    M.V_SER=D.V_SER  
    AND M.VOUCHER_PAY_TYPE = 2
    AND NVL (D.CHEQUE_VALUED, 0) IN (0, 3)
    AND M.Cheq_Type <> 0
    AND NVL (M.TRANSFER, 0) = 0          
    AND D.a_code NOT IN (SELECT a_code FROM cash_in_hand)           
 UNION ALL
    SELECT  1 BNK_UONION,
           CASE WHEN D.VOUCHER_TYPE=1 THEN 2 ELSE 3 END      DOC_TYPE,
           D.VOUCHER_PAY_TYPE            JV_TYPE,
           D.VOUCHER_NO          DOC_NO,
           D.V_SER               DOC_SER,
           0              W_CODE,
           D.CC_CODE,
           D.PJ_NO,
           D.ACTV_NO,
           D.CASH_NO,
           ias_cshbnk_pkg.Get_A_code (2, M.cash_no) A_CODE,
           D.A_CY,
           CASE WHEN D.AC_AMT > 0 THEN AC_AMT ELSE NULL END       DR_AMT,
           CASE WHEN D.AC_AMT < 0 THEN AC_AMT * -1 ELSE NULL END CR_AMT,
           CASE WHEN D.AC_AMTF > 0 THEN AC_AMTF ELSE NULL END   DR_AMT_F,
           CASE WHEN D.AC_AMTF < 0 THEN AC_AMTF * -1 ELSE NULL END  CR_AMT_F,
           D.AC_AMT        AMT,
           D.AC_AMTF       AMT_F,
           M.VOUCHER_DATE    DOC_DATE,
           D.VALUE_DATE        DOC_DUE_DATE,
           D.AC_DESC          DOC_DESC,
           1         MNTH,
           D.BRN_YEAR    D_YEAR,
           D.REF_NO,
           D.cheque_post             DOC_POST,
           0      DOC_CLOSE,
           0      INV_CLOSE,
           0     CB_BEFORE,
           0     CB_AFTER,
           D.LC_NO,
           NULL   C_V_CODE,
           NULL   V_C_CODE,
           NULL   COL_NO,
           D.REP_CODE,
           NULL  R_CODE,
           0      HRCHY_NO,
           D.WO_NO,
           D.WO_SER,
           D.CHEQUE_NO,
           D.NOTE_NO,
           D.CHEQUE_VALUED,
           D.DOC_TYPE_REF,
           D.DOC_JV_TYPE_REF,
           D.DOC_NO_REF,
           D.DOC_SER_REF,
           D.DOC_SEQUENCE,
           D.EXTERNAL_POST,
           D.RCRD_NO,
           0 G_CODE,
           0  WHG_CODE,
           0 TRMNL_NAME,
           NULL INSTALL_TYPE,
           NULL     MOV_DOC_PY,
           NULL       FROM_CC_CODE,
           NULL     F_BRN_NO,
           D.DOC_BRN_NO,
           D.CASHIER_NO,
           D.AUDIT_REF,
           D.AUDIT_REF_DESC,
           D.AUDIT_REF_U_ID,
           D.AUDIT_REF_DATE,
           D.AD_U_ID,
           D.AD_DATE,
           D.UP_U_ID,
           D.UP_DATE,
           D.UP_CNT,
           0 CNFRM,
           0 CNFRM_DESC,
           0 CNFRM_U_ID,
           0 CNFRM_DATE,
           D.POST_U_ID,
           D.POST_DATE,
           D.UNPOST_U_ID,
           D.UNPOST_DATE,
           D.CMP_NO,
           D.BRN_NO,
           D.BRN_YEAR,
           D.BRN_USR,
           TO_CHAR(D.CASH_NO) AC_CODE_DTL,
            2 AC_DTL_TYP,
           NULL    INSRNCE_CMP_NO,
           NULL            INSRNCE_BNF_NO,
           NULL          INSRNCE_CARD_NO,
           NULL         INSRNCE_CARD_NO_FMLY,
           NULL           INSRNCE_RLTN_TYP,
           NULL         CR_CARD_TYPE,
           D.DOC_SEQUENCE_REF,
           NULL           RCRD_NO_REF,
           D.CRD_CARD_NO,
           NULL        CRD_CARD_NO_REF,
           NULL        CR_CARD_DSC,
           D.AC_CODE_DTL_SUB,
           0     DOC_NO_MNL,
           0    DOC_DATE_MNL
    FROM   VOUCHERS M,VOUCHER_DETAIL D
   WHERE    M.V_SER=D.V_SER 
    AND  M.VOUCHER_TYPE IN(2) 
    AND M.VOUCHER_PAY_TYPE = 2
    AND NVL (D.CHEQUE_VALUED, 0) IN (0, 3)
    AND M.Cheq_Type <> 0
    AND NVL (M.TRANSFER, 0) = 0          
    AND D.a_code NOT IN (SELECT a_code FROM cash_in_hand)  
;

--------------------------------------------------------------
-- View 152: S_V_APPRVD_USR
--------------------------------------------------------------
CREATE VIEW "S_V_APPRVD_USR" ("U_ID","LVL_NO","DOC_TYP","TYP_NO","T_AMT","F_AMT","PRV_FLG","AD_U_ID","AD_DATE") AS 
SELECT  M.U_ID 
																							 ,M.LVL_NO
																							 ,M.DOC_TYP
																							 ,D.TYP_NO 
																							 ,NVL(D.T_AMT,M.T_AMT) T_AMT
																							 ,NVL(D.F_AMT,M.F_AMT) F_AMT
																							 ,M.PRV_FLG
																							 ,M.AD_U_ID
																							 ,M.AD_DATE
																							FROM S_APPRVD_USR M, S_APPRVD_USR_DTL D
																							WHERE D.U_ID(+) = M.U_ID
																							  AND D.LVL_NO(+) = M.LVL_NO 
																							  AND D.DOC_TYP(+) = M.DOC_TYP
;

--------------------------------------------------------------
-- View 153: GNR_V_SUB_DOC_TYP
--------------------------------------------------------------
CREATE VIEW "GNR_V_SUB_DOC_TYP" ("DOC_TYP","TYP_NO","TYP_L_NM","TYP_F_NM") AS 
SELECT "DOC_TYP",
             "TYP_NO",
             "TYP_L_NM",
             "TYP_F_NM"
        FROM (SELECT rq_doc_type                  doc_typ,
                     rq_type                      typ_no,
                     NVL (rq_name, rq_e_name)     typ_l_nm,
                     NVL (rq_e_name, rq_name)     typ_f_nm
                FROM ias_glrq_types
             UNION ALL
               SELECT 1                              doc_typ,
                     Jv_Type                        typ_no,
                     NVL (Jv_Name, Jv_E_Name)     typ_l_nm,
                     NVL (Jv_E_Name, Jv_Name)     typ_f_nm
                FROM Jv_Types
             UNION ALL
               SELECT decode(v_type,1,2,2,3)         doc_typ,
                     v_type_no                        typ_no,
                     NVL (v_type_a_name, v_type_e_name)     typ_l_nm,
                     NVL (v_type_e_name, v_type_a_name)     typ_f_nm
               FROM Ias_Vouchr_Type
             UNION ALL
              SELECT decode(NOTE_TYPE,1,21,2,22)         doc_typ,
                     NOTE_TYPE_NO                        typ_no,
                     NVL (NOTE_A_NAME, NOTE_E_NAME)     typ_l_nm,
                     NVL (NOTE_E_NAME, NOTE_A_NAME)     typ_f_nm
                FROM IAS_NOTE_TYPES
              UNION ALL
                SELECT 53                             doc_typ,
                     so_type                        typ_no,
                     NVL (so_a_name, so_e_name)     typ_l_nm,
                     NVL (so_e_name, so_a_name)     typ_f_nm
                FROM ias_sorder_types
              UNION ALL
                SELECT 52                             doc_typ,
                     qt_type                        typ_no,
                     NVL (qt_a_name, qt_e_name)     typ_l_nm,
                     NVL (qt_e_name, qt_a_name)     typ_f_nm
                FROM ias_quot_types) x 
           ORDER BY x.doc_typ, x.typ_no
;

--------------------------------------------------------------
-- View 154: GLS_V_USR_VCHR_TYP_PRV
--------------------------------------------------------------
CREATE VIEW "GLS_V_USR_VCHR_TYP_PRV" ("U_ID","USR_NAME","V_TYP","V_TYP_NM","V_TYP_NO"
,"V_TYP_NO_NM","ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC")
 AS 
SELECT a.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_nm,
          a.V_Typ,
          YS_GEN_PKG.GET_FLG_NM ('CASH_TYPE', A.V_Typ, IAS_PRMTR_PKG.GETPVAL(P_PRMTR =>'LANG_NO')) TYP_NM,
          c.V_type_NO,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.V_TYPE_A_NAME, c.V_TYPE_E_NAME),
                  NVL (c.V_TYPE_E_NAME, c.V_TYPE_A_NAME)
                 ) V_TYP_NO_NM,          
          a.add_flag,
          a.view_flag,
          a.ad_u_id,
          a.ad_date,
          a.up_u_id,
          a.up_date,
          1 rec_src
   FROM   GLS_VCHR_TYP_PRV a,
          user_r b,
          IAS_VOUCHR_TYPE c
   WHERE  a.u_id = b.u_id
   AND    a.V_typ = c.V_type
   AND    a.V_typ_NO = c.V_TYPE_NO
   AND    (   add_flag = 1
           OR view_flag = 1)
   UNION
   SELECT b.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_nm,
          C.V_TYPE,
          YS_GEN_PKG.GET_FLG_NM ('CASH_TYPE', C.V_TYPE, IAS_PRMTR_PKG.GETPVAL(P_PRMTR =>'LANG_NO')) TYP_NM,
          c.V_type_NO,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.V_TYPE_A_NAME, c.V_TYPE_E_NAME),
                  NVL (c.V_TYPE_E_NAME, c.V_TYPE_A_NAME)
                 ) V_TYP_NO_NM, 
          0 add_flag,
          0 view_flag,
          NULL ad_u_id,
          NULL ad_date,
          NULL up_u_id,
          NULL up_date,
          0 rec_src
   FROM   user_r b,
          IAS_VOUCHR_TYPE c
   WHERE  NOT EXISTS (
             SELECT 1
             FROM   GLS_VCHR_TYP_PRV
             WHERE  V_typ = c.V_type
             AND    V_typ_NO = c.V_type_NO
             AND    u_id = b.u_id
             AND    ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 155: GLS_V_CST_VND_CCPJACTV_BLNC
--------------------------------------------------------------
CREATE VIEW "GLS_V_CST_VND_CCPJACTV_BLNC" ("C_A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB"
,"AC_DTL_TYP","CC_CODE","PJ_NO","ACTV_NO","A_CY","AMT","AMT_F") AS 
SELECT  m.C_A_CODE,d.ac_code_dtl,d.ac_code_dtl_sub,d.ac_dtl_typ,D.CC_CODE,D.PJ_NO
,D.ACTV_NO , d.a_cy,NVL (SUM (d.amt), 0) amt, NVL (SUM (d.amt_f), 0) amt_f
                                From CUSTOMER M, Ias_Post_Dtl D
                                 WHERE (D.A_CODE = M.C_A_CODE  AND D.ac_code_dtl = M.C_CODE AND D.AC_DTL_TYP=3)
                                OR (NVL(M.C_VENDOR,'-1')=NVL(D.ac_code_dtl,'0') AND D.AC_DTL_TYP=4)
                                GROUP BY M.C_A_CODE,d.ac_code_dtl,d.ac_code_dtl_sub
,d.ac_dtl_typ,D.CC_CODE,D.PJ_NO,D.ACTV_NO , d.a_cy
;

--------------------------------------------------------------
-- View 156: GLS_V_AC_DTL_CCPJACTV_BLNC
--------------------------------------------------------------
CREATE VIEW "GLS_V_AC_DTL_CCPJACTV_BLNC" ("A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB"
,"AC_DTL_TYP","CC_CODE","PJ_NO","ACTV_NO","A_CY","AMT","AMT_F") AS 
SELECT m.a_code,d.ac_code_dtl,D.AC_CODE_DTL_SUB,d.ac_dtl_typ,D.CC_CODE,D.PJ_NO,D.ACTV_NO ,
                    d.a_cy,NVL (SUM (d.amt), 0) amt, NVL (SUM (d.amt_f), 0) amt_f
              From account M, Ias_Post_Dtl D
               where M.a_code  = D.a_code
               group by m.a_code,d.ac_code_dtl,D.AC_CODE_DTL_SUB,d.ac_dtl_typ ,D.CC_CODE,D.PJ_NO,D.ACTV_NO ,d.a_cy
               order by ac_dtl_typ,a_code,ac_code_dtl
;

--------------------------------------------------------------
-- View 157: IAS_V_BDGT_BLNC_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_BDGT_BLNC_DTL" ("BDGT_TYPE","BDGT_PRD_TYPE","DOC_NO","DOC_SER"
,"A_CODE","AC_CODE_DTL","AC_DTL_TYP","A_CY","CC_CODE","PJ_NO","ACTV_NO","AC_RATE"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AMT_L1","AMT_L2","AMT_L3","AMT_L4","AMT_L5"
,"AMT_L6","AMT_L7","AMT_L8","AMT_L9","AMT_L10","AMT_L11","AMT_L12") AS 
SELECT BDGT_TYPE,
             BDGT_PRD_TYPE,
             DOC_NO,
             DOC_SER,
             A_CODE,
             AC_CODE_DTL,
             AC_DTL_TYP,
             A_CY,
             CC_CODE,
             PJ_NO,
             ACTV_NO,
             AC_RATE,
             CMP_NO,
             BRN_NO,
             BRN_YEAR,
             BRN_USR,
             SUM(DECODE(PRD_NO, 1, AMT_L, 0)) AMT_L1,
             SUM(DECODE(PRD_NO, 2, AMT_L, 0)) AMT_L2,
             SUM(DECODE(PRD_NO, 3, AMT_L, 0)) AMT_L3,
             SUM(DECODE(PRD_NO, 4, AMT_L, 0)) AMT_L4,
             SUM(DECODE(PRD_NO, 5, AMT_L, 0)) AMT_L5,
             SUM(DECODE(PRD_NO, 6, AMT_L, 0)) AMT_L6,
             SUM(DECODE(PRD_NO, 7, AMT_L, 0)) AMT_L7,
             SUM(DECODE(PRD_NO, 8, AMT_L, 0)) AMT_L8,
             SUM(DECODE(PRD_NO, 9, AMT_L, 0)) AMT_L9,
             SUM(DECODE(PRD_NO, 10, AMT_L, 0)) AMT_L10,
             SUM(DECODE(PRD_NO, 11, AMT_L, 0)) AMT_L11,
             SUM(DECODE(PRD_NO, 12, AMT_L, 0)) AMT_L12
        FROM IAS_BDGT_BLNC_DTL
    GROUP BY BDGT_TYPE, BDGT_PRD_TYPE,
             DOC_NO, DOC_SER,
             A_CODE, AC_CODE_DTL,
             AC_DTL_TYP, A_CY,
             CC_CODE, PJ_NO,
             ACTV_NO, AC_RATE,
             CMP_NO, BRN_NO,
             BRN_YEAR, 
             BRN_USR
;

--------------------------------------------------------------
-- View 158: S_V_NY_YR_RE_MOV_DATA_MST
--------------------------------------------------------------
CREATE VIEW "S_V_NY_YR_RE_MOV_DATA_MST" ("ORDER_NO","FORM_NO","IAS_USER","TABLE_NM"
,"BSC_WHR","ROW_CNT","INACTIVE_FLG","INACTIVE_CLMN_NM","INACTIVE_LST_NM"
,"INACTIVE_LST_SLCT","RE_MOV_FLG","RE_MOV_U_ID","RE_MOV_DATE","RE_MOV_CNT","AD_U_ID"
,"AD_DATE","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "ORDER_NO","FORM_NO","IAS_USER","TABLE_NM","BSC_WHR","ROW_CNT","INACTIVE_FLG"
,"INACTIVE_CLMN_NM","INACTIVE_LST_NM","INACTIVE_LST_SLCT","RE_MOV_FLG","RE_MOV_U_ID"
,"RE_MOV_DATE","RE_MOV_CNT","AD_U_ID","AD_DATE","AD_TRMNL_NM","UP_TRMNL_NM" From
 S_YR_RE_MOV_DATA_MST
;

--------------------------------------------------------------
-- View 159: IAS_V_NY_INV_RQ_ASSMBL_DTL
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_INV_RQ_ASSMBL_DTL" ("TYP_NO","DOC_NO","DOC_SER","I_CODE","I_QTY"
,"ITM_UNT","P_SIZE","P_QTY","W_CODE","RCRD_NO","BARCODE","USE_ATTCH","REC_ATTCH"
,"I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","ITEM_DESC","EXTERNAL_POST","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR","DOC_SEQUENCE","EXPIRE_DATE","BATCH_NO") AS 
SELECT q.typ_No, q.doc_no, q.doc_ser, q.i_code,
       mov_data.i_qty, q.itm_unt, q.p_size,
       (mov_data.i_qty * q.p_size) p_qty, q.w_code, q.rcrd_no, q.barcode,
       q.use_attch, q.rec_attch, q.i_length, q.i_width, q.i_height,
       q.i_number, q.item_desc, q.external_post, q.cmp_no, q.brn_no,
       q.brn_year, q.brn_usr, q.DOC_SEQUENCE,q.Expire_Date, q.Batch_No
FROM   Inv_Rq_Assmbl_Dtl q,
       (SELECT   doc_ser, i_code, itm_unt, SUM (NVL (i_qty, 0)) i_qty
        FROM     (SELECT doc_ser, i_code, itm_unt,
                         NVL (i_qty, 0) i_qty
                  FROM   Inv_Rq_Assmbl_Dtl
                  UNION ALL
                  SELECT   doc_ser_ref doc_ser, kit_item_no  i_code, itm_unt,
                           SUM (NVL (i_qty, 0)) * -1 i_qty
                  FROM     ASSEMBLE_KIT_ITEMS_DET 
                WHERE    doc_type_ref = 94
                  AND      doc_ser_ref IS NOT NULL  
                  GROUP BY doc_ser_ref,
                           kit_item_no,
                           itm_unt
                        )
        GROUP BY doc_ser,
                 i_code,
                 itm_unt
        HAVING   SUM (NVL (i_qty, 0)) > 0) mov_data
WHERE  q.doc_ser = mov_data.doc_ser
AND    q.i_code = mov_data.i_code
AND    q.itm_unt = mov_data.itm_unt
AND    NVL (mov_data.i_qty, 0) >= 0
;

--------------------------------------------------------------
-- View 160: S_V_PRD_BRN_UNCLS
--------------------------------------------------------------
CREATE VIEW "S_V_PRD_BRN_UNCLS" ("BRN_NO","PRD_NO","F_DATE","T_DATE") AS 
SELECT Brn_No, Prd_No, F_Date, T_Date
																	                         From S_Prd_Brn_Cls M
																	                        Where NVL(Prd_Cls,0) = 0 
																	                          And Prd_No =(Select Min(Prd_No) From S_Prd_Brn_Cls D
																	                                          Where NVL(Prd_Cls,0) = 0
																	                                            And D.Brn_No = M.Brn_No
																	                                            AND D.YR_NO = (Select Min(Yr_No) From S_Prd_Brn_Cls DD
																	                                                                            Where DD.Brn_No = M.Brn_No 
																	                                                                              And Nvl(DD.Prd_Cls,0) = 0 ))
;

--------------------------------------------------------------
-- View 161: INV_V_USR_PRV_ASSMBL_TYP
--------------------------------------------------------------
CREATE VIEW "INV_V_USR_PRV_ASSMBL_TYP" ("U_ID","USR_NAME","TYP_NO","TYP_NM","ADD_FLG"
,"VIEW_FLG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.TYP_NO,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.TYP_L_NM,
 C.TYP_F_NM),Nvl (C.TYP_F_NM, C.TYP_L_NM)) Typ_Nm,
          A.Add_Flg,
          A.View_Flg,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From INV_PRV_ASSMBL_TYP A, User_R B,INV_ASSMBL_TYP C
    Where     A.U_Id = B.U_Id
          And A.TYP_NO = C.TYP_NO
          And (Add_Flg = 1 Or View_Flg = 1)
   Union
   Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          C.TYP_NO,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.TYP_L_NM,
 C.TYP_F_NM),Nvl (C.TYP_F_NM, C.TYP_L_NM)) Typ_Nm,
          0 Add_Flg,
          0 View_Flg,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From User_R B, INV_ASSMBL_TYP C
    Where Not Exists
             (Select 1
                From INV_PRV_ASSMBL_TYP
               Where TYP_NO = C.TYP_NO And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 162: S_V_MSG_MOBILE_AUTO
--------------------------------------------------------------
CREATE VIEW "S_V_MSG_MOBILE_AUTO" ("LNG_NO","MSG_MTHD_SEND","SR_NO","SR_SRL","MSG_TYP"
,"MSG_TXT","MSG_DATE","MOBILE_NO","DOC_TYP","DOC_SRL","PROCSSD_SMS_FLG","AD_DATE"
,"CMP_NO","BRN_NO","BRN_USR","BRN_YEAR","PROCSSD_EMAIL_FLG","TO_EMAIL","EMAIL_SUBJECT"
,"SEND_SMS_DATE","SEND_EMAIL_DATE","ATTCH_EMAIL_FILE","ATTCH_NAME","PROCSSD_TLG_FLG"
,"SEND_TLG_DATE","AD_TRMNL_NM","UP_TRMNL_NM","SEND_DATE","PROCSSD_WHATSAPP_FLG"
,"SEND_WHATSAPP_DATE","HSTRY_FLG") AS 
SELECT 
																														LNG_NO, MSG_MTHD_SEND, SR_NO, 
																														   SR_SRL, MSG_TYP, MSG_TXT, 
																														   MSG_DATE, MOBILE_NO, DOC_TYP, 
																														   DOC_SRL, PROCSSD_SMS_FLG, AD_DATE, 
																														   CMP_NO, BRN_NO, BRN_USR, 
																														   BRN_YEAR, PROCSSD_EMAIL_FLG, TO_EMAIL, 
																														   EMAIL_SUBJECT, SEND_SMS_DATE, SEND_EMAIL_DATE, 
																														   ATTCH_EMAIL_FILE, ATTCH_NAME, PROCSSD_TLG_FLG, 
																														   SEND_TLG_DATE, AD_TRMNL_NM, UP_TRMNL_NM, 
																														   SEND_DATE, PROCSSD_WHATSAPP_FLG, SEND_WHATSAPP_DATE, 0 HSTRY_FLG
																														FROM IAS_SYS.S_MSG_MOBILE_AUTO
																														UNION 
																														SELECT 
																														LNG_NO, MSG_MTHD_SEND, SR_NO, 
																														   SR_SRL, MSG_TYP, MSG_TXT, 
																														   MSG_DATE, MOBILE_NO, DOC_TYP, 
																														   DOC_SRL, PROCSSD_SMS_FLG, AD_DATE, 
																														   CMP_NO, BRN_NO, BRN_USR, 
																														   BRN_YEAR, PROCSSD_EMAIL_FLG, TO_EMAIL, 
																														   EMAIL_SUBJECT, SEND_SMS_DATE, SEND_EMAIL_DATE, 
																														   ATTCH_EMAIL_FILE, ATTCH_NAME, PROCSSD_TLG_FLG, 
																														   SEND_TLG_DATE, AD_TRMNL_NM, UP_TRMNL_NM, 
																														   SEND_DATE, PROCSSD_WHATSAPP_FLG, SEND_WHATSAPP_DATE, 1 HSTRY_FLG
																														FROM IAS_SYS.S_MSG_MOBILE_AUTO_HSTRY
;

--------------------------------------------------------------
-- View 163: INV_V_ITM_BIN_MOVMNT
--------------------------------------------------------------
CREATE VIEW "INV_V_ITM_BIN_MOVMNT" ("I_CODE","W_CODE","B_CODE","I_QTY") AS 
SELECT   D.I_code
           ,M.W_code
           ,M.B_code
           ,Sum(Nvl(D.P_qty, 0) * Nvl(D.In_out, 0)) I_qty
   From     Bin_details M
           ,Inv_itm_bin_movmnt D
   Where    M.B_code = D.B_code And M.W_code = D.W_code
   Group By D.I_code
           ,M.W_code
           ,M.B_code
   Having   Sum(Nvl(D.P_qty, 0) * Nvl(D.In_out, 0)) > 0
;

--------------------------------------------------------------
-- View 164: INV_V_DOC_TYPE
--------------------------------------------------------------
CREATE VIEW "INV_V_DOC_TYPE" ("LANG_NO","DOC_TYPE","DOC_TYPE_NAME","DOC_APPRVD_FLG"
,"TB_MST","TB_DTL","FLD_NO","FLD_SER","FLD_DATE","LOV_NM","FLD_DESC","INV_DOC_TYPE"
,"DOC_INV_FLG","FLD_JV_TYPE","IN_OUT") AS 
SELECT   Lang_no
           ,Doc_type
           ,Doc_type_name
           ,Doc_apprvd_flg
           ,Tb_mst
           ,Tb_dtl
           ,Fld_no
           ,Fld_ser
           ,Fld_date
           ,Lov_nm
           ,Fld_desc
           ,Inv_doc_type
           ,Doc_inv_flg
           ,Fld_jv_type
           ,In_out
   From     (Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'ITEM_MOVEMENT' Tb_mst
                   ,'ITEM_MOVEMENT' Tb_dtl
                   ,'DOC_NO' Fld_no
                   ,'DOC_SER' Fld_ser
                   ,'DOC_DATE' Fld_date
                   ,' ' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,0 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'BILL_DOC_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 0
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_BILL_MST' Tb_mst
                   ,'IAS_BILL_DTL' Tb_dtl
                   ,'BILL_NO' Fld_no
                   ,'BILL_SER' Fld_ser
                   ,'BILL_DATE' Fld_date
                   ,'LOV_SI' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,1 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'BILL_DOC_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 4
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_RT_BILL_MST' Tb_mst
                   ,'IAS_RT_BILL_DTL' Tb_dtl
                   ,'RT_BILL_NO' Fld_no
                   ,'RT_BILL_SER' Fld_ser
                   ,'RT_BILL_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,3 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'RT_BILL_DOC_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 5
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'GR_NOTE' Tb_mst
                   ,'GR_DETAIL' Tb_dtl
                   ,'GR_NO' Fld_no
                   ,'G_SER' Fld_ser
                   ,'GR_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,5 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'INCOM_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 8
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_OUTGOING_MST' Tb_mst
                   ,'IAS_OUTGOING_DTL' Tb_dtl
                   ,'OUT_NO' Fld_no
                   ,'OUT_SER' Fld_ser
                   ,'OUT_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,6 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'OUT_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 9
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_WHTRNS_MST' Tb_mst
                   ,'IAS_WHTRNS_DTL' Tb_dtl
                   ,'TR_NO' Fld_no
                   ,'TR_SER' Fld_ser
                   ,'TR_DATE' Fld_date
                   ,'' Lov_nm
                   ,'TR_DESC' Fld_desc
                   ,7 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'TR_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 11
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_WHTRNS_MST' Tb_mst
                   ,'IAS_WHTRNS_DTL' Tb_dtl
                   ,'TR_NO' Fld_no
                   ,'TR_SER' Fld_ser
                   ,'TR_DATE' Fld_date
                   ,'' Lov_nm
                   ,'TR_DESC' Fld_desc
                   ,8 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'TR_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 12
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'MASTER_OUT_BILLS' Tb_mst
                   ,'DETAIL_OUT_BILLS' Tb_dtl
                   ,'OUT_NO' Fld_no
                   ,'OUT_SER' Fld_ser
                   ,'OUT_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,1 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'BILL_DOC_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 13
             And    Ys_gen_pkg.Get_fld_value('IAS_PARA_AR', 'USE_OUT_BILLS') = 1
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_RET_BILL_MST' Tb_mst
                   ,'IAS_RET_BILL_DTL' Tb_dtl
                   ,'RET_NO' Fld_no
                   ,'RET_SER' Fld_ser
                   ,'RET_DATE' Fld_date
                   ,'' Lov_nm
                   ,'DOC_DESC' Fld_desc
                   ,3 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'RT_BILL_DOC_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 14
             And    Ys_gen_pkg.Get_fld_value('IAS_PARA_AR', 'USE_OUT_BILLS') = 1
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'SALES_ORDER' Tb_mst
                   ,'ORDER_DETAIL' Tb_dtl
                   ,'ORDER_NO' Fld_no
                   ,'ORDER_SER' Fld_ser
                   ,'ORDER_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'SO_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 53
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_GR_INCOMING_MST' Tb_mst
                   ,'IAS_GR_INCOMING_DTL' Tb_dtl
                   ,'INC_NO' Fld_no
                   ,'INC_SER' Fld_ser
                   ,'INC_DATE' Fld_date
                   ,'' Lov_nm
                   ,'INC_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'INCOM_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 32
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'GR_NOTE' Tb_mst
                   ,'GR_DETAIL' Tb_dtl
                   ,'GR_NO' Fld_no
                   ,'G_SER' Fld_ser
                   ,'GR_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,2 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'PI_DOC_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 44
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_PI_BILL_MST' Tb_mst
                   ,'IAS_PI_BILL_DTL' Tb_dtl
                   ,'BILL_NO' Fld_no
                   ,'BILL_SER' Fld_ser
                   ,'BILL_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,2 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'BILL_DOC_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 6
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_OUT_REQUEST_MST' Tb_mst
                   ,'IAS_OUT_REQUEST_DTL' Tb_dtl
                   ,'OUT_REQ_NO' Fld_no
                   ,'OUT_REQ_SER' Fld_ser
                   ,'OUT_REQ_DATE' Fld_date
                   ,'' Lov_nm
                   ,'DOC_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'OUT_REQ_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 31
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_PR_BILL_MST' Tb_mst
                   ,'IAS_PR_BILL_DTL' Tb_dtl
                   ,'RT_BILL_NO' Fld_no
                   ,'RT_BILL_SER' Fld_ser
                   ,'RT_BILL_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,4 Inv_doc_type
                   ,1 Doc_inv_flg
                   ,'RT_BILL_DOC_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 7
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'INV_RQ_ASSMBL_MST' Tb_mst
                   ,'INV_RQ_ASSMBL_DTL' Tb_dtl
                   ,'DOC_NO' Fld_no
                   ,'DOC_SER' Fld_ser
                   ,'DOC_DATE' Fld_date
                   ,'' Lov_nm
                   ,'DOC_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'TYP_NO' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 94
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'ASSEMBLE_KIT_ITEMS' Tb_mst
                   ,'ASSEMBLE_KIT_ITEMS_DET' Tb_dtl
                   ,'DOC_NO' Fld_no
                   ,'DOC_SER' Fld_ser
                   ,'DOC_DATE' Fld_date
                   ,'' Lov_nm
                   ,'DOC_DESC' Fld_desc
                   ,11 Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'TYP_NO' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 17
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_PR_REQ_BILL_MST' Tb_mst
                   ,'IAS_PR_REQ_BILL_DTL' Tb_dtl
                   ,'RT_REQ_NO' Fld_no
                   ,'RT_REQ_SER' Fld_ser
                   ,'RT_REQ_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'RT_REQ_DOC_TYPE' Fld_jv_type
                   ,-1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 49
             And    Ys_gen_pkg.Get_fld_value('IAS_PARA_AP', 'USE_RT_BILL_RQST') <> 0
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'IAS_RT_BILL_MST_RQ' Tb_mst
                   ,'IAS_RT_BILL_DTL_RQ' Tb_dtl
                   ,'RT_BILL_NO' Fld_no
                   ,'RT_BILL_SER' Fld_ser
                   ,'RT_BILL_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'RT_BILL_DOC_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 136
              And    Ys_gen_pkg.Get_fld_value('IAS_PARA_AR', 'AR_USE_RT_BILL_RQ_TYP') <> 0
             Union All
             Select Lang_no
                   ,Doc_type
                   ,Doc_type_name
                   ,Doc_apprvd_flg
                   ,'GRN_MASTER' Tb_mst
                   ,'GRN_DETAIL' Tb_dtl
                   ,'GR_NO' Fld_no
                   ,'G_SER' Fld_ser
                   ,'GR_DATE' Fld_date
                   ,'' Lov_nm
                   ,'A_DESC' Fld_desc
                   ,Null Inv_doc_type
                   ,0 Doc_inv_flg
                   ,'GRN_TYPE' Fld_jv_type
                   ,1 In_out
             From   Ias_sys.Ias_docjv_type_systems_mst
             Where  Doc_type = 43
              And    Ys_gen_pkg.Get_fld_value('IAS_PARA_AP', 'USE_LOC_GRN') = 1)
   Order By Doc_Type 
;

--------------------------------------------------------------
-- View 165: V_GNR_RQ_TAX_ITM_MOVMNT
--------------------------------------------------------------
CREATE VIEW "V_GNR_RQ_TAX_ITM_MOVMNT" ("DOC_TYPE","BILL_DOC_TYPE","DOC_JV_TYPE","DOC_NO"
,"DOC_SER","DOC_DATE","TAX_NO","CLC_TYP_NO","AGNCY_NO","I_CODE","ITM_UNT","P_SIZE"
,"I_PRICE","DISC_AMT","A_CODE","A_CY","AC_RATE","TAX_PRCNT","TAX_AMT","W_CODE","CC_CODE"
,"PJ_NO","ACTV_NO","RCRD_NO","DOC_SEQUENCE","EXTERNAL_POST","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","TAX_AMT_L","I_QTY","FREE_QTY","REF_NO") AS 
SELECT 52, m.quot_doc_type, m.qt_type, m.quot_no doc_no,
          m.quot_ser doc_ser, m.quot_date doc_date, td.tax_no,
          m.clc_typ_no_tax, td.agncy_no, d.i_code, d.itm_unt, d.p_size,
          d.i_price, d.dis_amt, td.ac_code_ar, m.quot_cur a_cy,
          ias_gen_pkg.get_cur_rate (m.quot_cur) ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, m.cc_code cc_code, m.pj_no pj_no,
          m.actv_no actv_no, rcrd_no, d.doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr,
          NVL (d.vat_amt, 0)
          * ias_gen_pkg.get_cur_rate (m.quot_cur) tax_amt_l, d.i_qty,
          d.free_qty, m.ref_no
     FROM quotation m,
          quotation_detail d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
    WHERE m.quot_ser = d.quot_ser
      AND brn.clc_typ_no = tc.clc_typ_no
      AND brn.brn_no = m.brn_no
      AND m.clc_typ_no_tax = tc.clc_typ_no
      AND tc.tax_no = td.tax_no
      AND NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 53, m.bill_doc_type, m.so_type, m.order_no doc_no,
          m.order_ser doc_ser, m.order_date doc_date, td.tax_no,
          m.clc_typ_no_tax, td.agncy_no, d.i_code, d.itm_unt, d.p_size,
          d.i_price, d.dis_amt, td.ac_code_ar, m.order_cur a_cy,
          ias_gen_pkg.get_cur_rate (m.order_cur) ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, m.pj_no pj_no,
          m.actv_no actv_no, rcrd_no, d.doc_seq,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr,
            NVL (d.vat_amt, 0)
          * ias_gen_pkg.get_cur_rate (m.order_cur) tax_amt_l, d.i_qty,
          d.free_qty, m.ref_doc_no
     FROM sales_order m,
          order_detail d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
    WHERE m.order_ser = d.order_ser
      AND brn.clc_typ_no = tc.clc_typ_no
      AND brn.brn_no = m.brn_no
      AND m.clc_typ_no_tax = tc.clc_typ_no
      AND tc.tax_no = td.tax_no
      AND NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 42, NULL bill_doc_type, m.po_type, m.po_no doc_no, m.po_ser doc_ser,
          m.po_date doc_date, td.tax_no, m.clc_typ_no_tax, td.agncy_no,
          d.i_code, d.itm_unt, d.p_size, d.i_price, d.dis_amt, td.ac_code_ar,
          m.cur_code a_cy, ias_gen_pkg.get_cur_rate (m.cur_code) ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, rcrd_no, d.doc_sequence, 0 external_post,
          m.cmp_no, m.brn_no, m.brn_year, m.brn_usr,
          NVL (d.vat_amt, 0)
          * ias_gen_pkg.get_cur_rate (m.cur_code) tax_amt_l, d.i_qty,
          d.free_qty, m.ref_no
     FROM p_order m,
          p_order_detail d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
    WHERE m.po_ser = d.po_ser
      AND brn.clc_typ_no = tc.clc_typ_no
      AND brn.brn_no = m.brn_no
      AND m.clc_typ_no_tax = tc.clc_typ_no
      AND tc.tax_no = td.tax_no
      AND NVL (d.vat_amt, 0) > 0
;

--------------------------------------------------------------
-- View 166: V_GNR_TAX_ITM_MOVMNT
--------------------------------------------------------------
CREATE VIEW "V_GNR_TAX_ITM_MOVMNT" ("DOC_TYPE","BILL_DOC_TYPE","DOC_JV_TYPE","DOC_NO"
,"DOC_SER","DOC_DATE","TAX_NO","CLC_TYP_NO","AGNCY_NO","I_CODE","ITM_UNT","P_SIZE"
,"I_PRICE","STK_COST","STK_RATE","DISC_AMT","A_CODE","A_CY","AC_RATE","TAX_PRCNT"
,"TAX_AMT","W_CODE","CC_CODE","PJ_NO","ACTV_NO","RCRD_NO","DOC_SEQUENCE","EXTERNAL_POST"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","TAX_AMT_L","I_QTY","FREE_QTY","REF_NO") AS 
SELECT 4, m.bill_doc_type, m.si_type, m.bill_no doc_no, m.bill_ser doc_ser,
          m.bill_date doc_date, td.tax_no, m.clc_typ_no_tax, td.agncy_no,
          d.i_code, d.itm_unt, d.p_size, d.i_price, d.stk_cost, m.stock_rate,
          d.dis_amt, td.ac_code_ar, m.bill_currency a_cy, m.bill_rate ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, rcrd_no, d.doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.vat_amt, 0) * NVL (m.bill_rate, 0) tax_amt_l,
          d.i_qty, d.free_qty, m.ref_no
   FROM   ias_bill_mst m,
          ias_bill_dtl d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.bill_ser = d.bill_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 5, m.rt_bill_doc_type, m.sr_type, m.rt_bill_no doc_no,
          m.rt_bill_ser doc_ser, m.rt_bill_date doc_date, td.tax_no,
          m.clc_typ_no_tax, td.agncy_no, i_code, itm_unt, p_size, i_price,
          stk_cost, stock_rate, disc_amt, td.ac_code_ar,
          m.rt_bill_currency a_cy, m.rt_bill_rate ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, rcrd_no, d.doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.vat_amt, 0) * NVL (m.rt_bill_rate, 0) tax_amt_l,
          d.i_qty, d.free_qty, m.ref_no
   FROM   ias_rt_bill_mst m,
          ias_rt_bill_dtl d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.rt_bill_ser = d.rt_bill_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 6, m.bill_doc_type, m.bill_type_no, m.bill_no doc_no,
          m.bill_ser doc_ser, m.bill_date doc_date, td.tax_no,
          m.clc_typ_no_tax, td.agncy_no, d.i_code, d.itm_unt, d.p_size,
          d.i_price, stk_cost, stock_rate, d.dis_amt, td.ac_code_ap,
          m.bill_currency a_cy, m.bill_rate ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, rcrd_no, d.doc_sequence,
          m.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.vat_amt, 0) * NVL (m.bill_rate, 0) tax_amt_l,
          d.i_qty, d.free_qty, m.ref_no
   FROM   ias_pi_bill_mst m,
          ias_pi_bill_dtl d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.bill_ser = d.bill_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 7, m.rt_bill_doc_type, m.typ_no, m.rt_bill_no doc_no,
          m.rt_bill_ser doc_ser, m.rt_bill_date doc_date, td.tax_no,
          m.clc_typ_no_tax, td.agncy_no, d.i_code, d.itm_unt, d.p_size,
          d.i_price, stk_cost, stock_rate, d.dis_amt, td.ac_code_ap,
          m.rt_bill_currency a_cy, m.rt_bill_rate ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, d.rcrd_no, d.doc_sequence, 0, m.cmp_no, m.brn_no,
          m.brn_year, m.brn_usr,
          NVL (d.vat_amt, 0) * NVL (m.rt_bill_rate, 0) tax_amt_l, d.i_qty,
          d.free_qty, m.ref_no
   FROM   ias_pr_bill_mst m,
          ias_pr_bill_dtl d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.rt_bill_ser = d.rt_bill_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 8, NULL, m.incom_type, m.gr_no doc_no, m.g_ser doc_ser,
          m.gr_date doc_date, td.tax_no, m.clc_typ_no_tax, td.agncy_no,
          d.i_code, d.itm_unt, d.p_size, d.i_price, stk_cost, m.stk_rate,
          NULL dis_amt, ac_code_ap, m.a_cy a_cy, m.ac_rate ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, d.rcrd_no, d.doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.vat_amt, 0) * NVL (m.ac_rate, 0) tax_amt_l,
          d.i_qty, d.free_qty, m.ref_no
   FROM   gr_note m,
          gr_detail d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.g_ser = d.g_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.pi_type = 5
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 9, NULL, m.out_type, m.out_no doc_no, m.out_ser doc_ser,
          m.out_date doc_date, td.tax_no, m.clc_typ_no_tax, td.agncy_no,
          d.i_code, d.itm_unt, d.p_size, d.i_price, stk_cost, m.stock_rate,
          NULL dis_amt, ac_code_ar, m.a_cy a_cy, m.ac_rate ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, d.rcrd_no, d.doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.vat_amt, 0) * NVL (m.ac_rate, 0) tax_amt_l,
          d.i_qty, 0 free_qty, m.ref_no
   FROM   ias_outgoing_mst m,
          ias_outgoing_dtl d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.out_ser = d.out_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.vat_amt, 0) > 0
   UNION
   SELECT 15, m.bill_doc_type, NULL, m.DOC_NO doc_no, m.DOC_SER doc_ser,
          m.DOC_DATE doc_date, td.tax_no, m.clc_typ_no_tax, td.agncy_no,
          i_code, itm_unt, p_size, NULL, NULL, price_after_disc,
          add_dis_amt_dtl, a_code, m.a_cy a_cy,
          ias_gen_pkg.get_cur_rate (m.a_cy) ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.add_vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, rcrd_no, doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.add_vat_amt, 0) tax_amt_l, add_dis_qty,
          NULL free_qty, ref_no
   FROM   ias_bill_mst_add_disc m,
          ias_bill_dtl_add_disc d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.doc_ser = d.doc_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.add_vat_amt, 0) > 0
   UNION
   --# Add Disc Purchase
   SELECT 16, NULL bill_doc_type, NULL, m.DOC_NO doc_no, m.DOC_SER doc_ser,
          m.DOC_DATE doc_date, td.tax_no, m.clc_typ_no_tax, td.agncy_no,
          i_code, itm_unt, p_size, i_price, NULL, NULL, add_dis_amt_dtl,
          a_code, m.a_cy a_cy, ias_gen_pkg.get_cur_rate (m.a_cy) ac_rate,
          NVL (d.vat_per, 0) tax_prcnt, NVL (d.add_vat_amt, 0) tax_amt,
          d.w_code w_code, d.cc_code cc_code, d.pj_no pj_no,
          d.actv_no actv_no, rcrd_no, doc_sequence,
          d.external_post external_post, m.cmp_no, m.brn_no, m.brn_year,
          m.brn_usr, NVL (d.add_vat_amt, 0) tax_amt_l, add_dis_qty,
          NULL free_qty, ref_no
   FROM   ias_pi_bill_mst_add_disc m,
          ias_pi_bill_dtl_add_disc d,
          gnr_tax_typ_clc_dtl tc,
          gnr_tax_code_dtl td,
          gnr_tax_typ_clc_brn brn
   WHERE  m.doc_ser = d.doc_ser
   AND    brn.clc_typ_no = tc.clc_typ_no
   AND    brn.brn_no = m.brn_no
   AND    m.clc_typ_no_tax = tc.clc_typ_no
   AND    tc.tax_no = td.tax_no
   AND    NVL (d.add_vat_amt, 0) > 0 
;

--------------------------------------------------------------
-- View 167: INV_ITM_AVL_QTY_VW
--------------------------------------------------------------
CREATE VIEW "INV_ITM_AVL_QTY_VW" ("I_CODE","W_CODE","EXPIRE_DATE","BATCH_NO","AVL_QTY") AS 
SELECT   I_Code, W_Code, Expire_Date, Batch_No,
				             Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0) Avl_Qty
				   From     Item_Movement
				   Group By I_Code,
				            W_Code,
				            Expire_Date,
				            Batch_No
;

--------------------------------------------------------------
-- View 168: INV_ITM_PRICE_VW
--------------------------------------------------------------
CREATE VIEW "INV_ITM_PRICE_VW" ("U_ID","LEVL_NO","I_CODE","ITM_UNT","P_SIZE","A_CY"
,"CUR_RATE","DEFLT_LVL","I_PRICE","LOW_PRICE","HIGH_PRICE","W_CODE","BRN_NO"
,"PRICE_TYPE") AS 
SELECT Prv.U_Id, Lvl.Lev_No, Prc.I_Code, Prc.Itm_Unt, Prc.P_Size, A_Cy,
          Ex.Cur_Rate,
          Decode
               (Ias_Gen_Pkg.Get_Lev_Dflt_Prv (P_Userno => Prv.U_Id),
                Lvl.Lev_No, 1,
                0
               ) Deflt_Lvl,
          Prc.I_Price,
          Nvl
             (Ias_Gen_Pkg.Get_Low_Price
                 (P_Icode           => Prc.I_Code,
                  P_Itm_Unt         => Prc.Itm_Unt,
                  P_Acy             => Lvl.A_Cy,
                  P_Loc_Cur         => Ias_Gen_Pkg.Get_Local_Cur,
                  P_Stk_Cur         => Ias_Gen_Pkg.Get_Stk_Cur,
                  P_Ac_Rate         => Ex.Cur_Rate,
                  P_Stk_Rate        => Ias_Gen_Pkg.Get_Cur_Rate
                                             (P_Acy      => Ias_Gen_Pkg.Get_Stk_Cur),
                  P_Price_Type      => Pr.Price_Type,
                  P_W_Code          => Prc.W_Code,
                  P_Qty             => Null,
                  P_Brn_No          => Prc.Brn_No,
                  P_Usr_No          => Prv.U_Id
                 ),
              0
             ) Low_Price,
          Nvl
             (Ias_Gen_Pkg.Get_High_Price
                 (P_Icode           => Prc.I_Code,
                  P_Itm_Unt         => Prc.Itm_Unt,
                  P_Acy             => Lvl.A_Cy,
                  P_Loc_Cur         => Ias_Gen_Pkg.Get_Local_Cur,
                  P_Stk_Cur         => Ias_Gen_Pkg.Get_Stk_Cur,
                  P_Ac_Rate         => Ex.Cur_Rate,
                  P_Stk_Rate        => Ias_Gen_Pkg.Get_Cur_Rate
                                             (P_Acy      => Ias_Gen_Pkg.Get_Stk_Cur),
                  P_Price_Type      => Pr.Price_Type,
                  P_W_Code          => Prc.W_Code,
                  P_Qty             => Null,
                  P_Brn_No          => Prc.Brn_No,
                  P_Usr_No          => Prv.U_Id
                 ),
              0
             ) High_Price,
          Prc.W_Code, Prc.Brn_No, Nvl (Pr.Price_Type, 0) Price_Type
   From   Ias_Pricing_Levels Lvl,
          Ias_Item_Price Prc,
          Ias_Priv_Price Prv,
          Ex_Rate Ex,
          Ias_Para_Inv Pr
   Where  Nvl (Prv.Add_Flag, 0) = 1
   And    Prv.Lev_No = Lvl.Lev_No
   And    Prc.Lev_No = Lvl.Lev_No
   And    Lvl.A_Cy = Ex.Cur_Code
   And    Nvl (Lvl.Lev_No, 0) =
                  Nvl (Ias_Gen_Pkg.Get_Lev_Dflt_Prv (P_Userno => Prv.U_Id), 0)
;

--------------------------------------------------------------
-- View 169: IAS_ITM_ATTACH_AVLQTY_VW
--------------------------------------------------------------
CREATE VIEW "IAS_ITM_ATTACH_AVLQTY_VW" ("I_CODE","ITM_UNT","W_CODE","EXPIRE_DATE"
,"BATCH_NO","ATTCH_NO1","ATTCH_DESC_NO1","ATTCH_NO2","ATTCH_DESC_NO2","ATTCH_NO3"
,"ATTCH_DESC_NO3","ATTCH_NO4","ATTCH_DESC_NO4","ATTCH_NO5","ATTCH_DESC_NO5","FLEX_FIELD"
,"FLEX_NO","AVL_QTY") AS 
SELECT D.I_CODE,
            D.ITM_UNT,
            M.W_CODE,
            M.EXPIRE_DATE,
            M.BATCH_NO,
            M.ATTCH_NO1,
            M.ATTCH_DESC_NO1,
            M.ATTCH_NO2,
            M.ATTCH_DESC_NO2,
            M.ATTCH_NO3,
            M.ATTCH_DESC_NO3,
            M.ATTCH_NO4,
            M.ATTCH_DESC_NO4,
            M.ATTCH_NO5,
            M.ATTCH_DESC_NO5,
            M.FLEX_FIELD,
            M.FLEX_NO,
            SUM ((NVL (P_QTY, 0) + NVL (PF_QTY, 0)) * NVL (M.IN_OUT, 1))
               AVL_QTY
       FROM IAS_ITM_ATTACH_MOVEMENT M, IAS_ITM_DTL D, IAS_ITM_ONLINE O
      WHERE     M.I_CODE = D.I_CODE
            AND M.I_CODE = O.I_CODE
            AND D.I_CODE = O.I_CODE
            AND NVL (D.MAIN_UNIT, 0) = 1
   GROUP BY D.I_CODE,
            D.ITM_UNT,
            M.W_CODE,
            M.EXPIRE_DATE,
            M.BATCH_NO,
            M.ATTCH_NO1,
            M.ATTCH_DESC_NO1,
            M.ATTCH_NO2,
            M.ATTCH_DESC_NO2,
            M.ATTCH_NO3,
            M.ATTCH_DESC_NO3,
            M.ATTCH_NO4,
            M.ATTCH_DESC_NO4,
            M.ATTCH_NO5,
            M.ATTCH_DESC_NO5,
            M.FLEX_FIELD,
            M.FLEX_NO
;

--------------------------------------------------------------
-- View 170: INV_V_REEVLT_ITM_MOVMNT
--------------------------------------------------------------
CREATE VIEW "INV_V_REEVLT_ITM_MOVMNT" ("DOC_TYPE","BILL_DOC_TYPE","DOC_NO","I_CODE"
,"I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","PF_QTY","DOC_DATE","I_COST","W_CODE"
,"WHG_CODE","STK_COST","DIS_AMT","A_CY","AC_RATE","STOCK_RATE","CC_CODE","PJ_NO"
,"ACTV_NO","EXPIRE_DATE","BATCH_NO","RCRD_NO","DOC_SER","DOC_SEQUENCE","IN_OUT"
,"AUDIT_REF","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR") AS 
SELECT 0 doc_type, NULL bill_doc_type, 0 doc_no, i_code, i_qty i_qty,
						          0 free_qty, itm_unt, p_size, (i_qty * p_size) p_qty, 0 pf_qty,
						          ias_gen_pkg.get_frst_day doc_date, stk_cost i_cost, w_code w_code,
						          TO_CHAR (whg_code) whg_code, stk_cost, NULL dis_amt,
						          (SELECT cur_code
						           FROM   ex_rate
						           WHERE  stock_cur = 1) a_cy, 0 ac_rate, 1 stock_rate, NULL cc_code,
						          NULL pj_no, NULL actv_no, expire_date, batch_no, rcrd_no, 0 doc_ser,
						          doc_sequence, 1 in_out, NULL audit_ref, cmp_no, brn_no, brn_year,
						          brn_usr
						   FROM   ias_open_stock
						   UNION ALL
						--SALES
						   SELECT 1 doc_type, m.bill_doc_type, m.bill_no, d.i_code, d.i_qty i_qty,
						          free_qty, d.itm_unt itm_unt, d.p_size, (d.i_qty * d.p_size) p_qty,
						          (d.free_qty * d.p_size) pf_qty, m.bill_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, d.dis_amt dis_amt, m.bill_currency,
						          m.bill_rate, m.stock_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.bill_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   ias_bill_mst m,
						          ias_bill_dtl d
						   WHERE  m.bill_ser = d.bill_ser
						   AND    NVL (service_item, 0) = 0
						   AND    (SELECT use_out_bills
						           FROM   ias_para_ar) = 0
						   UNION ALL
						   SELECT 1 doc_type, m.bill_doc_type, m.out_no, d.i_code, d.i_qty i_qty,
						          free_qty, d.itm_unt itm_unt, d.p_size, (d.i_qty * d.p_size) p_qty,
						          (d.free_qty * d.p_size) pf_qty, m.out_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, d.dis_amt dis_amt, m.bill_currency,
						          m.bill_rate, m.stock_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.out_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   master_out_bills m,
						          detail_out_bills d
						   WHERE  m.out_ser = d.out_ser AND (SELECT use_out_bills
						                                     FROM   ias_para_ar) = 1
						   UNION ALL
						--PURCHES
						   SELECT 2 doc_type, m.bill_doc_type, m.bill_no, d.i_code, d.i_qty i_qty,
						          free_qty, d.itm_unt itm_unt, d.p_size, (d.i_qty * d.p_size) p_qty,
						          (d.free_qty * d.p_size) pf_qty, m.bill_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, d.dis_amt dis_amt, m.bill_currency,
						          m.bill_rate, m.stock_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.bill_ser doc_ser, doc_sequence, 1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   ias_pi_bill_mst m,
						          ias_pi_bill_dtl d
						   WHERE  m.bill_ser = d.bill_ser 
						   AND NVL (service_itm, 0) = 0
						   AND    m.pur_type = 1
						   UNION ALL
						   SELECT 2 doc_type, m.pi_doc_type bill_doc_type, m.pi_no, d.i_code,
						          d.i_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, (d.free_qty * d.p_size) pf_qty,
						          m.gr_date doc_date, d.i_price i_cost, d.w_code w_code,
						          post_code whg_code, d.stk_cost stk_cost, dis_amt, m.a_cy, m.ac_rate,
						          m.stk_rate, d.cc_code cc_code, d.pj_no pj_no, d.actv_no actv_no,
						          expire_date, batch_no, rcrd_no, m.g_ser doc_ser, doc_sequence,
						          1 in_out, m.audit_ref, m.cmp_no cmp_no, m.brn_no brn_no,
						          m.brn_year brn_year, m.brn_usr brn_usr
						   FROM   gr_note m,
						          gr_detail d
						   WHERE  m.g_ser = d.g_ser
						   AND    m.pi_type = 2
						   AND    m.pur_type = 2
						   AND    NVL (c_flag, 0) = 1
						   UNION ALL
						--RT SALES
						   SELECT 3 doc_type, m.rt_bill_doc_type bill_doc_type, m.rt_bill_no,
						          d.i_code, d.i_qty i_qty, free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, (d.free_qty * d.p_size) pf_qty,
						          m.rt_bill_date doc_date, d.i_price i_cost, d.w_code w_code,
						          post_code whg_code, d.stk_cost stk_cost, d.dis_amt dis_amt,
						          m.rt_bill_currency, m.rt_bill_rate, m.stock_rate, d.cc_code cc_code,
						          d.pj_no pj_no, d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.rt_bill_ser doc_ser, doc_sequence, 1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   ias_rt_bill_mst m,
						          ias_rt_bill_dtl d
						   WHERE  m.rt_bill_ser = d.rt_bill_ser
						   AND    NVL (service_item, 0) = 0
						   AND    (SELECT use_out_bills
						           FROM   ias_para_ar) = 0
						   UNION ALL
						   SELECT 3 doc_type, m.rt_bill_doc_type bill_doc_type, m.ret_no, d.i_code,
						          d.i_qty i_qty, free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, (d.free_qty * d.p_size) pf_qty,
						          m.ret_date doc_date, d.i_price i_cost, d.w_code w_code,
						          post_code whg_code, d.stk_cost stk_cost, d.dis_amt dis_amt, m.a_cy,
						          m.ac_rate, m.stk_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.ret_ser doc_ser, doc_sequence, 1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   ias_ret_bill_mst m,
						          ias_ret_bill_dtl d
						   WHERE  m.ret_ser = d.ret_ser AND (SELECT use_out_bills
						                                     FROM   ias_para_ar) = 1
						   UNION ALL
						-- RT PURCHES
						   SELECT 4 doc_type, m.rt_bill_doc_type bill_doc_type, m.rt_bill_no,
						          d.i_code, d.i_qty i_qty, free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, (d.free_qty * d.p_size) pf_qty,
						          m.rt_bill_date doc_date, d.i_price i_cost, d.w_code w_code,
						          post_code whg_code, d.stk_cost stk_cost, d.dis_amt dis_amt,
						          m.rt_bill_currency, m.rt_bill_rate, m.stock_rate, d.cc_code cc_code,
						          d.pj_no pj_no, d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.rt_bill_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   ias_pr_bill_mst m,
						          ias_pr_bill_dtl d
						   WHERE  m.rt_bill_ser = d.rt_bill_ser AND NVL (service_itm, 0) = 0
						   UNION ALL
						-- INCOME
						   SELECT 5 doc_type, m.incom_type bill_doc_type, m.gr_no, d.i_code,
						          d.i_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, 0 pf_qty, m.gr_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, NULL dis_amt, m.a_cy, m.ac_rate, m.stk_rate,
						          d.cc_code cc_code, d.pj_no pj_no, d.actv_no actv_no, expire_date,
						          batch_no, rcrd_no, m.g_ser doc_ser, doc_sequence, 1 in_out,
						          m.audit_ref, m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   gr_note m,
						          gr_detail d
						   WHERE  m.g_ser = d.g_ser AND m.pi_type = 5
						   UNION ALL
						-- OUTCOME
						   SELECT 6 doc_type, m.out_type bill_doc_type, m.out_no, d.i_code,
						          d.i_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, 0 pf_qty, m.out_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, NULL dis_amt, m.a_cy, m.ac_rate, m.stock_rate,
						          d.cc_code cc_code, d.pj_no pj_no, d.actv_no actv_no, expire_date,
						          batch_no, rcrd_no, m.out_ser doc_ser, doc_sequence, -1 in_out,
						          m.audit_ref, m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   ias_outgoing_mst m,
						          ias_outgoing_dtl d
						   WHERE  m.out_ser = d.out_ser
						   UNION ALL
						-- OUT TRANSFER
						   SELECT 7 doc_type, m.tr_type bill_doc_type, m.tr_no, d.i_code,
						          d.i_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, 0 pf_qty, m.tr_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, NULL dis_amt, (SELECT cur_code
						                                              FROM   ex_rate
						                                              WHERE  stock_cur = 1) a_cy,
						          0 ac_rate, m.stk_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no, m.tr_ser doc_ser,
						          doc_sequence, -1 in_out, m.audit_ref, m.cmp_no cmp_no,
						          m.brn_no brn_no, m.brn_year brn_year, m.brn_usr brn_usr
						   FROM   ias_whtrns_mst m,
						          ias_whtrns_dtl d
						   WHERE  m.tr_ser = d.tr_ser AND m.tr_inout_type = 1
						   UNION ALL
						---- IN TRANSFER
						   SELECT 8 doc_type, m.tr_type bill_doc_type, m.tr_no, d.i_code,
						          d.i_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, 0 pf_qty, m.tr_date doc_date,
						          d.i_price i_cost, d.w_code w_code, post_code whg_code,
						          d.stk_cost stk_cost, NULL dis_amt, (SELECT cur_code
						                                              FROM   ex_rate
						                                              WHERE  stock_cur = 1) a_cy,
						          0 ac_rate, m.stk_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no, m.tr_ser doc_ser,
						          doc_sequence, -1 in_out, m.audit_ref, m.cmp_no cmp_no,
						          m.brn_no brn_no, m.brn_year brn_year, m.brn_usr brn_usr
						   FROM   ias_whtrns_mst m,
						          ias_whtrns_dtl d
						   WHERE  m.tr_ser = d.tr_ser AND m.tr_inout_type = 2
						   UNION ALL
						-- OUT  ASSEMBLE COMPUND ITEMS
						   SELECT 11 doc_type, NULL bill_doc_type, m.doc_no, d.i_code,
						          d.i_qty * d.kit_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size * d.kit_qty) p_qty, 0 pf_qty, m.doc_date,
						          d.i_cost i_cost, d.w_code w_code, post_code whg_code,
						          d.i_cost stk_cost, NULL dis_amt, (SELECT cur_code
						                                            FROM   ex_rate
						                                            WHERE  stock_cur = 1) a_cy,
						          0 ac_rate, m.stk_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.doc_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   assemble_kit_items m,
						          kit_items_detail d
						   WHERE  m.doc_ser = d.doc_ser
						   UNION ALL
						-- IN  ASSEMBLE COMPUND ITEMS
						   SELECT 12 doc_type, NULL bill_doc_type, m.doc_no, d.kit_item_no i_code,
						          d.i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, 0 pf_qty, m.doc_date, d.kit_cost i_cost,
						          d.t_w_code w_code, post_code whg_code, d.kit_cost stk_cost,
						          NULL dis_amt, (SELECT cur_code
						                         FROM   ex_rate
						                         WHERE  stock_cur = 1) a_cy, 0 ac_rate, m.stk_rate,
						          d.cc_code cc_code, d.pj_no pj_no, d.actv_no actv_no, expire_date,
						          batch_no, rcrd_no, m.doc_ser doc_ser, doc_sequence, 1 in_out,
						          m.audit_ref, m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   assemble_kit_items m,
						          assemble_kit_items_det d
						   WHERE  m.doc_ser = d.doc_ser
						   UNION ALL
						-- OUT  DISASSEMBLE COMPUND ITEMS
						   SELECT 13 doc_type, NULL bill_doc_type, m.doc_no, d.kit_item_no i_code,
						          d.i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size) p_qty, 0 pf_qty, m.doc_date, d.kit_cost i_cost,
						          d.t_w_code w_code, post_code whg_code, d.kit_cost stk_cost,
						          NULL dis_amt, (SELECT cur_code
						                         FROM   ex_rate
						                         WHERE  stock_cur = 1) a_cy, 0 ac_rate, m.stk_rate,
						          d.cc_code cc_code, d.pj_no pj_no, d.actv_no actv_no, expire_date,
						          batch_no, rcrd_no, m.doc_ser doc_ser, doc_sequence, 1 in_out,
						          m.audit_ref, m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   disassemble_kit_items m,
						          disassemble_kit_items_det d
						   WHERE  m.doc_ser = d.doc_ser
						   UNION ALL
						-- IN  DISASSEMBLE COMPUND ITEMS
						   SELECT 14 doc_type, NULL bill_doc_type, m.doc_no, d.i_code,
						          d.i_qty * d.kit_qty i_qty, 0 free_qty, d.itm_unt itm_unt, d.p_size,
						          (d.i_qty * d.p_size * d.kit_qty) p_qty, 0 pf_qty, m.doc_date,
						          d.i_cost i_cost, d.w_code w_code, post_code whg_code,
						          d.i_cost stk_cost, NULL dis_amt, (SELECT cur_code
						                                            FROM   ex_rate
						                                            WHERE  stock_cur = 1) a_cy,
						          0 ac_rate, m.stk_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.doc_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   disassemble_kit_items m,
						          dis_kit_items_detail d
						   WHERE  m.doc_ser = d.doc_ser
						   UNION ALL
						-- IN QUANTITY ADJUSTMENT
						   SELECT 15 doc_type, m.adjust_type bill_doc_type, m.doc_no, d.i_code,
						          ABS (pls_mins) i_qty, 0 free_qty, d.itm_unt itm_unt, p_size, p_qty,
						          0 pf_qty, m.doc_date doc_date, d.wtavg i_cost, d.w_code w_code,
						          post_code whg_code, d.wtavg stk_cost, NULL dis_amt, m.a_cy,
						          0 ac_rate, m.stk_acc_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.doc_ser doc_ser, doc_sequence, 1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   stk_adjustment m,
						          stk_adjustment_det d
						   WHERE  m.doc_ser = d.doc_ser AND m.adjust_type = 1 AND pls_mins > 0
						   UNION ALL
						--- OUT QUANTITY ADJUSTMENT
						   SELECT 16 doc_type, m.adjust_type bill_doc_type, m.doc_no, d.i_code,
						          ABS (pls_mins) i_qty, 0 free_qty, d.itm_unt itm_unt, p_size, p_qty,
						          0 pf_qty, m.doc_date doc_date, d.wtavg i_cost, d.w_code w_code,
						          post_code whg_code, d.wtavg stk_cost, NULL dis_amt, m.a_cy,
						          0 ac_rate, m.stk_acc_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.doc_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   stk_adjustment m,
						          stk_adjustment_det d
						   WHERE  m.doc_ser = d.doc_ser AND m.adjust_type = 1 AND pls_mins < 0
						   UNION ALL
						--- IN COSTING ADJUSTMENT
						   SELECT 17 doc_type, m.adjust_type bill_doc_type, m.doc_no, d.i_code,
						          avl_qty i_qty, 0 free_qty, d.itm_unt itm_unt, p_size, p_qty,
						          0 pf_qty, m.doc_date doc_date, d.wtavg i_cost, d.w_code w_code,
						          post_code whg_code, pls_mins stk_cost, NULL dis_amt, m.a_cy,
						          0 ac_rate, m.stk_acc_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.doc_ser doc_ser, doc_sequence, 1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   stk_adjustment m,
						          stk_adjustment_det d
						   WHERE  m.doc_ser = d.doc_ser AND m.adjust_type = 2
						--AND (SELECT WTAVG_TYPE FROM IAS_PARA_INV)<>1
						   UNION ALL
						-- OUT COSTING ADJUSTMENT
						   SELECT 18 doc_type, m.adjust_type bill_doc_type, m.doc_no, d.i_code,
						          avl_qty i_qty, 0 free_qty, d.itm_unt itm_unt, p_size, p_qty,
						          0 pf_qty, m.doc_date doc_date, d.wtavg i_cost, d.w_code w_code,
						          post_code whg_code, d.wtavg stk_cost, NULL dis_amt, m.a_cy,
						          0 ac_rate, m.stk_acc_rate, d.cc_code cc_code, d.pj_no pj_no,
						          d.actv_no actv_no, expire_date, batch_no, rcrd_no,
						          m.doc_ser doc_ser, doc_sequence, -1 in_out, m.audit_ref,
						          m.cmp_no cmp_no, m.brn_no brn_no, m.brn_year brn_year,
						          m.brn_usr brn_usr
						   FROM   stk_adjustment m,
						          stk_adjustment_det d
						   WHERE  m.doc_ser = d.doc_ser AND m.adjust_type = 2
;

--------------------------------------------------------------
-- View 171: INV_V_REM_WHTRNS
--------------------------------------------------------------
CREATE VIEW "INV_V_REM_WHTRNS" ("TR_INOUT_TYPE","TR_TYPE","TR_NO","TR_SER","TR_DATE"
,"REF_NO","W_CODE","T_W_CODE","F_W_CODE","CC_CODE","PJ_NO","ACTV_NO","TR_DESC","STK_RATE"
,"TR_POST","TR_AMT","TR_RES","LOAD_NO","ATTACH_CNT","PR_REP","PROCESSED","STK_PROCESSED"
,"PROCESSED_SI","HUNG","T_TR_TYPE","TR_A_CODE","EXP_AMT","C_CODE","DOC_BRN_NO"
,"AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","EXTERNAL_POST","F_TR_NO"
,"F_TR_SER","BOE_NO","TR_COST_TYPE","DIFF_A_CODE","DIFF_A_CY","DIFF_AMT","RTN_TR"
,"FIELD1","FIELD2","FIELD3","DRIVER_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"POST_U_ID","POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "TR_INOUT_TYPE","TR_TYPE","TR_NO","TR_SER","TR_DATE","REF_NO","W_CODE","T_W_CODE"
,"F_W_CODE","CC_CODE","PJ_NO","ACTV_NO","TR_DESC","STK_RATE","TR_POST","TR_AMT","TR_RES"
,"LOAD_NO","ATTACH_CNT","PR_REP","PROCESSED","STK_PROCESSED","PROCESSED_SI","HUNG"
,"T_TR_TYPE","TR_A_CODE","EXP_AMT","C_CODE","DOC_BRN_NO","AUDIT_REF","AUDIT_REF_DESC"
,"AUDIT_REF_U_ID","AUDIT_REF_DATE","EXTERNAL_POST","F_TR_NO","F_TR_SER","BOE_NO"
,"TR_COST_TYPE","DIFF_A_CODE","DIFF_A_CY","DIFF_AMT","RTN_TR","FIELD1","FIELD2","FIELD3"
,"DRIVER_NO","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE"
,"UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM"
	From Ias_Whtrns_Mst Wht_Mst
	Where Tr_Inout_Type = 2
	  And  Exists (
	Select 1
	From Ias_Whtrns_Dtl
	Where F_Tr_Ser=Wht_Mst.F_Tr_Ser
	Group By F_Tr_Ser
	Having Sum(Decode(Tr_Inout_Type,1,I_Qty,(I_Qty*-1))) < 0)
;

--------------------------------------------------------------
-- View 172: IAS_V_ITEM_SERIALNO
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITEM_SERIALNO" ("DOC_TYPE","BILL_DOC_TYPE","DOC_NO","DOC_SER"
,"DOC_DATE","I_CODE","ITM_UNT","P_SIZE","SERIALNO","DESC_NO","W_CODE","CC_CODE","PJ_NO"
,"ACTV_NO","EXPIRE_DATE","BATCH_NO","FREE_FLG","BILL_COST","OUT_NO","OUT_GR_SER","IN_OUT"
,"RCRD_NO","RCRD_NO_DOC","ACTIVE","ACTIVE_U_ID","ACTIVE_DATE","ACTIVE_NOTE"
,"EXTERNAL_POST","AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","QR_CODE"
,"SRL_SQ","AD_U_ID","UP_U_ID","UP_CNT","AD_TRMNL_NM","UP_TRMNL_NM","PR_REP") AS 
SELECT 
 Doc_Type,  Bill_Doc_Type,  Doc_No, 
    Doc_Ser,  Doc_Date,  I_Code, 
    Itm_Unt,  P_Size,  Serialno, 
    Desc_No,  W_Code,  Cc_Code, 
    Pj_No,  Actv_No,  Expire_Date, 
    Batch_No,  Free_Flg,  Bill_Cost, 
    Out_No,  Out_Gr_Ser,  In_Out, 
    Rcrd_No,  Rcrd_No_Doc,  Active, 
    Active_U_Id,  Active_Date,  Active_Note, 
    External_Post,  Ad_Date,  Up_Date, 
    Cmp_No,  Brn_No,  Brn_Year, 
    Brn_Usr,  Qr_Code,  Srl_Sq, 
    Ad_U_Id,  Up_U_Id,  Up_Cnt, 
    Ad_Trmnl_Nm,  Up_Trmnl_Nm,  Pr_Rep
From Ias_Item_Serialno 
Union All
Select
 8 Doc_Type,  Bill_Doc_Type,  Doc_No, 
    Doc_Ser,  Doc_Date,  I_Code, 
    Itm_Unt,  P_Size,  Serialno, 
    Desc_No,  W_Code,  Cc_Code, 
    Pj_No,  Actv_No,  Expire_Date, 
    Batch_No,  Free_Flg,  Bill_Cost, 
    Out_No,  Out_Gr_Ser,  1 In_Out, 
    Rcrd_No,  Rcrd_No_Doc,  Active, 
    Active_U_Id,  Active_Date,  Active_Note, 
    External_Post,  Ad_Date,  Up_Date, 
    Cmp_No,  Brn_No,  Brn_Year, 
    Brn_Usr,  Qr_Code,  Srl_Sq, 
    Ad_U_Id,  Up_U_Id,  Up_Cnt, 
    Ad_Trmnl_Nm,  Up_Trmnl_Nm,  Pr_Rep
    From Ias_Item_Serialno 
    Where Doc_Type=7
    And Not Exists ( Select 1 From Ias_Whtrns_Dtl
                      Where Tr_Inout_Type=2
                       And F_Tr_Ser= Ias_Item_Serialno.Doc_Ser
                       And I_Code  = Ias_Item_Serialno.I_Code
                       And Rownum<=1
                   )
;

--------------------------------------------------------------
-- View 173: IAS_V_ITEM_SERIALNO_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITEM_SERIALNO_YR" ("ROW_ID","UMARKER","DOC_TYPE","BILL_DOC_TYPE"
,"DOC_NO","DOC_SER","DOC_DATE","I_CODE","ITM_UNT","P_SIZE","SERIALNO","DESC_NO","W_CODE"
,"CC_CODE","PJ_NO","ACTV_NO","EXPIRE_DATE","BATCH_NO","FREE_FLG","BILL_COST","OUT_NO"
,"OUT_GR_SER","IN_OUT","RCRD_NO","RCRD_NO_DOC","ACTIVE","ACTIVE_U_ID","ACTIVE_DATE"
,"ACTIVE_NOTE","EXTERNAL_POST","AD_DATE","UP_DATE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"QR_CODE","SRL_SQ","AD_U_ID","UP_U_ID","UP_CNT","AD_TRMNL_NM","UP_TRMNL_NM","PR_REP") AS 
SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,BILL_DOC_TYPE,DOC_NO,DOC_SER,DOC_DATE,I_CODE
,ITM_UNT,P_SIZE,SERIALNO,DESC_NO,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO
,FREE_FLG,BILL_COST,OUT_NO,OUT_GR_SER,IN_OUT,RCRD_NO,RCRD_NO_DOC,ACTIVE,ACTIVE_U_ID
,ACTIVE_DATE,ACTIVE_NOTE,EXTERNAL_POST,AD_DATE,UP_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,QR_CODE,SRL_SQ,AD_U_ID,UP_U_ID,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,PR_REP FROM
 IAS20181.IAS_ITEM_SERIALNO UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE
,BILL_DOC_TYPE,DOC_NO,DOC_SER,DOC_DATE,I_CODE,ITM_UNT,P_SIZE,SERIALNO,DESC_NO,W_CODE
,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_FLG,BILL_COST,OUT_NO,OUT_GR_SER,IN_OUT
,RCRD_NO,RCRD_NO_DOC,ACTIVE,ACTIVE_U_ID,ACTIVE_DATE,ACTIVE_NOTE,EXTERNAL_POST,AD_DATE
,UP_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,QR_CODE,SRL_SQ,AD_U_ID,UP_U_ID,UP_CNT,AD_TRMNL_NM
,UP_TRMNL_NM,PR_REP FROM IAS20191.IAS_ITEM_SERIALNO Where Doc_Type <> 0  UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , DOC_TYPE,BILL_DOC_TYPE,DOC_NO,DOC_SER,DOC_DATE,I_CODE
,ITM_UNT,P_SIZE,SERIALNO,DESC_NO,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO
,FREE_FLG,BILL_COST,OUT_NO,OUT_GR_SER,IN_OUT,RCRD_NO,RCRD_NO_DOC,ACTIVE,ACTIVE_U_ID
,ACTIVE_DATE,ACTIVE_NOTE,EXTERNAL_POST,AD_DATE,UP_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR
,QR_CODE,SRL_SQ,AD_U_ID,UP_U_ID,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,PR_REP FROM
 IAS20201.IAS_ITEM_SERIALNO Where Doc_Type <> 0  UNION ALL  SELECT ROWID ROW_ID,1 UMARKER
 , DOC_TYPE,BILL_DOC_TYPE,DOC_NO,DOC_SER,DOC_DATE,I_CODE,ITM_UNT,P_SIZE,SERIALNO,DESC_NO
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,FREE_FLG,BILL_COST,OUT_NO,OUT_GR_SER
,IN_OUT,RCRD_NO,RCRD_NO_DOC,ACTIVE,ACTIVE_U_ID,ACTIVE_DATE,ACTIVE_NOTE,EXTERNAL_POST
,AD_DATE,UP_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,QR_CODE,SRL_SQ,AD_U_ID,UP_U_ID,UP_CNT
,AD_TRMNL_NM,UP_TRMNL_NM,PR_REP FROM IAS20211.IAS_ITEM_SERIALNO Where Doc_Type <> 0 
 UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , DOC_TYPE,BILL_DOC_TYPE,DOC_NO,DOC_SER
,DOC_DATE,I_CODE,ITM_UNT,P_SIZE,SERIALNO,DESC_NO,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE
,BATCH_NO,FREE_FLG,BILL_COST,OUT_NO,OUT_GR_SER,IN_OUT,RCRD_NO,RCRD_NO_DOC,ACTIVE
,ACTIVE_U_ID,ACTIVE_DATE,ACTIVE_NOTE,EXTERNAL_POST,AD_DATE,UP_DATE,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,QR_CODE,SRL_SQ,AD_U_ID,UP_U_ID,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,PR_REP FROM
 IAS_ITEM_SERIALNO WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 174: INV_CHK_ASSM_DISASSM_RCRDS
--------------------------------------------------------------
CREATE VIEW "INV_CHK_ASSM_DISASSM_RCRDS" ("TYP","DOC_SER","I_CODE","W_CODE","BATCH_NO","EXPIRE_DATE","DOC_SEQUENCE") AS 
SELECT   "TYP","DOC_SER","I_CODE","W_CODE","BATCH_NO","EXPIRE_DATE","DOC_SEQUENCE"
   FROM     (SELECT 'Assmble' typ, doc_ser, i_code, w_code,
                    NVL (batch_no, '0') batch_no,
                    NVL (expire_date, '01/01/1900') expire_date, doc_sequence
             FROM   (
             (SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 12
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             T_W_code W_Code, NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   assemble_kit_items_det)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             T_W_code W_Code, NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   assemble_kit_items_det
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 12)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 11
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   kit_items_detail)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   kit_items_detail
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 11)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null W_Code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   assemble_kit_items_det
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null w_code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   kit_items_detail)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null w_code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   kit_items_detail
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null W_Code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   assemble_kit_items_det))
             UNION
             SELECT 'DisAssmble' typ, doc_ser, i_code, w_code,
                    NVL (batch_no, '0') batch_no,
                    NVL (expire_date, '01/01/1900') expire_date, doc_sequence
             FROM   ((SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 13
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             F_W_code W_Code, NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   disassemble_kit_items_det)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             F_W_code W_Code, NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   disassemble_kit_items_det
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 13)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 14
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   dis_kit_items_detail)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   dis_kit_items_detail
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, i_code, w_code,
                             NVL (batch_no, '0') batch_no,
                             NVL (expire_date, '01/01/1900') expire_date,
                             doc_sequence
                      FROM   item_movement
                      WHERE  doc_type = 14)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null W_code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   disassemble_kit_items_det
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null w_code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   dis_kit_items_detail)
                     UNION
                     (SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null w_code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   dis_kit_items_detail
                      MINUS
                      SELECT TO_CHAR (doc_ser) doc_ser, kit_item_no i_code,
                             Null W_code, '0' batch_no,
                             To_Date('01/01/1900','dd/mm/yyyy') expire_date,
                             doc_sequence
                      FROM   disassemble_kit_items_det)))
   ORDER BY typ,
            doc_ser,
            i_code,
            w_code,
            NVL (batch_no, '0'),
            NVL (expire_date, '01/01/1900'),
            doc_sequence
;

--------------------------------------------------------------
-- View 175: APS_KPI_NET_PURCHS_PRD_VW
--------------------------------------------------------------
CREATE VIEW "APS_KPI_NET_PURCHS_PRD_VW" ("YR_NO","BRN_NO","BRN_NM","DOC_DATE","HALF_NO"
,"QRTR_NO","PRD_NO","PRD_NM","WEEK_NO","DAY_NO","CUR_CODE","VND_CODE","VND_NM","ITM_CODE"
,"ITM_NM","PMAN_CODE","PMAN_NM","R_CODE","W_CODE","W_NM","MN_GRP_CODE","SUB_GRP_CODE"
,"UNDR_SUB_GRP_CODE","ASSTNT_GRP_CODE","DTL_GRP_CODE","ALTRNTV_GRP_CODE","ITM_TYP"
,"ITM_CLSSFCTN","ITM_DSC","CC_CODE","CC_NM","PJ_NO","PJ_NM","ACTV_NO","ACTV_NM"
,"PUR_AMT_L","PUR_AMT_F","PUR_DSCNT_AMT_L","PUR_DSCNT_AMT_F","PUR_TAX_AMT_L"
,"PUR_TAX_AMT_F","PUR_OTHR_AMT_L","PUR_OTHR_AMT_F","RT_PUR_AMT_L","RT_PUR_AMT_F"
,"RT_PUR_DSCNT_AMT_L","RT_PUR_DSCNT_AMT_F","RT_PUR_TAX_AMT_L","RT_PUR_TAX_AMT_F"
,"RT_PUR_OTHR_AMT_L","RT_PUR_OTHR_AMT_F","NET_PUR_NOT_TAX_OTHR_AMT_L"
,"NET_PUR_NOT_TAX_OTHR_AMT_F","NET_PUR_AMT_L","NET_PUR_AMT_F","NET_BILL_AMT_L"
,"NET_STK_AMT_L","NET_PROFT_AMT_L","NET_BILL_AMT_STK","NET_STK_AMT_STK"
,"NET_PROFT_AMT_STK") AS 
SELECT   M.YR_NO, M.BRN_NO,
            (SELECT DECODE
                       (
                       NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                       1, NVL(BRN_LNAME, BRN_FNAME),
                       NVL(BRN_FNAME, BRN_LNAME)
                    )
             FROM   S_BRN
             WHERE  BRN_NO = M.BRN_NO) BRN_NM,
            M.DOC_DATE, M.HALF_NO, M.QRTR_NO, M.PRD_NO, M.PRD_NM, M.WEEK_NO,
            M.DAY_NO, M.CUR_CODE, M.VND_CODE, M.VND_NM, M.ITM_CODE, M.ITM_NM,
            M.PMAN_CODE,
            (SELECT DECODE
                       (
                       NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                       1, NVL(REPRS_A_NAME, REPRS_E_NAME),
                       NVL(REPRS_E_NAME, REPRS_A_NAME)
                    )
             FROM   SALES_MAN
             WHERE  REPRS_CODE = M.PMAN_CODE) PMAN_NM,
            NULL R_CODE, M.W_CODE,
            (SELECT DECODE
                       (
                       NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                       1, NVL(W_NAME, W_E_NAME),
                       NVL(W_E_NAME, W_NAME)
                    )
             FROM   WAREHOUSE_DETAILS
             WHERE  W_CODE = M.W_CODE) W_NM,
            M.MN_GRP_CODE, M.SUB_GRP_CODE, M.UNDR_SUB_GRP_CODE,
            M.ASSTNT_GRP_CODE, M.DTL_GRP_CODE, M.ALTRNTV_GRP_CODE, M.ITM_TYP,
            M.ITM_CLSSFCTN, M.ITM_DSC, M.CC_CODE,
            (SELECT DECODE
                       (
                       NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                       1, NVL(CC_A_NAME, CC_E_NAME),
                       NVL(CC_E_NAME, CC_A_NAME)
                    )
             FROM   COST_CENTERS
             WHERE  CC_CODE = M.CC_CODE) CC_NM,
            M.PJ_NO,
            (SELECT DECODE
                       (
                       NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                       1, NVL(PJ_A_NAME, PJ_E_NAME),
                       NVL(PJ_A_NAME, PJ_E_NAME)
                    )
             FROM   IAS_PROJECTS
             WHERE  PJ_NO = M.PJ_NO) PJ_NM,
            M.ACTV_NO,
            (SELECT DECODE
                       (
                       NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                       1, NVL(ACTV_A_NAME, ACTV_E_NAME),
                       NVL(ACTV_E_NAME, ACTV_A_NAME)
                    )
             FROM   IAS_ACTVTY
             WHERE  ACTV_NO = M.ACTV_NO) ACTV_NM,
            SUM(M.PUR_AMT_L) PUR_AMT_L, SUM(M.PUR_AMT_F) PUR_AMT_F,
            SUM(M.PUR_DSCNT_AMT_L) PUR_DSCNT_AMT_L,
            SUM(M.PUR_DSCNT_AMT_F) PUR_DSCNT_AMT_F,
            SUM(M.PUR_TAX_AMT_L) PUR_TAX_AMT_L,
            SUM(M.PUR_TAX_AMT_F) PUR_TAX_AMT_F,
            SUM(M.PUR_OTHR_AMT_L) PUR_OTHR_AMT_L,
            SUM(M.PUR_OTHR_AMT_F) PUR_OTHR_AMT_F,
            SUM(M.RT_PUR_AMT_L) RT_PUR_AMT_L, SUM
                                                 (M.RT_PUR_AMT_F)
                                                                 RT_PUR_AMT_F,
            SUM(M.RT_PUR_DSCNT_AMT_L) RT_PUR_DSCNT_AMT_L,
            SUM(M.RT_PUR_DSCNT_AMT_F) RT_PUR_DSCNT_AMT_F,
            SUM(M.RT_PUR_TAX_AMT_L) RT_PUR_TAX_AMT_L,
            SUM(M.RT_PUR_TAX_AMT_F) RT_PUR_TAX_AMT_F,
            SUM(M.RT_PUR_OTHR_AMT_L) RT_PUR_OTHR_AMT_L,
            SUM(M.RT_PUR_OTHR_AMT_F) RT_PUR_OTHR_AMT_F,
            ROUND(SUM((M.PUR_AMT_L) -
                  (M.PUR_DSCNT_AMT_L)) -
               SUM((M.RT_PUR_AMT_L) -
                  (M.RT_PUR_DSCNT_AMT_L)),
               4) NET_PUR_NOT_TAX_OTHR_AMT_L,
            ROUND(SUM((M.PUR_AMT_F) -
                  (M.PUR_DSCNT_AMT_F)) -
               SUM((M.RT_PUR_AMT_F) -
                  (M.RT_PUR_DSCNT_AMT_F)),
               4) NET_PUR_NOT_TAX_OTHR_AMT_F,
            ROUND(SUM(M.PUR_AMT_L) -
               SUM(M.PUR_DSCNT_AMT_L) +
               SUM(M.PUR_TAX_AMT_L) +
               SUM(M.PUR_OTHR_AMT_L),
               4) -
            ROUND(SUM(M.RT_PUR_AMT_L) -
               SUM(M.RT_PUR_DSCNT_AMT_L) +
               SUM(M.RT_PUR_TAX_AMT_L) +
               SUM(M.RT_PUR_OTHR_AMT_L),
               4) NET_PUR_AMT_L,
            ROUND(SUM(M.PUR_AMT_F) -
               SUM(M.PUR_DSCNT_AMT_F) +
               SUM(M.PUR_TAX_AMT_F) +
               SUM(M.PUR_OTHR_AMT_F),
               4) -
            ROUND(SUM(M.RT_PUR_AMT_F) -
               SUM(M.RT_PUR_DSCNT_AMT_F) +
               SUM(M.RT_PUR_TAX_AMT_F) +
               SUM(M.RT_PUR_OTHR_AMT_F),
               4) NET_PUR_AMT_F,
            SUM(M.NET_BILL_AMT_L) NET_BILL_AMT_L,
            SUM(M.NET_STK_AMT_L) NET_STK_AMT_L,
            ROUND(SUM(M.NET_BILL_AMT_L) -
               SUM(M.NET_STK_AMT_L), 4) NET_PROFT_AMT_L,
            SUM(M.NET_BILL_AMT_STK) NET_BILL_AMT_STK,
            SUM(M.NET_STK_AMT_STK) NET_STK_AMT_STK,
            ROUND(SUM(M.NET_BILL_AMT_STK) -
               SUM(M.NET_STK_AMT_STK),
               4) NET_PROFT_AMT_STK
   FROM     (SELECT   M.BRN_YEAR YR_NO, M.BRN_NO, M.BILL_DATE DOC_DATE,
                      ROUND(TO_CHAR(M.BILL_DATE, 'Q') / 2) HALF_NO,
                      ROUND(TO_CHAR(M.BILL_DATE, 'Q')) QRTR_NO,
                      TO_CHAR(M.BILL_DATE, 'MM') PRD_NO,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, P.PRD_L_NM,
                         NVL(P.PRD_F_NM, P.PRD_L_NM)
                      ) PRD_NM,
                      TO_CHAR(M.BILL_DATE, 'WW') WEEK_NO,
                      TO_CHAR(M.BILL_DATE, 'DD') DAY_NO,
                      M.BILL_CURRENCY CUR_CODE, M.V_CODE VND_CODE,
                      M.V_NAME VND_NM, I.I_CODE ITM_CODE,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_NAME,
                         NVL(I.I_E_NAME, I.I_NAME)
                      ) ITM_NM,
                      M.PMAN_CODE, D.W_CODE, I.G_CODE MN_GRP_CODE,
                      I.MNG_CODE SUB_GRP_CODE, I.SUBG_CODE UNDR_SUB_GRP_CODE,
                      I.ASSISTANT_NO ASSTNT_GRP_CODE,
                      I.DETAIL_NO DTL_GRP_CODE, I.GROUP_NO ALTRNTV_GRP_CODE,
                      I.ITEM_TYPE ITM_TYP, I.GRP_CLASS_CODE ITM_CLSSFCTN,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_DESC,
                         NVL(I.I_F_DESC, I.I_DESC)
                      ) ITM_DSC,
                      D.CC_CODE, D.PJ_NO, D.ACTV_NO,
                      ROUND(SUM(NVL(D.I_PRICE, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.BILL_RATE, 1)),
                         4) PUR_AMT_L,
                      ROUND(SUM(NVL(D.I_PRICE, 0) * NVL(D.I_QTY, 0)),
                         4) PUR_AMT_F,
                      ROUND(SUM(NVL(D.DIS_AMT, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.BILL_RATE, 1)),
                         4) PUR_DSCNT_AMT_L,
                      ROUND(SUM(NVL(D.DIS_AMT, 0) *
                            NVL(D.I_QTY, 0)),
                         4) PUR_DSCNT_AMT_F,
                      ROUND(SUM(NVL(D.VAT_AMT, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.BILL_RATE, 1)),
                         4) PUR_TAX_AMT_L,
                      ROUND(SUM(NVL(D.VAT_AMT, 0)
                            * NVL(D.I_QTY, 0)),
                         4) PUR_TAX_AMT_F,
                      ROUND(SUM(NVL(D.OTHR_AMT, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.BILL_RATE, 1)),
                         4) PUR_OTHR_AMT_L,
                      ROUND(SUM(NVL(D.OTHR_AMT, 0) *
                            NVL(D.I_QTY, 0)),
                         4) PUR_OTHR_AMT_F,
                      0 RT_PUR_AMT_L, 0 RT_PUR_AMT_F, 0 RT_PUR_DSCNT_AMT_L,
                      0 RT_PUR_DSCNT_AMT_F, 0 RT_PUR_TAX_AMT_L,
                      0 RT_PUR_TAX_AMT_F, 0 RT_PUR_OTHR_AMT_L,
                      0 RT_PUR_OTHR_AMT_F,
                      ROUND(SUM((NVL(D.I_PRICE, 0) -
                                 NVL(D.DIS_AMT, 0)) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.BILL_RATE, 1)),
                         4) NET_BILL_AMT_L,
                      ROUND(SUM((NVL(D.I_QTY, 0) +
                                 NVL(D.FREE_QTY, 0)) *
                            NVL(D.STK_COST, 0) *
                            NVL(M.STOCK_RATE, 1)),
                         4) NET_STK_AMT_L,
                      ROUND(SUM((
                             (NVL(D.I_PRICE, 0) -
                              NVL(D.DIS_AMT, 0)) *
                             NVL(D.I_QTY, 0) *
                             NVL(M.BILL_RATE, 1)
                            ) /
                            NVL(M.STOCK_RATE, 1)),
                         4) NET_BILL_AMT_STK,
                      ROUND(SUM((NVL(D.I_QTY, 0) +
                                 NVL(D.FREE_QTY, 0)) *
                            NVL(D.STK_COST, 0)),
                         4) NET_STK_AMT_STK
             FROM     IAS_PI_BILL_MST M,
                      IAS_PI_BILL_DTL D,
                      IAS_ITM_MST I,
                      S_PRD_DTL P
             WHERE    M.BILL_SER = D.BILL_SER
             AND      D.I_CODE = I.I_CODE
             AND      M.BRN_YEAR = P.YR_NO
             AND      TO_CHAR(M.BILL_DATE, 'MM') = P.PRD_NO
             AND      NVL(M.HUNG, 0) = 0
             GROUP BY M.BRN_YEAR,
                      M.BRN_NO,
                      M.BILL_DATE,
                      ROUND(TO_CHAR(M.BILL_DATE, 'Q') / 2),
                      ROUND(TO_CHAR(M.BILL_DATE, 'Q')),
                      TO_CHAR(M.BILL_DATE, 'MM'),
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, P.PRD_L_NM,
                         NVL(P.PRD_F_NM, P.PRD_L_NM)
                      ),
                      TO_CHAR(M.BILL_DATE, 'WW'),
                      TO_CHAR(M.BILL_DATE, 'DD'),
                      M.BILL_CURRENCY,
                      M.V_CODE,
                      M.V_NAME,
                      I.I_CODE,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_NAME,
                         NVL(I.I_E_NAME, I.I_NAME)
                      ),
                      M.PMAN_CODE,
                      NULL,                                       -- M.R_CODE,
                      D.W_CODE,
                      I.G_CODE,
                      I.MNG_CODE,
                      I.SUBG_CODE,
                      I.ASSISTANT_NO,
                      I.DETAIL_NO,
                      I.GROUP_NO,
                      I.ITEM_TYPE,
                      I.GRP_CLASS_CODE,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_DESC,
                         NVL(I.I_F_DESC, I.I_DESC)
                      ),
                      D.CC_CODE,
                      D.PJ_NO,
                      D.ACTV_NO
             UNION ALL
             SELECT   M.BRN_YEAR YR_NO, M.BRN_NO, M.RT_BILL_DATE DOC_DATE,
                      ROUND(TO_CHAR(M.RT_BILL_DATE, 'Q') / 2) HALF_NO,
                      ROUND(TO_CHAR(M.RT_BILL_DATE, 'Q')) QRTR_NO,
                      TO_CHAR(M.RT_BILL_DATE, 'MM') PRD_NO,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, P.PRD_L_NM,
                         NVL(P.PRD_F_NM, P.PRD_L_NM)
                      ) PRD_NM,
                      TO_CHAR(M.RT_BILL_DATE, 'WW') WEEK_NO,
                      TO_CHAR(M.RT_BILL_DATE, 'DD') DAY_NO,
                      M.RT_BILL_CURRENCY CUR_CODE, M.V_CODE VND_CODE,
                      M.V_NAME VND_NM, I.I_CODE ITM_CODE,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_NAME,
                         NVL(I.I_E_NAME, I.I_NAME)
                      ) ITM_NM,
                      M.PMAN_CODE, D.W_CODE, I.G_CODE MN_GRP_CODE,
                      I.MNG_CODE SUB_GRP_CODE, I.SUBG_CODE UNDR_SUB_GRP_CODE,
                      I.ASSISTANT_NO, I.DETAIL_NO DTL_GRP_CODE,
                      I.GROUP_NO ALTRNTV_GRP_CODE, I.ITEM_TYPE ITM_TYP,
                      I.GRP_CLASS_CODE ITM_CLSSFCTN,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_DESC,
                         NVL(I.I_F_DESC, I.I_DESC)
                      ) ITM_DSC,
                      D.CC_CODE, D.PJ_NO, D.ACTV_NO, 0 PUR_AMT_L, 0 PUR_AMT_F,
                      0 PUR_DSCNT_AMT_L, 0 PUR_DSCNT_AMT_F, 0 PUR_TAX_AMT_L,
                      0 PUR_TAX_AMT_F, 0 PUR_OTHR_AMT_L, 0 PUR_OTHR_AMT_F,
                      ROUND(SUM(NVL(D.I_PRICE, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.RT_BILL_RATE, 1)),
                         4) RT_PUR_AMT_L,
                      ROUND(SUM(NVL(D.I_PRICE, 0)
                            * NVL(D.I_QTY, 0)),
                         4) RT_PUR_AMT_F,
                      ROUND(SUM(NVL(D.DIS_AMT, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.RT_BILL_RATE, 1)),
                         4) RT_PUR_DSCNT_AMT_L,
                      ROUND(SUM(NVL(D.DIS_AMT, 0) *
                            NVL(D.I_QTY, 0)),
                         4) RT_PUR_DSCNT_AMT_F,
                      ROUND(SUM(NVL(D.VAT_AMT, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.RT_BILL_RATE, 1)),
                         4) RT_PUR_TAX_AMT_L,
                      ROUND(SUM(NVL(D.VAT_AMT, 0) *
                            NVL(D.I_QTY, 0)),
                         4) RT_PUR_TAX_AMT_F,
                      ROUND(SUM(NVL(D.OTHR_AMT, 0) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.RT_BILL_RATE, 1)),
                         4) RT_PUR_OTHR_AMT_L,
                      ROUND(SUM(NVL(D.OTHR_AMT, 0) *
                            NVL(D.I_QTY, 0)),
                         4) RT_PUR_OTHR_AMT_F,
                      ROUND(SUM((NVL(D.I_PRICE, 0) -
                                 NVL(D.DIS_AMT, 0)) *
                            NVL(D.I_QTY, 0) *
                            NVL(M.RT_BILL_RATE, 1)),
                         4) *
                      -1 NET_BILL_AMT_L,
                      ROUND(SUM((NVL(D.I_QTY, 0) +
                                 NVL(D.FREE_QTY, 0)) *
                            NVL(D.STK_COST, 0) *
                            NVL(M.STOCK_RATE, 1)),
                         4) *
                      -1 NET_STK_AMT_L,
                      ROUND(SUM((
                             (NVL(D.I_PRICE, 0) -
                              NVL(D.DIS_AMT, 0)) *
                             NVL(D.I_QTY, 0) *
                             NVL(M.RT_BILL_RATE, 1)
                            ) /
                            NVL(M.STOCK_RATE, 1)),
                         4) *
                      -1 NET_BILL_AMT_STK,
                      ROUND(SUM((NVL(D.I_QTY, 0) +
                                 NVL(D.FREE_QTY, 0)) *
                            NVL(D.STK_COST, 0)),
                         4) *
                      -1 NET_STK_AMT_STK
             FROM     IAS_PR_BILL_MST M,
                      IAS_PR_BILL_DTL D,
                      IAS_ITM_MST I,
                      S_PRD_DTL P
             WHERE    M.RT_BILL_SER = D.RT_BILL_SER
             AND      D.I_CODE = I.I_CODE
             AND      M.BRN_YEAR = P.YR_NO
             AND      TO_CHAR(M.RT_BILL_DATE, 'MM') = P.PRD_NO
             AND      NVL(M.HUNG, 0) = 0
             GROUP BY M.BRN_YEAR,
                      M.BRN_NO,
                      M.RT_BILL_DATE,
                      ROUND(TO_CHAR(M.RT_BILL_DATE, 'Q') / 2),
                      ROUND(TO_CHAR(M.RT_BILL_DATE, 'Q')),
                      TO_CHAR(M.RT_BILL_DATE, 'MM'),
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, P.PRD_L_NM,
                         NVL(P.PRD_F_NM, P.PRD_L_NM)
                      ),
                      TO_CHAR(M.RT_BILL_DATE, 'WW'),
                      TO_CHAR(M.RT_BILL_DATE, 'DD'),
                      M.RT_BILL_CURRENCY,
                      M.V_CODE,
                      M.V_NAME,
                      I.I_CODE,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_NAME,
                         NVL(I.I_E_NAME, I.I_NAME)
                      ),
                      M.PMAN_CODE,
                      D.W_CODE,
                      I.G_CODE,
                      I.MNG_CODE,
                      I.SUBG_CODE,
                      I.ASSISTANT_NO,
                      I.DETAIL_NO,
                      I.GROUP_NO,
                      I.ITEM_TYPE,
                      I.GRP_CLASS_CODE,
                      DECODE
                         (
                         NVL(IAS_PRMTR_PKG.GETPVAL(P_PRMTR => 'LANG_DFLT'), 1),
                         1, I.I_DESC,
                         NVL(I.I_F_DESC, I.I_DESC)
                      ),
                      D.CC_CODE,
                      D.PJ_NO,
                      D.ACTV_NO) M
   WHERE    1 = 1
   GROUP BY M.YR_NO,
            M.BRN_NO,
            M.DOC_DATE,
            M.HALF_NO,
            M.QRTR_NO,
            M.PRD_NO,
            M.PRD_NM,
            M.WEEK_NO,
            M.DAY_NO,
            M.CUR_CODE,
            M.VND_CODE,
            M.VND_NM,
            M.ITM_CODE,
            M.ITM_NM,
            M.PMAN_CODE,
            M.W_CODE,
            M.MN_GRP_CODE,
            M.SUB_GRP_CODE,
            M.UNDR_SUB_GRP_CODE,
            M.ASSTNT_GRP_CODE,
            M.DTL_GRP_CODE,
            M.ALTRNTV_GRP_CODE,
            M.ITM_TYP,
            M.ITM_CLSSFCTN,
            M.ITM_DSC,
            M.CC_CODE,
            M.PJ_NO,
            M.ACTV_NO 
;

--------------------------------------------------------------
-- View 176: INV_REEVAL_CHK_COST
--------------------------------------------------------------
CREATE VIEW "INV_REEVAL_CHK_COST" ("I_CODE","EXPR","ITM_COST","ITM_COST_REEVAL","DIFF_COST") AS 
SELECT Null i_code,Null Expr,Null Itm_cost,Null Itm_cost_reeval,Null Diff_cost From Dual
;

--------------------------------------------------------------
-- View 177: CHK_RCRD_MUST_REVLT
--------------------------------------------------------------
CREATE VIEW "CHK_RCRD_MUST_REVLT" ("I_CODE","EXPR","OP_RCRD_CNT","REEVAL_RCRD_CNT","REEVAL_CNT") AS 
SELECT max_rcrd.i_code,max_rcrd.expr,max_rcrd.rcrd_count op_rcrd_cnt,min_rcrd.rcrd_count
 reeval_rcrd_cnt,max_rcrd.rcrd_count-min_rcrd.rcrd_count reeval_cnt from(
                select item_movement.i_code,case when 3=2 then item_movement.w_code when
 3=3 then item_movement.whg_code ELSE 0  end expr 
                ,count(last_reeval_serial)rcrd_count from item_movement,
                (select i_code,(case when 3=2 then w_code when 3=3 then whg_code ELSE 0  end) expr 
                ,min(last_reeval_serial)last_reeval_serial from ias_itm_wcode
                group by i_code,case when 3=2 then w_code when 3=3 then whg_code ELSE 0  end)wcode_tbl
                where wcode_tbl.i_code=item_movement.i_code 
                and wcode_tbl.expr=case when 3=2 then item_movement.w_code when 3=3 then item_movement.whg_code ELSE 0  end
                 and serial<=NVL(last_reeval_serial,SERIAL)
                group by item_movement.i_code,case when 3=2 then item_movement.w_code
 when 3=3 then item_movement.whg_code ELSE 0  end
                )min_rcrd,(
                select i_code,(case when 3=2 then w_code when 3=3 then whg_code ELSE 0  end) expr 
                ,count(serial)rcrd_count from item_movement
                group by i_code,case when 3=2 then w_code when 3=3 then whg_code ELSE 0  end
                )max_rcrd
                where max_rcrd.i_code=min_rcrd.i_code and max_rcrd.expr=min_rcrd.expr
;

--------------------------------------------------------------
-- View 178: SHO_V_IAS_QUT_PRM_DTL
--------------------------------------------------------------
CREATE VIEW "SHO_V_IAS_QUT_PRM_DTL" ("QUOT_NO","QUOT_SER","I_CODE","ITM_UNT","P_SIZE"
,"I_PRICE","RCRD_NO","BARCODE","F_QTY","T_QTY","F_AMT","T_AMT","DISC_TYPE","DISC_AMT_PER"
,"QT_I_CODE","FREE_QTY","QT_ITM_UNT","QT_QTY","W_CODE","WHG_CODE","CNTRY_NO","PROV_NO"
,"CITY_NO","R_CODE","CARD_AMT","COMP_QTY","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT"
,"EXPIRE_DATE","BATCH_NO","C_CODE","C_GROUP_CODE","C_CLASS","C_DEGREE","G_CODE"
,"MNG_CODE","SUBG_CODE","ASSISTANT_NO","DETAIL_NO","GROUP_NO","ITEM_TYPE"
,"GRP_CLASS_CODE","PRM_GRP_NO","BANK_NO","MAX_QT_QTY_DOC","BILL_QTY") AS 
SELECT M.Quot_No,
       M.Quot_Ser,
       M.I_Code,
       M.Itm_Unt,
       M.P_Size, 
       M.I_Price,
       M.Rcrd_No, 
       M.Barcode, 
       M.F_Qty, 
       M.T_Qty, 
       M.F_Amt, 
       M.T_Amt, 
       M.Disc_Type,
       M.Disc_Amt_Per, 
       M.Qt_I_Code,
       M.Free_Qty,
       M.Qt_Itm_Unt,
       M.Qt_Qty, 
       M.W_Code,
       M.Whg_Code, 
       M.Cntry_No, 
       M.Prov_No, 
       M.City_No, 
       M.R_Code, 
       M.Card_Amt,
       M.Comp_Qty, 
       M.Cmp_No, 
       M.Brn_No, 
       M.Brn_Year, 
       M.Brn_Usr, 
       M.Up_Cnt,
       M.Expire_Date, 
       M.Batch_No, 
       M.C_Code,
       M.C_Group_Code, 
       M.C_Class, 
       M.C_Degree, 
       M.G_Code, 
       M.Mng_Code,
       M.Subg_Code, 
       M.Assistant_No, 
       M.Detail_No, 
       M.Group_No, 
       M.Item_Type,
       M.Grp_Class_Code, 
       M.Prm_Grp_No, 
       M.Bank_No, 
       M.Max_Qt_Qty_Doc,
       Nvl((SELECT SUM (NVL (b.i_qty, 0)+nvl(FREE_QTY,0))
                           FROM   ias_bill_dtl b
                           WHERE  m.quot_ser = b.qt_prm_ser AND m.rcrd_no = b.qt_prm_rcrd_no),0) bill_qty
From   Ias_Qut_Prm_Dtl M
Where 1 = (Case
             When M.I_Code Is Not Null
                Then (Select 1
                      From   IAS_ITM_ONLINE
                      Where  I_Code = M.I_Code
                      AND    ITM_UNT=M.ITM_UNT
                      And    Rownum <= 1)
             Else 1
          End)
;

--------------------------------------------------------------
-- View 179: SHO_V_IAS_QUT_PRM_SUB_DTL
--------------------------------------------------------------
CREATE VIEW "SHO_V_IAS_QUT_PRM_SUB_DTL" ("RCRD_NO","QUOT_NO","QUOT_SER","I_CODE"
,"FREE_QTY","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","UP_CNT","ITM_UNT","P_SIZE"
,"SHO_SYS_TYP") AS 
SELECT M.RCRD_NO, M.QUOT_NO, M.QUOT_SER, 
   M.I_CODE, M.FREE_QTY, M.CMP_NO, 
   M.BRN_NO, M.BRN_YEAR, M.BRN_USR, 
   M.UP_CNT, M.ITM_UNT, M.P_SIZE,I.SHO_SYS_TYP
FROM IAS_QUT_PRM_SUB_DTL M ,IAS_ITM_ONLINE I
Where I.I_Code = M.I_Code
  And I.Itm_Unt = M.Itm_Unt
;

--------------------------------------------------------------
-- View 180: IAS_V_LAST_UPD_ITM
--------------------------------------------------------------
CREATE VIEW "IAS_V_LAST_UPD_ITM" ("I_CODE","LAST_UPDATE") AS 
SELECT I_CODE,MAX(MAX_UPDATE) LAST_UPDATE FROM 
( SELECT I_CODE,MAX(NVL(UP_DATE,AD_DATE)) MAX_UPDATE FROM IAS_ITM_ONLINE GROUP BY I_CODE
  UNION ALL
  SELECT I_CODE,MAX(NVL(UP_DATE,AD_DATE)) MAX_UPDATE FROM IAS_ITEM_PRICE GROUP BY I_CODE
  UNION ALL
  SELECT I_CODE,MAX(NVL(UP_DATE,AD_DATE)) MAX_UPDATE FROM IAS_RESERVE_DTL GROUP BY I_CODE
  UNION ALL
  SELECT I_CODE,MAX(UP_DATE) MAX_UPDATE FROM IAS_ITM_WCODE GROUP BY I_CODE)
GROUP BY I_CODE
;

--------------------------------------------------------------
-- View 181: ARS_KPI_NET_SALES_PRD_VW
--------------------------------------------------------------
CREATE VIEW "ARS_KPI_NET_SALES_PRD_VW" ("YR_NO","BRN_NO","BRN_NM","DOC_DATE","HALF_NO"
,"QRTR_NO","PRD_NO","PRD_NM","WEEK_NO","DAY_NO","CUR_CODE","CST_CODE","CST_NM","ITM_CODE"
,"ITM_NM","SMAN_CODE","SMAN_NM","R_CODE","W_CODE","W_NM","MN_GRP_CODE","SUB_GRP_CODE"
,"UNDR_SUB_GRP_CODE","ASSTNT_GRP_CODE","DTL_GRP_CODE","ALTRNTV_GRP_CODE","ITM_TYP"
,"ITM_CLSSFCTN","ITM_DSC","CC_CODE","CC_NM","PJ_NO","PJ_NM","ACTV_NO","ACTV_NM"
,"SAL_AMT_L","SAL_AMT_F","SAL_DSCNT_AMT_L","SAL_DSCNT_AMT_F","SAL_TAX_AMT_L"
,"SAL_TAX_AMT_F","SAL_OTHR_AMT_L","SAL_OTHR_AMT_F","RT_SAL_AMT_L","RT_SAL_AMT_F"
,"RT_SAL_DSCNT_AMT_L","RT_SAL_DSCNT_AMT_F","RT_SAL_TAX_AMT_L","RT_SAL_TAX_AMT_F"
,"RT_SAL_OTHR_AMT_L","RT_SAL_OTHR_AMT_F","NET_SAL_NOT_TAX_OTHR_AMT_L"
,"NET_SAL_NOT_TAX_OTHR_AMT_F","NET_SAL_AMT_L","NET_SAL_AMT_F","NET_BILL_AMT_L"
,"NET_STK_AMT_L","NET_PROFT_AMT_L","NET_BILL_AMT_STK","NET_STK_AMT_STK"
,"NET_PROFT_AMT_STK") AS 
SELECT     M.YR_NO,
            M.BRN_NO,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(BRN_LNAME,BRN_FNAME),NVL(BRN_FNAME,BRN_LNAME))FROM S_BRN WHERE
 BRN_NO = M.BRN_NO  ) BRN_NM,
            M.DOC_DATE,
            M.HALF_NO,
            M.QRTR_NO,
            M.PRD_NO,
            M.PRD_NM,
            M.WEEK_NO,
            M.DAY_NO,
            M.CUR_CODE,
            M.CST_CODE,
            M.CST_NM,
            M.ITM_CODE,
            M.ITM_NM,
            M.SMAN_CODE,
            --IAS_SMAN_PKG.GET_SMAN_NAME (P_REP_CODE => M.REP_CODE,P_LNG_NO =>
 IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT')) SMAN_NM,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(REPRS_A_NAME,REPRS_E_NAME),NVL(REPRS_E_NAME,REPRS_A_NAME))FROM
 SALES_MAN WHERE REPRS_CODE = M.SMAN_CODE  ) SMAN_NM,
            M.R_CODE,
            M.W_CODE,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(W_NAME,W_E_NAME),NVL(W_E_NAME,W_NAME))FROM WAREHOUSE_DETAILS WHERE
 W_CODE = M.W_CODE  ) W_NM,
            M.MN_GRP_CODE,
            M.SUB_GRP_CODE,
            M.UNDR_SUB_GRP_CODE,
            M.ASSTNT_GRP_CODE,
            M.DTL_GRP_CODE,
            M.ALTRNTV_GRP_CODE,
            M.ITM_TYP,
            M.ITM_CLSSFCTN,
            M.ITM_DSC,
            M.CC_CODE,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(CC_A_NAME,CC_E_NAME),NVL(CC_E_NAME,CC_A_NAME))FROM COST_CENTERS
 WHERE CC_CODE = M.CC_CODE  ) CC_NM,
            M.PJ_NO,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(PJ_A_NAME,PJ_E_NAME),NVL(PJ_A_NAME,PJ_E_NAME))FROM IAS_PROJECTS
 WHERE PJ_NO = M.PJ_NO  ) PJ_NM,
            M.ACTV_NO,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(ACTV_A_NAME,ACTV_E_NAME),NVL(ACTV_E_NAME,ACTV_A_NAME))FROM
 IAS_ACTVTY WHERE ACTV_NO = M.ACTV_NO  ) ACTV_NM,
            SUM (M.SAL_AMT_L) SAL_AMT_L,
            SUM (M.SAL_AMT_F) SAL_AMT_F,
            SUM (M.SAL_DSCNT_AMT_L) SAL_DSCNT_AMT_L,
            SUM (M.SAL_DSCNT_AMT_F) SAL_DSCNT_AMT_F,
            SUM (M.SAL_TAX_AMT_L) SAL_TAX_AMT_L,
            SUM (M.SAL_TAX_AMT_F) SAL_TAX_AMT_F,
            SUM (M.SAL_OTHR_AMT_L) SAL_OTHR_AMT_L,
            SUM (M.SAL_OTHR_AMT_F) SAL_OTHR_AMT_F,
            SUM (M.RT_SAL_AMT_L) RT_SAL_AMT_L,
            SUM (M.RT_SAL_AMT_F) RT_SAL_AMT_F,
            SUM (M.RT_SAL_DSCNT_AMT_L) RT_SAL_DSCNT_AMT_L,
            SUM (M.RT_SAL_DSCNT_AMT_F) RT_SAL_DSCNT_AMT_F,
            SUM (M.RT_SAL_TAX_AMT_L) RT_SAL_TAX_AMT_L,
            SUM (M.RT_SAL_TAX_AMT_F) RT_SAL_TAX_AMT_F,
            SUM (M.RT_SAL_OTHR_AMT_L) RT_SAL_OTHR_AMT_L,
            SUM (M.RT_SAL_OTHR_AMT_F) RT_SAL_OTHR_AMT_F,
            ROUND (SUM ( (M.SAL_AMT_L) - (M.SAL_DSCNT_AMT_L))- SUM ( (M.RT_SAL_AMT_L) -
 (M.RT_SAL_DSCNT_AMT_L)),4) NET_SAL_NOT_TAX_OTHR_AMT_L,
            ROUND (SUM ( (M.SAL_AMT_F) - (M.SAL_DSCNT_AMT_F))- SUM ( (M.RT_SAL_AMT_F) -
 (M.RT_SAL_DSCNT_AMT_F)),4) NET_SAL_NOT_TAX_OTHR_AMT_F,
            ROUND (SUM (M.SAL_AMT_L)- SUM (M.SAL_DSCNT_AMT_L)+ SUM (M.SAL_TAX_AMT_L)+ SUM (M.SAL_OTHR_AMT_L),4)
          - ROUND (SUM (M.RT_SAL_AMT_L)- SUM (M.RT_SAL_DSCNT_AMT_L)+ SUM
 (M.RT_SAL_TAX_AMT_L)+ SUM (M.RT_SAL_OTHR_AMT_L),4) NET_SAL_AMT_L,
            ROUND (SUM (M.SAL_AMT_F)- SUM (M.SAL_DSCNT_AMT_F)+ SUM (M.SAL_TAX_AMT_F)+ SUM (M.SAL_OTHR_AMT_F),4)
          - ROUND (SUM (M.RT_SAL_AMT_F)- SUM (M.RT_SAL_DSCNT_AMT_F)+ SUM
 (M.RT_SAL_TAX_AMT_F)+ SUM (M.RT_SAL_OTHR_AMT_F),4) NET_SAL_AMT_F,
            SUM (M.NET_BILL_AMT_L) NET_BILL_AMT_L,
            SUM (M.NET_STK_AMT_L)  NET_STK_AMT_L,
            ROUND (SUM (M.NET_BILL_AMT_L) - SUM (M.NET_STK_AMT_L), 4) NET_PROFT_AMT_L,
            SUM (M.NET_BILL_AMT_STK) NET_BILL_AMT_STK,
            SUM (M.NET_STK_AMT_STK) NET_STK_AMT_STK,
            ROUND (SUM (M.NET_BILL_AMT_STK) - SUM (M.NET_STK_AMT_STK), 4) NET_PROFT_AMT_STK
       FROM ( 
             SELECT   M.BRN_YEAR YR_NO,
                      M.BRN_NO,
                      M.BILL_DATE DOC_DATE ,
                      ROUND (TO_CHAR (M.BILL_DATE, 'Q') / 2) HALF_NO,
                      ROUND (TO_CHAR (M.BILL_DATE, 'Q') ) QRTR_NO,
                      TO_CHAR (M.BILL_DATE, 'MM') PRD_NO,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)) PRD_NM,
                      TO_CHAR (M.BILL_DATE, 'WW') WEEK_NO,
                      TO_CHAR (M.BILL_DATE, 'DD') DAY_NO,
                      M.BILL_CURRENCY CUR_CODE,
                      M.C_CODE CST_CODE,
                    --NVL (M.C_NAME,IAS_CST_PKG.GET_C_NAME ( P_C_CODE => M.C_CODE
,P_LNG_NO => IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'))) CST_NM,
                      M.C_NAME CST_NM,
                      I.I_CODE ITM_CODE,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 I.I_NAME,NVL (I.I_E_NAME, I.I_NAME))  ITM_NM,
                      M.REP_CODE SMAN_CODE,                      
                      M.R_CODE,
                      D.W_CODE,
                      I.G_CODE MN_GRP_CODE,
                      I. MNG_CODE SUB_GRP_CODE,
                      I.SUBG_CODE UNDR_SUB_GRP_CODE,
                      I.ASSISTANT_NO ASSTNT_GRP_CODE,                      
                      I.DETAIL_NO DTL_GRP_CODE,
                      I.GROUP_NO ALTRNTV_GRP_CODE,
                      I.ITEM_TYPE ITM_TYP,
                      I.GRP_CLASS_CODE ITM_CLSSFCTN,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 I.I_DESC,NVL (I.I_F_DESC, I.I_DESC)) ITM_DSC,
                      D.CC_CODE,
                      D.PJ_NO,
                      D.ACTV_NO,
                      ROUND ( SUM (NVL (D.I_PRICE, 0)* NVL (D.I_QTY, 0)* NVL (M.BILL_RATE, 1)),4) SAL_AMT_L,
                      ROUND (SUM (NVL (D.I_PRICE, 0) * NVL (D.I_QTY, 0)), 4) SAL_AMT_F,
                      ROUND (SUM (NVL (D.DIS_AMT, 0)* NVL (D.I_QTY, 0)* NVL (M.BILL_RATE, 1)),4) SAL_DSCNT_AMT_L,
                      ROUND (SUM (NVL (D.DIS_AMT, 0) * NVL (D.I_QTY, 0)),4) SAL_DSCNT_AMT_F,
                      ROUND (SUM (NVL (D.VAT_AMT, 0)* NVL (D.I_QTY, 0)* NVL (M.BILL_RATE, 1)),4) SAL_TAX_AMT_L,
                      ROUND (SUM (NVL (D.VAT_AMT, 0) * NVL (D.I_QTY, 0)),4) SAL_TAX_AMT_F,
                      ROUND (SUM (NVL (D.OTHR_AMT, 0)* NVL (D.I_QTY, 0)* NVL (M.BILL_RATE, 1)),4) SAL_OTHR_AMT_L,
                      ROUND (SUM (NVL (D.OTHR_AMT, 0) * NVL (D.I_QTY, 0)),4) SAL_OTHR_AMT_F,
                      0 RT_SAL_AMT_L,
                      0 RT_SAL_AMT_F,
                      0 RT_SAL_DSCNT_AMT_L,
                      0 RT_SAL_DSCNT_AMT_F,
                      0 RT_SAL_TAX_AMT_L,
                      0 RT_SAL_TAX_AMT_F,
                      0 RT_SAL_OTHR_AMT_L,
                      0 RT_SAL_OTHR_AMT_F,
                      ROUND (SUM ((NVL (D.I_PRICE, 0) - NVL (D.DIS_AMT, 0))* NVL (D.I_QTY
, 0)* NVL (M.BILL_RATE, 1)),4) NET_BILL_AMT_L,
                      ROUND (SUM ((NVL (D.I_QTY, 0) + NVL (D.FREE_QTY, 0))* NVL
 (D.STK_COST, 0)* NVL (M.STOCK_RATE, 1)),4) NET_STK_AMT_L,
                      ROUND (SUM (((NVL (D.I_PRICE, 0) - NVL (D.DIS_AMT, 0))* NVL
 (D.I_QTY, 0)* NVL (M.BILL_RATE, 1))/ NVL (M.STOCK_RATE, 1)),4) NET_BILL_AMT_STK,
                      ROUND (SUM ((NVL (D.I_QTY, 0) + NVL (D.FREE_QTY, 0))* NVL (D.STK_COST, 0)),4) NET_STK_AMT_STK
                 FROM IAS_BILL_MST M, IAS_BILL_DTL D,IAS_ITM_MST I, S_PRD_DTL P
                WHERE M.BILL_SER                  = D.BILL_SER
                  AND D.I_CODE                    = I.I_CODE
                  AND M.BRN_YEAR                  = P.YR_NO
                  AND TO_CHAR (M.BILL_DATE, 'MM') = P.PRD_NO
                  AND NVL (M.STAND_BY, 0)         = 0
             GROUP BY M.BRN_YEAR,
                      M.BRN_NO,
                      M.BILL_DATE,
                      ROUND (TO_CHAR (M.BILL_DATE, 'Q') / 2),
                      ROUND (TO_CHAR (M.BILL_DATE, 'Q') ),
                      TO_CHAR (M.BILL_DATE, 'MM'),
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)),
                      TO_CHAR (M.BILL_DATE, 'WW'),
                      TO_CHAR (M.BILL_DATE, 'DD'),
                      M.BILL_CURRENCY ,
                      M.C_CODE,
                    --NVL (M.C_NAME,IAS_CST_PKG.GET_C_NAME ( P_C_CODE => M.C_CODE
,P_LNG_NO => IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'))) ,
                      M.C_NAME ,                      
                      I.I_CODE,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 I.I_NAME,NVL (I.I_E_NAME, I.I_NAME)),                      
                      M.REP_CODE,
                      M.R_CODE,
                      D.W_CODE,
                      I.G_CODE,
                      I.MNG_CODE,
                      I.SUBG_CODE,
                      I.ASSISTANT_NO,
                      I.DETAIL_NO ,
                      I.GROUP_NO ,
                      I.ITEM_TYPE ,
                      I.GRP_CLASS_CODE ,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, I.I_DESC,NVL (I.I_F_DESC, I.I_DESC)),
                      D.CC_CODE,
                      D.PJ_NO,
                      D.ACTV_NO                       
             UNION ALL
               SELECT M.BRN_YEAR YR_NO,
                      M.BRN_NO,
                      M.RT_BILL_DATE DOC_DATE,
                      ROUND (TO_CHAR (M.RT_BILL_DATE, 'Q') / 2) HALF_NO,
                      ROUND (TO_CHAR (M.RT_BILL_DATE, 'Q') ) QRTR_NO,
                      TO_CHAR (M.RT_BILL_DATE, 'MM') PRD_NO,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)) PRD_NM,
                      TO_CHAR (M.RT_BILL_DATE, 'WW') WEEK_NO,
                      TO_CHAR (M.RT_BILL_DATE, 'DD') DAY_NO,
                      M.RT_BILL_CURRENCY CUR_CODE,
                      M.C_CODE CST_CODE,
                    --NVL (M.C_NAME,IAS_CST_PKG.GET_C_NAME (P_C_CODE => M.C_CODE,P_LNG_NO
 => IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'))) CST_NM,
                      M.C_NAME CST_NM,
                      I.I_CODE ITM_CODE,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 I.I_NAME,NVL (I.I_E_NAME, I.I_NAME)) ITM_NM,
                      M.REP_CODE SMAN_CODE,
                    --IAS_SMAN_PKG.GET_SMAN_NAME (P_REP_CODE => M.REP_CODE ,P_LNG_NO =>
 IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT')) SMAN_NM,
                      M.R_CODE,
                      D.W_CODE,
                      I.G_CODE MN_GRP_CODE ,
                      I.MNG_CODE SUB_GRP_CODE ,
                      I.SUBG_CODE UNDR_SUB_GRP_CODE ,
                      I.ASSISTANT_NO,
                      I.DETAIL_NO DTL_GRP_CODE,
                      I.GROUP_NO ALTRNTV_GRP_CODE,
                      I.ITEM_TYPE ITM_TYP,
                      I.GRP_CLASS_CODE ITM_CLSSFCTN,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 I.I_DESC,NVL (I.I_F_DESC, I.I_DESC)) ITM_DSC,
                      D.CC_CODE,
                      D.PJ_NO,
                      D.ACTV_NO,                      
                      0 SAL_AMT_L,
                      0 SAL_AMT_F,
                      0 SAL_DSCNT_AMT_L,
                      0 SAL_DSCNT_AMT_F,
                      0 SAL_TAX_AMT_L,
                      0 SAL_TAX_AMT_F,
                      0 SAL_OTHR_AMT_L,
                      0 SAL_OTHR_AMT_F,
                      ROUND (SUM (NVL (D.I_PRICE, 0)* NVL (D.I_QTY, 0)* NVL (M.RT_BILL_RATE, 1)),4) RT_SAL_AMT_L,
                      ROUND (SUM (NVL (D.I_PRICE, 0) * NVL (D.I_QTY, 0)), 4) RT_SAL_AMT_F,
                      ROUND (SUM (NVL (D.DIS_AMT, 0)* NVL (D.I_QTY, 0)* NVL (M.RT_BILL_RATE, 1)),4) RT_SAL_DSCNT_AMT_L,
                      ROUND (SUM (NVL (D.DIS_AMT, 0) * NVL (D.I_QTY, 0)),4) RT_SAL_DSCNT_AMT_F,
                      ROUND (SUM (NVL (D.VAT_AMT, 0)* NVL (D.I_QTY, 0)* NVL (M.RT_BILL_RATE, 1)),4) RT_SAL_TAX_AMT_L,
                      ROUND (SUM (NVL (D.VAT_AMT, 0) * NVL (D.I_QTY, 0)),4) RT_SAL_TAX_AMT_F,
                      ROUND (SUM (NVL (D.OTHR_AMT, 0)* NVL (D.I_QTY, 0)* NVL (M.RT_BILL_RATE, 1)),4) RT_SAL_OTHR_AMT_L,
                      ROUND (SUM (NVL (D.OTHR_AMT, 0) * NVL (D.I_QTY, 0)),4) RT_SAL_OTHR_AMT_F,
                      ROUND (SUM ((NVL (D.I_PRICE, 0) - NVL (D.DIS_AMT, 0))* NVL (D.I_QTY
, 0)* NVL (M.RT_BILL_RATE, 1)),4)* -1 NET_BILL_AMT_L,
                      ROUND (SUM ((NVL (D.I_QTY, 0) + NVL (D.FREE_QTY, 0))* NVL
 (D.STK_COST, 0)* NVL (M.STOCK_RATE, 1)),4)* -1 NET_STK_AMT_L,
                      ROUND (SUM (((NVL (D.I_PRICE, 0)- NVL (D.DIS_AMT, 0))* NVL (D.I_QTY
, 0)* NVL (M.RT_BILL_RATE, 1))/ NVL (M.STOCK_RATE, 1)),4)* -1 NET_BILL_AMT_STK,
                      ROUND (SUM ((NVL (D.I_QTY, 0) + NVL (D.FREE_QTY, 0))* NVL (D.STK_COST, 0)),4)* -1 NET_STK_AMT_STK
                 FROM IAS_RT_BILL_MST M, IAS_RT_BILL_DTL D, IAS_ITM_MST I , S_PRD_DTL P
                WHERE M.RT_BILL_SER                  = D.RT_BILL_SER
                  AND D.I_CODE                       = I.I_CODE
                  AND M.BRN_YEAR                     = P.YR_NO
                  AND TO_CHAR (M.RT_BILL_DATE, 'MM') = P.PRD_NO
                  AND NVL (M.STAND_BY, 0)            = 0
             GROUP BY M.BRN_YEAR,
                      M.BRN_NO,
                      M.RT_BILL_DATE,
                      ROUND (TO_CHAR (M.RT_BILL_DATE, 'Q') / 2),
                      ROUND (TO_CHAR (M.RT_BILL_DATE, 'Q') ),
                      TO_CHAR (M.RT_BILL_DATE, 'MM'),
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)),
                      TO_CHAR (M.RT_BILL_DATE, 'WW'),
                      TO_CHAR (M.RT_BILL_DATE, 'DD'),
                      M.RT_BILL_CURRENCY ,
                      M.C_CODE,
                    --NVL (M.C_NAME,IAS_CST_PKG.GET_C_NAME (P_C_CODE => M.C_CODE,P_LNG_NO
 => IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'))),
                      M.C_NAME,
                      I.I_CODE,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, I.I_NAME,NVL (I.I_E_NAME, I.I_NAME)),
                      M.REP_CODE,
                      M.R_CODE,
                      D.W_CODE,
                      I.G_CODE,
                      I.MNG_CODE,
                      I.SUBG_CODE,
                      I.ASSISTANT_NO,
                      I.DETAIL_NO ,
                      I.GROUP_NO ,
                      I.ITEM_TYPE ,
                      I.GRP_CLASS_CODE ,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, I.I_DESC,NVL (I.I_F_DESC, I.I_DESC)),
                      D.CC_CODE,
                      D.PJ_NO,
                      D.ACTV_NO                      
                      ) M
      WHERE 1 = 1
   GROUP BY M.YR_NO,
            M.BRN_NO,
            M.DOC_DATE,
            M.HALF_NO,
            M.QRTR_NO,
            M.PRD_NO,
            M.PRD_NM,
            M.WEEK_NO,
            M.DAY_NO,
            M.CUR_CODE,
            M.CST_CODE,
            M.CST_NM,
            M.ITM_CODE,
            M.ITM_NM,
            M.SMAN_CODE,
            M.R_CODE,
            M.W_CODE,
            M.MN_GRP_CODE,
            M.SUB_GRP_CODE,
            M.UNDR_SUB_GRP_CODE,
            M.ASSTNT_GRP_CODE,
            M.DTL_GRP_CODE,
            M.ALTRNTV_GRP_CODE,
            M.ITM_TYP,
            M.ITM_CLSSFCTN,
            M.ITM_DSC,
            M.CC_CODE,
            M.PJ_NO,
            M.ACTV_NO                       
;

--------------------------------------------------------------
-- View 182: ARS_KPI_NET_PYMNT_TYP_VW
--------------------------------------------------------------
CREATE VIEW "ARS_KPI_NET_PYMNT_TYP_VW" ("YR_NO","BRN_NO","BRN_NM","DOC_DATE","PRD_NO"
,"PRD_NM","CUR_CODE","PYMNT_TYP","PYMNT_TYP_NM","NET_PYMNT_AMT") AS 
SELECT M.YR_NO,
            M.BRN_NO,
            ( SELECT  DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR =>
 'LANG_DFLT'),1),1,NVL(BRN_LNAME,BRN_FNAME),NVL(BRN_FNAME,BRN_LNAME))FROM S_BRN WHERE
 BRN_NO = M.BRN_NO  ) BRN_NM,
            M.DOC_DATE,
            M.PRD_NO,
            M.PRD_NM,
            M.CUR_CODE,
          --M.CST_CODE,
          --M.SMAN_CODE,
            M.PYMNT_TYP,
            M.PYMNT_TYP_NM,
            SUM (M.NET_PYMNT_AMT) NET_PYMNT_AMT
       FROM (  SELECT M.BRN_YEAR YR_NO,
                      M.BRN_NO,
                      M.BILL_DATE DOC_DATE,
                      TO_CHAR (M.BILL_DATE, 'MM') PRD_NO,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)) PRD_NM,
                      M.BILL_CURRENCY CUR_CODE,
                    --M.C_CODE CST_CODE,
                    --M.REP_CODE SMAN_CODE,
                      M.BILL_DOC_TYPE PYMNT_TYP,
                      YS_GEN_PKG.GET_FLG_NM (P_FLG_CODE => 'TYPE_NAME_SI',P_FLG_VALUE
 =>M.BILL_DOC_TYPE ,P_LNG_NO =>NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1))
 PYMNT_TYP_NM ,
                      ROUND (SUM ((  NVL (M.BILL_AMT, 0)+ NVL (M.CHEQUE_AMT, 0)+ NVL
 (M.CR_CARD_AMT, 0)+ NVL (M.CR_CARD_AMT_SCND, 0)+ NVL (M.CR_CARD_AMT_THRD, 0)+ NVL
 (M.AC_AMT, 0)+ NVL (M.CPN_AMT, 0))* NVL (M.BILL_RATE, 1)),4) NET_PYMNT_AMT
                 FROM IAS_BILL_MST M, S_PRD_DTL P
                WHERE     M.BRN_YEAR = P.YR_NO
                      AND TO_CHAR (M.BILL_DATE, 'MM') = P.PRD_NO
                      AND NVL (M.STAND_BY, 0) = 0
             GROUP BY M.BRN_YEAR,
                      M.BRN_NO,
                      M.BILL_DATE,
                      TO_CHAR (M.BILL_DATE, 'MM'),
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)) ,
                      M.BILL_CURRENCY,
                    --M.C_CODE,
                    --M.REP_CODE,
                      M.BILL_DOC_TYPE,
                      YS_GEN_PKG.GET_FLG_NM (P_FLG_CODE => 'TYPE_NAME_SI',P_FLG_VALUE
 =>M.BILL_DOC_TYPE ,P_LNG_NO =>NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1)) 
             UNION ALL
               SELECT M.BRN_YEAR YR_NO,
                      M.BRN_NO,
                      M.RT_BILL_DATE DOC_DATE,
                      TO_CHAR (M.RT_BILL_DATE, 'MM') PRD_NO,
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1,
 P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)) PRD_NM,
                      M.RT_BILL_CURRENCY CUR_CODE,
                    --M.C_CODE CST_CODE,
                    --M.REP_CODE SMAN_CODE,
                      M.RT_BILL_DOC_TYPE PYMNT_TYP,
                      YS_GEN_PKG.GET_FLG_NM (P_FLG_CODE => 'TYPE_NAME_SI',P_FLG_VALUE
 =>M.RT_BILL_DOC_TYPE ,P_LNG_NO =>NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1))
 PYMNT_TYP_NM ,
                      ROUND (SUM ((  NVL (M.BILL_AMT, 0)+ NVL (M.CHEQUE_AMT, 0)+ NVL
 (M.CR_CARD_AMT, 0)+ NVL (M.CR_CARD_AMT_SCND, 0)+ NVL (M.CR_CARD_AMT_THRD, 0)+ NVL
 (M.AC_AMT, 0))* NVL (M.RT_BILL_RATE, 1)),4) NET_PYMNT_AMT
                 FROM IAS_RT_BILL_MST M, S_PRD_DTL P
                WHERE     M.BRN_YEAR = P.YR_NO
                      AND TO_CHAR (M.RT_BILL_DATE, 'MM') = P.PRD_NO
                      AND NVL (M.STAND_BY, 0) = 0
             GROUP BY M.BRN_YEAR,
                      M.BRN_NO,
                      M.RT_BILL_DATE,
                      TO_CHAR (M.RT_BILL_DATE, 'MM'),
                      DECODE (NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1),1, P.PRD_L_NM,NVL (P.PRD_F_NM, P.PRD_L_NM)) ,
                      M.RT_BILL_CURRENCY,
                    --M.C_CODE,
                    --M.REP_CODE,
                      M.RT_BILL_DOC_TYPE,
                      YS_GEN_PKG.GET_FLG_NM (P_FLG_CODE => 'TYPE_NAME_SI',P_FLG_VALUE
 =>M.RT_BILL_DOC_TYPE ,P_LNG_NO =>NVL(IAS_PRMTR_PKG.GETPVAL (P_PRMTR => 'LANG_DFLT'),1))
                      ) M
      WHERE 1 = 1 --AND M.PYMNT_TYP_NM IS NOT NULL
   GROUP BY M.YR_NO,
            M.BRN_NO,
            M.DOC_DATE,
            M.PRD_NO,
            M.PRD_NM,
            M.CUR_CODE,
          --M.CST_CODE,
          --M.SMAN_CODE,
            M.PYMNT_TYP,
            M.PYMNT_TYP_NM
;

--------------------------------------------------------------
-- View 183: IAS_V_BILL_DTL_OUT
--------------------------------------------------------------
CREATE VIEW "IAS_V_BILL_DTL_OUT" ("I_CODE","ITM_UNT","P_SIZE","W_CODE","EXPIRE_DATE"
,"BATCH_NO","I_QTY","FREE_QTY","OUT_QTY","OUT_FREE_QTY","BILL_DATE") AS 
SELECT D.I_code,D.Itm_Unt,D.P_Size,D.W_Code,D.Expire_Date,D.Batch_No,D.I_Qty,D.Free_Qty,D.Out_Qty,D.Out_Free_Qty ,M.Bill_Date 
                From Ias_Bill_Mst M,Ias_Bill_Dtl D
               Where M.Bill_Ser = D.Bill_Ser
                 And Nvl(M.Conn_Si_With_Outgong,0)=0
;

--------------------------------------------------------------
-- View 184: IAS_V_RT_BILL_DTL_OUT
--------------------------------------------------------------
CREATE VIEW "IAS_V_RT_BILL_DTL_OUT" ("I_CODE","ITM_UNT","P_SIZE","W_CODE","EXPIRE_DATE"
,"BATCH_NO","I_QTY","FREE_QTY","RET_QTY","RET_FREE_QTY","RT_BILL_DATE") AS 
SELECT D.I_code,D.Itm_Unt,D.P_Size,D.W_Code,D.Expire_Date,D.Batch_No,D.I_Qty,D.Free_Qty,D.Ret_Qty,D.Ret_Free_Qty ,M.Rt_Bill_Date 
                From Ias_Rt_Bill_Mst M,Ias_Rt_Bill_Dtl D
               Where M.Rt_Bill_Ser = D.Rt_Bill_Ser
                 And Nvl(M.P_year,0)<>3
;

--------------------------------------------------------------
-- View 185: S_V_PRD_DTL_YR
--------------------------------------------------------------
CREATE VIEW "S_V_PRD_DTL_YR" ("ROW_ID","UMARKER","PRD_TYP","PRD_NO","PRD_L_NM","PRD_F_NM"
,"F_DATE","T_DATE","YR_NO","INACTV","PRD_SEASON","UP_U_ID","UP_DATE","UP_CNT") AS 
SELECT ROWID ROW_ID,1 UMARKER , PRD_TYP,PRD_NO,PRD_L_NM,PRD_F_NM,F_DATE,T_DATE,YR_NO
,INACTV,PRD_SEASON,UP_U_ID,UP_DATE,UP_CNT FROM IAS20181.S_PRD_DTL        UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PRD_TYP,PRD_NO,PRD_L_NM,PRD_F_NM,F_DATE,T_DATE,YR_NO
,INACTV,PRD_SEASON,UP_U_ID,UP_DATE,UP_CNT FROM IAS20191.S_PRD_DTL        UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PRD_TYP,PRD_NO,PRD_L_NM,PRD_F_NM,F_DATE,T_DATE,YR_NO
,INACTV,PRD_SEASON,UP_U_ID,UP_DATE,UP_CNT FROM IAS20201.S_PRD_DTL        UNION ALL 
 SELECT ROWID ROW_ID,1 UMARKER , PRD_TYP,PRD_NO,PRD_L_NM,PRD_F_NM,F_DATE,T_DATE,YR_NO
,INACTV,PRD_SEASON,UP_U_ID,UP_DATE,UP_CNT FROM IAS20211.S_PRD_DTL        UNION ALL 
 SELECT ROWID ROW_ID,2 UMARKER , PRD_TYP,PRD_NO,PRD_L_NM,PRD_F_NM,F_DATE,T_DATE,YR_NO
,INACTV,PRD_SEASON,UP_U_ID,UP_DATE,UP_CNT FROM S_PRD_DTL        WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 186: IAS_V_DETAIL_OUT_BILLS_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_DETAIL_OUT_BILLS_YR" ("ROW_ID","UMARKER","OUT_NO","OUT_SER","BILL_NO"
,"BILL_SER","SI_TYPE","I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","I_PRICE"
,"STK_COST","W_CODE","CC_CODE","PJ_NO","ACTV_NO","EXPIRE_DATE","BATCH_NO","USE_SERIALNO"
,"DIS_AMT","VAT_AMT","VAT_PER","RCRD_NO","DOC_SEQUENCE","BARCODE","USE_ATTCH","REC_ATTCH"
,"OUT_TYPE","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","WT_UNT","WT_QTY","POST_CODE"
,"OTHR_AMT","SUB_C_CODE","ARGMNT_NO","ITEM_DESC","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"UP_CNT","AD_TRMNL_NM","UP_TRMNL_NM","EXTERNAL_POST") AS 
SELECT ROWID ROW_ID,1 UMARKER , OUT_NO,OUT_SER,BILL_NO,BILL_SER,SI_TYPE,I_CODE,I_QTY
,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE
,BATCH_NO,USE_SERIALNO,DIS_AMT,VAT_AMT,VAT_PER,RCRD_NO,DOC_SEQUENCE,BARCODE,USE_ATTCH
,REC_ATTCH,OUT_TYPE,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,OTHR_AMT
,SUB_C_CODE,ARGMNT_NO,ITEM_DESC,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,AD_TRMNL_NM
,UP_TRMNL_NM,EXTERNAL_POST FROM IAS20181.DETAIL_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID
,1 UMARKER , OUT_NO,OUT_SER,BILL_NO,BILL_SER,SI_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE
,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,USE_SERIALNO
,DIS_AMT,VAT_AMT,VAT_PER,RCRD_NO,DOC_SEQUENCE,BARCODE,USE_ATTCH,REC_ATTCH,OUT_TYPE
,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,OTHR_AMT,SUB_C_CODE,ARGMNT_NO
,ITEM_DESC,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,EXTERNAL_POST
 FROM IAS20191.DETAIL_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , OUT_NO,OUT_SER
,BILL_NO,BILL_SER,SI_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,USE_SERIALNO,DIS_AMT,VAT_AMT,VAT_PER
,RCRD_NO,DOC_SEQUENCE,BARCODE,USE_ATTCH,REC_ATTCH,OUT_TYPE,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,OTHR_AMT,SUB_C_CODE,ARGMNT_NO,ITEM_DESC,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,EXTERNAL_POST FROM
 IAS20201.DETAIL_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , OUT_NO,OUT_SER
,BILL_NO,BILL_SER,SI_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,USE_SERIALNO,DIS_AMT,VAT_AMT,VAT_PER
,RCRD_NO,DOC_SEQUENCE,BARCODE,USE_ATTCH,REC_ATTCH,OUT_TYPE,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,OTHR_AMT,SUB_C_CODE,ARGMNT_NO,ITEM_DESC,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,EXTERNAL_POST FROM
 IAS20211.DETAIL_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , OUT_NO,OUT_SER
,BILL_NO,BILL_SER,SI_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST
,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,USE_SERIALNO,DIS_AMT,VAT_AMT,VAT_PER
,RCRD_NO,DOC_SEQUENCE,BARCODE,USE_ATTCH,REC_ATTCH,OUT_TYPE,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,OTHR_AMT,SUB_C_CODE,ARGMNT_NO,ITEM_DESC,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,UP_CNT,AD_TRMNL_NM,UP_TRMNL_NM,EXTERNAL_POST FROM DETAIL_OUT_BILLS
 WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 187: IAS_V_RET_BILL_DTL_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_RET_BILL_DTL_YR" ("ROW_ID","UMARKER","RET_NO","RET_SER","RT_BILL_NO"
,"RT_BILL_SER","SR_TYPE","I_CODE","I_QTY","FREE_QTY","ITM_UNT","P_SIZE","P_QTY","I_PRICE"
,"STK_COST","W_CODE","CC_CODE","PJ_NO","ACTV_NO","EXPIRE_DATE","BATCH_NO","USE_SERIALNO"
,"DIS_AMT","DIS_PER","RCRD_NO","VAT_AMT","VAT_PER","RT_RCRD_NO","BARCODE","BILL_NO"
,"BILL_SER","OUT_NO","OUT_SER","SI_RCRD_NO","DOC_SEQUENCE","DOC_SEQUENCE_SI","USE_ATTCH"
,"REC_ATTCH","I_LENGTH","I_WIDTH","I_HEIGHT","I_NUMBER","WT_UNT","WT_QTY","POST_CODE"
,"ITEM_DESC","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","ARGMNT_NO","UP_CNT","EXTERNAL_POST")
 AS 
SELECT ROWID ROW_ID,1 UMARKER , RET_NO,RET_SER,RT_BILL_NO,RT_BILL_SER,SR_TYPE,I_CODE
,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO
,EXPIRE_DATE,BATCH_NO,USE_SERIALNO,DIS_AMT,DIS_PER,RCRD_NO,VAT_AMT,VAT_PER,RT_RCRD_NO
,BARCODE,BILL_NO,BILL_SER,OUT_NO,OUT_SER,SI_RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_SI
,USE_ATTCH,REC_ATTCH,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,ITEM_DESC
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,ARGMNT_NO,UP_CNT,EXTERNAL_POST FROM
 IAS20181.IAS_RET_BILL_DTL UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RET_NO,RET_SER
,RT_BILL_NO,RT_BILL_SER,SR_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE
,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,USE_SERIALNO,DIS_AMT,DIS_PER
,RCRD_NO,VAT_AMT,VAT_PER,RT_RCRD_NO,BARCODE,BILL_NO,BILL_SER,OUT_NO,OUT_SER,SI_RCRD_NO
,DOC_SEQUENCE,DOC_SEQUENCE_SI,USE_ATTCH,REC_ATTCH,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER
,WT_UNT,WT_QTY,POST_CODE,ITEM_DESC,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,ARGMNT_NO,UP_CNT
,EXTERNAL_POST FROM IAS20191.IAS_RET_BILL_DTL UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 RET_NO,RET_SER,RT_BILL_NO,RT_BILL_SER,SR_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT,P_SIZE,P_QTY
,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO,USE_SERIALNO,DIS_AMT
,DIS_PER,RCRD_NO,VAT_AMT,VAT_PER,RT_RCRD_NO,BARCODE,BILL_NO,BILL_SER,OUT_NO,OUT_SER
,SI_RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_SI,USE_ATTCH,REC_ATTCH,I_LENGTH,I_WIDTH,I_HEIGHT
,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,ITEM_DESC,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,ARGMNT_NO
,UP_CNT,EXTERNAL_POST FROM IAS20201.IAS_RET_BILL_DTL UNION ALL  SELECT ROWID ROW_ID,1
 UMARKER , RET_NO,RET_SER,RT_BILL_NO,RT_BILL_SER,SR_TYPE,I_CODE,I_QTY,FREE_QTY,ITM_UNT
,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE,BATCH_NO
,USE_SERIALNO,DIS_AMT,DIS_PER,RCRD_NO,VAT_AMT,VAT_PER,RT_RCRD_NO,BARCODE,BILL_NO,BILL_SER
,OUT_NO,OUT_SER,SI_RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_SI,USE_ATTCH,REC_ATTCH,I_LENGTH
,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,ITEM_DESC,CMP_NO,BRN_NO,BRN_YEAR
,BRN_USR,ARGMNT_NO,UP_CNT,EXTERNAL_POST FROM IAS20211.IAS_RET_BILL_DTL UNION ALL  SELECT
 ROWID ROW_ID,2 UMARKER , RET_NO,RET_SER,RT_BILL_NO,RT_BILL_SER,SR_TYPE,I_CODE,I_QTY
,FREE_QTY,ITM_UNT,P_SIZE,P_QTY,I_PRICE,STK_COST,W_CODE,CC_CODE,PJ_NO,ACTV_NO,EXPIRE_DATE
,BATCH_NO,USE_SERIALNO,DIS_AMT,DIS_PER,RCRD_NO,VAT_AMT,VAT_PER,RT_RCRD_NO,BARCODE,BILL_NO
,BILL_SER,OUT_NO,OUT_SER,SI_RCRD_NO,DOC_SEQUENCE,DOC_SEQUENCE_SI,USE_ATTCH,REC_ATTCH
,I_LENGTH,I_WIDTH,I_HEIGHT,I_NUMBER,WT_UNT,WT_QTY,POST_CODE,ITEM_DESC,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,ARGMNT_NO,UP_CNT,EXTERNAL_POST FROM IAS_RET_BILL_DTL WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 188: IAS_V_RET_BILL_MST_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_RET_BILL_MST_YR" ("ROW_ID","UMARKER","RET_NO","RET_SER"
,"RT_BILL_DOC_TYPE","RT_BILL_NO","RT_BILL_SER","RET_DATE","SR_TYPE","A_CY","AC_RATE"
,"STK_RATE","C_CODE","C_NAME","A_CODE","RET_POST","W_CODE","REF_NO","CC_CODE","PJ_NO"
,"ACTV_NO","CASH_NO","DOC_DESC","PR_REP","ATTACH_CNT","RT_TYPE","BILL_SER","BILL_NO"
,"R_CODE","DOC_BRN_NO","EXTERNAL_POST","RET_AMT","STAND_BY","FIELD1","FIELD2","FIELD3"
,"FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","AUDIT_REF"
,"AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","UP_CNT","POST_U_ID","POST_DATE","UNPOST_U_ID","UNPOST_DATE","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM","RET_BILL_TYP","AD_DATE_CLK") AS 
SELECT ROWID ROW_ID,1 UMARKER , RET_NO,RET_SER,RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER
,RET_DATE,SR_TYPE,A_CY,AC_RATE,STK_RATE,C_CODE,C_NAME,A_CODE,RET_POST,W_CODE,REF_NO
,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,DOC_DESC,PR_REP,ATTACH_CNT,RT_TYPE,BILL_SER,BILL_NO,R_CODE
,DOC_BRN_NO,EXTERNAL_POST,RET_AMT,STAND_BY,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6
,FIELD7,FIELD8,FIELD9,FIELD10,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE
,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,RET_BILL_TYP,AD_DATE_CLK FROM
 IAS20181.IAS_RET_BILL_MST UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RET_NO,RET_SER
,RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,RET_DATE,SR_TYPE,A_CY,AC_RATE,STK_RATE,C_CODE
,C_NAME,A_CODE,RET_POST,W_CODE,REF_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,DOC_DESC,PR_REP
,ATTACH_CNT,RT_TYPE,BILL_SER,BILL_NO,R_CODE,DOC_BRN_NO,EXTERNAL_POST,RET_AMT,STAND_BY
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AUDIT_REF
,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,RET_BILL_TYP,AD_DATE_CLK FROM IAS20191.IAS_RET_BILL_MST UNION ALL  SELECT
 ROWID ROW_ID,1 UMARKER , RET_NO,RET_SER,RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,RET_DATE
,SR_TYPE,A_CY,AC_RATE,STK_RATE,C_CODE,C_NAME,A_CODE,RET_POST,W_CODE,REF_NO,CC_CODE,PJ_NO
,ACTV_NO,CASH_NO,DOC_DESC,PR_REP,ATTACH_CNT,RT_TYPE,BILL_SER,BILL_NO,R_CODE,DOC_BRN_NO
,EXTERNAL_POST,RET_AMT,STAND_BY,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8
,FIELD9,FIELD10,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,RET_BILL_TYP,AD_DATE_CLK FROM
 IAS20201.IAS_RET_BILL_MST UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , RET_NO,RET_SER
,RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,RET_DATE,SR_TYPE,A_CY,AC_RATE,STK_RATE,C_CODE
,C_NAME,A_CODE,RET_POST,W_CODE,REF_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,DOC_DESC,PR_REP
,ATTACH_CNT,RT_TYPE,BILL_SER,BILL_NO,R_CODE,DOC_BRN_NO,EXTERNAL_POST,RET_AMT,STAND_BY
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,AUDIT_REF
,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT
,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM
,UP_TRMNL_NM,RET_BILL_TYP,AD_DATE_CLK FROM IAS20211.IAS_RET_BILL_MST UNION ALL  SELECT
 ROWID ROW_ID,2 UMARKER , RET_NO,RET_SER,RT_BILL_DOC_TYPE,RT_BILL_NO,RT_BILL_SER,RET_DATE
,SR_TYPE,A_CY,AC_RATE,STK_RATE,C_CODE,C_NAME,A_CODE,RET_POST,W_CODE,REF_NO,CC_CODE,PJ_NO
,ACTV_NO,CASH_NO,DOC_DESC,PR_REP,ATTACH_CNT,RT_TYPE,BILL_SER,BILL_NO,R_CODE,DOC_BRN_NO
,EXTERNAL_POST,RET_AMT,STAND_BY,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8
,FIELD9,FIELD10,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE
,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,RET_BILL_TYP,AD_DATE_CLK FROM IAS_RET_BILL_MST
 WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 189: IAS_V_MASTER_OUT_BILLS_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_MASTER_OUT_BILLS_YR" ("ROW_ID","UMARKER","OUT_NO","OUT_SER"
,"BILL_DOC_TYPE","BILL_NO","BILL_SER","OUT_DATE","BILL_CURRENCY","SI_TYPE","BILL_RATE"
,"STOCK_RATE","C_CODE","C_NAME","OUT_POST","W_CODE","REF_NO","CC_CODE","PJ_NO","ACTV_NO"
,"CASH_NO","A_DESC","PR_REP","REC_NAME","A_CODE","ATTACH_CNT","DRIVER_NO","R_CODE"
,"SUB_C_CODE","DOC_BRN_NO","PAID_AMT","OUT_AMT","FIELD1","FIELD2","FIELD3","FIELD4"
,"FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","EXTERNAL_POST","STAND_BY"
,"AUDIT_REF","AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","POST_U_ID","POST_DATE","UNPOST_U_ID","UNPOST_DATE"
,"OUT_TYPE","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM"
,"OUT_BILL_TYP","AD_DATE_CLK") AS 
SELECT ROWID ROW_ID,1 UMARKER , OUT_NO,OUT_SER,BILL_DOC_TYPE,BILL_NO,BILL_SER,OUT_DATE
,BILL_CURRENCY,SI_TYPE,BILL_RATE,STOCK_RATE,C_CODE,C_NAME,OUT_POST,W_CODE,REF_NO,CC_CODE
,PJ_NO,ACTV_NO,CASH_NO,A_DESC,PR_REP,REC_NAME,A_CODE,ATTACH_CNT,DRIVER_NO,R_CODE
,SUB_C_CODE,DOC_BRN_NO,PAID_AMT,OUT_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7
,FIELD8,FIELD9,FIELD10,EXTERNAL_POST,STAND_BY,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID
,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID
,UNPOST_DATE,OUT_TYPE,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,OUT_BILL_TYP
,AD_DATE_CLK FROM IAS20181.MASTER_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,1 UMARKER ,
 OUT_NO,OUT_SER,BILL_DOC_TYPE,BILL_NO,BILL_SER,OUT_DATE,BILL_CURRENCY,SI_TYPE,BILL_RATE
,STOCK_RATE,C_CODE,C_NAME,OUT_POST,W_CODE,REF_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_DESC
,PR_REP,REC_NAME,A_CODE,ATTACH_CNT,DRIVER_NO,R_CODE,SUB_C_CODE,DOC_BRN_NO,PAID_AMT
,OUT_AMT,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10
,EXTERNAL_POST,STAND_BY,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID
,AD_DATE,UP_U_ID,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,OUT_TYPE
,CMP_NO,BRN_NO,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,OUT_BILL_TYP,AD_DATE_CLK FROM
 IAS20191.MASTER_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , OUT_NO,OUT_SER
,BILL_DOC_TYPE,BILL_NO,BILL_SER,OUT_DATE,BILL_CURRENCY,SI_TYPE,BILL_RATE,STOCK_RATE
,C_CODE,C_NAME,OUT_POST,W_CODE,REF_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_DESC,PR_REP
,REC_NAME,A_CODE,ATTACH_CNT,DRIVER_NO,R_CODE,SUB_C_CODE,DOC_BRN_NO,PAID_AMT,OUT_AMT
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,EXTERNAL_POST
,STAND_BY,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,OUT_TYPE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,OUT_BILL_TYP,AD_DATE_CLK FROM
 IAS20201.MASTER_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,1 UMARKER , OUT_NO,OUT_SER
,BILL_DOC_TYPE,BILL_NO,BILL_SER,OUT_DATE,BILL_CURRENCY,SI_TYPE,BILL_RATE,STOCK_RATE
,C_CODE,C_NAME,OUT_POST,W_CODE,REF_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_DESC,PR_REP
,REC_NAME,A_CODE,ATTACH_CNT,DRIVER_NO,R_CODE,SUB_C_CODE,DOC_BRN_NO,PAID_AMT,OUT_AMT
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,EXTERNAL_POST
,STAND_BY,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,OUT_TYPE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,OUT_BILL_TYP,AD_DATE_CLK FROM
 IAS20211.MASTER_OUT_BILLS UNION ALL  SELECT ROWID ROW_ID,2 UMARKER , OUT_NO,OUT_SER
,BILL_DOC_TYPE,BILL_NO,BILL_SER,OUT_DATE,BILL_CURRENCY,SI_TYPE,BILL_RATE,STOCK_RATE
,C_CODE,C_NAME,OUT_POST,W_CODE,REF_NO,CC_CODE,PJ_NO,ACTV_NO,CASH_NO,A_DESC,PR_REP
,REC_NAME,A_CODE,ATTACH_CNT,DRIVER_NO,R_CODE,SUB_C_CODE,DOC_BRN_NO,PAID_AMT,OUT_AMT
,FIELD1,FIELD2,FIELD3,FIELD4,FIELD5,FIELD6,FIELD7,FIELD8,FIELD9,FIELD10,EXTERNAL_POST
,STAND_BY,AUDIT_REF,AUDIT_REF_DESC,AUDIT_REF_U_ID,AUDIT_REF_DATE,AD_U_ID,AD_DATE,UP_U_ID
,UP_DATE,UP_CNT,POST_U_ID,POST_DATE,UNPOST_U_ID,UNPOST_DATE,OUT_TYPE,CMP_NO,BRN_NO
,BRN_YEAR,BRN_USR,AD_TRMNL_NM,UP_TRMNL_NM,OUT_BILL_TYP,AD_DATE_CLK FROM MASTER_OUT_BILLS
 WHERE 1 = 2 
;

--------------------------------------------------------------
-- View 190: IAS_V_SO_BILL_QTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_SO_BILL_QTY" ("ORDER_NO","I_CODE","NET_QTY") AS 
SELECT a.order_no, a.i_code, 
				      nvl(a.i_qty,0)-nvl(b.i_qty,0) net_qty
				FROM ias_v_soqty a ,ias_v_bsoqty b
				where a.order_no= b.so_no(+) 
				  and a.i_code= b.i_code(+) 
				  and nvl(a.i_qty,0)-nvl(b.i_qty,0) >0
;

--------------------------------------------------------------
-- View 191: IAS_V_ACCNT_DTL_MSG
--------------------------------------------------------------
CREATE VIEW "IAS_V_ACCNT_DTL_MSG" ("AC_DTL_TYP","AC_CODE_DTL","A_NAME","E_NAME"
,"MOBILE_NO","SEND_LANG_NO","E_MAIL","MOV_TYP","TRNS_TYP","SEND_TYP","PST_TYP","BLNC_AMT"
,"INACTV","INACTV_DATE","INACTV_USR_NO","INACTV_RSON","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","UP_CNT","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT 1 Ac_Dtl_Typ, To_Char (B.Cash_No), B.Cash_Name, B.Cash_E_Name,
          A.Mobile_No, A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ,
          A.Send_Typ, A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date,
          A.Inactv_Usr_No, A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id,
          A.Up_Date, A.Up_Cnt, A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, Cash_In_Hand B
    Where A.Ac_Code_Dtl = B.Cash_No And A.Ac_Dtl_Typ = 1
   Union All
   Select 2 Ac_Dtl_Typ, To_Char (B.Bank_No), B.Bank_Name, B.Bank_Name,
          A.Mobile_No, A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ,
          A.Send_Typ, A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date,
          A.Inactv_Usr_No, A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id,
          A.Up_Date, A.Up_Cnt, A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, Cash_At_Bank B
    Where A.Ac_Code_Dtl = B.Bank_No And A.Ac_Dtl_Typ = 2
   Union All
   Select 3 Ac_Dtl_Typ, B.C_Code, B.C_A_Name, B.C_E_Name, A.Mobile_No,
          A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ, A.Send_Typ,
          A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date, A.Inactv_Usr_No,
          A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id, A.Up_Date, A.Up_Cnt,
          A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, Customer B
    Where A.Ac_Code_Dtl = B.C_Code And A.Ac_Dtl_Typ = 3
   Union All
   Select 4 Ac_Dtl_Typ, B.V_Code, B.V_A_Name, B.V_E_Name, A.Mobile_No,
          A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ, A.Send_Typ,
          A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date, A.Inactv_Usr_No,
          A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id, A.Up_Date, A.Up_Cnt,
          A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, V_Details B
    Where A.Ac_Code_Dtl = B.V_Code And A.Ac_Dtl_Typ = 4
   Union All
   Select 5 Ac_Dtl_Typ, B.Ac_Code_Dtl, B.Ac_Code_Dtl_L_Nm, B.Ac_Code_Dtl_F_Nm,
          A.Mobile_No, A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ,
          A.Send_Typ, A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date,
          A.Inactv_Usr_No, A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id,
          A.Up_Date, A.Up_Cnt, A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, Gls_V_Accnt_Dtl B
    Where A.Ac_Code_Dtl = B.Ac_Code_Dtl And A.Ac_Dtl_Typ = 5
   Union All
   Select 6 Ac_Dtl_Typ, B.Ac_Code_Dtl, B.Ac_Code_Dtl_L_Nm, B.Ac_Code_Dtl_F_Nm,
          A.Mobile_No, A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ,
          A.Send_Typ, A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date,
          A.Inactv_Usr_No, A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id,
          A.Up_Date, A.Up_Cnt, A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, Gls_V_Accnt_Dtl B
    Where A.Ac_Code_Dtl = B.Ac_Code_Dtl And A.Ac_Dtl_Typ = 6
   Union All
   Select 7 Ac_Dtl_Typ, To_Char (B.Emp_No), B.Emp_L_Nm, B.Emp_F_Nm,
          A.Mobile_No, A.Send_Lang_No, A.E_Mail, A.Mov_Typ, A.Trns_Typ,
          A.Send_Typ, A.Pst_Typ, A.Blnc_Amt, A.Inactv, A.Inactv_Date,
          A.Inactv_Usr_No, A.Inactv_Rson, A.Ad_U_Id, A.Ad_Date, A.Up_U_Id,
          A.Up_Date, A.Up_Cnt, A.Pr_Rep, A.Ad_Trmnl_Nm, A.Up_Trmnl_Nm
     From Ias_Accnt_Dtl_Msg A, S_Emp B
    Where A.Ac_Code_Dtl = B.Emp_No And A.Ac_Dtl_Typ = 7
;

--------------------------------------------------------------
-- View 192: IAS_V_USR_AP_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_AP_PRV" ("U_ID","USR_NAME","AP_TYPE","TYPE_NO","TYPE_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Ap_Type,
          C.Type_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Type_L_NM,
 C.Type_F_NM),Nvl (C.Type_F_NM, C.Type_L_NM)) Type_NM,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Priv_Ap A, User_R B,Ias_V_Ap_Types C
    Where   A.P_Type = C.Type_No
          And A.Ap_Type = C.Ap_Type
          And A.U_Id = B.U_Id
          And (Add_Flag = 1 Or View_Flag = 1)
  Union
 Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Ap_Type,
          A.Type_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (A.Type_L_NM,
 A.Type_F_NM),Nvl (A.Type_F_NM, A.Type_L_NM)) Type_NM,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From Ias_V_Ap_Types  A,User_R B
    Where Not Exists
             (Select 1
                From Ias_Priv_Ap
               Where P_Type = A.Type_No And Ap_Type = A.Ap_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 193: IAS_V_USR_AR_PRV
--------------------------------------------------------------
CREATE VIEW "IAS_V_USR_AR_PRV" ("U_ID","USR_NAME","AR_TYPE","TYPE_NO","TYPE_NM"
,"ADD_FLAG","VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Ar_Type,
          C.Type_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (C.Type_L_NM,
 C.Type_F_NM),Nvl (C.Type_F_NM, C.Type_L_NM)) Type_NM,
          A.Add_Flag,
          A.View_Flag,
          A.Ad_U_Id,
          A.Ad_Date,
          A.Up_U_Id,
          A.Up_Date,
          1 Rec_Src
     From Ias_Priv_Ar A, User_R B,Ias_V_Ar_Types C
    Where   A.S_Type = C.Type_No
          And A.Ar_Type = C.Ar_Type
          And A.U_Id = B.U_Id
          And (Add_Flag = 1 Or View_Flag = 1)
  Union
 Select B.U_Id,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
          A.Ar_Type,
          A.Type_No,
          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (A.Type_L_NM,
 A.Type_F_NM),Nvl (A.Type_F_NM, A.Type_L_NM)) Type_NM,
          0 Add_Flag,
          0 View_Flag,
          Null Ad_U_Id,
          Null Ad_Date,
          Null Up_U_Id,
          Null Up_Date,
          0 Rec_Src
     From Ias_V_Ar_Types  A,User_R B
    Where Not Exists
             (Select 1
                From Ias_Priv_Ar
               Where S_Type = A.Type_No And Ar_Type = A.Ar_Type And U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 194: IAS_V_NY_OUT_REQUEST_MST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_OUT_REQUEST_MST" ("OUT_REQ_TYPE","OUT_REQ_NO","OUT_REQ_SER"
,"OUT_REQ_DATE","W_CODE","F_W_CODE","HRCHY_NO","CC_CODE","PJ_NO","ACTV_NO","REQ_SIDE"
,"DOC_DESC","PROCESSED","INACTIVE","INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES"
,"APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","REF_NO","RESERVE_NO","USE_REQ_MORE_ONCE"
,"FIELD1","FIELD2","FIELD3","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"EXTERNAL_POST","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM"
,"PR_REP","DOC_SER_EXTRNL","C_CODE") AS 
SELECT "OUT_REQ_TYPE","OUT_REQ_NO","OUT_REQ_SER","OUT_REQ_DATE","W_CODE","F_W_CODE"
,"HRCHY_NO","CC_CODE","PJ_NO","ACTV_NO","REQ_SIDE","DOC_DESC","PROCESSED","INACTIVE"
,"INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES","APPROVED","APRV_U_ID","APRV_DATE"
,"APRV_DSC","REF_NO","RESERVE_NO","USE_REQ_MORE_ONCE","FIELD1","FIELD2","FIELD3"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","EXTERNAL_POST","CMP_NO","BRN_NO"
,"BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM","PR_REP","DOC_SER_EXTRNL","C_CODE" From
 Ias_Out_Request_Mst Where Out_Req_Ser In (Select Out_Req_Ser From
 Ias_V_Ny_Out_Request_Dtl)
;

--------------------------------------------------------------
-- View 195: IAS_V_NY_GR_INCOMING_MST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_GR_INCOMING_MST" ("INCOM_TYPE","INC_NO","INC_SER","INC_DATE"
,"W_CODE","CC_CODE","PJ_NO","ACTV_NO","DRIVER_NAME","CAR_NO","INC_DESC","REF_NO","FIELD1"
,"FIELD2","FIELD3","PROCESSED","EXTERNAL_POST","INACTIVE","INACTIVE_U_ID","INACTIVE_DATE"
,"INACTIVE_RES","APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM","PR_REP","MRP_MT_TYPE","MRP_MT_ORDER","MRP_MT_SQ") AS 
SELECT"INCOM_TYPE","INC_NO","INC_SER","INC_DATE","W_CODE","CC_CODE","PJ_NO","ACTV_NO"
,"DRIVER_NAME","CAR_NO","INC_DESC","REF_NO","FIELD1","FIELD2","FIELD3","PROCESSED"
,"EXTERNAL_POST","INACTIVE","INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES","APPROVED"
,"APRV_U_ID","APRV_DATE","APRV_DSC","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM","PR_REP"
,"MRP_MT_TYPE","MRP_MT_ORDER","MRP_MT_SQ" From Ias_Gr_Incoming_Mst Where Inc_Ser In
 (Select Inc_Ser From Ias_V_Ny_Gr_Incoming_Dtl)
;

--------------------------------------------------------------
-- View 196: IAS_V_NY_SALES_ORDER
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_SALES_ORDER" ("SO_TYPE","ORDER_NO","ORDER_SER","ORDER_DATE"
,"QUOT_NO","QUOT_SER","ORDER_CUR","CUR_RATE","C_CODE","C_NAME","A_DESC","CC_CODE","PJ_NO"
,"ACTV_NO","W_CODE","REP_CODE","PROCESED","STAND_BY","LOADED","REF_DOC_NO","REF_DOC_DATE"
,"DISC_AMT","DISC_AMT_MST","DISC_AMT_DTL","DISC_AMT_MST_VAT","VAT_AMT_DISC_MST"
,"APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","PREPARE_DATE","REC_DEALER_DATE"
,"DELIVERY_DATE","REPEAT_USE_IN_BILLS","INACTIVE","INACTIVE_RES","INACTIVE_DATE"
,"INACTIVE_U_ID","PAPER_NO","PAPER_SERIAL","R_CODE","PRM_CODE","DRIVER_NO"
,"BILL_DOC_TYPE","BILL_DUE_DATE","ORDER_EXPIRE_DATE","CHEQUE_DUE_DATE","EXTERNAL_POST"
,"PROCESS_INC_FLG","PROCESS_WRHS_TRNSFR_FLG","APPROVED_SALES_MNG","APRV_SALES_MNG_U_ID"
,"APRV_SALES_MNG_DATE","TRANSFER_PRODUCT","EXPORT","VAT_AMT","ORDER_AMT","EMP_NO"
,"OTHR_AMT","SI_TYPE","CLC_TYP_NO_TAX","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5"
,"FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","FIELD11","FIELD12","FIELD13","FIELD14"
,"INSRNCE_CMP_NO","INSRNCE_BNF_NO","INSRNCE_PRSON_NM","INSRNCE_CARD_NO"
,"INSRNCE_CARD_NO_FMLY","INSRNCE_RLTN_TYP","INSRNCE_CLSS_NO","INSRNCE_LOAD_PER"
,"INSRNCE_DIAGNOSIS","INSRNCE_MDCL_NO","INSRNCE_APPRVD_CODE","INSRNCE_CSH_AMT"
,"C_CODE_CSH","C_ADDRESS","C_MOBILE","NT_TRANSFR_PATH","LATITUDE","LONGITUDE","CASH_NO"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM","VAT_AMT_OTHR","DIFF_ACUTL_WGHT_SO_QTY"
,"TARE_WGHT","TARE_WGHT_DATE","TARE_WGHT_U_ID","GROSS_WGHT","GROSS_WGHT_DATE"
,"GROSS_WGHT_U_ID","DOC_SER_EXTRNL","CR_CARD_NO","DISC_AMT_AFTR_VAT","CLC_VAT_PRICE_TYP"
,"CNTRCT_NO","CNTRCT_BTCH_NO","CNTRCT_DATE","COL_NO","STOCK_RATE","PROCESS_OUT_FLG"
,"POINT_CALC_TYP_NO","POINT_CNT","POINT_CNT_ALL","POINT_RPLC_AMT","POINT_RPLC_CNT"
,"POINT_TYP_NO","MOBILE_NO","PROCESS_MRP_FLG","NOT_USE_QUT_PRM","QT_PRM_SER"
,"QT_PRM_RCRD_NO","QT_PRM_NO","CLC_TAX_FREE_QTY_FLG","INSRNCE_ADD_LMT_MST","AD_DATE_CLK"
,"SHO_SYS_TYP","ORDR_STAT_TYP","ORDR_TND","CST_SPCLST_NM","ORDR_NO_MUNL"
,"INSRNCE_ADD_LMT_DOC","INSRNCE_ADD_LMT_DTL","INSRNCE_LMT_AMT_LOC_DOC","PTNT_NO"
,"DCTR_NO","PTNT_TYP","DOC_NO_ADMSON","DOC_SRL_ADMSON","DOC_M_SQ","CST_ACCPT_TYP"
,"CST_ACCPT_U_ID","CST_ACCPT_DATE","CST_ACCPT_DSC","PROCESS_REQ_AUTO") AS 
SELECT"SO_TYPE","ORDER_NO","ORDER_SER","ORDER_DATE","QUOT_NO","QUOT_SER","ORDER_CUR"
,"CUR_RATE","C_CODE","C_NAME","A_DESC","CC_CODE","PJ_NO","ACTV_NO","W_CODE","REP_CODE"
,"PROCESED","STAND_BY","LOADED","REF_DOC_NO","REF_DOC_DATE","DISC_AMT","DISC_AMT_MST"
,"DISC_AMT_DTL","DISC_AMT_MST_VAT","VAT_AMT_DISC_MST","APPROVED","APRV_U_ID","APRV_DATE"
,"APRV_DSC","PREPARE_DATE","REC_DEALER_DATE","DELIVERY_DATE","REPEAT_USE_IN_BILLS"
,"INACTIVE","INACTIVE_RES","INACTIVE_DATE","INACTIVE_U_ID","PAPER_NO","PAPER_SERIAL"
,"R_CODE","PRM_CODE","DRIVER_NO","BILL_DOC_TYPE","BILL_DUE_DATE","ORDER_EXPIRE_DATE"
,"CHEQUE_DUE_DATE","EXTERNAL_POST","PROCESS_INC_FLG","PROCESS_WRHS_TRNSFR_FLG"
,"APPROVED_SALES_MNG","APRV_SALES_MNG_U_ID","APRV_SALES_MNG_DATE","TRANSFER_PRODUCT"
,"EXPORT","VAT_AMT","ORDER_AMT","EMP_NO","OTHR_AMT","SI_TYPE","CLC_TYP_NO_TAX","FIELD1"
,"FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10"
,"FIELD11","FIELD12","FIELD13","FIELD14","INSRNCE_CMP_NO","INSRNCE_BNF_NO"
,"INSRNCE_PRSON_NM","INSRNCE_CARD_NO","INSRNCE_CARD_NO_FMLY","INSRNCE_RLTN_TYP"
,"INSRNCE_CLSS_NO","INSRNCE_LOAD_PER","INSRNCE_DIAGNOSIS","INSRNCE_MDCL_NO"
,"INSRNCE_APPRVD_CODE","INSRNCE_CSH_AMT","C_CODE_CSH","C_ADDRESS","C_MOBILE"
,"NT_TRANSFR_PATH","LATITUDE","LONGITUDE","CASH_NO","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM","VAT_AMT_OTHR","DIFF_ACUTL_WGHT_SO_QTY","TARE_WGHT","TARE_WGHT_DATE"
,"TARE_WGHT_U_ID","GROSS_WGHT","GROSS_WGHT_DATE","GROSS_WGHT_U_ID","DOC_SER_EXTRNL"
,"CR_CARD_NO","DISC_AMT_AFTR_VAT","CLC_VAT_PRICE_TYP","CNTRCT_NO","CNTRCT_BTCH_NO"
,"CNTRCT_DATE","COL_NO","STOCK_RATE","PROCESS_OUT_FLG","POINT_CALC_TYP_NO","POINT_CNT"
,"POINT_CNT_ALL","POINT_RPLC_AMT","POINT_RPLC_CNT","POINT_TYP_NO","MOBILE_NO"
,"PROCESS_MRP_FLG","NOT_USE_QUT_PRM","QT_PRM_SER","QT_PRM_RCRD_NO","QT_PRM_NO"
,"CLC_TAX_FREE_QTY_FLG","INSRNCE_ADD_LMT_MST","AD_DATE_CLK","SHO_SYS_TYP","ORDR_STAT_TYP"
,"ORDR_TND","CST_SPCLST_NM","ORDR_NO_MUNL","INSRNCE_ADD_LMT_DOC","INSRNCE_ADD_LMT_DTL"
,"INSRNCE_LMT_AMT_LOC_DOC","PTNT_NO","DCTR_NO","PTNT_TYP","DOC_NO_ADMSON"
,"DOC_SRL_ADMSON","DOC_M_SQ","CST_ACCPT_TYP","CST_ACCPT_U_ID","CST_ACCPT_DATE"
,"CST_ACCPT_DSC","PROCESS_REQ_AUTO" From Sales_Order Where Order_Ser In (Select Order_Ser
 From Ias_V_Ny_Order_Detail)
;

--------------------------------------------------------------
-- View 197: IAS_V_NY_P_REQUEST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_P_REQUEST" ("PR_TYPE","PR_NO","PR_SER","PR_DATE","W_CODE","CC_CODE"
,"PJ_NO","ACTV_NO","HRCHY_NO","PR_DESC","SIDE_REQ","REQ_AVL_DATE","PR_SELECTED"
,"PR_PARTIAL","APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","ASSGN_TO_U_ID","ASSGN_U_ID"
,"ASSGN_DATE","OUT_REQ_TYPE","OUT_REQ_NO","OUT_REQ_SER","INACTIVE","INACTIVE_U_ID"
,"INACTIVE_RES","INACTIVE_DATE","REF_NO","V_CODE","V_NAME","AD_U_ID","AD_DATE","UP_U_ID"
,"UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM"
,"UP_TRMNL_NM","USE_AUTO_SYNC_VNDR","A_CY") AS 
SELECT "PR_TYPE","PR_NO","PR_SER","PR_DATE","W_CODE","CC_CODE","PJ_NO","ACTV_NO"
,"HRCHY_NO","PR_DESC","SIDE_REQ","REQ_AVL_DATE","PR_SELECTED","PR_PARTIAL","APPROVED"
,"APRV_U_ID","APRV_DATE","APRV_DSC","ASSGN_TO_U_ID","ASSGN_U_ID","ASSGN_DATE"
,"OUT_REQ_TYPE","OUT_REQ_NO","OUT_REQ_SER","INACTIVE","INACTIVE_U_ID","INACTIVE_RES"
,"INACTIVE_DATE","REF_NO","V_CODE","V_NAME","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM"
,"USE_AUTO_SYNC_VNDR","A_CY" From P_Request Where Pr_Ser In (Select Pr_Ser From
 Ias_V_Ny_P_Request_Detail)
;

--------------------------------------------------------------
-- View 198: IAS_V_NY_P_ORDER
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_P_ORDER" ("PO_TYPE","PO_NO","PO_SER","PO_DATE","V_CODE","V_NAME"
,"CUR_CODE","CC_CODE","PJ_NO","ACTV_NO","PO_PROCESSED","PO_DESC","REF_NO","PO_PARTIAL"
,"PO_CLOSED","DISC_AMT","INSPECT","ENTRY_NO","INACTIVE","INACTIVE_U_ID","INACTIVE_DATE"
,"INACTIVE_RES","APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","RES_INACTIVE","PUR_TYPE"
,"INS_TERMS","INS_NO","INS_COMP","INS_DATE","PO_WITHOUT_OTHR_AMT","DELIVERY_DATE"
,"PLACE_DELIVERY","PAY_TERMS","MODE_DISPATCH","FREIGHT_CURR","CNTCT_PERSON"
,"NEED_CHECK_QTY","VND_PI_NO","RECEIVE_DATE","PO_DOC_TYPE","DESC_INS_TEARMS"
,"DISC_AMT_MST","DISC_AMT_DTL","PO_CHECKED","PO_LOCKED","BILL_NO_V_CODE"
,"BILL_DATE_V_CODE","CLC_VAT_PRICE_TYP","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5"
,"FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","CNTRCT_NO","CNTRCT_SER","SRVC_BILL"
,"ASSGN_TO_U_ID","ASSGN_U_ID","ASSGN_DATE","USE_VAT","RQRD_FRGHT_DATA","OTHR_AMT"
,"VAT_AMT","CONTAINER_NO","FREIGHT_LST_DATE","COSTING_TYPE_NO","PORT_OF_FREIGHT"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","CLC_TYP_NO_TAX","AD_TRMNL_NM","UP_TRMNL_NM","LVL_NO_PRICE","PO_COMP"
,"CLC_TAX_FREE_QTY_FLG","DOC_M_SQ","PO_EXPIRE_DATE","PO_TNDR_NO","CUR_RATE","PMAN_CODE")
 AS 
SELECT"PO_TYPE","PO_NO","PO_SER","PO_DATE","V_CODE","V_NAME","CUR_CODE","CC_CODE","PJ_NO"
,"ACTV_NO","PO_PROCESSED","PO_DESC","REF_NO","PO_PARTIAL","PO_CLOSED","DISC_AMT"
,"INSPECT","ENTRY_NO","INACTIVE","INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES"
,"APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","RES_INACTIVE","PUR_TYPE","INS_TERMS"
,"INS_NO","INS_COMP","INS_DATE","PO_WITHOUT_OTHR_AMT","DELIVERY_DATE","PLACE_DELIVERY"
,"PAY_TERMS","MODE_DISPATCH","FREIGHT_CURR","CNTCT_PERSON","NEED_CHECK_QTY","VND_PI_NO"
,"RECEIVE_DATE","PO_DOC_TYPE","DESC_INS_TEARMS","DISC_AMT_MST","DISC_AMT_DTL"
,"PO_CHECKED","PO_LOCKED","BILL_NO_V_CODE","BILL_DATE_V_CODE","CLC_VAT_PRICE_TYP"
,"FIELD1","FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9"
,"FIELD10","CNTRCT_NO","CNTRCT_SER","SRVC_BILL","ASSGN_TO_U_ID","ASSGN_U_ID","ASSGN_DATE"
,"USE_VAT","RQRD_FRGHT_DATA","OTHR_AMT","VAT_AMT","CONTAINER_NO","FREIGHT_LST_DATE"
,"COSTING_TYPE_NO","PORT_OF_FREIGHT","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","CLC_TYP_NO_TAX","AD_TRMNL_NM"
,"UP_TRMNL_NM","LVL_NO_PRICE","PO_COMP","CLC_TAX_FREE_QTY_FLG","DOC_M_SQ"
,"PO_EXPIRE_DATE","PO_TNDR_NO","CUR_RATE","PMAN_CODE" From P_Order Where PO_SER In
 (Select PO_SER From Ias_V_Ny_P_Order_Detail)
;

--------------------------------------------------------------
-- View 199: IAS_V_NY_VND_QUOT_MST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_VND_QUOT_MST" ("QT_NO","QT_SER","QT_DATE","A_CY","CUR_NO","V_CODE"
,"V_NAME","CC_CODE","PJ_NO","ACTV_NO","A_DESC","PROCESSED","APPROVED","APRV_U_ID"
,"APRV_DATE","APRV_DSC","REF_NO","TEND_NO","TEND_DATE","REF_DATE","PORT_OF_DEP"
,"REQ_DAYS","PAY_TERMS","DISC_AMT","OTHR_AMT","QT_WITHOUT_OTHR_AMT","CLC_VAT_PRICE_TYP"
,"FIELD1","FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9"
,"FIELD10","DISC_AMT_MST","DISC_AMT_DTL","VAT_AMT","USE_VAT","AUTO_RENEW","PR_REP"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"CLC_TYP_NO_TAX","AD_TRMNL_NM","UP_TRMNL_NM","COST_TYPE","QUOT_EXPIRE_DATE"
,"CLC_TAX_FREE_QTY_FLG","DLVRY_TIME_DYS") AS 
SELECT "QT_NO","QT_SER","QT_DATE","A_CY","CUR_NO","V_CODE","V_NAME","CC_CODE","PJ_NO"
,"ACTV_NO","A_DESC","PROCESSED","APPROVED","APRV_U_ID","APRV_DATE","APRV_DSC","REF_NO"
,"TEND_NO","TEND_DATE","REF_DATE","PORT_OF_DEP","REQ_DAYS","PAY_TERMS","DISC_AMT"
,"OTHR_AMT","QT_WITHOUT_OTHR_AMT","CLC_VAT_PRICE_TYP","FIELD1","FIELD2","FIELD3","FIELD4"
,"FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","DISC_AMT_MST","DISC_AMT_DTL"
,"VAT_AMT","USE_VAT","AUTO_RENEW","PR_REP","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE"
,"UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","CLC_TYP_NO_TAX","AD_TRMNL_NM"
,"UP_TRMNL_NM","COST_TYPE","QUOT_EXPIRE_DATE","CLC_TAX_FREE_QTY_FLG","DLVRY_TIME_DYS"
 From Ias_Vnd_Quot_Mst Where Qt_Ser In (Select Qt_Ser From Ias_V_Ny_Vnd_Quot_Dtl)
;

--------------------------------------------------------------
-- View 200: IAS_V_NY_QUOTATION
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_QUOTATION" ("QT_TYPE","QUOT_NO","QUOT_SER","QUOT_DATE","QUOT_CUR"
,"C_CODE","C_NAME","CC_CODE","W_CODE","PJ_NO","ACTV_NO","A_DESC","QUOT_TEND"
,"QUOT_TEND_DATE","REF_NO","REF_DATE","PORT_OF_DEP","REQ_DAYS","PAY_TERMS","DISC_AMT"
,"PROCESSED","APPROVED","APRV_DATE","APRV_DSC","APRV_U_ID","OTHR_AMT","SI_TYPE"
,"QUOT_AMT","INACTIVE","INACTIVE_RES","INACTIVE_DATE","INACTIVE_U_ID","EXTERNAL_POST"
,"COST_TYPE","REP_CODE","EXPORT","QUOT_EXPIRE_DATE","CUR_RATE","CHEQUE_DUE_DATE"
,"DISC_AMT_MST","DISC_AMT_DTL","DISC_AMT_MST_VAT","VAT_AMT_DISC_MST","VAT_AMT"
,"QUOT_DOC_TYPE","QUOT_DUE_DATE","CST_ACCPT_TYP","CST_ACCPT_DATE","CST_ACCPT_DSC"
,"CLC_TYP_NO_TAX","FIELD1","FIELD2","FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8"
,"FIELD9","FIELD10","AD_DATE","AD_U_ID","UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO"
,"BRN_NO","BRN_YEAR","BRN_USR","AD_TRMNL_NM","UP_TRMNL_NM","VAT_AMT_OTHR"
,"DOC_SER_EXTRNL","CLC_VAT_PRICE_TYP","CLC_TAX_FREE_QTY_FLG","AD_DATE_CLK"
,"CNTRCT_BTCH_NO","CNTRCT_DATE","CNTRCT_NO","DELIVERY_DATE") AS 
SELECT "QT_TYPE","QUOT_NO","QUOT_SER","QUOT_DATE","QUOT_CUR","C_CODE","C_NAME","CC_CODE"
,"W_CODE","PJ_NO","ACTV_NO","A_DESC","QUOT_TEND","QUOT_TEND_DATE","REF_NO","REF_DATE"
,"PORT_OF_DEP","REQ_DAYS","PAY_TERMS","DISC_AMT","PROCESSED","APPROVED","APRV_DATE"
,"APRV_DSC","APRV_U_ID","OTHR_AMT","SI_TYPE","QUOT_AMT","INACTIVE","INACTIVE_RES"
,"INACTIVE_DATE","INACTIVE_U_ID","EXTERNAL_POST","COST_TYPE","REP_CODE","EXPORT"
,"QUOT_EXPIRE_DATE","CUR_RATE","CHEQUE_DUE_DATE","DISC_AMT_MST","DISC_AMT_DTL"
,"DISC_AMT_MST_VAT","VAT_AMT_DISC_MST","VAT_AMT","QUOT_DOC_TYPE","QUOT_DUE_DATE"
,"CST_ACCPT_TYP","CST_ACCPT_DATE","CST_ACCPT_DSC","CLC_TYP_NO_TAX","FIELD1","FIELD2"
,"FIELD3","FIELD4","FIELD5","FIELD6","FIELD7","FIELD8","FIELD9","FIELD10","AD_DATE"
,"AD_U_ID","UP_U_ID","UP_DATE","UP_CNT","PR_REP","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR"
,"AD_TRMNL_NM","UP_TRMNL_NM","VAT_AMT_OTHR","DOC_SER_EXTRNL","CLC_VAT_PRICE_TYP"
,"CLC_TAX_FREE_QTY_FLG","AD_DATE_CLK","CNTRCT_BTCH_NO","CNTRCT_DATE","CNTRCT_NO"
,"DELIVERY_DATE" From Quotation Where Quot_Ser In (Select Quot_Ser From
 Ias_V_Ny_Quotation_Detail)
;

--------------------------------------------------------------
-- View 201: IAS_V_ITM_WCODE_ONLINE
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_WCODE_ONLINE" ("I_CODE","I_NAME","ITM_UNT","W_CODE","EXPIRE_DATE"
,"BATCH_NO","AVL_QTY","RSRV_QTY","NOT_OUT_QTY","NOT_RTRN_QTY","I_PRICE","CONN_BRN_NO"
,"I_IMG","SHO_SYS_TYP","LAST_UPDATE") AS 
SELECT DISTINCT M.I_CODE,
          M.I_NAME,
          D.ITM_UNT,
          MOV.W_CODE,
          MOV.EXPIRE_DATE,
          MOV.BATCH_NO,
          (MOV.AVL_QTY / D.P_SIZE) AVL_QTY,
          (SELECT NVL (SUM (NVL (CP_QTY, 0)), 0) / NVL (D.P_SIZE, 1)
             FROM IAS_RESERVE_DTL
            WHERE     I_CODE = M.I_CODE
                  AND NVL (W_CODE, 0) = MOV.W_CODE
                  AND T_DATE >= SYSDATE
                  AND NVL (RESERVED, 0) = 1
                  AND NVL (CP_QTY, 0) >= 0)
             RSRV_QTY,
          (SELECT SUM (((NVL (DB.I_Qty, 0) - NVL (DB.Out_Qty, 0))
                        + (NVL (DB.Free_Qty, 0) - NVL (DB.Out_Free_Qty, 0)))
                     * NVL (DB.P_Size, 1))
             FROM Ias_Bill_Mst MB, Ias_Bill_Dtl DB
            WHERE     MB.Bill_Ser = DB.Bill_Ser
                  AND DB.I_Code = M.I_CODE
                  AND DB.W_Code = MOV.W_CODE
                  AND DB.Expire_Date = NVL (MOV.EXPIRE_DATE, DB.Expire_Date)
                  AND DB.Batch_No = NVL (MOV.BATCH_NO, DB.Batch_No))
             NOT_OUT_QTY,
          (SELECT SUM (((NVL (DB.I_Qty, 0) - NVL (DB.Ret_Qty, 0))
                        + (NVL (DB.Free_Qty, 0) - NVL (DB.Ret_Free_Qty, 0)))
                     * NVL (DB.P_Size, 1))
             FROM Ias_Rt_Bill_Mst MB, Ias_Rt_Bill_Dtl DB
            WHERE     MB.Rt_Bill_Ser = DB.Rt_Bill_Ser
                  AND DB.I_Code = M.I_CODE
                  AND DB.W_Code = MOV.W_CODE
                  AND DB.Expire_Date = NVL (MOV.EXPIRE_DATE, DB.Expire_Date)
                  AND DB.Batch_No = NVL (MOV.BATCH_NO, DB.Batch_No))
             NOT_RTRN_QTY,
          I.I_PRICE,
          WH.CONN_BRN_NO,
          M.I_IMG,
          WH.SHO_SYS_TYP,
          V.LAST_UPDATE
     FROM IAS_ITM_MST M,
          IAS_ITM_DTL D,
          IAS_V_ITM_MOV_EXP_BTCH_AVLQTY MOV,
          IAS_ITEM_PRICE I,
          WAREHOUSE_DETAILS WH,
          IAS_ITM_ONLINE O,
          IAS_V_LAST_UPD_ITM V
    WHERE     M.I_CODE = D.I_CODE
          AND M.I_CODE = MOV.I_CODE
          AND MOV.W_CODE = WH.W_CODE
          AND M.I_CODE(+) = I.I_CODE
          AND M.I_CODE = V.I_CODE
          AND D.I_CODE = MOV.I_CODE
          AND D.I_CODE(+) = I.I_CODE
          AND D.ITM_UNT(+) = I.ITM_UNT
          AND MOV.I_CODE(+) = I.I_CODE
          AND M.I_CODE = O.I_CODE
          AND D.I_CODE = O.I_CODE
          AND D.I_CODE = V.I_CODE
          AND MOV.I_CODE = O.I_CODE
          AND I.I_CODE(+)= O.I_CODE
          AND D.ITM_UNT = O.ITM_UNT
          AND MOV.I_CODE = V.I_CODE
          AND I.I_CODE   = V.I_CODE
          AND O.I_CODE   = V.I_CODE
          AND WH.SHO_SYS_TYP=O.SHO_SYS_TYP
          AND NVL (MOV.BATCH_NO, '0') = NVL (O.BATCH_NO, '0')
          AND NVL (MOV.EXPIRE_DATE, TO_DATE ('01/01/1900', 'DD/MM/YYYY')) =
                 NVL (O.EXPIRE_DATE, TO_DATE ('01/01/1900', 'DD/MM/YYYY'))
          AND NVL (WH.SHO_WC_TYP, 0) <> 0
          AND EXISTS
                 (SELECT 1
                    FROM IAS_PRICING_LEVELS
                   WHERE     NVL (LEV_DEFLT, 0) = 1
                         AND LEV_NO(+) = I.LEV_NO
                         AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 202: GLS_V_CR_AMT_RCVD
--------------------------------------------------------------
CREATE VIEW "GLS_V_CR_AMT_RCVD" ("DOC_TYP","DOC_NO","DOC_SRL","AC_CODE","AC_CODE_DTL"
,"AC_DTL_TYP","CNTRCT_SRL","CNTRCT_NO","CNTRCT_BTCH","DOC_SER_REF","DOC_TYP_REF","AMT_L"
,"AMT_F") AS 
SELECT 2,VOUCHER_NO,V_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CNTRCT_SRL,CNTRCT_NO,CNTRCT_BTCH
,Doc_ser_Ref,DOC_TYPE_REF,ABS(Sum(Nvl(AC_AMT,0)+NVL(OTR_AMT_L,0))) AMT_L
,ABS(Sum(Nvl(AC_AMTF,0)+NVL(OTR_AMT_F,0))) AMT_F
From GLS_V_VCHR_DTL_YR 
    Where   VOUCHER_TYPE=1
      AND DOC_SER_REF IS NOT NULL
 Group By  2,VOUCHER_NO,V_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CNTRCT_SRL,CNTRCT_NO,CNTRCT_BTCH,DOC_TYPE_REF,Doc_Ser_Ref
 UNION ALL
Select 1,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CNTRCT_SRL,CNTRCT_NO,CNTRCT_BTCH
,Doc_ser_Ref,DOC_TYPE_REF,ABS(Sum(Nvl(J_AMT,0))) AMT,ABS(Sum(Nvl(J_AMT_F,0))) AMT_F
From GLS_V_JRNL_DTL_YR 
    Where   NVL(J_AMT,0)< 0
      AND DOC_SER_REF IS NOT NULL
 Group By  1,J_DOC_NO,J_SER,A_CODE,AC_CODE_DTL,AC_DTL_TYP,CNTRCT_SRL,CNTRCT_NO,CNTRCT_BTCH,DOC_TYPE_REF,Doc_Ser_Ref  
;

--------------------------------------------------------------
-- View 203: IAS_V_POST_DTL_SUB_YR
--------------------------------------------------------------
CREATE VIEW "IAS_V_POST_DTL_SUB_YR" ("DOC_TYPE","JV_TYPE","DOC_NO","DOC_SER","W_CODE"
,"CC_CODE","PJ_NO","ACTV_NO","CASH_NO","A_CODE","AC_CODE_DTL","AC_CODE_DTL_SUB"
,"AC_DTL_TYP","A_CY","DR_AMT","CR_AMT","DR_AMT_F","CR_AMT_F","AMT","AMT_F","DOC_DATE"
,"DOC_DUE_DATE","DOC_DESC","MNTH","D_YEAR","REF_NO","DOC_POST","DOC_CLOSE","INV_CLOSE"
,"CB_BEFORE","CB_AFTER","LC_NO","C_CODE","V_CODE","C_V_CODE","V_C_CODE","COL_NO"
,"REP_CODE","CR_CARD_TYPE","R_CODE","HRCHY_NO","WO_NO","WO_SER","CHEQUE_NO","NOTE_NO"
,"CHEQUE_VALUED","DOC_TYPE_REF","DOC_JV_TYPE_REF","DOC_NO_REF","DOC_SER_REF"
,"DOC_SEQUENCE","EXTERNAL_POST","RCRD_NO","G_CODE","WHG_CODE","TRMNL_NAME","INSTALL_TYPE"
,"MOV_DOC_PY","FROM_CC_CODE","F_BRN_NO","DOC_BRN_NO","CASHIER_NO","INSRNCE_CMP_NO"
,"INSRNCE_BNF_NO","INSRNCE_CARD_NO","INSRNCE_CARD_NO_FMLY","INSRNCE_RLTN_TYP","AUDIT_REF"
,"AUDIT_REF_DESC","AUDIT_REF_U_ID","AUDIT_REF_DATE","CNFRM","CNFRM_DESC","CNFRM_U_ID"
,"CNFRM_DATE","POST_U_ID","POST_DATE","UNPOST_U_ID","UNPOST_DATE","DOC_SEQUENCE_REF"
,"RCRD_NO_REF","CRD_CARD_NO","CRD_CARD_NO_REF","CR_CARD_DSC","AD_U_ID","AD_DATE"
,"UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","DOC_NO_MNL"
,"DOC_DATE_MNL") AS 
           I.DOC_TYPE,
           I.JV_TYPE,
           I.DOC_NO,
           I.DOC_SER,
           I.W_CODE,
           I.CC_CODE,
           I.PJ_NO,
           I.ACTV_NO,
           I.CASH_NO,
           I.A_CODE,
           I.AC_CODE_DTL,
           I.AC_CODE_DTL_SUB,
           I.AC_DTL_TYP,
           I.A_CY,
           I.DR_AMT,
           I.CR_AMT,
           I.DR_AMT_F,
           I.CR_AMT_F,
           I.AMT,
           I.AMT_F,
           I.DOC_DATE,
           I.DOC_DUE_DATE,
           I.DOC_DESC,
           I.MNTH,
           I.D_YEAR,
           I.REF_NO,
           I.DOC_POST,
           I.DOC_CLOSE,
           I.INV_CLOSE,
           I.CB_BEFORE,
           I.CB_AFTER,
           I.LC_NO,
           I.C_CODE,
           I.V_CODE,
           I.C_V_CODE,
           I.V_C_CODE,
           I.COL_NO,
           I.REP_CODE,
           I.CR_CARD_TYPE,
           I.R_CODE,
           I.HRCHY_NO,
           I.WO_NO,
           I.WO_SER,
           I.CHEQUE_NO,
           I.NOTE_NO,
           I.CHEQUE_VALUED,
           I.DOC_TYPE_REF,
           I.DOC_JV_TYPE_REF,
           I.DOC_NO_REF,
           I.DOC_SER_REF,
           I.DOC_SEQUENCE,
           I.EXTERNAL_POST,
           I.RCRD_NO,
           I.G_CODE,
           I.WHG_CODE,
           I.TRMNL_NAME,
           I.INSTALL_TYPE,
           I.MOV_DOC_PY,
           I.FROM_CC_CODE,
           I.F_BRN_NO,
           I.DOC_BRN_NO,
           I.CASHIER_NO,
           I.INSRNCE_CMP_NO,
           I.INSRNCE_BNF_NO,
           I.INSRNCE_CARD_NO,
           I.INSRNCE_CARD_NO_FMLY,
           I.INSRNCE_RLTN_TYP,
           I.AUDIT_REF,
           I.AUDIT_REF_DESC,
           I.AUDIT_REF_U_ID,
           I.AUDIT_REF_DATE,
           I.CNFRM,
           I.CNFRM_DESC,
           I.CNFRM_U_ID,
           I.CNFRM_DATE,
           I.POST_U_ID,
           I.POST_DATE,
           I.UNPOST_U_ID,
           I.UNPOST_DATE,
           I.DOC_SEQUENCE_REF,
           I.RCRD_NO_REF,
           I.CRD_CARD_NO,
           I.CRD_CARD_NO_REF,
           I.CR_CARD_DSC,
           I.AD_U_ID,
           I.AD_DATE,
           I.UP_U_ID,
           I.UP_DATE,
           I.UP_CNT,
           I.CMP_NO,
           I.BRN_NO,
           I.BRN_YEAR,
           I.BRN_USR,
           I.DOC_NO_MNL,
           I.DOC_DATE_MNL
      FROM IAS_V_POST_DTL_YR I
     WHERE AC_CODE_DTL_SUB IS NOT NULL AND (doc_type || jv_type <> 41)
    UNION ALL
    SELECT I.DOC_TYPE,
           I.JV_TYPE,
           I.DOC_NO,
           I.DOC_SER,
           I.W_CODE,
           I.CC_CODE,
           I.PJ_NO,
           I.ACTV_NO,
           I.CASH_NO,
           I.A_CODE,
           I.AC_CODE_DTL,
           n.AC_CODE_DTL_SUB,
           I.AC_DTL_TYP,
           I.A_CY,
           I.cR_AMT,
           I.dR_AMT,
           I.cR_AMT_F,
           I.dR_AMT_F,
           -I.AMT,
           -I.AMT_F,
           I.DOC_DATE,
           I.DOC_DUE_DATE,
           I.DOC_DESC,
           I.MNTH,
           I.D_YEAR,
           I.REF_NO,
           I.DOC_POST,
           I.DOC_CLOSE,
           I.INV_CLOSE,
           I.CB_BEFORE,
           I.CB_AFTER,
           I.LC_NO,
           I.C_CODE,
           I.V_CODE,
           I.C_V_CODE,
           I.V_C_CODE,
           I.COL_NO,
           I.REP_CODE,
           I.CR_CARD_TYPE,
           I.R_CODE,
           I.HRCHY_NO,
           I.WO_NO,
           I.WO_SER,
           I.CHEQUE_NO,
           I.NOTE_NO,
           I.CHEQUE_VALUED,
           I.DOC_TYPE_REF,
           I.DOC_JV_TYPE_REF,
           I.DOC_NO_REF,
           I.DOC_SER_REF,
           I.DOC_SEQUENCE,
           I.EXTERNAL_POST,
           I.RCRD_NO,
           I.G_CODE,
           I.WHG_CODE,
           I.TRMNL_NAME,
           I.INSTALL_TYPE,
           I.MOV_DOC_PY,
           I.FROM_CC_CODE,
           I.F_BRN_NO,
           I.DOC_BRN_NO,
           I.CASHIER_NO,
           I.INSRNCE_CMP_NO,
           I.INSRNCE_BNF_NO,
           I.INSRNCE_CARD_NO,
           I.INSRNCE_CARD_NO_FMLY,
           I.INSRNCE_RLTN_TYP,
           I.AUDIT_REF,
           I.AUDIT_REF_DESC,
           I.AUDIT_REF_U_ID,
           I.AUDIT_REF_DATE,
           I.CNFRM,
           I.CNFRM_DESC,
           I.CNFRM_U_ID,
           I.CNFRM_DATE,
           I.POST_U_ID,
           I.POST_DATE,
           I.UNPOST_U_ID,
           I.UNPOST_DATE,
           I.DOC_SEQUENCE_REF,
           I.RCRD_NO_REF,
           I.CRD_CARD_NO,
           I.CRD_CARD_NO_REF,
           I.CR_CARD_DSC,
           I.AD_U_ID,
           I.AD_DATE,
           I.UP_U_ID,
           I.UP_DATE,
           I.UP_CNT,
           I.CMP_NO,
           I.BRN_NO,
           I.BRN_YEAR,
           I.BRN_USR,
           I.DOC_NO_MNL,
           I.DOC_DATE_MNL
      FROM IAS_V_POST_DTL_YR  I,
           (SELECT bill_ser doc_ser, PTNT_NO AC_CODE_DTL_SUB
              FROM IAS_V_BILL_MST_YR
             WHERE PTNT_NO IS NOT NULL AND BILL_DOC_TYPE = 1
            UNION ALL
            SELECT rt_bill_ser, PTNT_NO
              FROM IAS_V_rt_BILL_MST_YR
             WHERE PTNT_NO IS NOT NULL AND rt_BILL_DOC_TYPE = 1) n
     WHERE     i.doc_type IN (4, 5)
           AND i.ac_dtl_typ = 1
           AND i.doc_ser = n.doc_ser
    UNION ALL
    SELECT I.DOC_TYPE,
           I.JV_TYPE,
           I.DOC_NO,
           I.DOC_SER,
           I.W_CODE,
           I.CC_CODE,
           I.PJ_NO,
           I.ACTV_NO,
           I.CASH_NO,
           I.A_CODE,
           I.AC_CODE_DTL,
           n.AC_CODE_DTL_SUB,
           I.AC_DTL_TYP,
           I.A_CY,
           I.DR_AMT,
           I.CR_AMT,
           I.DR_AMT_F,
           I.CR_AMT_F,
           I.AMT,
           I.AMT_F,
           I.DOC_DATE,
           I.DOC_DUE_DATE,
           I.DOC_DESC,
           I.MNTH,
           I.D_YEAR,
           I.REF_NO,
           I.DOC_POST,
           I.DOC_CLOSE,
           I.INV_CLOSE,
           I.CB_BEFORE,
           I.CB_AFTER,
           I.LC_NO,
           I.C_CODE,
           I.V_CODE,
           I.C_V_CODE,
           I.V_C_CODE,
           I.COL_NO,
           I.REP_CODE,
           I.CR_CARD_TYPE,
           I.R_CODE,
           I.HRCHY_NO,
           I.WO_NO,
           I.WO_SER,
           I.CHEQUE_NO,
           I.NOTE_NO,
           I.CHEQUE_VALUED,
           I.DOC_TYPE_REF,
           I.DOC_JV_TYPE_REF,
           I.DOC_NO_REF,
           I.DOC_SER_REF,
           I.DOC_SEQUENCE,
           I.EXTERNAL_POST,
           I.RCRD_NO,
           I.G_CODE,
           I.WHG_CODE,
           I.TRMNL_NAME,
           I.INSTALL_TYPE,
           I.MOV_DOC_PY,
           I.FROM_CC_CODE,
           I.F_BRN_NO,
           I.DOC_BRN_NO,
           I.CASHIER_NO,
           I.INSRNCE_CMP_NO,
           I.INSRNCE_BNF_NO,
           I.INSRNCE_CARD_NO,
           I.INSRNCE_CARD_NO_FMLY,
           I.INSRNCE_RLTN_TYP,
           I.AUDIT_REF,
           I.AUDIT_REF_DESC,
           I.AUDIT_REF_U_ID,
           I.AUDIT_REF_DATE,
           I.CNFRM,
           I.CNFRM_DESC,
           I.CNFRM_U_ID,
           I.CNFRM_DATE,
           I.POST_U_ID,
           I.POST_DATE,
           I.UNPOST_U_ID,
           I.UNPOST_DATE,
           I.DOC_SEQUENCE_REF,
           I.RCRD_NO_REF,
           I.CRD_CARD_NO,
           I.CRD_CARD_NO_REF,
           I.CR_CARD_DSC,
           I.AD_U_ID,
           I.AD_DATE,
           I.UP_U_ID,
           I.UP_DATE,
           I.UP_CNT,
           I.CMP_NO,
           I.BRN_NO,
           I.BRN_YEAR,
           I.BRN_USR,
           I.DOC_NO_MNL,
           I.DOC_DATE_MNL
      FROM IAS_V_POST_DTL_YR  I,
           (SELECT bill_ser doc_ser, PTNT_NO AC_CODE_DTL_SUB
              FROM IAS_V_BILL_MST_YR
             WHERE PTNT_NO IS NOT NULL AND BILL_DOC_TYPE = 1
            UNION ALL
            SELECT rt_bill_ser, PTNT_NO
              FROM IAS_V_rt_BILL_MST_YR
             WHERE PTNT_NO IS NOT NULL AND rt_BILL_DOC_TYPE = 1) n
     WHERE     i.doc_type IN (4, 5)
           AND i.ac_dtl_typ = 1
           AND i.doc_ser = n.doc_ser
;

--------------------------------------------------------------
-- View 204: IAS_V_NY_INV_RQ_ASSMBL_MST
--------------------------------------------------------------
CREATE VIEW "IAS_V_NY_INV_RQ_ASSMBL_MST" ("TYP_NO","DOC_NO","DOC_SER","DOC_DATE","W_CODE"
,"CC_CODE","PJ_NO","ACTV_NO","DOC_DESC","REF_NO","FIELD1","FIELD2","FIELD3","PRCSS_FLG"
,"EXTERNAL_POST","INACTIVE","INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES","APPROVED"
,"APRV_U_ID","APRV_DATE","APRV_DSC","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT"
,"CMP_NO","BRN_NO","BRN_YEAR","BRN_USR","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM") AS 
SELECT "TYP_NO","DOC_NO","DOC_SER","DOC_DATE","W_CODE","CC_CODE","PJ_NO","ACTV_NO"
,"DOC_DESC","REF_NO","FIELD1","FIELD2","FIELD3","PRCSS_FLG","EXTERNAL_POST","INACTIVE"
,"INACTIVE_U_ID","INACTIVE_DATE","INACTIVE_RES","APPROVED","APRV_U_ID","APRV_DATE"
,"APRV_DSC","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","UP_CNT","CMP_NO","BRN_NO","BRN_YEAR"
,"BRN_USR","PR_REP","AD_TRMNL_NM","UP_TRMNL_NM" From Inv_Rq_Assmbl_Mst Where Doc_Ser In
 (Select Doc_Ser From Ias_V_Ny_Inv_Rq_Assmbl_Dtl)
;

--------------------------------------------------------------
-- View 205: V_CHK_CLC_TYP_NO_TAX
--------------------------------------------------------------
CREATE VIEW "V_CHK_CLC_TYP_NO_TAX" ("TABLE_NAME","ERR_TYPE","RCRD_CNT") AS 
SELECT 'GNR_TAX_SLICE' table_name, 'error when insert TAX SLICE' err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT slice_prcnt
             FROM gnr_tax_slice
           MINUS
           SELECT DISTINCT vat_per
                      FROM ias_itm_mst
                     WHERE vat_type = 1)
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_CODE_DTL' table_name,
          'error when insert into GNR_TAX_CODE_DTL from interface_acc'
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT ac_code_ar, ac_code_ap
             FROM gnr_tax_code_dtl
           MINUS
           SELECT vat_ac, vat_pur_a_code
             FROM interface_acc
            WHERE vat_ac || vat_pur_a_code IS NOT NULL)
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_TYP_CLC_MST' table_name,
          'records in GNR_TAX_TYP_CLC_MST have CLC_TAX_TYP=0 must equal to records in GNR_TAX_CODE_mst'
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT clc_typ_no
             FROM gnr_tax_typ_clc_mst
            WHERE clc_tax_typ = 0
           MINUS
           SELECT tax_no
             FROM gnr_tax_code_mst)
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_TYP_CLC_MST' table_name,
          'records in GNR_TAX_TYP_CLC_MST have CLC_TAX_TYP<>0 must equal to records in flags'
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT clc_tax_typ
             FROM gnr_tax_typ_clc_mst
            WHERE clc_tax_typ <> 0
           MINUS
           SELECT flg_value clc_tax_typ
             FROM s_flags
            WHERE UPPER (flg_code) = 'VAT_TYP_SI'
              AND flg_st = 1
              AND lang_no = 1
              AND flg_value <> 0)
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_TYP_CLC_DTL' table_name,
          'CLC_TYP_NO in GNR_TAX_TYP_CLC_DTL must equal to  TAX_NO in GNR_TAX_TYP_CLC_DTL '
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT clc_typ_no, tax_no
             FROM gnr_tax_typ_clc_dtl
           MINUS
           SELECT clc_typ_no, clc_typ_no
             FROM gnr_tax_typ_clc_mst
            WHERE clc_tax_typ = 0)
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_TYP_CLC_BRN' table_name,
          'branches must connect with tax_no that connected with same accounts in INTERFACE_ACC'
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT clc_typ_no, brn_no
             FROM gnr_tax_typ_clc_brn
           MINUS
           SELECT clc_typ_no, brn_no
             FROM (SELECT clc_typ_no, brn_no
                     FROM gnr_tax_typ_clc_mst, s_brn
                    WHERE clc_tax_typ > 0
                   UNION
                   SELECT clc_typ_no, i.brn_no
                     FROM gnr_tax_code_dtl t,
                          interface_acc i,
                          gnr_tax_typ_clc_dtl d
                    WHERE t.tax_no = d.tax_no
                      AND NVL (i.vat_ac, 0) = NVL (t.ac_code_ar, 0)
                      AND NVL (i.vat_pur_a_code, 0) = NVL (t.ac_code_ap, 0)))
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_ITM' table_name,
          'there are some difreent between items that use vat and  GNR_TAX_ITM'
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT i_code, vat_per, vat_type
             FROM ias_itm_mst
            WHERE NVL (vat_type, 0) = 1 AND vat_per IS NOT NULL
           MINUS
           SELECT i_code, tax_prcnt, tax_no
             FROM gnr_tax_itm)
   HAVING COUNT (*) > 0
   UNION
   SELECT 'GNR_TAX_ITM' table_name,
          'there are some difreent between items that use vat and  GNR_TAX_ITM'
                                                                     err_type,
          COUNT (*) rcrd_cnt
     FROM (SELECT i_code, tax_prcnt, tax_no
             FROM  gnr_tax_itm
            WHERE tax_no = 1 AND NVL (tax_prcnt, 0) > 0
           MINUS
           SELECT i_code, vat_per, vat_type
             FROM  ias_itm_mst
            WHERE NVL (vat_type, 0) = 1 AND vat_per IS NOT NULL)
   HAVING COUNT (*) > 0
   UNION
------------check  Clc_Typ_No_Tax------------
   SELECT table_name, 'Clc_Typ_No_Tax Is Null' err_type, rcrd_cnt
     FROM (SELECT 'Ias_Bill_Mst_Add_Disc_Rq' table_name, COUNT (*) rcrd_cnt
             FROM ias_bill_mst_add_disc_rq
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Bill_Mst_Add_Disc' table_name, COUNT (*) rcrd_cnt
             FROM ias_bill_mst_add_disc
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Sales_Order' table_name, COUNT (*) rcrd_cnt
             FROM sales_order
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Rt_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_rt_bill_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Rt_Bill_Mst_Rq' table_name, COUNT (*) rcrd_cnt
             FROM ias_rt_bill_mst_rq
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Pi_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_pi_bill_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Pr_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_pr_bill_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Ar_Cntrct_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_ar_cntrct_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Pi_Bill_Mst_Add_Disc' table_name, COUNT (*) rcrd_cnt
             FROM ias_pi_bill_mst_add_disc
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'P_Order' table_name, COUNT (*) rcrd_cnt
             FROM p_order
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Pr_Req_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_pr_req_bill_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Vnd_Quot_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_vnd_quot_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Ap_Cntrct_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_ap_cntrct_mst
            WHERE clc_typ_no_tax IS NULL
           UNION
           SELECT 'Ias_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_bill_mst
            WHERE clc_typ_no_tax IS NULL)
    WHERE rcrd_cnt > 0
   UNION
   SELECT table_name, 'clc_typ_no_tax must allowed from vat' err_type,
          rcrd_cnt
     FROM (SELECT 'Sales_Order' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM sales_order 
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (export, 0) = 1
           UNION
           SELECT 'Ias_Rt_Bill_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_rt_bill_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (export, 0) = 1
           UNION
           SELECT 'Ias_Rt_Bill_Mst_Rq' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_rt_bill_mst_rq
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (export, 0) = 1
           UNION
           SELECT 'Ias_Pi_Bill_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_pi_bill_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'Ias_Pr_Bill_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_pr_bill_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'Ias_Ar_Cntrct_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_ar_cntrct_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (export, 0) = 1
           UNION
           SELECT 'Ias_Pi_Bill_Mst_Add_Disc' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_pi_bill_mst_add_disc
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'P_Order' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM p_order
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'Ias_Pr_Req_Bill_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_pr_req_bill_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'Ias_Vnd_Quot_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_vnd_quot_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'Ias_Ap_Cntrct_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_ap_cntrct_mst
            WHERE clc_typ_no_tax <> (SELECT clc_typ_no
                                       FROM gnr_tax_typ_clc_mst
                                      WHERE clc_tax_typ = 1 AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 0
           UNION
           SELECT 'Ias_Bill_Mst' table_name,
                  'clc_typ_no_tax must allowed from vat' err_type,
                  COUNT (*) rcrd_cnt
             FROM ias_bill_mst
            WHERE clc_typ_no_tax <>
                         (SELECT clc_typ_no
                            FROM gnr_tax_typ_clc_mst
                           WHERE clc_tax_typ = NVL (export, 0) AND ROWNUM <= 1)
              AND NVL (export, 0) IN (1, 2, 3))
    WHERE rcrd_cnt > 0
   UNION
   SELECT table_name,
          'clc_typ_no_tax must  have vat and with same document branch'
                                                                     err_type,
          rcrd_cnt
     FROM (SELECT 'Sales_Order' table_name, COUNT (*) rcrd_cnt
             FROM sales_order a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (export, 0) = 0
           UNION
           SELECT 'Ias_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_bill_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (export, 0) = 0
           UNION
           SELECT 'Ias_Rt_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_rt_bill_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (export, 0) = 0
           UNION
           SELECT 'Ias_Rt_Bill_Mst_Rq' table_name, COUNT (*) rcrd_cnt
             FROM ias_rt_bill_mst_rq a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (export, 0) = 0
           UNION
           SELECT 'Ias_Pi_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_pi_bill_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'Ias_Pr_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_pr_bill_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'Gr_Note' table_name, COUNT (*) rcrd_cnt
             FROM gr_note a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND pi_type = 5
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'Ias_Bill_Mst_Add_Disc_Rq' table_name, COUNT (*) rcrd_cnt
             FROM ias_bill_mst_add_disc_rq a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
           UNION
           SELECT 'Ias_Bill_Mst_Add_Disc' table_name, COUNT (*) rcrd_cnt
             FROM ias_bill_mst_add_disc a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
           UNION
           SELECT 'Ias_Ar_Cntrct_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_ar_cntrct_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (export, 0) = 0
           UNION
           SELECT 'Ias_Pi_Bill_Mst_Add_Disc' table_name, COUNT (*) rcrd_cnt
             FROM ias_pi_bill_mst_add_disc a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'Ias_Vnd_Quot_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_vnd_quot_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'P_Order' table_name, COUNT (*) rcrd_cnt
             FROM p_order a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'Ias_Pr_Req_Bill_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_pr_req_bill_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1
           UNION
           SELECT 'Ias_Ap_Cntrct_Mst' table_name, COUNT (*) rcrd_cnt
             FROM ias_ap_cntrct_mst a
            WHERE clc_typ_no_tax <>
                     (SELECT clc_typ_no
                        FROM gnr_tax_typ_clc_brn
                       WHERE clc_typ_no NOT IN (SELECT clc_typ_no
                                                  FROM gnr_tax_typ_clc_mst
                                                 WHERE clc_tax_typ <> 0)
                         AND brn_no = a.brn_no
                         AND ROWNUM <= 1)
              AND NVL (use_vat, 0) = 1)
    WHERE rcrd_cnt > 0
-----------check movement-----------
   UNION
   SELECT   (SELECT doc_type_name
               FROM ias_sys.ias_docjv_type_systems_mst
              WHERE doc_type = a.doc_type
                AND lang_no = 1
                AND ROWNUM <= 1) table_name,
            'error when insert into gnr_rq_tax_itm_movmnt' err_type,
            COUNT (*) rcrd_cnt
       FROM (SELECT doc_type, bill_doc_type, doc_jv_type, doc_no, doc_ser,
                    doc_date, tax_no, clc_typ_no, agncy_no, i_code, itm_unt,
                    p_size, i_price, disc_amt, a_code, a_cy, ac_rate,
                    tax_prcnt, tax_amt, w_code, cc_code, pj_no, actv_no,
                    rcrd_no, doc_sequence, external_post, cmp_no, brn_no,
                    brn_year, brn_usr, tax_amt_l, i_qty, free_qty, ref_no
               FROM v_gnr_rq_tax_itm_movmnt
             MINUS
             SELECT doc_type, bill_doc_type, doc_jv_type, doc_no, doc_ser,
                    doc_date, tax_no, clc_typ_no, agncy_no, i_code, itm_unt,
                    p_size, i_price, disc_amt, a_code, a_cy, ac_rate,
                    tax_prcnt, tax_amt, w_code, cc_code, pj_no, actv_no,
                    rcrd_no, doc_sequence, external_post, cmp_no, brn_no,
                    brn_year, brn_usr, tax_amt_l, i_qty, free_qty, ref_no
               FROM gnr_rq_tax_itm_movmnt) a
   GROUP BY doc_type
     HAVING COUNT (*) > 0
   UNION
   SELECT   (SELECT doc_type_name
               FROM ias_sys.ias_docjv_type_systems_mst
              WHERE doc_type = a.doc_type
                AND lang_no = 1
                AND ROWNUM <= 1) table_name,
            'error when insert into gnr_tax_itm_movmnt' err_type,
            COUNT (*) rcrd_cnt
       FROM (SELECT doc_type, bill_doc_type, doc_jv_type, doc_no, doc_ser,
                    doc_date, tax_no, clc_typ_no, agncy_no, i_code, itm_unt,
                    p_size, i_price, stk_cost, stk_rate, disc_amt, a_code,
                    a_cy, ac_rate, tax_prcnt, tax_amt, w_code, cc_code, pj_no,
                    actv_no, rcrd_no, doc_sequence, external_post, cmp_no,
                    brn_no, brn_year, brn_usr, tax_amt_l, i_qty, free_qty,
                    ref_no
               FROM v_gnr_tax_itm_movmnt
             MINUS
             SELECT doc_type, bill_doc_type, doc_jv_type, doc_no, doc_ser,
                    doc_date, tax_no, clc_typ_no, agncy_no, i_code, itm_unt,
                    p_size, i_price, stk_cost, stk_rate, disc_amt, a_code,
                    a_cy, ac_rate, tax_prcnt, tax_amt, w_code, cc_code, pj_no,
                    actv_no, rcrd_no, doc_sequence, external_post, cmp_no,
                    brn_no, brn_year, brn_usr, tax_amt_l, i_qty, free_qty,
                    ref_no
               FROM gnr_tax_itm_movmnt) a
   GROUP BY doc_type
     HAVING COUNT (*) > 0
;

--------------------------------------------------------------
-- View 206: IAS_V_ITM_EXPBTCH_AVLQTY
--------------------------------------------------------------
CREATE VIEW "IAS_V_ITM_EXPBTCH_AVLQTY" ("I_CODE","I_NAME","ITM_UNT","W_CODE"
,"EXPIRE_DATE","BATCH_NO","AVL_QTY","RSRV_QTY","I_PRICE","CONN_BRN_NO","I_IMG") AS 
SELECT M.I_Code, 
			          M.I_Name,
			          D.Itm_Unt,
			          Mov.W_Code,
			          Mov.Expire_Date,
			          Mov.Batch_No,          
			          (Mov.Avl_Qty / D.P_Size) Avl_Qty,
			          (Select Nvl (Sum (Nvl (Cp_Qty, 0)), 0) / Nvl (D.P_Size, 1)
			             From Ias_Reserve_Dtl
			            Where I_Code = M.I_Code
			              And Nvl (W_Code, 0) = Mov.W_Code
			              And T_Date >= Sysdate
			              And Nvl (Reserved, 0) = 1
			              And Nvl (Cp_Qty, 0) >= 0) Rsrv_Qty,
			          I.I_Price,
			          Wh.Conn_Brn_No,
			          M.I_Img
			     From Ias_Itm_Mst M,
			          Ias_Itm_Dtl D,
			          Ias_V_Itm_Mov_Exp_Btch_Avlqty Mov,
			          Ias_Item_Price I,
			          Warehouse_Details Wh
			    Where M.I_Code = D.I_Code
			      And M.I_Code = Mov.I_Code
			      And Mov.W_Code = Wh.W_Code
			      And M.I_Code(+) = I.I_Code
			      And D.I_Code = Mov.I_Code
			      And D.I_Code(+) = I.I_Code
			      And D.Itm_Unt(+) = I.Itm_Unt
			      And Mov.I_Code(+) = I.I_Code      
			      And Exists (
			                Select 1
			                  From Ias_Pricing_Levels
			                 Where Nvl (Lev_Deflt, 0) = 1 And Lev_No(+) = I.Lev_No
			                       And Rownum <= 1)
;

--------------------------------------------------------------
-- View 207: S_V_EMP_ESS_SCR_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_EMP_ESS_SCR_PRV" ("U_ID","USR_NM","SCR_NO","PRV_FLG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.emp_no,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.emp_l_nm, b.emp_f_nm),
                  NVL (b.emp_f_nm, b.emp_l_nm)
                 ) emp_nm,
          a.scr_no, a.inc_flg, a.ad_u_id, a.ad_date, NULL up_u_id,
          NULL up_date, 1 rec_src
   FROM   hrs_scr_ess_prv a,
          s_emp b,
          hrs_scr_ess c
   WHERE  a.emp_no = b.emp_no
   AND    a.scr_no = c.scr_no
   AND    a.inc_flg = 1
   AND    NVL (c.inactive, 0) = 0
   UNION
   SELECT b.emp_no,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.emp_l_nm, b.emp_f_nm),
                  NVL (b.emp_f_nm, b.emp_l_nm)
                 ) usr_nm,
          c.scr_no, 0 prv_flg, NULL ad_u_id, NULL ad_date, NULL up_u_id,
          NULL up_date, 0 rec_src
   FROM   s_emp b,
          hrs_scr_ess c
   WHERE  NVL (c.inactive, 0) = 0
   AND    NOT EXISTS (
                 SELECT 1
                 FROM   hrs_scr_ess_prv
                 WHERE  emp_no = b.emp_no AND scr_no = c.scr_no
                        AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 208: S_EMP_V_HLDY_BLNC
--------------------------------------------------------------
CREATE VIEW "S_EMP_V_HLDY_BLNC" ("EMP_NO","HLDY_NO","HLDY_NM","HLDY_TYP","HLDY_TYP_NM"
,"HLDY_BLNC","OPN_HLDY_BLNC","HLDY_BLNC_RNWL","HLDY_LAW_BLNC","LST_HLDY_DATE") AS 
SELECT s.emp_no, s.hldy_no,
		          hrs_gnr_pkg.get_hldy_nm
		                      (p_hldy_no      => s.hldy_no,
		                       p_lng_no       => ias_prmtr_pkg.getpval(p_prmtr      => 'LANG_NO')
		                      ),
		          h.hldy_typ,
		          ias_gen_pkg.get_flg_nm
		                      (p_flg_code       => 'HLDY_TYP',
		                       p_flg_value      => h.hldy_typ,
		                       p_lng_no         => ias_prmtr_pkg.getpval(p_prmtr      => 'LANG_NO')
		                      ),
		          s.hldy_blnc, s.OPN_HLDY_BLNC,s.HLDY_BLNC_RNWL,s.hldy_law_blnc, s.lst_hldy_date
		     FROM s_emp_hldy_blnc s, hrs_hldy_code h
		    WHERE h.hldy_no = s.hldy_no
		    Order by s.emp_no,s.hldy_no
;

--------------------------------------------------------------
-- View 209: S_V_USR_DSH_BORD_PRV
--------------------------------------------------------------
CREATE VIEW "S_V_USR_DSH_BORD_PRV" ("U_ID","USR_NAME","DSH_NO","DSH_NM","PRV_FLG"
,"AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT A.U_Id,
					          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
					          A.DSH_NO,
					          Ias_Gen_Pkg.Get_Prompt(IAS_PRMTR_PKG.GetPval(p_prmtr =>'LANG_NO'), Lbl_No)DSH_NM,                        
					          A.PRV_FLG,
					          A.Ad_U_Id,
					          A.Ad_Date,
					          A.Up_U_Id,
					          A.Up_Date,
					          1 Rec_Src
					     From S_USR_DSH_BORD_PRV A, User_R B, S_DSH_BORD C
					    Where A.U_Id = B.U_Id
					      AND A.DSH_NO=C.DSH_NO
					  Union
					   Select B.U_Id,
					          Decode ( Ias_Prmtr_Pkg.Getpval(P_Prmtr =>'LANG_NO') ,1,Nvl (B.U_A_Name,
 B.U_E_Name),Nvl (B.U_E_Name, B.U_A_Name)) Usr_Nm,
					          DSH_NO,
					          Ias_Gen_Pkg.Get_Prompt(IAS_PRMTR_PKG.GetPval(p_prmtr =>'LANG_NO'), Lbl_No)DSH_NM,          
					          0 PRV_FLG,
					          Null Ad_U_Id,
					          Null Ad_Date,
					          Null Up_U_Id,
					          Null Up_Date,
					          0 Rec_Src
					     From User_R B, S_DSH_BORD C
					    Where Not Exists
					               (Select 1
					                  From S_USR_DSH_BORD_PRV
					                  Where S_USR_DSH_BORD_PRV.DSH_NO = C.DSH_NO 
					                  And S_USR_DSH_BORD_PRV.U_Id = B.U_Id And Rownum <= 1)
;

--------------------------------------------------------------
-- View 210: HPS_V_USR_DEPT_PRV
--------------------------------------------------------------
CREATE VIEW "HPS_V_USR_DEPT_PRV" ("U_ID","USR_NAME","DEPT_NO","DEPT_NM","ADD_FLAG"
,"VIEW_FLAG","AD_U_ID","AD_DATE","UP_U_ID","UP_DATE","REC_SRC") AS 
SELECT a.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_name,
          c.DEPT_NO,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.dept_l_nm, c.dept_f_nm),
                  NVL (c.dept_f_nm, c.dept_l_nm)
                 ) dept_nm,
          a.add_flag, a.view_flag, a.ad_u_id, a.ad_date, a.up_u_id, a.up_date,
          1 rec_src
   FROM   hps_dept_prv a,
          user_r b,
          hps_dept c
   WHERE  a.u_id = b.u_id AND a.dept_no = c.dept_no
   UNION
   SELECT b.u_id,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (b.u_a_name, b.u_e_name),
                  NVL (b.u_e_name, b.u_a_name)
                 ) usr_name,
          c.dept_no,
          DECODE (ias_prmtr_pkg.getpval (p_prmtr => 'LANG_NO'),
                  1, NVL (c.dept_l_nm, c.dept_f_nm),
                  NVL (c.dept_f_nm, c.dept_l_nm)
                 ) dept_nm,
          0 add_flag, 0 view_flag, NULL ad_u_id, NULL ad_date, NULL up_u_id,
          NULL up_date, 0 rec_src
   FROM   user_r b,
          hps_dept c
   WHERE  NOT EXISTS (
               SELECT 1
               FROM   hps_dept_prv
               WHERE  DEPT_NO = c.DEPT_NO AND u_id = b.u_id
                      AND ROWNUM <= 1)
;

--------------------------------------------------------------
-- View 211: GLS_V_PST_DOCS
--------------------------------------------------------------
CREATE Or Replace VIEW GLS_V_PST_DOCS (TBL_NM,DOC_SRL) AS ' ;

