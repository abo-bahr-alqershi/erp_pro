CREATE Function Check_Item_Move( P_Csttype    In Number   ,
	                                                     P_Wtavg_Type In Number   ,
	                                                     P_Trns_St    In Varchar2 ,
	                                                     P_Trns_Type  In Number   ,
	                                                     P_Doctype    In Number   ,
	                                                     P_Icode      In Ias_Itm_Mst.I_Code%Type,
	                                                     P_Tdate      In Date     ,
	                                                     P_Docser     In Number   ,
	                                                     P_Wcode      In Warehouse_Details.W_Code%Type    Default Null, 
	                                                     P_Rcrd_No    In Number   ,
	                                                     P_Doc_Seq    In Number    Default Null,
	                                                     P_Chk_Doc_Dplct_Itm   In Number    Default 0)  Return Number Is
	  V_Cnt        Number;
	  V_Use_Wcode  Number:=0;
	 Begin
	--##----------------------------------------------------------------------------------------##--
	    If    P_Wtavg_Type = 2 Or P_Csttype = 1 Then
	          V_Use_Wcode:= 1 ;
	    Elsif P_Wtavg_Type = 3 And P_Csttype = 2 Then   
	          V_Use_Wcode:= 2 ;
	    End If;
	--##----------------------------------------------------------------------------------------##--   
	    If P_Icode Is Not Null And P_Tdate Is Not Null Then --(1)
	       If P_Trns_St='I'  Then --(2) (Insert)
	          If P_Trns_Type = 1  Then --(Income)
	             If  V_Use_Wcode = 2  Then
	                 Select 1 Into V_Cnt From Item_Movement
	                   Where I_Code  = P_Icode
	                    And Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                    And To_Date(I_Date,'DD/MM/YYYY') > To_Date(P_Tdate,'DD/MM/YYYY')
	                    And Rownum  <= 1;
	             Else
	                 Select 1 Into V_Cnt From Item_Movement
	                   Where I_Code = P_Icode
	                    And W_Code  = Decode(V_Use_Wcode,1,P_Wcode,W_Code)
	                    And To_Date(I_Date,'DD/MM/YYYY') > To_Date(P_Tdate,'DD/MM/YYYY')
	                    And Rownum <= 1;
	             End If ;
	          Else --(Out)
	             If  P_Csttype <>  1 Then
			             If  V_Use_Wcode = 2  Then
			                 Select 1 Into V_Cnt From Item_Movement
			                   Where I_Code  = P_Icode
			                    And Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
			                    And To_Date(I_Date,'DD/MM/YYYY') > To_Date(P_Tdate,'DD/MM/YYYY')
			                    And Item_Movement.In_Out = 1
			                    And Rownum <= 1 ;
			             Else
			                 Select 1 Into V_Cnt From Item_Movement
			                   Where I_Code = P_Icode
			                    And W_Code  = Decode(V_Use_Wcode,1,P_Wcode,W_Code)
			                    And To_Date(I_Date,'DD/MM/YYYY') > To_Date(P_Tdate,'DD/MM/YYYY')
			                    And Item_Movement.In_Out = 1
			                    And Rownum <= 1 ;       
			             End If ;
			         End If ;
	          End If;
	       Else --(2) (Query,Update,Delete)
	          If P_Trns_Type=1  Then --(income)
	             If P_Csttype = 2 Then --watAvg
	                  If Nvl(P_Chk_Doc_Dplct_Itm,0)=0 Then 
	                    If  V_Use_Wcode = 2  Then
	                        Select 1 Into V_Cnt From Item_Movement
	                          Where I_Code  = P_Icode
	                           And Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                           And Serial >( Select Min(Serial) From Item_Movement
	                                          Where Doc_Type    = P_Doctype
	                                           And I_Code       = P_Icode
	                                           And Whg_Code     = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                                           And Doc_Ser      = P_Docser
	                                           And Doc_Sequence = P_Doc_Seq )
	                           And Rownum <= 1;
	                    Else
	                                Select 1 Into V_Cnt From Item_Movement
	                                  Where I_Code = P_Icode
	                                   And W_Code = Decode(P_Wtavg_Type,1,W_Code,P_Wcode)
	                                   And Serial >( Select Min(Serial) From Item_Movement
	                                                  Where Doc_Type      = P_Doctype
	                                                     And I_Code       = P_Icode
	                                                     And W_Code       = Decode(P_Wtavg_Type,1,W_Code,P_Wcode)
	                                                     And Doc_Ser      = P_Docser
	                                                     And Doc_Sequence = P_Doc_Seq )
	                                   And Rownum <= 1; 
	                    End If ;
	                 Else
	                    If  V_Use_Wcode = 2  Then
	                     Select 1 Into V_Cnt From Item_Movement
	                      Where I_Code  = P_Icode
	                       And Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                       And Doc_Ser      <> P_Docser
	                       And Serial >( Select Min(Serial) From Item_Movement
	                                      Where Doc_Type    = P_Doctype
	                                       And I_Code       = P_Icode
	                                       And Whg_Code     = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                                       And Doc_Ser      = P_Docser )                                       
	                        And Rownum <= 1;
	                    Else
	                            Select 1 Into V_Cnt From Item_Movement
	                              Where I_Code = P_Icode
	                               And W_Code = Decode(P_Wtavg_Type,1,W_Code,P_Wcode)
	                               And Doc_Ser      <> P_Docser
	                               And Serial >( Select Min(Serial) From Item_Movement
	                                              Where Doc_Type      = P_Doctype
	                                                 And I_Code       = P_Icode
	                                                 And W_Code       = Decode(P_Wtavg_Type,1,W_Code,P_Wcode)
                                                 And Doc_Ser      = P_Docser )                                                 
	                               And Rownum <= 1; 
	                    End If ;
	                 End If;
	             Else -- FIFO
	                    Select 1 Into V_Cnt From Gr_Detail
	                     Where Pi_Type         = P_Doctype
	                      And Decode(P_Doctype,2,Doc_Ser,G_Ser)= P_Docser
	                      And I_Code           = P_Icode
	                      And Rcrd_No          = P_Rcrd_No
	                      And Nvl(Cp_Qty,0)<>(Nvl(P_Qty,0)+(Nvl(Free_Qty,0)*Nvl(P_Size,1)))
	                      And Rownum<=1;

	             End If;            

	          Else --(out) 
	             If   V_Use_Wcode = 2  Then
	                  Select 1 Into V_Cnt From Item_Movement
	                   Where I_Code               = P_Icode
	                    And  Whg_Code             =  Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                    And  Item_Movement.In_Out = 1
	                    And Serial >( Select Max(Serial) From Item_Movement
	                                   Where Doc_Type    = P_Doctype
	                                    And I_Code       = P_Icode
	                                    And Whg_Code     = Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)
	                                    And Doc_Ser      = P_Docser 
	                                    And Doc_Sequence = P_Doc_Seq)
	                    And Rownum <= 1;
	             Else
	                  Select 1 Into V_Cnt From Item_Movement
	                   Where I_Code  = P_Icode
	                    And W_Code   = Decode(V_Use_Wcode,1,P_Wcode,W_Code)
	                    And Item_Movement.In_Out=1
	                    And Serial >( Select Max(Serial) From Item_Movement
	                                   Where Doc_Type    = P_Doctype
	                                    And I_Code       = P_Icode
	                                    And W_Code       = Decode(V_Use_Wcode,1,P_Wcode,W_Code)
	                                    And Doc_Ser      = P_Docser 
	                                    And Doc_Sequence = P_Doc_Seq)
	                    And Rownum <= 1;
	             End If ;
	          End If;
	       End If;--(2)
	       Return(V_Cnt);
	    End If; --(1)
	 Exception 
	   When Others Then
	     Return(0);
	 End Check_Item_Move;
/
CREATE FUNCTION CHK_TLGRM_PRMTRS( P_USR_TYP  IN VARCHAR2, P_USR_CODE IN VARCHAR2 , P_PSSWRD IN VARCHAR2 , P_MOBILE_NO IN VARCHAR2 ) RETURN NUMBER IS

V_RSLT       NUMBER := 0;
V_USR_CODE   VARCHAR2(100);
V_PWD        VARCHAR2(100);
V_MOBILE_NO  VARCHAR2(100);

CURSOR USR_CV IS SELECT USERNAME FROM ALL_USERS WHERE USERNAME LIKE 'IAS%' AND USERNAME <> 'IAS_SYS' 
AND SUBSTR(USERNAME,4,4)  = (SELECT MAX(SUBSTR(USERNAME,4,4)) FROM ALL_USERS WHERE USERNAME LIKE 'IAS%' AND USERNAME <> 'IAS_SYS' );

BEGIN

FOR I IN USR_CV LOOP

IF P_USR_TYP = 1 THEN -- CUSTOMER

   EXECUTE IMMEDIATE ('SELECT C_MOBILE,C_PWD   FROM CUSTOMER WHERE C_CODE = '||''''||P_USR_CODE||''''||' AND ROWNUM<=1 ') INTO V_MOBILE_NO,V_PWD ;

    IF  V_PWD  <> P_PSSWRD  THEN
        V_RSLT := 2 ;
    ELSIF  V_MOBILE_NO <> P_MOBILE_NO THEN
        V_RSLT := 3 ;
    END IF;

ELSIF P_USR_TYP = 2 THEN -- EMPLOYEE

    EXECUTE IMMEDIATE ('SELECT MOBILE_NO,EMP_PSWRD  FROM S_EMP WHERE EMP_NO = '||''''||P_USR_CODE||''''||' AND ROWNUM<=1') INTO V_MOBILE_NO,V_PWD ;

    IF  V_PWD  <> P_PSSWRD  THEN
        V_RSLT := 2 ;
    ELSIF  V_MOBILE_NO <> P_MOBILE_NO THEN
        V_RSLT := 3 ;
    END IF;

END IF;
END LOOP;

  RETURN(V_RSLT);

EXCEPTION
WHEN OTHERS THEN
     RETURN(1);
END CHK_TLGRM_PRMTRS;
/
CREATE FUNCTION Doc_Type_Name(   P_lang    In NUMBER,
                                                       P_doctype In NUMBER,
                                                       P_jvtype  In NUMBER Default Null) RETURN CHAR Is

v_jvname VARCHAR2(100);
v_dvname VARCHAR2(50);

BEGIN

If P_doctype = 0 Then
   
    Return (Ias_Gen_Pkg.Get_Prompt (P_lang,1647));

ElsIf P_jvtype Is Null Then


    Begin
        Select DOC_TYPE_NAME
            Into v_jvname 
            From Ias_Sys.IAS_DOCJV_TYPE_SYSTEMS_MST
        Where Lang_no  = P_lang
          and DOC_TYPE = P_Doctype;
          
          Return(v_jvname);
          
    Exception 
        When Others Then
        Return(P_doctype);
    End;
    
    
Elsif P_Doctype = 1 Then
    Begin
        Select Decode(P_Lang,1,jv_name,jv_e_name) 
            Into v_jvname 
            From jv_types
            where jv_type=P_jvtype;
     
    Return(v_jvname);
    Exception 
        when others then
            Return(P_doctype);
    End;
Elsif P_Doctype = 8  then
    Begin
        Select Decode(P_Lang,1,incom_name,incom_e_name) 
            Into v_jvname 
            From Incom_Types
            where Incom_Type=P_jvtype;
       Return(v_jvname);
    Exception 
        when others then
            return(P_doctype);
    End;
Elsif P_Doctype=9 then
    Begin
        Select Decode(P_Lang,1,out_name,out_e_name) 
            Into v_jvname 
        From out_Types
        where out_Type=P_jvtype;
      Return(v_jvname);
    Exception 
        when others then
            Return(P_doctype);
    End;
Elsif P_Doctype = 11 then
    Begin
        Select Decode(P_Lang,1,Tr_name,Tr_e_name) 
            Into v_jvname 
            From transfer_Types
        where Tr_Type=P_jvtype;
        Return(v_jvname);
    Exception 
        when others then
            Return(P_Doctype);
    End;
ElsIf P_jvtype Is Not Null Then
    Begin
        Select Flg_Desc 
            Into v_dvname 
            From S_Flags
        Where Lang_no  = P_lang
          and Flg_Code ='POST_DOC_TYPE'
          and Flg_Value= P_doctype;
      
    Exception 
        When Others Then
            v_dvname:=Null;
    End;
    If P_Doctype In (2,3)  Then
        Begin
            Select Flg_Desc 
                Into v_jvname 
                From S_Flags
            Where Lang_no  = P_lang
             and Flg_Code ='CASH_CHQ'
             and Flg_Value= P_jvtype;
        Exception 
            When Others Then
                v_jvname:=Null;
        End;
    ElsIf P_Doctype In (4,5,6,7)  Then
        Begin
            Select Flg_Desc 
                Into v_jvname 
                From S_Flags
            Where Lang_no  = P_lang
              and Flg_Code ='TYPE_NAME_SI'
              and Flg_Value= P_jvtype;
        Exception 
            When Others Then
            v_jvname:=Null;
        End;     
    ElsIf P_Doctype = 10  Then
        Begin
            Select Flg_Desc 
                Into v_jvname 
                From S_Flags
            Where Lang_no  = P_lang
              and Flg_Code ='STK_ADJ_TYPE'
              and Flg_Value= P_jvtype;
        Exception 
            When Others Then
                v_jvname:=Null;
        End;
    ElsIf P_Doctype >=60  Then
        Begin
              Select Jv_NAME 
                Into v_jvname 
                From Ias_Sys.IAS_DOCJV_TYPE_SYSTEMS
               Where Lang_no  = P_lang
                and DOC_TYPE = P_Doctype
                and JV_TYPE  = P_jvtype;
        Exception 
            When Others Then
              Begin
	              Select Doc_Type_Name 
	                Into v_jvname 
	                From Ias_Sys.IAS_DOCJV_TYPE_SYSTEMS_MST
	               Where Lang_no  = P_lang
	                and DOC_TYPE = P_Doctype;
		        Exception 
    		        When Others Then
                Select Flg_Desc 
                  Into v_dvname 
                  From S_Flags
                 Where Lang_no  = P_lang
                   and Flg_Code ='POST_DOC_TYPE'
                   and Flg_Value= P_doctype;
            End;
            
        End;

    End If;
     
		IF P_Doctype >=60  Then
		   Return(NVL(v_jvname,v_dvname));
		ELSE
	  	Return(v_dvname||' '||v_jvname);
	END IF;

Else
  
  Return(P_Doctype);
  
End If;

Exception 
 When Others Then
   Return(Null);
END Doc_Type_Name;
/
CREATE FUNCTION Get_Ac_Bal_Fnc( P_a_code  In ACCOUNT.A_CODE%TYPE , 
                                                      P_post    In Number Default 1) RETURN NUMBER IS
 v_bl_amt     NUMBER:=0;
BEGIN
    
    If P_a_code  Is Not Null  Then --(1)

       
		       Select Round(nvl(sum(nvl(amt,0)),0) ,2)
		         Into v_bl_amt 
		         From ias_post_dtl d
		        where nvl(Doc_Post,0) = Decode (P_post ,2,nvl(Doc_Post,0),1)
              and (d.a_code In (Select a_code from ias_Acc_tree where AC_TREE = P_a_code ) Or d.a_code = p_a_code)
		          and nvl(doc_post,0) = Decode(P_post,2,nvl(doc_post,0),P_post);
		    

            
    End If; --(1)
    
    Return(nvl(v_bl_amt,0));
    
Exception 
    When others then
     Return(0);
End Get_Ac_Bal_Fnc;
/
CREATE FUNCTION GET_AC_TYPE(P_a_code In ACCOUNT.A_CODE%TYPE) RETURN NUMBER IS
r_bs   NUMBER;	
Begin
 
 Select nvl(report_bs,0) 
   Into r_bs
   From account_report_type,account
  where account_report_type.report_type=account.a_report
    and account.a_code=P_a_code;

  Return(r_bs);

Exception 
  when others then
    Return(0);
End GET_AC_TYPE;
/
CREATE FUNCTION Get_Auto_Incrmnt_Fnc (
   p_src_str       IN   VARCHAR2,
   p_mx_str_lnth   IN   NUMBER DEFAULT 0,
   p_lpad          IN   NUMBER DEFAULT 0
)
   RETURN VARCHAR2
IS
   v_nmbr_ptrn      VARCHAR2 (10) := '\d+';
   v_str_ptrn       VARCHAR2 (10) := '\D+';
   v_lst_chr_ptrn   VARCHAR2 (10) := '\D$';
   v_lst_nmbr       VARCHAR2 (30);
   v_fnd_cntr       NUMBER;
   v_fnd_indx       NUMBER;
   v_nxt_str        VARCHAR2 (30);
   v_mx_str_lnth    NUMBER        := 0;
   v_src_str        VARCHAR2 (30);
   v_lst_chr        BOOLEAN;
BEGIN
   IF LENGTH (p_src_str) > 30
   THEN
      RETURN p_src_str;
   END IF;

   v_src_str := NVL (p_src_str, '0');
   v_mx_str_lnth := p_mx_str_lnth;

   IF p_mx_str_lnth = 0 OR p_mx_str_lnth < LENGTH (v_src_str)
   THEN
      v_mx_str_lnth := LENGTH (v_src_str);
   END IF;

   v_fnd_cntr := regexp_count (v_src_str, v_str_ptrn, 1);

   IF v_fnd_cntr = 0
   THEN
      v_nxt_str := v_src_str + 1;

      IF LENGTH (v_nxt_str) < v_mx_str_lnth AND p_lpad > 0
      THEN
         v_nxt_str := LPAD (v_nxt_str, v_mx_str_lnth, '0');
      END IF;

      IF LENGTH (v_nxt_str) < LENGTH (v_src_str) AND p_lpad = 0
      THEN
         v_nxt_str := LPAD (v_nxt_str, LENGTH (v_src_str), '0');
      END IF;
   ELSE
      v_lst_chr := REGEXP_LIKE (v_src_str, v_lst_chr_ptrn);
      v_fnd_cntr := regexp_count (v_src_str, v_nmbr_ptrn, 1);

      IF v_lst_chr
      THEN
         IF v_mx_str_lnth > LENGTH (v_src_str)
         THEN
            v_src_str := v_src_str || '0';
            v_fnd_cntr := regexp_count (v_src_str, v_nmbr_ptrn, 1);
         ELSE
            v_fnd_cntr := 0;
         END IF;
      END IF;

      IF v_fnd_cntr > 0
      THEN
         v_lst_nmbr := REGEXP_SUBSTR (v_src_str, v_nmbr_ptrn, 1, v_fnd_cntr);
         v_fnd_indx := REGEXP_INSTR (v_src_str, v_nmbr_ptrn, 1, v_fnd_cntr);

         IF     LENGTH (v_lst_nmbr + 1) < (v_mx_str_lnth - (v_fnd_indx - 1))
            AND p_lpad > 0
         THEN
            v_lst_nmbr :=
               LPAD (v_lst_nmbr + 1, (v_mx_str_lnth - (v_fnd_indx - 1)), '0');
         ELSIF LENGTH (v_lst_nmbr + 1) < LENGTH (v_lst_nmbr) AND p_lpad = 0
         THEN
            v_lst_nmbr := LPAD (v_lst_nmbr + 1, LENGTH (v_lst_nmbr), '0');
         ELSE
            v_lst_nmbr := v_lst_nmbr + 1;
         END IF;

         v_nxt_str := SUBSTR (v_src_str, 0, v_fnd_indx - 1) || v_lst_nmbr;
      ELSE
         v_nxt_str := v_src_str;
      END IF;
   END IF;

   IF LENGTH (v_nxt_str) > v_mx_str_lnth
   THEN
      v_nxt_str := v_src_str;
   END IF;

   RETURN v_nxt_str;
EXCEPTION when others then
RETURN p_src_str;   
END Get_Auto_Incrmnt_Fnc;
/
CREATE FUNCTION Get_Batch_Col_Nm (P_Col_No In Number, P_Col_Val Varchar2,P_Lang_No Number default 1) return VARCHAR2 Is
   V_Nm varchar2(100);
 Begin
     select Decode(P_Lang_No,1,Nvl(BATCH_DESC_A_NAME,BATCH_DESC_E_NAME),Nvl(BATCH_DESC_E_NAME,BATCH_DESC_A_NAME)) BATCH_NAME 
       Into V_Nm 
       From IAS_BATCH_NO_CONTENTS
      where COL_NO=p_col_no
        and BATCH_desc_no=p_col_val;
        NULL;
     Return(V_Nm);
     
 Exception 
    when others then
      Return(p_col_val);       
 End Get_Batch_Col_Nm;
/
CREATE Function Get_Blnc_Cst_Lmt_Fnc ( P_Loc_Cur    In Varchar2,
                                                           P_C_Code     In Customer.C_Code%Type,
                                                           P_Cc_Code    In Cost_Centers.Cc_Code%Type Default Null) Return  Number Is
 
 V_Blnc_Amt   Number:=0;

Begin
       Select Sum( Decode(T.A_Cy,P_Loc_Cur,Nvl(T.Dr_Amt,0),Nvl(T.Dr_Amtf,0)*Nvl(E.Cur_Rate,1)) ) - Sum( Decode(T.A_Cy,P_Loc_Cur,Nvl(T.Cr_Amt,0),Nvl(T.Cr_Amtf,0)*Nvl(E.Cur_Rate,1)) )
         Into V_Blnc_Amt 
         From Ias_V_Cst_Vnd_Trns T , Ex_Rate E
        Where T.A_Cy    = E.Cur_Code
          And T.C_Code  = P_C_Code
          And Nvl(T.Cc_Code,'0') = Decode(P_Cc_Code,Null,Nvl(T.Cc_Code,'0'),P_Cc_Code);

  Return(Nvl(V_Blnc_Amt,0));
  
Exception When Others Then
  Return(0);
End Get_Blnc_Cst_Lmt_Fnc;
/
CREATE FUNCTION GET_BL_Ac_Dt_Fnc(  P_loc_cur  In VARCHAR2,
							                                           P_cc_code  In COST_CENTERS.CC_CODE%TYPE  Default Null,
							                                           P_a_code   In ACCOUNT.A_CODE%TYPE,
							                                           P_acy      In VARCHAR2,
							                                           P_Fd       In Date      Default Null,
							                                           P_Td       In Date      Default Null,
							                                           P_bal_type In Number    Default 0   ,
							                                           P_loc_amt  In Number    Default 0   ,
							                                           P_Post     In Number    Default 2   ) RETURN NUMBER IS
 op_amt   NUMBER:=0;                                            
 bl_amt   NUMBER:=0;

BEGIN

If P_loc_amt  = 0  Then --(1)

	If P_bal_type = 0  Then -- Open_bal (2)

	       Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
	         Into op_amt 
	         From open_bal
	        where a_code=P_a_code
	          and a_cy=P_acy
	          and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
	   
	       Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
	         Into bl_amt 
	         From Ias_Post_Dtl
	        where Ias_Post_Dtl.a_code=P_a_code
	          and Ias_Post_Dtl.a_cy=P_acy
	          and Ias_Post_Dtl.doc_date < P_Fd
	          and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
	          and Ias_Post_Dtl.doc_type<>0
	          And Nvl(Ias_Post_Dtl.Doc_Post,0)=Decode(P_Post,2,Nvl(Ias_Post_Dtl.Doc_Post,0),P_Post) ;
	    
	Else -- Balance (2)

	    If  P_Fd Is Not Null and P_td Is Not Null Then --(3)
	    
	           Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
	             Into op_amt 
	             From open_bal
	            where a_code=P_a_code
	              and a_cy=P_acy
	              and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
	          
	           Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
	             Into bl_amt 
	             From Ias_Post_Dtl
	            where Ias_Post_Dtl.a_code=P_a_code
	              and Ias_Post_Dtl.a_cy=P_acy
	              and Ias_Post_Dtl.doc_date between P_Fd and P_td
	              and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
	              and Ias_Post_Dtl.doc_type<>0
	              And Nvl(Ias_Post_Dtl.Doc_Post,0)=Decode(P_Post,2,Nvl(Ias_Post_Dtl.Doc_Post,0),P_Post) ;
	  
	    ElsIf P_Fd Is Null Then --(3)
	           
	        If P_cc_code Is Not Null Then --(4)
        
	           Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
	             Into op_amt 
	             From open_bal
	            where a_code=P_a_code
	              and a_cy=P_acy
	              and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
	              
	           Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
	             Into bl_amt 
	             From Ias_Post_Dtl
	            where Ias_Post_Dtl.a_code=P_a_code
	              and Ias_Post_Dtl.a_cy=P_acy
	              and Ias_Post_Dtl.doc_date <= Decode(P_Td,null,Ias_Post_Dtl.doc_date,P_Td)
	              and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
	              and Ias_Post_Dtl.doc_type<>0
	              And Nvl(Ias_Post_Dtl.Doc_Post,0)=Decode(P_Post,2,Nvl(Ias_Post_Dtl.Doc_Post,0),P_Post) ;
	        Else --(4)
					        
				     Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
					             Into bl_amt 
					             From Ias_Post_Dtl
					            where Ias_Post_Dtl.a_code=P_a_code
					              and Ias_Post_Dtl.a_cy=P_acy   ;
	              
	                    
	        End If; --(4)     
	    
	    End If; --(3)
	End if; --(2)

Else --(1)	--=================== Local amt Only =======================================
  
  If P_bal_type = 0  Then -- Open_bal (2)

	       Select nvl(sum(j_amt),0)
	         Into op_amt 
	         From open_bal
	        where a_code=P_a_code
	          and a_cy=P_acy
	          and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
	   
	       Select nvl(sum(amt),0)
	         Into bl_amt 
	         From Ias_Post_Dtl
	        where Ias_Post_Dtl.a_code=P_a_code
	          and Ias_Post_Dtl.a_cy=P_acy
	          and Ias_Post_Dtl.doc_date < P_Fd
	          and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
	          and Ias_Post_Dtl.doc_type<>0
	          And Nvl(Ias_Post_Dtl.Doc_Post,0)=Decode(P_Post,2,Nvl(Ias_Post_Dtl.Doc_Post,0),P_Post) ;
	    
	Else -- Balance (2)

	    If  P_Fd Is Not Null and P_td Is Not Null Then --(3)
	    
	           Select nvl(sum(j_amt),0) 
	             Into op_amt 
	             From open_bal
	            where a_code=P_a_code
	              and a_cy=P_acy
	              and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
	          
	           Select nvl(sum(amt),0)
	             Into bl_amt 
	             From Ias_Post_Dtl
	            where Ias_Post_Dtl.a_code=P_a_code
	              and Ias_Post_Dtl.a_cy=P_acy
	              and Ias_Post_Dtl.doc_date between P_Fd and P_td
	              and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
	              and Ias_Post_Dtl.doc_type<>0
	              And Nvl(Ias_Post_Dtl.Doc_Post,0)=Decode(P_Post,2,Nvl(Ias_Post_Dtl.Doc_Post,0),P_Post) ;
	  
	    ElsIf P_Fd Is Null Then --(3)
	           
	        If P_cc_code Is Not Null Then --(4)
        
	           Select nvl(sum(j_amt),0)
	             Into op_amt 
	             From open_bal
	            where a_code=P_a_code
	              and a_cy=P_acy
	              and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
	              
	           Select nvl(sum(amt),0)
	             Into bl_amt 
	             From Ias_Post_Dtl
	            where Ias_Post_Dtl.a_code=P_a_code
	              and Ias_Post_Dtl.a_cy=P_acy
	              and Ias_Post_Dtl.doc_date <= Decode(P_Td,null,Ias_Post_Dtl.doc_date,P_Td)
	              and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
	              and Ias_Post_Dtl.doc_type<>0
	              And Nvl(Ias_Post_Dtl.Doc_Post,0)=Decode(P_Post,2,Nvl(Ias_Post_Dtl.Doc_Post,0),P_Post) ;
	        Else --(4)
        
					     Select nvl(sum(amt),0)
		             Into bl_amt 
		             From Ias_Post_Dtl
		            where Ias_Post_Dtl.a_code=P_a_code
		              and Ias_Post_Dtl.a_cy=P_acy   ;
	                    
	        End If; --(4)     
	    
	    End If; --(3)
	End if; --(2)
End if; --(1)

Return(nvl(op_amt,0)+nvl(bl_amt,0));

Exception When others then
Return(0);
End Get_Bl_Ac_Dt_Fnc;
/
CREATE FUNCTION GET_BL_Ac_Mn_Fnc(  P_loc_cur  In VARCHAR2,
					                                               P_cc_code  In COST_CENTERS.CC_CODE%TYPE Default Null,
					                                               P_a_code   In ACCOUNT.A_CODE%TYPE,
					                                               P_acy      In VARCHAR2,
					                                               P_Mnth     In Number,
					                                               P_bal_type In Number   Default 0,
					                                               P_loc_amt  In Number   Default 0 ) RETURN NUMBER IS
 op_amt   NUMBER:=0;                                            
 bl_amt   NUMBER:=0;

BEGIN
If P_loc_amt = 0 Then --(1)

		If P_bal_type = 0  Then -- Open_bal (2)
		       Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
		         Into op_amt 
		         From open_bal
		        where a_code=P_a_code
		          and a_cy=P_acy
		          and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
		   
		       Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.a_code=P_a_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth < P_Mnth
		          and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
		          and Ias_Post_Dtl.doc_type<>0;
		    
		Else -- Balance (2)
		       Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.a_code=P_a_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth = P_Mnth
		          and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
		          and Ias_Post_Dtl.doc_type<>0;
		          
		End if; --(2)

Else --(1)

		If P_bal_type = 0  Then -- Open_bal (3)
		       Select nvl(sum(j_amt),0)
		         Into op_amt 
		         From open_bal
		        where a_code=P_a_code
		          and a_cy=P_acy
		          and nvl(open_bal.cc_code,'0') = Decode(P_cc_code,null,nvl(open_bal.cc_code,'0'),P_cc_code);
		   
		       Select nvl(sum(amt),0)
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.a_code=P_a_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth < P_Mnth
		          and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
		          and Ias_Post_Dtl.doc_type<>0;
		    
		Else -- Balance (3)
		       Select nvl(sum(amt),0)
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.a_code=P_a_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth = P_Mnth
		          and nvl(Ias_Post_Dtl.cc_code,'0') = Decode(P_cc_code,null,nvl(Ias_Post_Dtl.cc_code,'0'),P_cc_code)
		          and Ias_Post_Dtl.doc_type<>0;
		          
		End if; --(3)

End If;--(1)
Return(nvl(op_amt,0)+nvl(bl_amt,0));

Exception 
When others then
 Return(0);
End Get_Bl_Ac_Mn_Fnc;
/
CREATE FUNCTION GET_BL_Cc_Dt_Fnc(  P_loc_cur  In VARCHAR2,
			                                                   P_cc_code  In COST_CENTERS.CC_CODE%TYPE,
			                                                   P_acy      In VARCHAR2,
			                                                   P_Fd       In Date     Default Null,
			                                                   P_Td       In Date     Default Null,
			                                                   P_Bal_Type In Number   Default 0,
			                                                   P_loc_amt  In Number   Default 0 ) RETURN NUMBER IS
 op_amt   NUMBER:=0;                                            
 bl_amt   NUMBER:=0;

BEGIN
If P_loc_amt = 0  Then --(1)	

		If P_Bal_Type = 0  Then -- Open_bal (2)
		       Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
		         Into op_amt 
		         From open_bal
		        where cc_code=P_cc_code
		          and a_cy=P_acy;
		   
		       Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.cc_code=P_cc_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.doc_date < P_Fd
		          and Ias_Post_Dtl.doc_type<>0;
		    
		Else -- Balance (2)
		    If  P_Fd Is Not Null and P_Td Is Not Null Then --(3)
		    
		           Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
		             Into op_amt 
		             From open_bal
		            where cc_code=P_cc_code
		              and a_cy=P_acy;
		          
		           Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		             Into bl_amt 
		             From Ias_Post_Dtl
		            where cc_code=P_cc_code
		              and Ias_Post_Dtl.a_cy=P_acy
		              and Ias_Post_Dtl.doc_date between P_Fd and P_Td
		              and Ias_Post_Dtl.doc_type<>0;
		  
		    ElsIf P_Fd Is Null Then --(3)
		           
		            Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
		             Into op_amt 
		             From open_bal
		            where cc_code=P_cc_code
		              and a_cy=P_acy;
		                    
		           Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		             Into bl_amt 
		             From Ias_Post_Dtl
		            where cc_code=P_cc_code
		              and Ias_Post_Dtl.a_cy=P_acy
		              and Ias_Post_Dtl.doc_date <= Decode(P_Td,null,Ias_Post_Dtl.doc_date,P_Td)
		              and Ias_Post_Dtl.doc_type<>0;
		    End If; --(3)
		End if; --(2)

Else --(1)		 --================== Local amt only ==================
   
   If P_Bal_Type = 0  Then -- Open_bal (2)
		       Select nvl(sum(j_amt),0) 
		         Into op_amt 
		         From open_bal
		        where cc_code=P_cc_code
		          and a_cy=P_acy;
		   
		       Select nvl(sum(amt),0)
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.cc_code=P_cc_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.doc_date < P_Fd
		          and Ias_Post_Dtl.doc_type<>0;
		    
		Else -- Balance (2)
		    If  P_Fd Is Not Null and P_Td Is Not Null Then --(3)
		    
		           Select nvl(sum(j_amt),0)
		             Into op_amt 
		             From open_bal
		            where cc_code=P_cc_code
		              and a_cy=P_acy;
		          
		           Select nvl(sum(amt),0) 
		             Into bl_amt 
		             From Ias_Post_Dtl
		            where cc_code=P_cc_code
		              and Ias_Post_Dtl.a_cy=P_acy
		              and Ias_Post_Dtl.doc_date between P_Fd and P_Td
		              and Ias_Post_Dtl.doc_type<>0;
		  
		    ElsIf P_Fd Is Null Then --(3)
		           
		            Select nvl(sum(j_amt),0) 
		             Into op_amt 
		             From open_bal
		            where cc_code=P_cc_code
		              and a_cy=P_acy;
		                    
		           Select nvl(sum(amt),0) 
		             Into bl_amt 
		             From Ias_Post_Dtl
		            where cc_code=P_cc_code
		              and Ias_Post_Dtl.a_cy=P_acy
		              and Ias_Post_Dtl.doc_date <= Decode(P_Td,null,Ias_Post_Dtl.doc_date,P_Td)
		              and Ias_Post_Dtl.doc_type<>0;
		    End If; --(3)
		End if; --(2)
End if; --(1)

Return(nvl(op_amt,0)+nvl(bl_amt,0));

Exception When others then
Return(0);
End Get_Bl_Cc_Dt_Fnc;
/
CREATE FUNCTION GET_BL_Cc_Mn_Fnc(  P_loc_cur  In VARCHAR2,
					                                               P_cc_code  In COST_CENTERS.CC_CODE%TYPE,
					                                               P_acy      In VARCHAR2,
					                                               P_Mnth     In Number   ,
					                                               P_bal_type In Number   Default 0,
					                                               P_loc_amt  In Number   Default 0 ) RETURN NUMBER IS
 op_amt   NUMBER:=0;                                            
 bl_amt   NUMBER:=0;

BEGIN
If P_loc_amt = 0  Then --(1)

		If P_Bal_Type = 0  Then -- Open_bal (2)
		       Select Decode(P_acy,P_loc_cur,nvl(sum(j_amt),0),nvl(sum(j_amt_f),0)) 
		         Into op_amt 
		         From open_bal
		        where open_bal.cc_code=P_cc_code
		          and a_cy=P_acy;
		   
		       Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.cc_code=P_cc_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth < P_Mnth
		          and Ias_Post_Dtl.doc_type<>0;

		Else -- Balance (2)
		       Select Decode(P_acy,P_loc_cur,nvl(sum(amt),0),nvl(sum(amt_f),0)) 
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where cc_code=P_cc_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth = P_Mnth
		          and Ias_Post_Dtl.doc_type<>0;
		          
		End if; --(2)

Else --(1)		 --================== Local  amt only ==================

		If P_Bal_Type = 0  Then -- Open_bal (3)
		       Select nvl(sum(j_amt),0) 
		         Into op_amt 
		         From open_bal
		        where open_bal.cc_code=P_cc_code
		          and a_cy=P_acy;
		   
		       Select nvl(sum(amt),0)
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where Ias_Post_Dtl.cc_code=P_cc_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth < P_Mnth
		          and Ias_Post_Dtl.doc_type<>0;

		Else -- Balance (3)
		       Select nvl(sum(amt),0) 
		         Into bl_amt 
		         From Ias_Post_Dtl
		        where cc_code=P_cc_code
		          and Ias_Post_Dtl.a_cy=P_acy
		          and Ias_Post_Dtl.Mnth = P_Mnth
		          and Ias_Post_Dtl.doc_type<>0;
		          
		End if; --(3)

End If; --(1)

Return(nvl(op_amt,0)+nvl(bl_amt,0));

Exception When others then
Return(0);
End Get_Bl_Cc_Mn_Fnc;
/
CREATE FUNCTION Get_Bl_Cst_Fnc( P_loc_cur    In VARCHAR2,
																											P_cc_code    In COST_CENTERS.CC_CODE%TYPE Default Null,
																											P_c_code     In CUSTOMER.C_CODE%TYPE,
																											P_acy        In VARCHAR2,
																											P_fd 	       In DATE 		 Default Null,
																											P_td  	     In DATE     Default Null,
																											P_bal_type   In Number   Default 0)
 RETURN  NUMBER IS
 
 bl_amt   NUMBER:=0;

BEGIN

If P_bal_type = 0  Then -- Open_bal (1)

	   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
	     Into bl_amt 
	     From IAS_V_CST_TRNS
	    where c_code=P_c_code
	      and a_cy=P_acy
	      and (doc_date < P_fd Or Doc_type=0)
	      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

Else -- Balance

	If  P_fd Is Not Null and P_td Is Not Null Then --(2)

		   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
		     Into bl_amt 
		     From IAS_V_CST_TRNS
		    where c_code=P_c_code
		      and a_cy=P_acy
		      and doc_date between P_fd and P_td
		      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);
  
  ElsIf P_td Is Not Null Then --(2)

		   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
		     Into bl_amt From IAS_V_CST_TRNS
		    where c_code=P_c_code
		      and a_cy=P_acy
		      and doc_date <= P_td
		      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

	Else  --(2)

		   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
		     Into bl_amt 
		     From IAS_V_CST_TRNS
		    where c_code=P_c_code
		      and a_cy=P_acy
		      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

	End If; --(2)
End if; --(1)

Return(nvl(bl_amt,0));

Exception When others then
Return(0);
End Get_Bl_Cst_Fnc;
/
CREATE FUNCTION Get_Bl_Cst_Vnd_Fnc ( P_loc_cur    In VARCHAR2,
                                                P_cc_code    In COST_CENTERS.CC_CODE%TYPE Default Null,
                                                P_c_code     In CUSTOMER.C_CODE%TYPE,
                                                P_acy        In VARCHAR2,
                                                P_fd         In DATE          Default Null,
                                                P_td         In DATE     Default Null,
                                                P_bal_type   In Number   Default 0)
RETURN  NUMBER IS
 
 bl_amt   NUMBER:=0;

BEGIN

If P_bal_type = 0  Then -- Open_bal (1)

       Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
         Into bl_amt 
         From IAS_V_CST_VND_TRNS
        where c_code=P_c_code
          and a_cy=P_acy
          and (doc_date < P_fd Or Doc_type=0)
          and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

Else -- Balance

    If  P_fd Is Not Null and P_td Is Not Null Then --(2)
    
           Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
             Into bl_amt 
             From IAS_V_CST_VND_TRNS
            where c_code=P_c_code
              and a_cy=P_acy
              and doc_date between P_fd and P_td
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);
  
  ElsIf P_td Is Not Null Then --(2)
    
           Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
             Into bl_amt From IAS_V_CST_VND_TRNS
            where c_code=P_c_code
              and a_cy=P_acy
              and doc_date <= P_td
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);
    
        
    Else  --(2)
    
           Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
             Into bl_amt 
             From IAS_V_CST_VND_TRNS
            where c_code=P_c_code
              and a_cy=P_acy
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);
    
    End If; --(2)
End if; --(1)

Return(nvl(bl_amt,0));

Exception When others then
Return(0);
End Get_Bl_Cst_Vnd_Fnc;
/
CREATE Function Get_Bl_Main_Ac_Fnc( P_cc_code  In COST_CENTERS.CC_CODE%TYPE Default Null  ,
						                                              P_a_code   In ACCOUNT.A_CODE%TYPE    ,
						                                              P_fd       In Date      Default Null ,
						                                              P_td       In Date      Default Null ,
					                                              P_bal_type In Number    Default 0    ) Return Number Is                                          
 bl_amt   Number:=0;
 Begin
  If p_bal_type = 0  Then -- Open_bal 
     Select Nvl(Sum(amt),0)
      Into bl_amt 
       From ias_post_dtl , ias_acc_tree
        Where ias_post_dtl.a_code          = ias_acc_tree.a_code
         And Nvl(mn_sub,0)                 = 0 
         And ias_acc_tree.ac_tree          = p_a_code
         And Nvl(ias_post_dtl.cc_code,'0') = Decode(p_cc_code,Null,Nvl(ias_post_dtl.cc_code,'0'),p_cc_code)
         And Nvl(doc_type ,0)              = 0 ;
        
  Else -- Balance 
    
    If  p_fd Is Not Null And p_td Is Not Null Then 
        Select Nvl(Sum(amt),0)
         Into bl_amt 
          From ias_post_dtl , ias_acc_tree
           Where ias_post_dtl.a_code          = ias_acc_tree.a_code
            And Nvl(mn_sub,0)                 = 0 
            And ias_acc_tree.ac_tree          = p_a_code
            And ias_post_dtl.doc_date         Between  p_fd And p_td 
            And Nvl(ias_post_dtl.cc_code,'0') = Decode(p_cc_code,Null,Nvl(ias_post_dtl.cc_code,'0'),p_cc_code);
             
    ElsIf p_fd Is Not Null And p_td Is Null Then  
          Select Nvl(Sum(amt),0)
           Into bl_amt 
           From ias_post_dtl , ias_acc_tree
          Where ias_post_dtl.a_code          = ias_acc_tree.a_code
            And Nvl(mn_sub,0)                = 0 
            And ias_acc_tree.ac_tree         = p_a_code
            And ias_post_dtl.doc_date        < p_fd
            And Nvl(ias_post_dtl.cc_code,'0') = Decode(p_cc_code,Null,Nvl(ias_post_dtl.cc_code,'0'),p_cc_code);
           
    ElsIf p_fd Is Null And p_td Is  Not Null Then  
          Select Nvl(Sum(amt),0)
           Into bl_amt 
            From ias_post_dtl , ias_acc_tree
             Where ias_post_dtl.a_code          = ias_acc_tree.a_code
              And Nvl(mn_sub,0)                 = 0 
              And ias_acc_tree.ac_tree          = p_a_code
              And ias_post_dtl.doc_date        <= p_td
              And Nvl(ias_post_dtl.cc_code,'0') = Decode(p_cc_code,Null,Nvl(ias_post_dtl.cc_code,'0'),p_cc_code);
             
    Else --(4)
      Select Nvl(Sum(amt),0)
       Into bl_amt 
        From ias_post_dtl , ias_acc_tree
         Where ias_post_dtl.a_code          = ias_acc_tree.a_code
          And Nvl(mn_sub,0)                 = 0 
          And ias_acc_tree.ac_tree          = p_a_code
          And Nvl(ias_post_dtl.cc_code,'0') = Decode(p_cc_code,Null,Nvl(ias_post_dtl.cc_code,'0'),p_cc_code);
    End If; --(3)
  End if; --(2)

  Return(nvl(bl_amt,0));

 Exception 
   When Others Then
    Return(0); 
 End Get_Bl_Main_Ac_Fnc;
/
CREATE FUNCTION Get_Bl_Vst_Fnc( P_loc_cur    In VARCHAR2,
																										  P_cc_code    In COST_CENTERS.CC_CODE%TYPE Default Null,
																										  P_v_code     In V_DETAILS.V_CODE%TYPE,
																											P_acy        In VARCHAR2,
																											P_fd 	       In DATE 		 Default Null,
																											P_td  	     In DATE     Default Null,
																											P_bal_type   In Number   Default 0)
 RETURN  NUMBER IS
 
 bl_amt   NUMBER:=0;

BEGIN

If P_bal_type = 0  Then -- Open_bal (1)

	   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
	     Into bl_amt From IAS_V_VND_TRNS
	    where v_code=P_v_code
	      and a_cy=P_acy
	      and (doc_date < P_fd Or Doc_type=0)
	      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

Else -- Balance

	If  P_fd Is Not Null and P_td Is Not Null Then --(2)

		   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
		     Into bl_amt From IAS_V_VND_TRNS
		    where v_code=P_v_code
		      and a_cy=P_acy
		      and doc_date between P_fd and P_td
		      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);
  
  ElsIf P_td Is Not Null Then --(2)

		   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
		     Into bl_amt From IAS_V_VND_TRNS
		    where v_code=P_v_code
		      and a_cy=P_acy
		      and doc_date <= P_td
		      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

	Else  --(2)

		   Select Decode(P_acy,P_loc_cur,nvl(sum(dr_amt),0)-nvl(sum(cr_amt),0),nvl(sum(dr_amtf),0)-nvl(sum(cr_amtf),0)) 
		     Into bl_amt From IAS_V_VND_TRNS
		    where v_code=P_v_code
		      and a_cy=P_acy
		      and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code);

	End If; --(2)
End if; --(1)

Return(nvl(bl_amt,0));

Exception When others then
Return(0);
End Get_Bl_Vst_Fnc;
/
CREATE FUNCTION  GET_CC_PJ_ACTV_NM(P_AC_CODE    IN ACCOUNT.A_CODE%TYPE  DEFAULT NULL
                                                       ,P_CC_CODE     IN COST_CENTERS.CC_CODE%TYPE  DEFAULT NULL,
						                                            P_PJ_NO       IN IAS_PROJECTS.PJ_NO%TYPE    DEFAULT NULL, 
						                                            P_ACTV_NO     IN IAS_ACTVTY.ACTV_NO%TYPE    DEFAULT NULL,
						                                            P_LNG_NO      IN NUMBER DEFAULT 1
						                                           ) RETURN CHAR IS
V_MSG	VARCHAR2(2000):='';
BEGIN
 IF P_AC_CODE IS NOT NULL THEN
   V_MSG:=YS_GEN_PKG.GET_PROMPT(P_LNG_NO,132)||' : ' ||IAS_ACODE_PKG.Get_A_Name(P_AC_CODE,P_LNG_NO)||'           ';
 END IF;
 IF P_CC_CODE IS NOT NULL THEN
   V_MSG:=V_MSG||YS_GEN_PKG.GET_PROMPT(P_LNG_NO,22)||' : ' ||IAS_CC_CODE_PKG.GET_CC_NAME(P_CC_CODE,P_LNG_NO)||'            ';
 END IF;
 
 IF P_PJ_NO IS NOT NULL THEN
   V_MSG:=V_MSG||YS_GEN_PKG.GET_PROMPT(P_LNG_NO,2453)||' : ' ||IAS_PJ_Pkg.GET_PJ_NAME(P_PJ_NO,P_LNG_NO)||'             ';
 END IF; 
 
 IF P_ACTV_NO IS NOT NULL THEN
   V_MSG:=V_MSG||YS_GEN_PKG.GET_PROMPT(P_LNG_NO,3646)||' : ' ||IAS_ACTV_Pkg.GET_ACTV_NAME(P_ACTV_NO,P_LNG_NO);
 END IF; 
 
  RETURN(V_MSG);

EXCEPTION 
  WHEN OTHERS THEN
    RETURN(0);
END GET_CC_PJ_ACTV_NM;
/
CREATE Function Get_Col_Batch_Nm (P_Lng_No In Number ,P_Col In Number) Return Char Is
 P_Col_Name Varchar2(100);
Begin
  If P_Col = 1  Then
         P_Col_Name := Ias_Gen_Pkg.Get_Prompt(P_Lng_No ,12001);
       Elsif P_Col = 2  Then
         P_Col_Name := Ias_Gen_Pkg.Get_Prompt(P_Lng_No ,12002);
       Elsif P_Col = 3  Then
         P_Col_Name := Ias_Gen_Pkg.Get_Prompt(P_Lng_No ,12003);
       Elsif P_Col = 4  Then
         P_Col_Name := Ias_Gen_Pkg.Get_Prompt(P_Lng_No ,12004);
       Elsif P_Col = 5  Then
         P_Col_Name := Ias_Gen_Pkg.Get_Prompt(P_Lng_No ,12005);
       Else
        P_Col_Name :=Null;
  End If;
 Return(P_Col_Name);
Exception
   When Others Then 
      Return(Null);
End Get_Col_Batch_Nm;
/
CREATE Function Get_Comp_Itm_Qty( P_icode          In Ias_itm_mst.I_code%Type
	                                                    , P_psize          In Number
	                                                    , P_wcode          In Warehouse_details.W_code%Type
	                                                    , P_doc_date       In Date Default Null
	                                                    , P_qty_typ        In Number   ---1 min_qty 2-- max_qty --3 AVL_QTY
	                                                    , P_tbl_nm         In Varchar2
	                                                    , P_whr            In Varchar2 Default Null )Return Number Is
   V_min_qty                     Number := 0;
   V_max_qty                     Number := 0;
   V_avl_qty                     Number := 0;
   V_kit_itm                     Number := 0;
Begin
   If P_icode Is Not Null Then
      Begin
         Select 1
         Into   V_kit_itm
         From   Ias_itm_mst
         Where  I_code = P_icode 
         And Exists(Select 1
                        From   Compound_items
                        Where  I_code = Ias_itm_mst.I_code And Rownum <= 1)
        And Rownum <= 1;
      Exception
         When Others Then
            V_kit_itm := 0;
      End;

      If Nvl(V_kit_itm, 0) = 1 Then
         Begin
            If Nvl(P_qty_typ, 0) In(1, 2) Then
               Begin
                 EXECUTE IMMEDIATE' Select Min(I_qty),Max(I_qty)       
                             From   (Select   K.I_CODE
                                             ,K.DI_CODE
                                             ,K.DITM_UNT
                                             ,ROUND((Sum(Nvl(D.i_qty, 0) / Nvl(K.DP_SIZE, 1)) / Nvl(K.QTY, 1)),2) I_qty
                                     From  (  select i_code,(i_qty*p_size) I_qty,p_size from '||P_TBL_NM||' 
                                                 where  W_code = :P_wcode ' ||P_WHR||'       ) D,
                                             COMPOUND_ITEMS K
                                     Where    D.I_code(+) = K.DI_CODE 
                                     And K.I_CODE =:P_icode                                                     
                                     Group By K.I_CODE
                                             ,K.DI_CODE
                                             ,K.DITM_UNT
                                             ,K.QTY
                                             ,K.DP_SIZE)' INTO V_min_qty,V_max_qty
                                             USING  P_wcode,
                                                   P_icode  ;
               Exception
                  When No_data_found Then
                     Return 0;
                  When Others Then
                     Raise_application_error(-20004, 'ERROR IN Get_Comp_Itm_Qty  ' || Sqlerrm);
                     Return 0;
               End;

               If Nvl(P_qty_typ, 0) = 1 Then
                  Return V_min_qty/NVL(P_psize,1);
               Elsif Nvl(P_qty_typ, 0) = 2 Then
                  Return V_max_qty/NVL(P_psize,1);
               End If;
            Elsif Nvl(P_qty_typ, 0) = 3 Then
               Begin
                  V_avl_qty := Get_icode_avlqty(P_icode => P_icode, 
                                                P_psize => P_psize, 
                                                P_wcode => P_wcode, 
                                                P_idate => P_doc_date);
               Exception
                  When No_data_found Then
                     Return 0;
                  When Others Then
                     Raise_application_error(-20004, 'ERROR IN Get_Comp_Itm_Qty  ' || Sqlerrm);                     
               End;

               Return V_avl_qty;
            End If;
         End;
      Else
            Begin
                 EXECUTE IMMEDIATE' Select SUM(I_Qty) From '||P_TBL_NM||' 
                                           Where  W_Code = :P_Wcode  ' ||P_WHR||' ' 
                                           INTO V_max_qty USING P_Wcode  ;
               RETURN V_max_qty;                             
            Exception
                  When No_data_found Then
                     Return 0;
                  When Others Then
                     Raise_application_error(-20004, 'ERROR IN Get_Comp_Itm_Qty  ' || Sqlerrm);                  
            End;      
      End If;
   Else
      Return 0;
   End If;
Exception
   When Others Then
      Raise_application_error(-20005, 'ERROR IN Get_Comp_Itm_Qty  ' || Sqlerrm);
End Get_Comp_Itm_Qty ;
/
CREATE FUNCTION GET_COST( P_Wtavg_Type In NUMBER, 
                                                P_V_TP       In NUMBER,
																							  P_Icode      In Ias_Itm_Mst.I_CODE%TYPE,
																							  P_Wcode      In WAREHOUSE_DETAILS.W_CODE%TYPE    DEFAULT NULL,
																							  P_Date       In DATE,
																							  P_T_date     In DATE ) RETURN NUMBER IS
V_wt_avg_after  NUMBER ;

BEGIN
  If  P_Wtavg_Type = 1 Then -- By Item 
		  Select nvl(Wt_avg_after,0)
		    Into V_wt_avg_after
		    From Gr_Detail
		   Where I_Code   = P_Icode
		     and Decode(P_V_Tp , 0 , pi_type , 0 )  =  0
		     and Decode(P_V_Tp , 0 , gr_date , P_Date)     =  P_Date 
		     and Decode(P_V_Tp , 1 , gr_date , P_Date-1)   <  P_Date 
		     and Decode(P_V_Tp , 2 , gr_date , P_T_date-1) <= P_T_date
		     and Rec_No = ( Select Max(rec_no)
		                      From Gr_Detail
		                     Where I_Code   = P_Icode
		                       and Decode(P_V_Tp , 0 , pi_type , 0 )    =  0
		                       and Decode(P_V_Tp , 0 , gr_date , P_Date)    =  P_Date 
		                       and Decode(P_V_Tp , 1 , gr_date , P_Date-1)  <  P_Date 
		                       and Decode(P_V_Tp , 2 , gr_date , P_T_date-1)<= P_T_date) ;

  ElsIf P_Wtavg_Type = 2 Then -- By Item + W_Code
		  Select nvl(Wt_avg_after,0)
		    Into V_wt_avg_after
		    From Gr_Detail
		   Where I_Code   = P_Icode
		     and W_code   = Decode(P_Wtavg_Type,1,W_code,P_Wcode)
		     and Decode(P_V_Tp , 0 , pi_type , 0 )  =  0
		     and Decode(P_V_Tp , 0 , gr_date , P_Date)     =  P_Date 
		     and Decode(P_V_Tp , 1 , gr_date , P_Date-1)   <  P_Date 
		     and Decode(P_V_Tp , 2 , gr_date , P_T_date-1) <= P_T_date
		     and Rec_No = ( Select Max(rec_no)
		                      From Gr_Detail
		                     Where I_Code   = P_Icode
		                       and W_code   = Decode(P_Wtavg_Type,1,W_code,P_Wcode)
		                       and Decode(P_V_Tp , 0 , pi_type , 0 )    =  0
		                       and Decode(P_V_Tp , 0 , gr_date , P_Date)    =  P_Date 
		                       and Decode(P_V_Tp , 1 , gr_date , P_Date-1)  <  P_Date 
		                       and Decode(P_V_Tp , 2 , gr_date , P_T_date-1)<= P_T_date) ;
  ElsIf P_Wtavg_Type = 3 Then -- By Item + Whg_Code
		  Select nvl(Wt_avg_after,0)
		    Into V_wt_avg_after
		    From Gr_Detail
		   Where I_Code   = P_Icode
		     and Whg_Code = Decode(P_Wtavg_Type,3,Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode),Whg_Code)
		     and Decode(P_V_Tp , 0 , pi_type , 0 )  =  0
		     and Decode(P_V_Tp , 0 , gr_date , P_Date)     =  P_Date 
		     and Decode(P_V_Tp , 1 , gr_date , P_Date-1)   <  P_Date 
		     and Decode(P_V_Tp , 2 , gr_date , P_T_date-1) <= P_T_date
		     and Rec_No = ( Select Max(rec_no)
		                      From Gr_Detail
		                     Where I_Code   = P_Icode
		                       and Whg_Code = Decode(P_Wtavg_Type,3,Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode),Whg_Code)
		                       and Decode(P_V_Tp , 0 , pi_type , 0 )    =  0
		                       and Decode(P_V_Tp , 0 , gr_date , P_Date)    =  P_Date 
		                       and Decode(P_V_Tp , 1 , gr_date , P_Date-1)  <  P_Date 
		                       and Decode(P_V_Tp , 2 , gr_date , P_T_date-1)<= P_T_date) ;
  End If ;
	RETURN (V_wt_avg_after);


EXCEPTION 
	WHEN OTHERS THEN 
	RETURN 0;
END GET_COST;
/
CREATE Function Get_Cost_Exp_Batch (P_Icode       Ias_Itm_Mst.I_Code%Type                    ,
																							            P_Td          Date                                        ,
																							            P_Wcode       Warehouse_Details.W_Code%Type Default Null  ,
																							            P_Batch_No    Item_Movement.Batch_No%Type Default Null    ,
																							            P_Expire_Date Item_Movement.Expire_Date%Type Default Null )  Return Number Is
    V_Final_Cost   Number := 0 ;
  Begin
     Begin
       Select Sum(((((Nvl(P_Qty,0)+Nvl(Pf_Qty,0))*In_Out)*Nvl(Stk_Cost,0))/Nvl(P_Size,1)))/Sum((Nvl(P_Qty,0)+Nvl(Pf_Qty,0))*In_Out)
         Into V_Final_Cost
        From Item_Movement
         Where I_Code                         = P_Icode
          And Nvl(W_Code,0)                   = Decode(P_Wcode,Null,Nvl(W_Code,0),P_Wcode)
          And Nvl(Batch_No,'0')             = Decode(P_Batch_No,Null,Nvl(Batch_No,'0'),P_Batch_No)
          And Nvl(Expire_Date,'01/01/1900') = Decode(P_Expire_Date,Null,Nvl(Expire_Date,'01/01/1900'),P_Expire_Date)
          And I_Date <= P_Td ;
     Exception
      When No_Data_Found Then
       V_Final_Cost :=  0 ;
     End;
     Return (Nvl(V_Final_Cost,0));
  Exception
    When Others Then
      Return (0);
  End Get_Cost_Exp_Batch ;
/
CREATE Function Get_Cost_Fifo (pcode    Ias_Itm_Mst.I_CODE%TYPE   ,
                                                     td       Date       ,
                                                     wcode    WAREHOUSE_DETAILS.W_CODE%TYPE Default Null) Return Number Is
     final_cost   Number := 0 ;
     lst_date     date        ;
  
  Begin
  
   lst_date := ias_gen_pkg.get_sysdate ;
   If lst_date = td Then
       If  wcode Is Null Then
          Begin
             Select Sum(((Nvl(cp_qty,0)*Nvl(stk_cost,0))/Nvl(p_size,1)))/Sum(Nvl(cp_qty,0))
              Into final_cost
              From gr_detail
             Where I_Code   = pcode
               And gr_date <= td
               And cp_qty   <> 0;
          Exception
           When No_Data_Found Then
             final_cost :=  0 ;
          End;
       Else
          Begin
             Select Sum(((Nvl(cp_qty,0)*Nvl(stk_cost,0))/Nvl(p_size,1)))/Sum(Nvl(cp_qty,0))
               Into final_cost
               From gr_detail
              Where I_Code   = pcode
                And w_code   = wcode
                And gr_date <= td
                And cp_qty  <> 0;
          Exception
           When No_Data_Found  Then
             final_cost :=  0 ;
          End;
       End If;
    Else
      If  wcode Is Null Then
          Begin
            Select Sum(((((Nvl(p_qty,0)+Nvl(pf_qty,0))*in_out)*Nvl(stk_cost,0))/Nvl(p_size,1)))/Sum((Nvl(p_qty,0)+Nvl(pf_qty,0))*in_out)
              Into final_cost
              From item_movement
             Where I_Code = pcode
               And i_date <= td ;
          Exception
           When No_Data_Found Then
             final_cost :=  0 ;
          End;
       Else
          Begin
            Select Sum(((((Nvl(p_qty,0)+Nvl(pf_qty,0))*in_out)*Nvl(stk_cost,0))/Nvl(p_size,1)))/Sum((Nvl(p_qty,0)+Nvl(pf_qty,0))*in_out)
              Into final_cost
              From item_movement
             Where I_Code   = pcode
               And w_code   = wcode
               And i_date <= td ;
          Exception
           When No_Data_Found Then
             final_cost :=  0 ;
          End;
       End If;
    End If ;
    Return (Nvl(final_cost,0));
  Exception
    When Others Then
      Return (0);
 End get_cost_fifo ;
/
CREATE FUNCTION GET_CP_Fnc(P_BSer In NUMBER,P_Icode In Ias_Itm_Mst.I_CODE%TYPE) RETURN NUMBER IS
v_cp NUMBER;
BEGIN
 select avg(c_price) 
   Into v_cp  
   From gr_detail 
  Where pi_type=2
    and doc_ser=P_BSer 
    and i_code=P_Icode;
 RETURN(v_cp);
EXCEPTION WHEN OTHERS THEN
RETURN(0);
END;
/
CREATE Function Get_Cstmr_Blnc_Xml(P_Sys_No            In Number,
                                                  P_F_C_Code          In Varchar2 Default Null,
                                                  P_T_C_Code          In Varchar2 Default Null,
                                                  P_F_Rep_Code        In Varchar2 Default Null,
                                                  P_T_Rep_Code        In Varchar2 Default Null,
                                                  P_Rep_Code_Parent   In Varchar2 Default Null, --## MAIN REP_CODE 
                                                  P_Cur_Code          In Varchar2 Default Null,
                                                  P_F_Date            In Date Default Null,
                                                  P_T_Date            In Date Default Null,
                                                  P_Pst_Type          In Number Default 0, --## 0 all balnc 1- unposted 2- posted 3- not posted from br                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          --# 1-UNPOSTING 2- POSTING 3-ALL
                                                  P_Blnc_Type         In Number Default 2,--# 1 DETAIL -2 SUM
                                                  P_User_No           In Number,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   --## 1-DETAIL 2- SUM
                                                  P_Lng_No            In Number Default 1)
   Return Clob
Is
   Pragma Autonomous_Transaction;
   V_Cnt                   Number;
   V_Sql_Qry               Clob;
   V_sql_vw                Clob;
   V_Whr                   Clob :=' ';
   V_Whr_Acy               Varchar2(500):=' ';
   V_Whr_Sman              Varchar2(8000):=' ';
  -- V_Whr_DATE             Varchar2(8000):=' ';
   V_Xml_Typ               Xmltype;
   V_Json_Rslt             Varchar2(4000);
   Qry_Ctx                 Dbms_Xmlgen.Ctxhandle;
   Qry_Rslt                Clob;
   V_C_Code                Varchar2(500);
   V_Msg_Txt               Varchar2(4000) := Null;
   V_Pkg_Line              Varchar2(4000) := Null;
   V_Err_Line              Int := 0;
   V_F_Date                Date;
   V_T_Date                Date;
   V_F_C_Code              Varchar2(500);
   V_T_C_Code              Varchar2(500);
   V_F_Rep_Code            Varchar2(500);
   V_T_Rep_Code            Varchar2(500);
   V_Fld_Sman              Varchar2(500);
   V_Aralt                 Number(1) := 0;
   V_Conn_Cst_Multi_Sman   Number(1);
   V_Cstmr_Blnc_Type       Number := 0;
   V_Tmp_Date              Date;
   V_Tmp_Code              Varchar2(500);
Begin
   --V_Lng_No :=    Nvl(P_Lng_No, 1);
   V_Json_Rslt :=  '{"_Result": { "_ErrMsg": "@ERRMSG","_ErrNo": @ERRNO } }';

   Begin
      Execute Immediate Q'[ALTER SESSION SET NLS_DATE_FORMAT='DD/MM/YYYY']';
   End;

   If P_Sys_No Is Null Then
      V_Err_Line := $$plsql_Line;
      V_Msg_Txt :=  'ENTER P_SYS_NO   ';
      Goto Rtn_Rslt;
   End If;

   If P_User_No Is Null Then
      V_Err_Line := $$plsql_Line;
      V_Msg_Txt :=  Ias_Gen_Pkg.Get_Msg(P_Lng_No => P_Lng_No, P_Msg_No => 450);
      Goto Rtn_Rslt;
   End If;
   -----------------------------------------------------------------------------
   V_sql_vw:='create or replace force view  dts_v_all_cstmr_balnc as
                Select C_Code ,
                       Ac_Code_Dtl,
                       ac_dtl_typ,
                       a_code,
                       Rep_Code,
                       Doc_Date,
                       Doc_Type,
                       Jv_Type,
                       Doc_No,
                       Ref_No,
                       Doc_Desc,
                       A_Cy,
                       Dr_Amt,
                       Dr_Amt_f,
                       Amt_f,
                       Amt,              
                       Cr_Amt,
                       Cr_Amt_f,
                       Doc_Post,
                       brn_no
                  From ias_post_dtl 
                  where ac_dtl_typ=3                   
                  union all                    
                Select C_Code ,
                       C_Code Ac_Code_Dtl,
                       3 ac_dtl_typ,
                       a_code,
                       Rep_Code,
                       Bill_Date Doc_Date,
                       4 Doc_Type,
                       Bill_Doc_Type Jv_Type,
                       Bill_No Doc_No,
                       Ref_No,
                       A_Desc Doc_Desc,
                       Bill_Currency A_Cy,
                       (Nvl((Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0))), 0))* Nvl(Bill_Rate, 1) Dr_Amt,
                       Decode(Bill_Currency, Ys_Gen_Pkg.Get_Local_Cur,0, (Nvl(Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0)), 0) )) Dr_Amt_f,
                       Decode(Bill_Currency, Ys_Gen_Pkg.Get_Local_Cur,0, (Nvl(Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0)), 0) )) Amt_f,
                       (Nvl((Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0))), 0))* Nvl(Bill_Rate, 1) Amt,              
                       0 Cr_Amt,
                       0 Cr_Amt_f,
                       3 Doc_Post,
                       brn_no
                  From Ias_Bill_Mst_Br M
                 Where Nvl(External_Post, 0) = 70
                       And Nvl(Cncl_Flg, 0) = 0
                       And Bill_Doc_Type = 4
                       And Nvl(Bill_Post, 0) = 0
                       And  Not exists (Select 1
                                             From Ias_Bill_Mst I
                                            Where Nvl(External_Post, 0) = 70
                                            and Bill_Ser=m.Bill_Ser
                                            and rownum<=1 )
                Union All
                Select C_Code ,
                       C_Code Ac_Code_Dtl,
                       3 ac_dtl_typ,
                       a_code,
                       Rep_Code,
                       Rt_Bill_Date Doc_Date,
                       5 Doc_Type,
                       rt_Bill_Doc_Type Jv_Type,
                       Rt_Bill_No Doc_No,
                       Ref_No,
                       A_Desc Doc_Desc,
                       Rt_Bill_Currency A_Cy,
                       0 Dr_Amt,
                       0 Dr_Amt_f,
                      Decode(rt_Bill_Currency, Ys_Gen_Pkg.Get_Local_Cur,0, (Nvl(Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0)), 0) ))*-1 Amt_f,
                       (Nvl((Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0))), 0))* Nvl(rt_Bill_Rate, 1)*-1 Amt,
                       (Nvl((Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0))), 0))* Nvl(rt_Bill_Rate, 1) cr_Amt,
                       Decode(rt_Bill_Currency, Ys_Gen_Pkg.Get_Local_Cur,0, (Nvl(Nvl(Bill_Amt, 0) - Nvl(Disc_Amt, 0) + Nvl(Vat_Amt, 0) + Nvl(Othr_Amt, 0)-(nvl(CR_CARD_AMT,0)+nvl(CR_CARD_AMT_SCND,0)+nvl(CR_CARD_AMT_THRD,0)), 0) )) cr_Amt_f,               
                       3 Doc_Post,
                       brn_no
                  From Ias_Rt_Bill_Mst_Br M
                 Where Nvl(External_Post, 0) = 70
                       And Nvl(Cncl_Flg, 0) = 0
                       And Rt_Bill_Doc_Type = 4
                       And Nvl(Rt_Bill_Post, 0) = 0
                       And  Not exists (Select 1
                                             From Ias_Rt_Bill_Mst I
                                            Where Nvl(External_Post, 0) = 70
                                            and Rt_Bill_Ser=m.Rt_Bill_Ser
                                            and rownum<=1 )';
   
   Begin
     Execute Immediate (V_sql_vw);
   Exception
      When Others Then
         Null;
   End;
   -----------------------------------------------------------------------------
   Begin
      Select Nvl(Ar_Ac_Link_Type, 0), Nvl(Conn_Cst_Multi_Sman, 0)
        Into V_Aralt, V_Conn_Cst_Multi_Sman
        From Ias_Para_Ar;
   Exception
      When Others Then
         Null;
   End;

   If Nvl(P_Sys_No, 0) = 70 Then
      Begin
         V_Cstmr_Blnc_Type := Ias_Gen_Pkg.Get_Cnt('Select NVL (CSTMR_BLNC_TYPE, 0) From DTS_PARA');
      Exception
         When Others Then
            V_Cstmr_Blnc_Type := 0;
      End;
   End If;

   ---------------------------------------------------------------
   V_F_Date :=     Nvl(P_F_Date, Ias_Gen_Pkg.Get_Frst_Day);
   V_T_Date :=     Nvl(P_T_Date, Ias_Gen_Pkg.Get_Curdate);

   If V_F_Date > V_T_Date Then
      V_Tmp_Date := V_F_Date;
      V_F_Date :=   V_T_Date;
      V_T_Date :=   V_Tmp_Date;
   End If;

   -----------------------------------------------------
   --## C_CODE
   V_F_C_Code :=   P_F_C_Code;
   V_T_C_Code :=   P_T_C_Code;

   If V_F_C_Code Is Null
      And V_T_C_Code Is Not Null Then
      V_F_C_Code := V_T_C_Code;
   Elsif V_F_C_Code Is Not Null
         And V_T_C_Code Is Null Then
      V_T_C_Code := V_F_C_Code;
   End If;


   If V_F_C_Code Is Not Null Then
      If V_F_C_Code > V_T_C_Code Then
         V_Tmp_Code := V_F_C_Code;
         V_F_C_Code := V_T_C_Code;
         V_T_C_Code := V_Tmp_Code;
      End If;

      V_Whr := V_Whr || ' And A.Ac_Code_Dtl Between ''' || V_F_C_Code || '''  And  ''' || V_T_C_Code || '''  ';    
   End If;

   -----------------------------------------------------------------
   V_F_Rep_Code := P_F_Rep_Code;
   V_T_Rep_Code := P_T_Rep_Code;

   If V_F_Rep_Code Is Null And V_T_Rep_Code Is Not Null Then
      V_F_Rep_Code := V_T_Rep_Code;
   Elsif V_F_Rep_Code Is Not Null And V_T_Rep_Code Is Null Then
      V_T_Rep_Code := V_F_Rep_Code;
   End If;

   If P_Rep_Code_Parent Is Null or P_sys_no=70  Then
      If V_F_Rep_Code Is Null Then
         V_Msg_Txt := Ias_Gen_Pkg.Get_Msg(P_Lng_No => P_Lng_No, P_Msg_No => 811);
         Goto Rtn_Rslt;
      End If;
   End If;

   If V_F_Rep_Code Is Not Null Then
      If V_F_Rep_Code > V_T_Rep_Code Then
         V_Tmp_Code :=   V_F_Rep_Code;
         V_F_Rep_Code := V_T_Rep_Code;
         V_T_Rep_Code := V_Tmp_Code;
      End If;
   End If;

   -----------------------------------------------------------------
   --V_Whr :=        V_Whr || ' And a.doc_date between ''' || V_F_Date || ''' and  ''' || V_T_Date || '''';

   -----------------------------------------------------------------
   If P_Cur_Code Is Not Null Then
      V_Whr :=     V_Whr || ' And  a.a_cy=''' || P_Cur_Code || ''' ';
      V_Whr_Acy := V_Whr_Acy || ' And  a.a_cy=''' || P_Cur_Code || ''' ';
   End If;

   If Nvl(P_Pst_Type, 0) = 1 Then
      V_Whr := V_Whr || ' And  nvl(a.DOC_POST,0)=0';
   Elsif Nvl(P_Pst_Type, 0) = 2 Then
      V_Whr := V_Whr || ' And  nvl(a.DOC_POST,0)=1';
   Elsif Nvl(P_Pst_Type, 0) = 3 Then
      V_Whr := V_Whr || ' And  nvl(a.DOC_POST,0)=3'  ; 
   Else
      Null;
   End If;

   -------------------------------------------
   V_Whr :=        V_Whr || ' And (   (' || P_User_No || '= 1)
                Or (   (    (' || V_Aralt || ' = 1)
                        And Exists(
                               Select 1
                                 From Priv_Acc
                                Where U_Id = ' || P_User_No || ' 
                                  And A_Code = b.C_A_Code
                                  And A_Cy = A.A_Cy
                                  And Nvl(View_Flag, 0) = 1
                                  And Rownum <= 1))
                    Or (    (' || V_Aralt || ' = 2)
                        And Exists(
                               Select 1
                                 From Ias_Priv_Customer
                                Where U_Id =' || P_User_No || '
                                  And C_Code = B.C_Code
                                  And A_Cy = A.A_Cy
                                  And Nvl(View_Flag, 0) = 1
                                  And Rownum <= 1)))) ';
                                  
   V_Whr :=V_Whr||' And      (('||P_User_No||' = 1)
                                 Or Exists(Select 1
                                             From   S_brn_usr_priv
                                             Where  U_id = '||P_User_No ||'
                                             And S_brn_usr_priv.Brn_no = A.Brn_no
                                              And Nvl(View_Flag, 1) = 1
                                               And Rownum <= 1)) ';                                  

   -------------------------------------------
   --##  DISTRBUTED SYSTEM
   If P_Sys_No = 70 Then
      If Nvl(V_Cstmr_Blnc_Type, 0) = 1 Then
         V_Fld_Sman := ' A.REP_CODE ';

         If V_F_Rep_Code Is Not Null Then
            V_Whr_Sman := V_Whr_Sman || ' AND A.REP_CODE BETWEEN  ''' || V_F_Rep_Code || ''' and  ''' || V_T_Rep_Code || '''  ';
         End If;
      Else
         V_Fld_Sman := ' NULL  ';
      End If;

      V_Whr_Sman := V_Whr_Sman || ' AND B.C_CODE IN( SELECT C_CODE FROM Dts_V_Sman_Cst WHERE SMAN_TYP=1 AND  REP_CODE BETWEEN  ''' || V_F_Rep_Code || ''' and  ''' || V_T_Rep_Code || ''' ) ';
   Else
      V_Fld_Sman := ' A.REP_CODE ';

      If P_Rep_Code_Parent Is Not Null Then
         V_Whr_Sman := V_Whr_Sman || ' AND A.REP_CODE In(  Select Reprs_Code REP_CODE          
                                                                  From Sales_Man
                                                            Connect By Prior Reprs_Code = Rep_Code_Parent
                                                            Start With Reprs_Code =''' || P_Rep_Code_Parent || ''' ) ';
      End If;

      If V_F_Rep_Code Is Not Null Then
         V_Whr_Sman := V_Whr_Sman || ' AND A.REP_CODE BETWEEN  ''' || V_F_Rep_Code || ''' and  ''' || V_T_Rep_Code || '''  ';
      End If;
   End If;

   -------------------------------------------
   If Nvl(P_Blnc_Type, 1) = 1 Then
      V_Sql_Qry      := 'SELECT   C_CODE,
                                  C_Name,
                                  Rep_Code,
                                  Doc_Date,
                                  Doc_Type,
                                  Doc_No,
                                  Ref_No,
                                  Doc_Desc,
                                  A_Cy,
                                  Doc_Type_Name,
                                  (CASE Doc_Type WHEN 0 THEN (CASE WHEN NVL(Opening_Balance,0)>=0 THEN Opening_Balance ELSE 0 END    )  ELSE Dr_Amt END) Dr_Amt,
                                  (CASE Doc_Type WHEN 0 THEN (CASE WHEN NVL(Opening_Balance,0)<0  THEN ABS(Opening_Balance) ELSE 0 END )ELSE Cr_Amt END) Cr_Amt,
                                  (Select Decode(' || P_Lng_No || ', 1, Nvl(Reprs_A_Name, Reprs_A_Name), Nvl(Reprs_A_Name, Reprs_A_Name))                                                       
                                          From Sales_Man
                                        WHERE Reprs_Code=T.rep_code
                                        and rownum<=1)rep_Name
                         from        
                          (        
                          Select B.C_Code,
                                 Decode(' || P_Lng_No || ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)) C_Name,
                                 ' || V_Fld_Sman || ' REP_CODE,
                                 Null Doc_Date,
                                 0 Doc_Type,
                                 0 Doc_No,
                                 NULL Ref_No,
                                 Null Doc_Desc,
                                 A_Cy,
                                 Doc_Type_Name(' || P_Lng_No || ', 0, 0) Doc_Type_Name,
                                 0 Dr_Amt,
                                 0 Cr_Amt,
                                 Round(Sum(Decode(A_Cy, Ys_Gen_Pkg.Get_Local_Cur, Nvl(Amt, 0), Nvl(Amt_F, 0))), 2) Opening_Balance
                            From dts_v_all_cstmr_balnc A, Customer B
                           Where A.Ac_Code_Dtl = B.C_Code
                                 And Ac_Dtl_Typ = 3 '|| V_Whr || ' ' || V_Whr_Sman || '                                  
                                 And (Doc_Date < ''' || V_F_Date || ''' 
                                      Or Doc_Type = 0)
                        Group By B.C_Code,
                                 Decode(' || P_Lng_No || ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)),
                                 ' || V_Fld_Sman || ',
                                 A_Cy,
                                 Doc_Type_Name(' || P_Lng_No || ', 0, 0)
                        UNION ALL
                        Select   B.C_Code,
                                 Decode(' || P_Lng_No || ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)) C_Name,
                                 ' || V_Fld_Sman || ' REP_CODE,
                                 Doc_Date,
                                 Doc_Type,
                                 Doc_No,
                                 Ref_No,
                                 Doc_Desc,        
                                 A_Cy,                 
                                 Doc_Type_Name( ' || P_Lng_No ||', Doc_Type, Jv_Type) Doc_Type_Name,
                                 Decode(Ias_Gen_Pkg.Get_Local_Cur,a_cy, Round(Dr_Amt, 2),Round(Dr_Amt_F, 2)) Dr_Amt,
                                 Decode(Ias_Gen_Pkg.Get_Local_Cur,a_cy, Round(Cr_Amt, 2),Round(Cr_Amt_F, 2)) Cr_Amt ,       
                                 0 Opening_Balance
                        From dts_v_all_cstmr_balnc A, Customer B
                        Where A.Ac_Code_Dtl = B.C_Code
                             and  Ac_Dtl_Typ=3 
                             AND  DOC_TYPE<>0 '||V_Whr||' '||V_Whr_Sman|| '
                             And  A.doc_date between '''||V_F_Date||''' and  '''|| V_T_Date ||'''
                             ) T        
                       Order By A_Cy ,Doc_Date, Doc_Type, Doc_No  ';
   Else
      V_Sql_Qry      := 'Select C_Code,
                                C_Name,
                                REP_CODE,
                                (Select Decode(' || P_Lng_No || ', 1, Nvl(Reprs_A_Name, Reprs_A_Name), Nvl(Reprs_A_Name, Reprs_A_Name))                      
                                   From Sales_Man
                                   WHERE Reprs_Code=T.rep_code
                                   and rownum<=1 )rep_Name,
                               A_Cy,
                               Dr_Amt,
                               Cr_Amt,
                               Opening_Balance,
                               (Nvl(Dr_Amt, 0) - Nvl(Cr_Amt, 0) + Nvl(Opening_Balance, 0)) Blnc_Amt
                          From (  Select C_Code,
                                         C_Name,
                                         REP_CODE,
                                         A_Cy,
                                         Sum(Dr_Amt) Dr_Amt,
                                         Sum(Cr_Amt) Cr_Amt,
                                         Sum(Opening_Balance) Opening_Balance
                                    From (  Select B.C_Code,
                                                   Decode(' || P_Lng_No || ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)) C_Name,
                                                   ' || V_Fld_Sman || ' REP_CODE,
                                                   A_Cy,
                                                   0 Dr_Amt,
                                                   0 Cr_Amt,
                                                   Round(Sum(Decode(A_Cy, Ys_Gen_Pkg.Get_Local_Cur, Nvl(Amt, 0), Nvl(Amt_F, 0))), 2) Opening_Balance
                                              From dts_v_all_cstmr_balnc A, Customer B
                                             Where A.Ac_Code_Dtl = B.C_Code
                                                   And Ac_Dtl_Typ = 3 '||V_Whr||' '||V_Whr_Sman|| '                                                 
                                                   And (Doc_Date < '''||V_F_Date||'''
                                                        Or Doc_Type = 0)  
                                          Group By B.C_Code, Decode('||P_Lng_No|| ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)), ' || V_Fld_Sman || ', A_Cy
                                          Union All
                                            Select B.C_Code,
                                                   Decode(' || P_Lng_No || ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)) C_Name,
                                                  ' || V_Fld_Sman || ' REP_CODE,
                                                   A_Cy,
                                                   Round(Sum(Decode(A_Cy, Ys_Gen_Pkg.Get_Local_Cur, Nvl(Dr_Amt, 0), Nvl(Dr_Amt_F, 0))), 2) Dr_Amt,
                                                   Round(Sum(Decode(A_Cy, Ys_Gen_Pkg.Get_Local_Cur, Nvl(Cr_Amt, 0), Nvl(Cr_Amt_F, 0))), 2) Cr_Amt,
                                                   0 Opening_Balance
                                              From dts_v_all_cstmr_balnc A, Customer B
                                             Where A.Ac_Code_Dtl = B.C_Code
                                                   And Ac_Dtl_Typ = 3
                                                   And Doc_Type <> 0 ' || V_Whr || ' ' || V_Whr_Sman || ' 
                                                   And a.doc_date between ''' || V_F_Date || ''' and  ''' || V_T_Date || '''                        
                                          Group By B.C_Code, Decode(' || P_Lng_No || ', 1, Nvl(C_A_Name, C_E_Name), Nvl(C_E_Name, C_A_Name)),' || V_Fld_Sman || ' , A_Cy)
                                Group By C_Code, C_Name,REP_CODE, A_Cy) T';
   End If;

   Qry_Ctx :=      Dbms_Xmlgen.Newcontext(V_Sql_Qry);
   Dbms_Xmlgen.Setnullhandling(Qry_Ctx, Dbms_Xmlgen.Empty_Tag);
   Qry_Rslt :=     Dbms_Xmlgen.Getxml(Qry_Ctx);

   Return Qry_Rslt;

  -- Return V_Sql_Qry;

  --------------------------------------------
  --####################--
  <<Rtn_rslt>>
   If V_Msg_Txt Is Not Null Then
      -- V_Json_Rslt := Replace(V_Json_Rslt, '@DOC_NO', Null);
      V_Json_Rslt := Replace(V_Json_Rslt, '@ERRNO', Nvl(V_Err_Line, '-1'));
      V_Json_Rslt := Replace(V_Json_Rslt, '@ERRMSG', V_Msg_Txt);
      Return V_Json_Rslt;
   End If;
--####################--
Exception
   When Others Then
      Raise_Application_Error(-20104, 'Error In Get_Cstmr_Blnc_Xml.' || Chr(10) || Sqlerrm);
End Get_Cstmr_Blnc_Xml; 
/
CREATE FUNCTION GET_DCML_RPRT_FNC ( P_NO_OF_DCML IN NUMBER ) RETURN VARCHAR2 IS
  V_DCML VARCHAR2(100):='NNN,NNN,NNN,NNN,NNN,NNN,NN0';        
Begin
     IF NVL(P_NO_OF_DCML,0)>0 THEN
         V_DCML := V_DCML||'.';
         FOR I IN 1..P_NO_OF_DCML LOOP
           V_DCML := V_DCML||'9';
         END LOOP;
     END IF;
     
     Return(V_DCML);

Exception 
  when others then
    Return('NNN,NNN,NNN,NNN,NNN,NNN,NN0');
End GET_DCML_RPRT_FNC;
/
CREATE FUNCTION  GET_DUE_AMT_Fnc(  P_loc_cur  In VARCHAR2,
                                                          P_GRP1  In VARCHAR2  Default Null,                                                      
                                                          P_GRP2  In VARCHAR2  Default Null,
                                                          P_GRP3  In VARCHAR2  Default Null,                                                       
                                                          P_GRP4  In VARCHAR2  Default Null,
                                                          P_GRP_V1  In VARCHAR2  Default Null,                                                      
                                                          P_GRP_V2  In VARCHAR2  Default Null,
                                                          P_GRP_V3  In VARCHAR2  Default Null,                                                       
                                                          P_GRP_V4  In VARCHAR2  Default Null,
                                                          P_REP_LOC  In Number    Default 0 ,
                                                          P_acy      In VARCHAR2,
                                                          P_Fd       In Date      Default Null,
                                                          P_Td       In Date      Default Null  ,
                                                          P_TBL_NAME   in varchar2 Default 'IAS_ACC_TREE',
                                                          P_WHR      IN VARCHAR2   Default ' 1=1 '                                  
                                                        ) RETURN NUMBER IS
 -- UPDATED MURAD ALGARRASH 13102020
 Due_amt   NUMBER ;                                             
 V_WHR     VARCHAR2(4000):=' AND 1=1 ';
 V_GRP1   VARCHAR2(60);
 V_GRP2   VARCHAR2(60);
 V_GRP3   VARCHAR2(60);
 V_GRP4   VARCHAR2(60);
 
 v_sql     varchar2(4000);
 BEGIN
 --altered in 21042020 by garrash
    V_GRP1:=nvl(P_GRP1,'0');
    V_GRP2:=nvl(P_GRP2,'0');
    V_GRP3:=nvl(P_GRP3,'0');
    V_GRP4:=nvl(P_GRP4,'0');
 
   
    IF V_GRP1 LIKE '%VER.AC_TREE%' THEN 
      V_WHR:=' And  DTL.a_code in (select a_code from ias_acc_tree where ac_tree='''||P_GRP_V1||''')';
    ElsIF V_GRP1 LIKE '%VER.CC_TREE%' THEN
      V_WHR:=' And  DTL.Cc_code in (select Cc_code from ias_cc_tree where Cc_tree='''||P_GRP_V1||''')';
    ElsIF  V_GRP1  LIKE '%VER.C_CODE%' OR  V_GRP1  LIKE '%VER.C_PARENT%'  THEN
      IF V_GRP1  LIKE '%VER.C_CODE%' THEN
          V_WHR:=V_WHR ||' And DTL.AC_DTL_TYP=3 AND DTL.AC_CODE_DTL='''||P_GRP_V1||'''';
      ELSE
       V_WHR:=V_WHR||' And DTL.AC_DTL_TYP=3 AND DTL.AC_CODE_DTL IN ( SELECT C_CODE FROM CUSTOMER
                                                    WHERE C_PARENT= '''||P_GRP_V1||''')';
      END IF;
     ElsIF V_GRP1 LIKE '%VER.V_CODE%' THEN
      V_WHR:=' And DTL.AC_DTL_TYP=4 AND DTL.AC_CODE_DTL='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.CASH_NO%' THEN
      V_WHR:=' And DTL.AC_DTL_TYP=1 AND DTL.AC_CODE_DTL='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.BANK_NO%' THEN
      V_WHR:=' And DTL.AC_DTL_TYP=2 AND DTL.AC_CODE_DTL='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.PJ_TREE%' THEN
      V_WHR:=' And DTL.PJ_NO in (select PJ_NO from ias_Pj_tree where PJ_tree='''||P_GRP_V1||''')';
    ElsIF V_GRP1 LIKE '%VER.ACTV_TREE%' THEN
      V_WHR:=' And DTL.ACTV_NO in (select ACTV_NO from ias_ACTV_tree where ACTV_tree='''||P_GRP_V1||''')';
    ElsIF V_GRP1 LIKE '%VER.BRN_NO%' THEN
      V_WHR:=' And DTL.BRN_NO='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.CMP_NO%' THEN
      V_WHR:=' And DTL.CMP_NO='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.REP_CODE%' THEN
      V_WHR:=' And DTL.REP_CODE='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.EMP_NO%' THEN
      V_WHR:=' And DTL.AC_DTL_TYP=7 AND DTL.AC_CODE_DTL='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.R_CODE%' THEN
      V_WHR:=' And R_CODE='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.LC_NO%' THEN
      V_WHR:=' And DTL.LC_NO='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.COL_NO%' THEN
      V_WHR:=' And DTL.COL_NO='''||P_GRP_V1||'''';
    ElsIF V_GRP1 LIKE '%VER.CITY_NO%' THEN
      V_WHR:=' And CITY_NO in (select CITY_NO from CITIES where  CITY_NO='''||P_GRP_V1||''')';
    ElsIF V_GRP1 LIKE '%VER.CNTRY_NO%' THEN
      V_WHR:=' And CNTRY_NO in (select CNTRY_NO from CNTRY where  CNTRY_NO='''||P_GRP_V1||''')';
    ElsIF V_GRP1 LIKE '%VER.PROV_NO%' THEN
      V_WHR:=' And PROV_NO in (select PROV_NO from IAS_PROVINCES where  PROV_NO='''||P_GRP_V1||''')';
    ElsIF V_GRP1 LIKE '%VER.REPRS_CODE%' THEN
      V_WHR:=' And DTL.REP_CODE='''||P_GRP_V1||'''';      
    END IF;
    
  V_WHR:=P_WHR||V_WHR;
  
  --  If P_loc_amt  = 0  Then --(1)v  by currency      --And a_code in (select a_code from ias_acc_tree where ac_tree='''||P_GRP_V1||''')   
           v_sql:= 
            'Select sum(DECODE(NVL('||P_REP_LOC||',0),1,nvl(AMT,0)
                                          ,Decode(A_CY,'''||P_loc_cur||''',nvl(AMT,0),nvl(AMT_F,0))))
                 From GLS_V_PST_DTL_VCHR_CHQ DTL ,'||P_TBL_NAME||' Ver
                  WHERE 1=1      
                  '||V_WHR||'
                  AND decode(NVL('||P_REP_LOC||',0),1,'''||P_loc_cur||''', a_cy) =decode(NVL('||P_REP_LOC||',0),1,'''||P_loc_cur||''','''||P_acy||''') 
                  and nvl('||V_GRP2||',''0'') =  Decode(nvl('||V_GRP2||',''0''),''0'',''0'','''||P_GRP_V2||''') 
                  and nvl('||V_GRP3||',''0'') =  Decode(nvl('||V_GRP3||',''0''),''0'',''0'','''||P_GRP_V3||''')
                  and nvl('||V_GRP4||',''0'') =  Decode(nvl('||V_GRP4||',''0''),''0'',''0'','''||P_GRP_V4||''')'
                ;  
             /* 'Select sum(DECODE(NVL('||P_REP_LOC||',0),1,nvl(AMT,0)
                                          ,Decode(A_CY,'''||P_loc_cur||''',nvl(AMT,0),nvl(AMT_F,0))))
                 From (SELECT * FROM IAS_V_POST_DTL_YR
                       WHERE doc_type in(2,3)
                         and jv_type=2
                         And DOC_Ser In (Select V_Ser From Vouchers Where Cheq_Type<>0 and  nvl(TRANSFER,0)=0 )
                         And DOC_Ser In (Select V_Ser From VOUCHER_DETAIL Where NVL(CHEQUE_VALUED,0) In (0,3))
                         and a_code NOT IN (select a_code from cash_in_hand)
                  ) DTL ,'||P_TBL_NAME||' Ver
                  WHERE 1=1      
                  '||V_WHR||'
                  AND decode(NVL('||P_REP_LOC||',0),1,'''||P_loc_cur||''', a_cy) =decode(NVL('||P_REP_LOC||',0),1,'''||P_loc_cur||''','''||P_acy||''') 
                  and nvl('||V_GRP2||',''0'') =  Decode(nvl('||V_GRP2||',''0''),''0'',''0'','''||P_GRP_V2||''') 
                  and nvl('||V_GRP3||',''0'') =  Decode(nvl('||V_GRP3||',''0''),''0'',''0'','''||P_GRP_V3||''')
                  and nvl('||V_GRP4||',''0'') =  Decode(nvl('||V_GRP4||',''0''),''0'',''0'','''||P_GRP_V4||''')'
                ;   */ 
                  
                  Execute Immediate   v_sql
                  Into Due_amt ;         
Return(nvl(Due_amt,0));

Exception When others then
 Raise_application_error(-20620, chr(13)||SqlErrm) ;  
End GET_DUE_AMT_Fnc;
/
CREATE FUNCTION GET_FRMT_MSK_RPRT_FNC ( P_NO_OF_DCML IN NUMBER ) RETURN VARCHAR2 IS
  V_DCML VARCHAR2(100):='NNN,NNN,NNN,NNN,NNN,NNN,NN0';        
Begin
     IF NVL(P_NO_OF_DCML,0)>0 THEN
         V_DCML := V_DCML||'.';
         FOR I IN 1..P_NO_OF_DCML LOOP
           V_DCML := V_DCML||'9';
         END LOOP;
     END IF;
     
     Return(V_DCML);

Exception 
  when others then
    Return('NNN,NNN,NNN,NNN,NNN,NNN,NN0');
End GET_FRMT_MSK_RPRT_FNC;
/
CREATE FUNCTION Get_Grand_Wtavg_Brn ( P_Wtavg_Type In NUMBER,
                                                 P_Icode      In Ias_Itm_Mst.I_CODE%TYPE Default Null,
                                                 P_Wcode      In WAREHOUSE_DETAILS.W_CODE%TYPE   Default Null ) Return NUMBER Is
   v_Wtavg  NUMBER;
 Begin
   
   If P_Icode Is Not Null Then
         Begin
                If P_Wtavg_Type = 1 Then  --By Item
                      Select nvl(i_cwtavg,0) 
                          Into v_Wtavg 
                          From Ias_Itm_Mst
                           Where i_code = P_Icode;
                ElsIf P_Wtavg_Type = 2  Then  --By Item + W_Code 
                          Begin                        
                                    Select Nvl(i_cwtavg,0) 
                                      Into v_Wtavg 
                                      From Mv_Ias_Itm_Wcode
                                       Where i_code  = P_Icode
                                         And w_code  = P_Wcode
                                         And  P_Size = 1 ;
                Exception
                   When No_Data_Found Then
                                    Select  Nvl(I_Cwtavg,0) 
                                      Into v_Wtavg 
                                      From Ias_Itm_Mst
                                       Where i_code = P_Icode;                       
                End ;
            ElsIf P_Wtavg_Type = 3 Then  -- By Item + Whg_Code
               Begin
                  Select Nvl(I_Cwtavg,0) 
                    Into V_Wtavg 
                   From Mv_Ias_Itm_Wcode
                    Where I_Code    = P_Icode
                     And  Whg_Code  = Ias_Wcode_Pkg.Get_Whg_Code  (P_Wcode)
                     And  P_Size    = 1
                     And  Nvl(I_Cwtavg,0) > 0
                     And  Rownum   <= 1  ;
               Exception 
                   When No_Data_Found Then
            
                           Begin
                              Select Nvl(I_Cwtavg,0) 
                                Into V_Wtavg 
                               From Mv_Ias_Itm_Wcode
                                Where I_Code    = P_Icode
                                 And  Whg_Code  = Ias_Wcode_Pkg.Get_Whg_Code  (P_Wcode)
                                 And  P_Size    = 1
                                 And  Rownum   <= 1  ;
                           Exception
                               When No_Data_Found Then               
                                   Begin                        
                                                             Select  Nvl(I_Cwtavg,0) 
                                                              Into v_Wtavg 
                                                              From Ias_Itm_Mst
                                                               Where i_code = P_Icode
                                                                And  Rownum   <= 1; 
                                        Exception
                                           When No_Data_Found Then
                                                            V_Wtavg:=0;                    
                                        End ;
                           End ;
                   When Others Then
                      Raise_Application_Error(-20411,'Error In Get_Grand_Wtavg_Brn For I_Code '||P_Icode||Sqlerrm);
               End ;                  
                  End If;
          Exception when others then
            Raise_Application_Error(-20412,'Error In Get_Grand_Wtavg_Brn for i_code '||P_Icode||SqlErrm);
           End; 
        
   End If;
    
    return(v_Wtavg);
    Exception
    when others then
    Return(0);
END Get_Grand_Wtavg_Brn;
/
CREATE Function Get_Icode_Avlqty ( P_Icode   In   Ias_Itm_Mst.I_Code%Type,
                                                       P_Psize   In   Number,
                                                       P_Wcode   In   Warehouse_Details.W_Code%Type   Default Null,
                                                       P_Expdate In   Date     Default Null,
                                                       P_Batchno In   Varchar2 Default Null,
                                                       P_Idate   In   Date     Default Null)
   Return Number
Is
   Avlq   Number:=0;
Begin
--=======================================================
If P_Idate  Is Not Null Then --(1)

  Begin
       Select Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0) /Nvl( P_Psize,1)
         Into Avlq
         From Item_Movement
        Where I_Code = P_Icode
          And W_Code = Decode(P_Wcode,Null,W_Code,P_Wcode)
	      And Expire_Date=Decode(P_Expdate,Null,Expire_Date,Nvl(P_Expdate,'01/01/1900'))
          And Batch_No = Decode(P_Batchno,Null,Batch_No,Nvl(P_Batchno,'0'))
          And I_Date <= P_Idate;
		  
   Exception
    When No_Data_Found    Then
        Avlq:=0;
       When Others  Then
     Avlq:=0;
  End;
