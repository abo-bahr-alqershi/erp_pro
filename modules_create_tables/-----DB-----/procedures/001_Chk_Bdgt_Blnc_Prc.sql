CREATE PROCEDURE  Chk_Bdgt_Blnc_Prc(P_Chk_Amt        In  number
                                            ,P_BRN_NO         S_BRN.BRN_NO%type  
                                            ,P_A_CODE         Account.a_code%type
                                            ,P_AC_CODE_DTL    Account.a_code%type DEFAULT NULL
                                            ,P_A_Cy           Ex_rate.CUR_CODE%type
                                            ,P_Cc_Code        Cost_centers.cc_CODE%type
                                            ,P_PJ_NO          Ias_projects.pj_no%type
                                            ,P_Actv_NO        Ias_Actvty.actv_no%type					   
                                            ,P_DATE           IN  DATE     DEFAULT IAS_GEN_PKG.Get_Sysdate
                                            ,P_User_No        In  Number
                                            ,P_BGT_Amt_L      out Number						
                                            ,P_BGT_Amt_F	  out Number
                                            ,P_BAL            out Number
                                            ,P_Pass_Prv       out Number
                                            ,P_Msg            out Varchar2 
                                            ,P_Lng            In  Number
                                            ,P_Bgt_Srl        In  Number Default 0) IS
                            
 --------------------------------------------------------
 --ALTERED IN 10/02/2021 BY Murad Algarrash 
 -- by Adding the Ac_code_dtl and P_BRN_NO
 --------------------------------------------------------
 V_Bal                       Number:=0;
  
 V_Frc_No                    Number:=0; 
 V_BGT_CUR                   Number:=0;
 V_AC_DTL_TYP                Number:=0;
 V_local_Cur                 Varchar2(10);
 V_F_Date                    Date;
 V_T_Date                    Date;  
 Gls_Prmtrs                  ias_para_Gl%Rowtype;
---------------------------------------------------------------------------------------------------------------------------------
-- PURPOSE:  to Check the Budget Balance
----------------------------------------------------------------------------------------------------------
Begin 
	--##----------------------------------------------------------------------------------------------------------##-- 
    V_local_Cur:=Ys_Gen_Pkg.Get_local_Cur;
    V_AC_DTL_TYP:=Ys_Ac_Dtl_Pkg.GET_AC_DTL_TYP(P_a_code);
    --##----------------------------------------------------------------------------------------------------------##--    
    Begin
    select * into Gls_Prmtrs from ias_para_gl where Rownum<=1;  
    V_Frc_No:=nvl(Gls_Prmtrs.NO_OF_DECIMAL,2) ; 
   -- Gls_Prmtrs.Chk_Bgt_Amt=0  Not use Check amount
   -- Gls_Prmtrs.Chk_Bgt_Amt=1  general budget Check amount
   -- Gls_Prmtrs.Chk_Bgt_Amt=2  Branch budget  Check amount
    Exception When Others Then
     P_Pass_Prv:=1;
    End; 
    if Gls_Prmtrs.Chk_Bgt_Amt=2 and P_BRN_NO is null then
       null;
    end if;
	--##----------------------------------------------------------------------------------------------------------##-- 
  -----hare
        --## P_Pass_Prv 1= not allow ,2=allow ,3=allow with worning
        Begin
          Select Nvl(BGT_LMT_PRV,1)
            Into P_Pass_Prv 
            From Privilege_Fixed 
           Where u_id=P_User_No;
        Exception When Others Then
         P_Pass_Prv:=1;
        End; 
	--##----------------------------------------------------------------------------------------------------------##-- 
      Begin 
	   Select Round((Nvl(Amt_L,0)+Nvl(Amt_L_Add,0)+Nvl(Amt_L_Add_Mov,0)-Nvl(Amt_L_Disc,0)-Nvl(Amt_L_Disc_Mov,0)),V_Frc_no),
              Round((Nvl(Amt_F,0)+Nvl(Amt_F_Add,0)+Nvl(Amt_F_Add_Mov,0)-Nvl(Amt_F_Disc,0)-Nvl(Amt_F_Disc_Mov,0)),V_Frc_no),
              F_Date,
              T_Date
         Into P_BGT_Amt_L, 
              P_BGT_Amt_F,
              V_F_Date,
              V_T_Date      
		 From IAS_BDGT_BLNC_MST M,IAS_BDGT_BLNC_DTL D
		where M.DOC_SER=D.doc_ser
          AND M.DFLT=Decode(P_Bgt_Srl,0,1,M.DFLT)
          and M.BRN_NO=CASE WHEN Gls_Prmtrs.Chk_Bgt_Amt=2 THEN  P_BRN_NO ELSE M.BRN_NO END 
          and M.DOC_SER=Decode(P_Bgt_Srl,0,M.DOC_SER,P_Bgt_Srl)
          AND A_CODE= P_A_CODE 
          AND nvl(D.AC_DTL_TYP,0)  =nvl(V_AC_DTL_TYP,0)
          And nvl(AC_CODE_DTL,'0') = Decode(nvl(AC_CODE_DTL,'0'),'0',nvl(AC_CODE_DTL,'0'),P_AC_CODE_DTL)
          And Nvl(d.a_cy,'0')= Decode(Gls_Prmtrs.USE_MULTI_CUR_BDGT,0,Nvl(d.a_cy,'0'),P_A_Cy)
          And P_Date between F_Date and T_Date         
          And nvl(cc_code,'0') = Decode(nvl(cc_code,'0'),'0',nvl(cc_code,'0'),P_cc_code)
          And nvl(pj_no,'0')   = Decode(nvl(pj_no,'0'),'0',nvl(pj_no,'0'),P_PJ_NO)
          And nvl(actv_no,'0') = Decode(nvl(actv_no,'0'),'0',nvl(actv_no,'0'),P_ACTV_NO)
 		  And RowNum<=1;

	  Exception when Others Then
         P_BGT_Amt_L :=0;
         P_BGT_Amt_F:=0;
      End;
   	--##----------------------------------------------------------------------------------------------------------##-- 
      --## Balance
     
            BEGIN
                  If Gls_Prmtrs.USE_MULTI_CUR_BDGT=1 THEN 
                    
                    Select Decode(V_local_Cur,Null,Round(nvl(sum(amt),0),V_frc_no),V_local_Cur,Round(nvl(sum(amt),0),V_frc_no),Round(nvl(sum(amt_f),0),V_frc_no))
                     Into V_Bal
                     From Ias_Post_Dtl
                    where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
                      and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
                      AND nvl(AC_DTL_TYP,0)  =nvl(V_AC_DTL_TYP,0)
                      and a_cy= Decode(P_A_CY,null,a_cy,P_A_CY)
                      and doc_date between V_F_DATE and  V_T_DATE
                      and doc_type<>0
                      and nvl(DOC_BRN_NO,BRN_NO) = DECODE(Gls_Prmtrs.Chk_Bgt_Amt,2,NVL(P_BRN_NO,0),nvl(DOC_BRN_NO,BRN_NO))
                      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
                      and nvl(pj_no,'0')   = Decode(P_PJ_NO,null,nvl(pj_no,'0'),P_PJ_NO)
                      and nvl(actv_no,'0') = Decode(P_ACTV_NO,null,nvl(actv_no,'0'),P_ACTV_NO);
                      
            ELSE
                  
                    Select Round(nvl(sum(amt),0),V_frc_no)
                     Into V_Bal
                     From Ias_Post_Dtl
                    where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
                      and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
                      AND nvl(AC_DTL_TYP,0)  =nvl(V_AC_DTL_TYP,0)
                      --and a_cy= Decode(P_A_CY,null,a_cy,P_A_CY)
                      and doc_date between V_F_DATE and  V_T_DATE
                      and nvl(DOC_BRN_NO,BRN_NO) = DECODE(Gls_Prmtrs.Chk_Bgt_Amt,2,NVL(P_BRN_NO,0),nvl(DOC_BRN_NO,BRN_NO))
                      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
                      and nvl(pj_no,'0')   = Decode(P_PJ_NO,null,nvl(pj_no,'0'),P_PJ_NO)
                      and nvl(actv_no,'0') = Decode(P_ACTV_NO,null,nvl(actv_no,'0'),P_ACTV_NO);
                  
                  END IF;
              
               EXCEPTION WHEN OTHERS THEN
                  V_Bal:=0; 
               END;
                  
     
     P_Bal:=Nvl(V_Bal,0);                                    
    --##----------------------------------------------------------------------------------------------------------##-- 
    --## BGT_AMT_L 
  IF  Gls_Prmtrs.Chk_Bgt_Amt IN(1,2) THEN ---(1)
		    -------------------------------------------------------------------------------------
		    If Gls_Prmtrs.USE_MULTI_CUR_BDGT=0 Or (Gls_Prmtrs.USE_MULTI_CUR_BDGT=1  and P_A_Cy=V_local_Cur ) Then
		    		IF P_BGT_AMT_L Is Not Null And nvl(V_Bal,0)+Nvl(P_Chk_Amt,0)>P_BGT_AMT_L Then
		    				 P_Msg:=Ias_Gen_Pkg.Get_Prompt(P_Lng,6074)||' = '||P_BGT_AMT_L||' '||
	    						           	                     Ias_Gen_Pkg.Get_Prompt(P_Lng,139)||' = '||Round((nvl(V_Bal,0)+NVL(P_Chk_Amt,0)),V_Frc_No)||
	    						           	                     Ias_Gen_Pkg.Get_Prompt(P_Lng,999)||' = '||Round(abs(P_BGT_AMT_L-(nvl(V_Bal,0)+NVL(P_Chk_Amt,0))),V_Frc_No)||' , '||
	    						           	                     Ias_Gen_Pkg.Get_Prompt(P_Lng,3604)||' = '||Abs(Round(((nvl(P_BGT_AMT_L,0)-Nvl(NVL(P_Chk_Amt,0),0)-(nvl(nvl(V_Bal,0),0))) /nvl(P_BGT_AMT_L,0))*100,2));				   	
		    		End IF;
		    ElsIf Gls_Prmtrs.USE_MULTI_CUR_BDGT=1 And  P_A_Cy<>V_local_Cur Then
		            IF P_BGT_AMT_F Is Not Null And nvl(V_Bal,0)+Nvl(P_Chk_Amt,0)>P_BGT_AMT_F Then
		    				 P_Msg:=Ias_Gen_Pkg.Get_Prompt(P_Lng,6074)||' = '||P_BGT_AMT_F||' '||
	    						           	                     Ias_Gen_Pkg.Get_Prompt(P_Lng,139)||' = '||Round((nvl(V_Bal,0)+NVL(P_Chk_Amt,0)),V_Frc_No)||
	    						           	                     Ias_Gen_Pkg.Get_Prompt(P_Lng,999)||' = '||Round(abs(P_BGT_AMT_F-(nvl(V_Bal,0)+NVL(P_Chk_Amt,0))),V_Frc_No)||' , '||
    						           	                     Ias_Gen_Pkg.Get_Prompt(P_Lng,3604)||' = '||Abs(Round(((nvl(P_BGT_AMT_F,0)-Nvl(NVL(P_Chk_Amt,0),0)-(nvl(nvl(V_Bal,0),0))) /nvl(P_BGT_AMT_F,0))*100,2));				   	
    		End IF;
        -------------------------------------------------------------------------------------        
    End IF;
    --##----------------------------------------------------------------------------------------------------------##-- 
 End If;---(1)
 Exception 
 When Others Then
  Null;
End Chk_Bdgt_Blnc_Prc;
/
CREATE Procedure Chk_Upd_ChqNo_Prc (P_TRS_TYP        IN Varchar2, 
                                                        P_bank_no        IN Number,
                                                        P_Cur_Code       IN Varchar2,
                                                        P_Cheque_No      IN Varchar2,
                                                        P_DOC_NO         IN Number,
                                                        P_DOC_DATE       IN DATE ,
                                                        P_DOC_SRL        IN Number,
                                                        P_DOC_TYP        IN Number,
                                                        P_DOC_JV_TYP     IN Number,
                                                        P_CHQ_ST         out Number,
                                                        P_Msg            out varchar2  ,
                                                        P_lng_no         IN Number default 1)   IS
 V_Cnt                   Number;
 V_CHQ_ST                Number;
 V_DOC_NO_REF            Number;
 V_DOC_SRL_REF           Number;
 V_DOC_TYP_REF           Number;
 V_DOC_JV_TYP_REF        Number;
 V_TBL_NM                Varchar2(60);
 V_DOC_SRL               Varchar2(60);
 V_CHQ_NO                Number;
 V_DUP_CHQ_PRMTR         Number;
Begin
 V_DUP_CHQ_PRMTR:=Nvl(IAS_GEN_PKG.GET_FLD_VALUE('IAS_PARA_GL','NVL(DUP_CHQ_NO_PAYMNT,0)'),0);
 IF P_DOC_TYP=3 THEN
    V_TBL_NM:='VOUCHER_DETAIL';
    V_DOC_SRL:='V_SER';
  ELSIF P_DOC_TYP=6 THEN
    V_TBL_NM:='IAS_PI_BILL_MST';
    V_DOC_SRL:='BILL_SER';
  END IF;

----------------------------------------------------------------------------------------   
     Begin
           Select 1 
             Into V_Cnt
             from GLS_BNK_CHQ_MST
            where bank_no  = p_bank_no
              And CUR_CODE = P_Cur_Code
              And RowNum<=1;   
 
     Exception 
         when others Then
        V_Cnt:=0;
     End;    
----------------------------------------------------------------------------------------
    If NVL(V_Cnt,0) = 1 THEN      
                 Begin
                   Select 1 
                     Into V_Cnt
                     from GLS_BNK_CHQ_DTL
                    where bank_no     =  P_bank_no
                      And CUR_CODE    =  P_Cur_Code
                      And CHQ_NO      =  P_CHEQUE_NO 
                      And RowNum<=1;
                 Exception 
                     when others Then
                       P_Msg:= YS_GEN_PKG.Get_Msg(P_Lng_no ,1935)||' '||IAS_CSHBNK_PKG.GET_CB_NAME(2,P_bank_no,P_Lng_no);
                      Return;   
            
                 End;
      

             
    End If;    
------------------------------------------------------------------------------------------
    If NVL(V_Cnt,0) = 1 Then        
         
           
                 Begin
                   
                   Select CHQ_ST ,CHQ_NO,DOC_NO_REF,DOC_TYP_REF,DOC_JV_TYP_REF,DOC_SRL_REF
                     Into V_CHQ_ST,V_CHQ_NO,V_DOC_NO_REF,V_DOC_TYP_REF,V_DOC_JV_TYP_REF,V_DOC_SRL_REF
                     from GLS_BNK_CHQ_DTL
                    where bank_no  = p_bank_no
                      And CUR_CODE = P_Cur_Code
                      And CHQ_NO =P_CHEQUE_NO
                      And RowNum<=1;   
 
                 Exception 
                     when others Then
                       V_CHQ_ST:=1;
                 End; 
         
    END IF;      
 ------------------------------------------------------------------------------------------
       P_CHQ_ST:=V_CHQ_ST;
     

         IF NVL(V_CHQ_ST,1)=2 AND P_TRS_TYP IN ('I','U') then      --AND P_DUP_CHQ=0 THEN --USED    
           IF V_DUP_CHQ_PRMTR=1 AND P_DOC_TYP=3 AND NVL(V_DOC_SRL_REF,0)<>NVL(P_DOC_SRL,0) THEN
             P_MSG:= YS_GEN_PKG.Get_Msg(P_Lng_no ,763);  --763
           ELSIF V_DUP_CHQ_PRMTR=1 AND P_DOC_TYP=3 AND NVL(V_DOC_SRL_REF,0)=NVL(P_DOC_SRL,0) THEN
             NULL;
           ELSE
             P_MSG:= YS_GEN_PKG.Get_Msg(P_Lng_no ,763);
           END IF;
         ELSIF NVL(V_CHQ_ST,1)=3 THEN -- CANCELED
             P_Msg:= YS_GEN_PKG.Get_Msg(P_Lng_no ,1936);
         ELSIF NVL(V_CHQ_ST,1)=4 THEN -- STOPPED
             P_Msg:= YS_GEN_PKG.Get_Msg(P_Lng_no ,1937);
         END IF; 
     
 
    IF  NVL(V_CHQ_ST,1)=1 AND P_TRS_TYP IN ('I','U') THEN
         
         BEGIN
                 UPDATE GLS_BNK_CHQ_DTL SET CHQ_ST         = 2,
                                            DOC_NO_REF     = P_DOC_NO,
                                            DOC_DATE_REF   = P_DOC_DATE,
                                            DOC_SRL_REF    = P_DOC_SRL,
                                            DOC_TYP_REF    = P_DOC_TYP,
                                            DOC_JV_TYP_REF = P_DOC_JV_TYP
                  WHERE Bank_No  = P_bank_no
                    And CUR_CODE = P_Cur_Code 
                    AND CHQ_NO   = P_CHEQUE_NO;
         EXCEPTION WHEN OTHERS THEN
          NULL;
         END;
    
    End IF;
    
    IF  NVL(V_CHQ_ST,1) =2 AND P_TRS_TYP ='U' THEN
         
         BEGIN
                 UPDATE GLS_BNK_CHQ_DTL SET DOC_DATE_REF   = P_DOC_DATE,
                                            DOC_JV_TYP_REF = P_DOC_JV_TYP
                                            
                  WHERE Bank_No     = P_bank_no
                    And CUR_CODE    = P_Cur_Code 
                    AND DOC_SRL_REF = P_DOC_SRL
                    AND CHQ_NO      = P_CHEQUE_NO;
         EXCEPTION WHEN OTHERS THEN
          NULL;
         END;
    
    End IF;
    

    If  V_CHQ_ST =2 AND P_TRS_TYP ='D' THEN
        
         BEGIN
                 UPDATE GLS_BNK_CHQ_DTL SET CHQ_ST         = 1,
                                            DOC_NO_REF     = Null,
                                            DOC_DATE_REF   = Null,
                                            DOC_SRL_REF    = Null,
                                            DOC_TYP_REF    = Null,
                                            DOC_JV_TYP_REF = Null
                  WHERE bank_no     = p_bank_no
                    And CUR_CODE    = P_Cur_Code 
                    And DOC_SRL_REF = V_DOC_SRL_REF 
                    AND CHQ_NO      = P_CHEQUE_NO;
         EXCEPTION WHEN OTHERS THEN
          NULL;
         END;
     END IF;
                          
------------------------------------------------------------------------------------------
  Exception 
  When Others Then 
  V_CHQ_ST:=1;
End Chk_Upd_ChqNo_Prc;
/
CREATE PROCEDURE CRT_MINUS_TAB_PROC (P_TAB_NM  VARCHAR2,P_USER_NEW  VARCHAR2,P_USER_OLD VARCHAR2) IS
               V_Str_Ctr_Tab   clob;
            Begin
                V_Str_Ctr_Tab:=REPLACE((dbms_metadata.get_ddl('TABLE',P_TAB_NM)),P_USER_NEW,P_USER_OLD);
                Execute Immediate V_Str_Ctr_Tab;
            EXCEPTION
               WHEN OTHERS THEN
                      NULL;
            END;
/
CREATE PROCEDURE Get_Net_Sales_Py ( P_Usr           In  Varchar2              ,
                                               P_Fld_Name      In  Varchar2              ,
                                               P_Fld_Value     In  Varchar2              ,
                                               P_Fdate         In Date                   ,
                                               P_Tdate         In Date                   ,
                                               P_Tname         In Varchar2 Default Null  ,
                                               P_Whr           In Varchar2 Default Null  ,
                                               P_Sign          In Varchar2 Default Null  ,
                                               P_Per           In Number Default Null    ,
                                               P_Type          In NUMBER                 ,
                                               P_Net_Amt_Py    In Out NUMBER             ,
                                               P_Net_Amt_Aftr  In Out NUMBER) IS
  V_Sale     Number:=0;
  V_RtSale   Number:=0;
  V_NetSale  Number:=0;
  V_Tname    Varchar2(50);   
  V_whr     Varchar2(8000);
  V_Fld_Name Varchar2(50);
BEGIN
   -------------------------------------------------------------------------------------------------------------------------------------------------------
   If P_Tname Is Not Null Then
      V_Tname := ','||P_Tname;     
   End if;
   --------------------------------------------------------------------------------------
   Execute Immediate 'Select Decode('||P_Type||',1,Sum(Nvl(I_Qty,0)),2,Sum(Nvl(I_Qty,0)*(Nvl(I_Price,0)-Nvl(dis_amt,0)))) 
                      From '||P_Usr||'.Ias_Bill_Mst,'||P_Usr||'.Ias_Bill_Dtl '||V_Tname||' 
                      Where '||P_Usr||'.Ias_Bill_Mst.Bill_Ser='||P_Usr||'.Ias_Bill_Dtl.Bill_Ser'||P_Whr||'
                        AND '||P_Usr||'.Ias_Bill_Mst.Bill_Date Between '''||To_Char(P_Fdate,'DD/MM/YYYY')||''' And '''||To_Char(P_Tdate,'DD/MM/YYYY')||'''
                        AND '||P_Fld_Name||'='||''''||P_Fld_Value||'''' InTo  V_Sale;
                       
                          
   -------------------------------------------------------------------------------------------------------------------------------------------------------
   Execute Immediate 'Select Decode('||P_Type||',1,Sum(Nvl(I_Qty,0)),2,Sum(Nvl(I_Qty,0)*(Nvl(I_Price,0)-Nvl(dis_amt,0)))) 
                       From '||P_Usr||'.Ias_Rt_Bill_Mst,'||P_Usr||'.Ias_Rt_Bill_Dtl'||V_Tname||' 
                      Where '||P_Usr||'.Ias_Rt_Bill_Mst.Rt_Bill_Ser='||P_Usr||'.Ias_Rt_Bill_Dtl.Rt_Bill_Ser'||Replace(P_Whr,'Bill','Rt_Bill')||'
                        AND '||P_Usr||'.Ias_Rt_Bill_Mst.Rt_Bill_Date Between '''||To_Char(P_Fdate,'DD/MM/YYYY')||''' And '''||To_Char(P_Tdate,'DD/MM/YYYY')||'''
                        AND '||Replace(P_Fld_Name,'Bill','Rt_Bill')||'='||''''||P_Fld_Value||'''' InTo  V_RtSale;
                        
      -------------------------------------------------------------------------------------------------------------------------------------------------------
   V_NetSale    := Nvl(V_Sale,0)-Nvl(V_RtSale,0);
   P_Net_Amt_Py := V_NetSale; 
   If  Nvl(V_NetSale,0) >= 0 Then 
		   If P_Sign Is Not Null And P_Per Is Not Null Then
		     If P_Sign='+' Then
		       V_NetSale := V_NetSale + (V_NetSale*P_Per/100);
		     ElsIf P_Sign='-' Then
		       V_NetSale := V_NetSale - (V_NetSale*P_Per/100);
		     ElsIf P_Sign='*' Then
		       V_NetSale := V_NetSale * (V_NetSale*P_Per/100);
		     ElsIf P_Sign='/' Then
		       V_NetSale := V_NetSale / (V_NetSale*P_Per/100);
		     End If;
		   End If;
   End If ;
   -------------------------------------------------------------------------------------------------------------------------------------------------------
   P_Net_Amt_Aftr := V_NetSale;
   -------------------------------------------------------------------------------------------------------------------------------------------------------
   EXCEPTION WHEN OTHERS THEN       
     P_Net_Amt_Py    := 0;
     P_Net_Amt_Aftr := 0;
END Get_Net_Sales_Py;
/
CREATE Procedure GLS_ACCNT_DFLT_PRC is
 
BEGIN
		-----  account list 1  ---------------
		begin
		 
	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_MST (DOC_NO, DOC_SRL, LVL_NO, LIST_TYP, LIST_DSC_L, LIST_DSC_F) Values(1, 20201, NULL, NULL, '���� ������ �����','Main Account List');
	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_MST(DOC_NO, DOC_SRL, LVL_NO, LIST_TYP, LIST_DSC_L, LIST_DSC_F) Values (2, 20212, NULL, NULL, '���� ������ ���� ����',  'Main and Sub Account List');
	COMMIT;
		exception when others then
		   null;
		end ;
		--------------------------------------------------------------------------------------------------------
								---DOC NO 1
		--------------------------------------------------------------------------------------------------------					
								BEGIN 
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '11', ' ������ ����� �������', 'Noncurrent Assets', 2, 
								'1', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '111', ' ������ ����� ������', 'Intangible Assets', 3, 
								'11', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '112', ' ���� ������ �������', 'Property,Plant and Equipment ( PPE ) NET', 3, 
								'11', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '113', ' ����������� ����� �����', 'Long Term Investments', 3, 
								'11', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '114', ' ���� ��� ������� ����', 'Other Noncurrent Assets', 3, 
								'11', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '12', ' ������ ���������', 'Current Assets', 2, 
								'1', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '121', ' ���� �������', 'Net Inventories', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '122', ' ���� �������� ���������', 'Net Accounts Recievable', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '123', ' ����� ����� ����', 'Other Debit Accounts', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '124', ' ��������� �������� �����', 'Prepaid Expenses', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '125', ' ������� ���� �������', 'Cash <subst>; Cash Equevilant', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '126', ' ��������� ����� �����', 'Short Term Investment', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '127', ' ����� �����', 'Notes Receivable', 3, 
								'12', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '2', ' ����������', 'Liabilities ', 1, 
								'0', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '21', ' ���������� ����� �������', 'Noncurrent Liabilities', 2, 
								'2', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '211', ' ���� ����� �����', 'Long Term Loan ', 3, 
								'21', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '212', ' �������� ��� ������� ����', 'Other Non Current Liabilities', 3, 
								'21', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '22', ' ���������� ���������', 'Current Liabilities', 2, 
								'2', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '221', ' ��������', 'Accounts Payable', 3, 
								'22', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '222', ' ����� �����', 'Notes  Payable', 3, 
								'22', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '223', ' ������ ������ ����� ����', 'Other Current Liabilities', 3, 
								'22', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '3', ' ���� �������', 'Owners Equity', 1, 
								'0', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '31', ' ��� ��� �������', 'Partners Capital', 2, 
								'3', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '311', ' ��� ��� �������', 'Partners Capital', 3, 
								'31', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '32', ' ����������� �������', 'Reserves <subst>; Surplus', 2, 
								'3', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '321', ' �����������', 'Reserves', 3, 
								'32', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '33', ' ������ ���� �������', 'Partners Current Accounts', 2, 
								'3', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '331', ' ������ ���� �������', 'Partners Current Accounts', 3, 
								'33', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '34', ' ������� ��������', 'Retained Earnings', 2, 
								'3', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '341', ' ������� ��������', 'Retained Earnings ', 3, 
								'34', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '4', ' ���������', 'Revenue', 1, 
								'0', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '41', ' ��������� �� ��������', 'Sales Revenue', 2, 
								'4', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '411', ' ���� ��������', 'Net Sales', 3, 
								'41', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '42', ' ��������� ������', 'Other Revenue', 2, 
								'4', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '421', ' ��������� �������� ������', 'Other Revenue', 3, 
								'42', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '5', ' ���������', 'Expenses', 1, 
								'0', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '51', ' ������ ������', 'Cost of Activity', 2, 
								'5', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '511', ' ����� ������� �������', 'Cost of Good Sold', 3, 
								'51', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '52', ' ������ ������ �������', 'Expenses For The Activity', 2, 
								'5', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '521', ' �������� �������� ���������', 'Administration Expenses', 3, 
								'52', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '522', ' �������� ������� ����������', 'Sales <subst>; Marketing Expenses', 3, 
								'52', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '523', ' ������� ��������� ���������', 'Interest And Financial Charges', 3, 
								'52', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '524', ' ������ ��������� ������', 'Assets Deapreciation Expenses', 3, 
								'52', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '525', ' ������ �������', 'Tax Expenses', 3, 
								'52', NULL, 2, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
								Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
								(DOC_NO, AC_CODE, AC_L_NM, AC_F_NM, LVL_NO, 
								AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, AC_DTL_TYP, 
								AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, CONN_PRD, 
								FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M, DOC_SRL)
								Values
								(1, '1', ' ������', 'Assets', 1, 
								'0', NULL, 1, NULL, 0, 
								NULL, 0, NULL, NULL, 0, 
								0, NULL, NULL, 1, 20201);
							
								Commit;
								-----------------------------------------------------------------------------
							
								EXCEPTION WHEN OTHERS THEN
								      ROLLBACK;
								End ;
		--------------------------------------------------------------------------------------------------------
								---DOC NO 2
		--------------------------------------------------------------------------------------------------------
																	BEGIN
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '421101', '������� ��������� ����� �� ����� �����', 'Investments Revenues in Sister company', 
																	5, '4211', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '421202', '��������� ��������', 'Various Revenues', 
																	5, '4212', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1111010001', '������� �������', 'Main Cash', 
																	6, '111101', NULL, 1, NULL, 
																	1, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1111010002', '����� ������ ������', 'Point Of Sale Cash', 
																	6, '111101', NULL, 1, NULL, 
																	1, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1112010001', '����� ������ ������� � �������', 'Bank 1', 
																	6, '111201', NULL, 1, NULL, 
																	2, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1112010002', '��� ������� �������', 'Bank 2', 
																	6, '111201', NULL, 1, NULL, 
																	2, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1113010001', '����� ���   ��� �������', 'Cheque Receivables', 
																	6, '111301', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1121010001', '�������', 'Local Customer', 
																	6, '112101', NULL, 1, NULL, 
																	3, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1131010001', '���� �������� �� ������ ������', 'Employee Name', 
																	6, '113101', NULL, 1, NULL, 
																	7, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1132010001', '���� �������� �����', 'Employee Name', 
																	6, '113201', NULL, 1, NULL, 
																	7, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1133010001', '������ ������ ���', 'Guarantees Credit', 
																	6, '113301', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1141010001', '�������', 'Inventory', 
																	6, '114101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1141010002', '���� ��������� ��������', 'Intermediary Inventory Transfers', 
																	6, '114101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151010001', '���� �������� �������� (��������)', 'Value of Letter of Credit', 
																	6, '115101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151010002', '���� �����', 'Freight -in for L/C', 
																	6, '115101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151010003', '������ ��������', 'Coustoms Duties for L/C', 
																	6, '115101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151010004', '������ �����', 'Banking Fees and commission', 
																	6, '115101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151010005', '������ �����', 'Demestic Transport for L/C', 
																	6, '115101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151010006', '������ ����', 'Other Expenses for L/C', 
																	6, '115101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1163010001', '������ �������', 'Organization Cost', 
																	6, '116301', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1211010001', '������', 'Cars', 
																	6, '121101', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1211020001', '������ �����', 'Means of Transports', 
																	6, '121102', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1212010001', '����', 'Furniture', 
																	6, '121201', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1212020001', '������� ������', 'Office Equipments', 
																	6, '121202', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1213010001', '���������', 'Computers', 
																	6, '121301', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1213020001', '������� �������', 'Financial Systems', 
																	6, '121302', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1214010001', '����� ��������', 'Electric Equipments', 
																	6, '121401', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1214020001', '����� �������� �������', 'Tools & Equipments', 
																	6, '121402', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1215020001', '�����', 'Machinery', 
																	6, '121502', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1216010001', '����', 'Building', 
																	6, '121601', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1216020001', '�����', 'Land', 
																	6, '121602', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1217010001', '����� ����', 'Building Projects', 
																	6, '121701', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2111010001', '�������� ��������', 'Local Suppliers', 
																	6, '211101', NULL, 1, NULL, 
																	4, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2121010001', '����� ��� ���  ��� �������', 'Payment Cheques Bank', 
																	6, '212101', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2131010001', '����� ������', 'Insurance', 
																	6, '213101', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2141010001', '������ ������ ������ ���', 'Accrued Expenses Letter Credit', 
																	6, '214101', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2141020001', '�������� ������� ��������', 'Accrued Expenses Salaries', 
																	6, '214102', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2211010001', '��� �����', 'Capital', 
																	6, '221101', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2212010001', '������� �������� ������', 'Profit and Loss Year', 
																	6, '221201', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2212010002', '������� �������� �������', 'Previous Years Profit and Loss', 
																	6, '221201', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2213010001', '������ ������ ������� ����', 'Provision for Bad Debts', 
																	6, '221301', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2213020001', '���� ����� ������', 'Accumulated Depreciation F', 
																	6, '221302', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2213020002', '���� ����� ��������� ��������', 'Accumulated Depreciation F', 
																	6, '221302', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2213020003', '���� ����� �����������', 'Accumulated Depreciation C', 
																	6, '221302', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2213020004', '���� ����� �������', 'Accumulated Depreciation S', 
																	6, '221302', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2214010001', '������� ������', 'Legal Reserve', 
																	6, '221401', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2215010001', '���� ������', 'Partner  Account', 
																	6, '221501', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3121010001', '����� ������ �����', 'Cost sales Inventory', 
																	6, '312101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3122010001', '����� ����� �������� �����', 'Cost of Return Sales Inventory', 
																	6, '312201', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3122020001', '����� ����� ������ �����  �����', 'Cost Sales Return Prior Year inv', 
																	6, '312202', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3122030001', '����� ������ ������� �������� �����', 'Free Quantity Sales Costing inv', 
																	6, '312203', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3123010001', '����� ������ �����', 'Sales Returned Inventory', 
																	6, '312301', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3123020001', '����� �������� ����� �����', 'Sales Returned inv Prior Year', 
																	6, '312302', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3123030001', '����� ������ ������� �������� �����', 'Free Quantity Sales Returned inv', 
																	6, '312303', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3124010001', '����� ������� ��', 'Allowed Discount', 
																	6, '312401', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3125010001', '����� �������', 'Stock Adjusment', 
																	6, '312501', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010001', '�������� �������', 'Wages And Salaries', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010002', '�������� ��������', 'Bonuses', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010003', '���������', 'Compensation', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010004', '����� �����', 'Fringe Benefits', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010005', '�����', 'Housing', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010006', '�����', 'Food', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211010007', '��������', 'Medication', 
																	6, '321101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020001', '�������', 'Phones', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020002', '��������', 'Electricity', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020003', '���������', 'Rent Office/Depots', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020004', '����� �����', 'Debit Interests', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020005', '�������', 'Taxes', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020006', '������', 'Zakah', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020007', '�������', 'Depreciations', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020008', '������ ��������', 'Bad Debt', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211020009', '�����', 'Bad Debt', 
																	6, '321102', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211030001', '����� �������', 'Maintenance Buldings', 
																	6, '321103', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211030002', '����� ��������', 'Maintenance Cars', 
																	6, '321103', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211040001', '����� ������ ������', 'Missing and damaged items', 
																	6, '321104', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211040002', '���� ����������', 'Differences credits', 
																	6, '321104', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211040003', '���� ������', 'Fractions differences', 
																	6, '321104', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211040004', '���� �������', 'Cost differentials', 
																	6, '321104', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3221010001', '������ ����� �����', 'Wages And Salaries sale', 
																	6, '322101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3221010002', '������� ��������', 'Propaganda & Advertisement', 
																	6, '322101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3221010003', '������� ���������', 'Gifts & Donations', 
																	6, '322101', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4111010001', '������� ������ �����', 'Revenues Sales Inventory ', 
																	6, '411101', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4121010001', '������� ������� �������� �����', 'Free quantity of Inventories  Revenues', 
																	6, '412101', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4121020001', '����� ������� �����', 'Acquired Discount', 
																	6, '412102', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4211010001', '������� ��������� ����� �� ����� �����', 'Investments Revenues in Sister com', 
																	6, '421101', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212020001', '����� ��� ����� �����', 'Securities Revenues', 
																	6, '421202', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212020002', '������� ���� ����', 'Different Currency Revenues', 
																	6, '421202', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212020003', '������� ������', 'Commissions Revenues', 
																	6, '421202', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212020004', '������� ��� ������', 'Revenues of Remains sales', 
																	6, '421202', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212020005', '������� �������', 'Capital Revenues', 
																	6, '421202', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212020006', '������� ������� �����', 'Rent Revenues', 
																	6, '421202', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 2);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1', '������', 'Assets', 
																	1, '0', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2', '������', 'Liabilities & Equity', 
																	1, '0', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3', '���������', 'Expenses', 
																	1, '0', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4', '���������', 'Revenues', 
																	1, '0', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '11', '������ ���������', 'Current Assets', 
																	2, '1', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '12', '������ ����� �������', 'Non- Current Assets', 
																	2, '1', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '21', '������ ���������', 'Current Liabilities', 
																	2, '2', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '22', '������ ����� �������', 'Non Current Liabilities', 
																	2, '2', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '31', '����� ������', 'Cost Activity', 
																	2, '3', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '32', '������  ������', 'Activity Expenses', 
																	2, '3', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '41', '������� ������', 'Activity Of Revenues', 
																	2, '4', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '42', '������� ������ ������', 'Other Revenues', 
																	2, '4', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '111', '������� ���� �������', 'Cash on Hand & in Banks', 
																	3, '11', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '112', '��������', 'Trade of Debtors', 
																	3, '11', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '113', '����� ���������� �������', 'Imprest & Debit Insurance', 
																	3, '11', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '114', '�������', 'Inventories', 
																	3, '11', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '115', '���������� ���������', 'Letters of Credit', 
																	3, '11', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '116', '������� ������� ������', 'Other Debit Balances', 
																	3, '11', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121', '������ ����� �������', 'Non- Current assets', 
																	3, '12', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '211', '���������', 'Account Payables', 
																	3, '21', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '212', '����� ���', 'Notes Payable', 
																	3, '21', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '213', '��������� �������', 'Credit  Insurance', 
																	3, '21', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '214', '������� ������ ������', 'Other Credit Balances', 
																	3, '21', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221', '���� ����� �������', 'Owners Equity', 
																	3, '22', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312', '����� ������� �������', 'Cost Goods Sold', 
																	3, '31', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '321', '�������� �������� ����������', 'Marketing&Administrative Expense', 
																	3, '32', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '322', '�������� ���������', 'Marketing Expenses', 
																	3, '32', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '411', '������� ��������', 'Revenues Sales', 
																	3, '41', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '412', '������� ������ �������', 'Free Quantity Revenues', 
																	3, '41', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '421', '������� ���� �������', 'Various Other Revenues', 
																	3, '42', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1111', '������� �� ��������', 'Cash In Hand', 
																	4, '111', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1112', '������� �� ������', 'Cash In Bank', 
																	4, '111', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1113', '����� ��� ��� �������', 'Cheque Receivables', 
																	4, '111', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1121', '������� � ��������', 'Accounts Recievable', 
																	4, '112', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1131', '��� ��������', 'Loans to Employees', 
																	4, '113', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1132', '����� ������� (����� )', 'Imprest  Loans', 
																	4, '113', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1133', '�������� �������', 'Guarantees Debit', 
																	4, '113', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1134', '��������� �������', 'Outstanding Debit Insuranc', 
																	4, '113', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1141', '������� ������', 'Inventories', 
																	4, '114', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1151', '���������� ���������', 'Letters of Credit', 
																	4, '115', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1161', '������ �������� �����', 'Transitional Debit Accounts', 
																	4, '116', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1163', '�������� ��������� �������', 'Deferred expenditure', 
																	4, '116', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1211', '�������� ������� �����', 'Cars& Means of Transports', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1212', '������ �������� �� ��������', 'Furniture and Office Equipment', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1213', '����������� ��������', 'Computers & system', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1214', '������� ���������� ������ ��������', 'Tools&Electric Equipments', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1215', '������� �������', 'Machineries & Equipment', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1216', '��������', 'Real Estate', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '1217', '������ ��� ������', 'Work In Progress', 
																	4, '121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2111', '��������', 'Trade Creditors', 
																	4, '211', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2112', '�� ����� ����', 'Other Account Payables', 
																	4, '211', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2121', '����� ��� ��� �������', 'Receipt Cheques by Collection', 
																	4, '212', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2131', '��������� �������', 'Credit  Insurance', 
																	4, '213', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2141', '������ ������', 'Accrued Expenses', 
																	4, '214', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2142', '��������� �������� ������', 'Prepiad Revenue', 
																	4, '214', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2211', '��� �����', 'Capital', 
																	4, '221', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2212', '������� ��������', 'Profit And Loss', 
																	4, '221', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2213', '�������� ���������', 'Accumulated & Provision', 
																	4, '221', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2214', '�����������', 'Reserves', 
																	4, '221', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '2215', '���� �������', 'Partners Current Account', 
																	4, '221', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3121', '����� ��������', 'Cost sales', 
																	4, '312', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3122', '����� ����� ��������', 'Cost  Return Sales', 
																	4, '312', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3123', '����� ��������', 'Sales Returned', 
																	4, '312', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3124', '����� ������� ��', 'Allowed Discount', 
																	4, '312', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3125', '����� �������', 'Stock Adjusment', 
																	4, '312', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3211', '�������� �������� ���������', 'General &Administrative Expenses', 
																	4, '321', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '3221', '�������� ���������', 'Marketing Expenses', 
																	4, '322', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4111', '������� ��������', 'Revenues Sales', 
																	4, '411', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4121', '������� �����', 'Occasional Revenues', 
																	4, '412', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4211', '������ �����������', 'Investments Revenues', 
																	4, '421', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '4212', '������� ������ ����', 'Various Other Revenues', 
																	4, '421', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '111101', '����� �������', 'Cash', 
																	5, '1111', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '111201', '��� �����', 'Bank Name ', 
																	5, '1112', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '111301', '����� ��� ��� �������', 'Cheque Receivables', 
																	5, '1113', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '112101', '����� ������ ��������', 'Local And Foreign Customer', 
																	5, '1121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '112102', '��������', NULL, 
																	5, '1121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '112103', '����������', NULL, 
																	5, '1121', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '113101', '��� ��������', 'Loans to Employees', 
																	5, '1131', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '113201', '����� ������� (����� )', 'Imprest  Loans', 
																	5, '1132', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '113301', '������ ��������', 'Guarantees Credit', 
																	5, '1133', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '114101', '������� �����', 'General Inventory', 
																	5, '1141', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '115101', '�������� ���', 'Credit Number ', 
																	5, '1151', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '116101', '�������� �������� ������', 'Prepaid Expenditures', 
																	5, '1161', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '116102', '��������� ��������', 'Accrued Revenues', 
																	5, '1161', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '116301', '������ �������', 'Organization Cost', 
																	5, '1163', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121101', '������ �������', 'Cars of Transports', 
																	5, '1211', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121102', '������ �����', 'Means of Transports', 
																	5, '1211', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121201', '������ ����������', 'Furniture - Wood & Plastic', 
																	5, '1212', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121202', '��������� ��������', 'Office Equipments', 
																	5, '1212', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121301', '�����������', 'Computers', 
																	5, '1213', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121302', '�������', 'Systems', 
																	5, '1213', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121401', '������� ����������', 'Electric Equipments', 
																	5, '1214', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121402', '�������������', 'Tools & Equipments', 
																	5, '1214', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121502', '�������', 'Machinaries', 
																	5, '1215', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121601', '�������', 'Building', 
																	5, '1216', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121602', '�������', 'Land', 
																	5, '1216', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '121701', '������ ��� ������ �����', 'Work in Progress Building', 
																	5, '1217', NULL, 1, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '211101', '������ ������ ��������', 'Local And Foreign Suppliers', 
																	5, '2111', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '212101', '����� ��� ��� �������', 'Payment Cheques by Collection', 
																	5, '2121', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '213101', '������ �������', 'Clients Insurance', 
																	5, '2131', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '214101', '������ ������ ��������', 'Accrued Expenses Letter Credit', 
																	5, '2141', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '214102', '�������� �������� ������', 'Accrued Expenses ', 
																	5, '2141', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221101', '��� �����', 'Capital', 
																	5, '2211', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221201', '������� ��������', 'Profit And Loss', 
																	5, '2212', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221301', '��������', 'Provision', 
																	5, '2213', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221302', '������ �������', 'Accumulated Depreciation', 
																	5, '2213', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221401', '�����������', 'Reserves', 
																	5, '2214', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '221501', '���� �������', 'Partners Current Account', 
																	5, '2215', NULL, 1, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312101', '����� ������ ������� ������', 'Cost sales Inventory', 
																	5, '3121', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312201', '����� ����� �������� ������', 'Cost of Return Sales', 
																	5, '3122', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312202', '����� ����� �������� ����� �����', 'Cost Sales Return Prior Year', 
																	5, '3122', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312203', '����� ������ ������� ��������', 'Free Quantity Sales Costing', 
																	5, '3122', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312301', '����� �������� ������', 'Sales Returned Year', 
																	5, '3123', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312302', '����� �������� ����� �����', 'Sales Returned inv Prior Year', 
																	5, '3123', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312303', '����� ������ ������� ��������', 'Free Quantity Sales Returned', 
																	5, '3123', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312401', '����� ������� ��', 'Allowed Discount', 
																	5, '3124', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '312501', '����� �������', 'Stock Adjusment', 
																	5, '3125', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '321101', '�������� ������� ��� �� �����', 'Wages & Salaries and Similar', 
																	5, '3211', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '321102', '�������� �������� ��������', 'General Administrative Expenses', 
																	5, '3211', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '321103', '������� ����������', 'Repairs & Maintenance', 
																	5, '3211', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '321104', '������� ������� ���������', 'General Administrative & Acounts Expenses', 
																	5, '3211', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '322101', '������ ����� ��������', 'Sales Expenses', 
																	5, '3221', NULL, 2, NULL, 
																	0, NULL, 0, 1, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '411101', '������� ������ ������� ������', 'Revenues Sales Inventory ', 
																	5, '4111', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '412101', '������� ������� ������� ��������', 'Free Quantity of Purchases Revenues', 
																	5, '4121', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	Insert into IAS_DFLT_DATA.GLS_ACCNT_DFLT_DTL
																	(DOC_NO, DOC_SRL, AC_CODE, AC_L_NM, AC_F_NM, 
																	LVL_NO, AC_PARNT, GRP_NO, RPRT_TYP_NO, A_ANALYSIS, 
																	AC_DTL_TYP, AC_CLSS_TYP, AC_CLOSE, AC_DR, CURDIF_CODE, 
																	CONN_PRD, FAV_AC, AC_FLW_TYP, AC_OP_NO, A_S_M)
																	Values
																	(2, 20212, '412102', '������� ����� �������', 'Acquired Discount Revenues', 
																	5, '4121', NULL, 2, NULL, 
																	0, NULL, 0, 0, NULL, 
																	0, 0, NULL, NULL, 1);
																	COMMIT;
																
																	EXCEPTION WHEN OTHERS THEN
																	  ROLLBACK;
																	End ;
      --------------------------------------------------------------
      
      EXCEPTION WHEN OTHERS THEN
 	        ROLLBACK;
       
END GLS_ACCNT_DFLT_PRC;
/
CREATE Procedure Ias_Analyze_Tables Is 
Begin  
 Execute Immediate 'Analyze Table Ias_Itm_Mst        Compute Statistics' ;
 Execute Immediate 'Analyze Table GR_NOTE             Compute Statistics' ;
 Execute Immediate 'Analyze Table GR_DETAIL           Compute Statistics' ;
 Execute Immediate 'Analyze Table ITEM_MOVEMENT       Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_BIll_MST        Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_BIll_DTL        Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_OUTGOING_MST    Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_OUTGOING_DTL    Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_RT_BIll_MST     Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_RT_BIll_MST     Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_POST_MST        Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_POST_DTL        Compute Statistics' ;
 Execute Immediate 'Analyze Table SALE_COST           Compute Statistics' ;
 Execute Immediate 'Analyze Table IAS_ITEM_PRICE      Compute Statistics' ;
End Ias_Analyze_Tables;
/
CREATE PROCEDURE Ias_Ar_Get_Data_Rep ( P_SqlStr       In     Varchar2,
	                                                           P_Open_Bal_Qty In Out Number  ,
	                                                           P_Open_Bal_Amt In Out Number  ,
	                                                           P_Inc_Qty      In Out Number  ,
	                                                           P_Inc_Amt      In Out Number  ,
	                                                           P_Out_Qty      In Out Number  ,
	                                                           P_Out_Amt      In Out Number  ,
	                                                           P_Tr_Qty       In Out Number  ,
	                                                           P_Tr_Amt       In Out Number  ,
	                                                           P_Adj_Qty      In Out Number  ,
	                                                           P_Adj_Amt      In Out Number  ) IS
                                                      
  
Begin
  Execute Immediate P_SqlStr Into  P_Open_Bal_Qty,
                                   P_Open_Bal_Amt,
                                    P_Inc_Qty,
                                    P_Inc_Amt,
                                    P_Out_Qty,
                                    P_Out_Amt,
                                    P_Tr_Qty,
                                    P_Tr_Amt,
                                    P_Adj_Qty,
                                    P_Adj_Amt;
                             
Exception  
   When Others Then
        P_Open_Bal_Qty := 0;
        P_Open_Bal_Amt := 0;
        P_Inc_Qty      := 0;
        P_Inc_Amt      := 0;
        P_Out_Qty      := 0;
        P_Out_Amt      := 0;
        P_Tr_Qty       := 0;
        P_Tr_Amt       := 0;
        P_Adj_Qty      := 0;
        P_Adj_Amt      := 0;
END Ias_Ar_Get_Data_Rep;
/
CREATE PROCEDURE IAS_CheckData_AP_Prc (P_Bill_Type In Number Default 6) IS

Cnt 								 Number;
V_Disc_Per_Items_Ap  Number;
V_Disc_count         Number;
BEGIN

--## Get Para
Begin
 Select nvl(SHOW_DISC_PER_ITEMS_AP,0),nvl(Disc_count,1)
   Into V_Disc_Per_Items_Ap,V_Disc_count
   From Ias_Para_AP; 
Exception
 when others then
  V_Disc_Per_Items_Ap:=0;
End;

If P_Bill_Type = 6 Then -- (1) Purchase Inv.

---## Check bill_amt
Begin

 Select 1 Into cnt From IAS_V_PI_BILL_AMT_ERR Where RowNum<=1;

Exception
when others then
 Cnt:=0;
End;

 If Cnt > 0  Then --(2)
 
	  --====================================================================================
	  Begin
		  INSERT INTO IAS_LOGS( F_SYS, DOC_TYPE, LOG_DATE, LOG_DESC ) 
		               Values ('APS', 6       ,Sysdate  ,'Use IAS_CheckData_AP_Prc Check Error In Purchase Inv.');     
	   Exception 
	    When Others Then
	      Null;
	  End;
	  --====================================================================================

      Begin
         Update Ias_Pi_Bill_Mst a Set bill_amt = (Select Round(nvl(Sum(nvl(i_qty,0)*nvl(i_price,0)),0),4) From Ias_Pi_Bill_Dtl
                                                   Where bill_ser=a.bill_ser)
	          Where Exists (Select 1 From IAS_V_PI_BILL_AMT_ERR 
                                Where  Bill_Ser=a.Bill_Ser);
--          Where a.bill_ser in ( Select bill_ser From IAS_V_PI_BILL_AMT_ERR );

      Commit;

      Exception 
       When Others Then
         Null;
      End;

--## End check bill_amt
--======================================================================================================================

--======================================================================================================================
---## Check disc_amt


  If V_Disc_Per_Items_Ap = 1  Then -- disc in detail --(3)

   	 Begin

         Update Ias_Pi_Bill_Dtl a Set dis_amt_mst=(Select (nvl(disc_amt_mst,0)/nvl(bill_amt,0))*nvl(a.i_price,0) From Ias_Pi_Bill_Mst
                                                    Where bill_ser=a.bill_ser)
	          Where Exists (Select 1 From IAS_V_PI_BILL_AMT_ERR 
                                Where  Bill_Ser=a.Bill_Ser);
--           Where a.bill_ser in (select bill_ser From IAS_V_PI_BILL_AMT_ERR);


       --Commit;

          Update Ias_Pi_Bill_Dtl Set dis_amt_dtl = nvl(i_price,0)*nvl(dis_per,0)/100 ,
                                     dis_amt = nvl(i_price,0)*nvl(dis_per,0)/100 + nvl(dis_amt_mst,0)
	          Where Exists (Select 1 From IAS_V_PI_BILL_AMT_ERR 
                                Where  Bill_Ser=Ias_Pi_Bill_Dtl.Bill_Ser);
--           where bill_ser in (select bill_ser From IAS_V_PI_BILL_AMT_ERR);

          If V_Disc_count > 1 Then
		          Update Ias_Pi_Bill_Dtl Set dis_amt_dtl2 = (nvl(i_price,0) - (nvl(dis_amt_dtl,0)) )*nvl(dis_per2,0)/100 ,
	                                     dis_amt = (nvl(i_price,0) - (nvl(dis_amt_dtl,0)) )*nvl(dis_per2,0)/100 + nvl(dis_amt_mst,0)+ nvl(dis_amt_dtl,0)
	          Where Exists (Select 1 From IAS_V_PI_BILL_AMT_ERR 
                                Where  Bill_Ser=Ias_Pi_Bill_Dtl.Bill_Ser);
--		           where bill_ser in (select bill_ser From IAS_V_PI_BILL_AMT_ERR);

          End If;
          If V_Disc_count > 2 Then
	          Update Ias_Pi_Bill_Dtl Set dis_amt_dtl3 = (nvl(i_price,0) - (nvl(dis_amt_dtl,0)+ nvl(dis_amt_dtl2,0)) )*nvl(dis_per3,0)/100 ,
	                                     dis_amt = (nvl(i_price,0) - (nvl(dis_amt_dtl,0)+ nvl(dis_amt_dtl2,0)) )*nvl(dis_per3,0)/100 + nvl(dis_amt_mst,0)+ nvl(dis_amt_dtl,0)+ nvl(dis_amt_dtl2,0)
	          Where Exists (Select 1 From IAS_V_PI_BILL_AMT_ERR 
                                Where  Bill_Ser=Ias_Pi_Bill_Dtl.Bill_Ser);
--		           where bill_ser in (select bill_ser From IAS_V_PI_BILL_AMT_ERR);
		           
          End If;
         --Commit;

           Update Ias_Pi_Bill_Mst a  Set disc_amt=( Select nvl(Sum(nvl(dis_amt,0)*nvl(i_qty,0)),0) From Ias_Pi_Bill_Dtl
                                                     Where bill_ser=a.bill_ser)
	          Where Exists (Select 1 From IAS_V_PI_BILL_AMT_ERR 
                                Where  Bill_Ser=a.Bill_Ser);
--            Where a.bill_ser In ( Select bill_ser From IAS_V_PI_BILL_AMT_ERR );

       Commit;

      Exception 
       When Others Then
        Null;
      End;
