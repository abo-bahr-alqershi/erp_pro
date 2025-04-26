CREATE FUNCTION Get_Type_Nm_Fnc( P_lang_no   In NUMBER,
                                            P_doctype   In NUMBER,
                                            P_jvtype    In NUMBER Default Null) RETURN CHAR Is

v_jvname VARCHAR2(100);

BEGIN

If P_doctype = 40 Then
   
   Select Decode(P_Lang_no,1,PR_A_NAME,nvl(PR_E_NAME,PR_A_NAME)) 
     Into v_jvname From IAS_PREQ_TYPES
    Where Pr_TYPE = P_jvtype
      and RowNum<=1;
ElsIf P_doctype = 42 Then
   
   Select Decode(P_Lang_no,1,PO_A_NAME,nvl(PO_E_NAME,PO_A_NAME)) 
     Into v_jvname From IAS_PORDER_TYPES
    Where PO_TYPE = P_jvtype
      and RowNum<=1;
Else
  
  Return(P_jvtype);
  
End If;

 Return(v_jvname);
 
Exception 
 When Others Then
   Return(P_jvtype);
END Get_Type_Nm_Fnc;
/
CREATE FUNCTION GET_VER_CODE_NAME( P_Lng_no In Number DEFAULT 1,
                                                        P_CLM_NAM IN VARCHAR2,
                                                        P_CLM_VAL IN VARCHAR2,
                                                        P_Ac_Dtl_Typ IN NUMBER DEFAULT 0
                                                      )RETURN VARCHAR2 IS
                                                      
 --29/09/2019  
V_Name VARCHAR2(250);
P_CLM VARCHAR2(60);
BEGIN
P_CLM :=''||P_CLM_NAM||'';
  IF UPPER(P_CLM)='A_CODE' THEN
        V_Name:=IAS_Acode_Pkg.Get_A_Name(P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='A_GROUPING' THEN        
        Select Decode(P_Lng_no,1,Nvl(GROUP_NAME,GROUP_E_NAME) ,Nvl(GROUP_E_NAME,GROUP_NAME) )
          InTo V_Name 
          From ACCOUNT_GROUPING 
         Where GROUP_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='CLASS_NO' THEN        
        Select Decode(P_Lng_no,1,Nvl(CLASS_A_NAME,CLASS_E_NAME) ,Nvl(CLASS_E_NAME,CLASS_A_NAME) )
          InTo V_Name 
          From IAS_ACCOUNT_CLASS 
         Where CLASS_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='AC_DTL_TYP' THEN        
        V_Name:=YS_GEN_PKG.Get_Flg_Nm ('AC_DTL_TYP',P_CLM_VAL,P_Lng_no) ;
  Elsif UPPER(P_CLM)='A_ANALYSIS' THEN             
			  Select Decode(P_Lng_no,1,ANLS_L_NM,nvl(ANLS_F_NM,ANLS_L_NM))
			    INTO V_Name
			    from IAS_ACCOUNT_ANLSYS 
			   WHERE ANLS_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='C_CODE' THEN
        V_Name:=IAS_Cst_Pkg.Get_C_Name(P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='V_CODE' THEN        
        V_Name:=IAS_Vndr_Pkg.Get_v_Name(P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='CASH_NO' THEN        
        V_Name:=IAS_CshBnk_Pkg.Get_CB_Name (1,P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='BANK_NO' THEN        
        V_Name:=IAS_CshBnk_Pkg.Get_CB_Name (2,P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='EMP_NO' THEN        
        V_Name:=YS_EMP_PKG.Get_EMP_NM (P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='CC_CODE' THEN        
        V_Name:=IAS_Cc_Code_Pkg.Get_Cc_Name(P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='C_GROUPING' THEN        
         Select Decode(P_Lng_no,1,GROUP_NAME,nvl(GROUP_E_NAME,GROUP_NAME))
			    INTO V_Name
			    from CC_GROUPING 
			   WHERE GROUP_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif  UPPER(P_CLM)='PJ_NO' THEN        
        V_Name:=IAS_PJ_Pkg.Get_PJ_Name(P_CLM_VAL,P_Lng_no);
  Elsif UPPER(P_CLM)='ACTV_NO' THEN        
        V_Name:=IAS_Actv_Pkg.Get_Actv_Name(P_CLM_VAL,P_Lng_no); 
  Elsif UPPER(P_CLM)='BRN_NO' THEN        
        V_Name:=IAS_BRN_PKG.Get_Br_Nm(P_CLM_VAL,P_Lng_no); 
  Elsif UPPER(P_CLM)='REP_CODE' THEN        
       Select Decode(P_Lng_no,1,Nvl(REPRS_A_NAME,REPRS_E_NAME) ,Nvl(REPRS_E_NAME,REPRS_A_NAME) )
          InTo V_Name 
          From Sales_man 
         Where REPRS_CODE=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='COL_NO' THEN        
       Select Decode(P_Lng_no,1,Nvl(COL_NAME,COL_E_NAME) ,Nvl(COL_E_NAME,COL_NAME) )
          InTo V_Name 
          From COLLERCTOR 
         Where COL_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='R_CODE' THEN        
       Select Decode(P_Lng_no,1,Nvl(R_A_NAME,R_E_NAME), Nvl(R_E_NAME,R_A_NAME) )
          InTo V_Name 
          From REGIONS 
         Where R_CODE=P_CLM_VAL   And RowNum<=1; 
  Elsif UPPER(P_CLM)='CNTRY_NO' THEN        
       Select Decode(P_lng_no,1,Nvl(CNTRY_A_NAME,CNTRY_E_NAME),Nvl(CNTRY_E_NAME,CNTRY_A_NAME))
          InTo V_Name 
          From CNTRY
         Where CNTRY_NO=P_CLM_VAL   And RowNum<=1;   
  Elsif UPPER(P_CLM)='PROV_NO' THEN        
       Select Decode(P_lng_no,1,Nvl(PROV_A_NAME,PROV_E_NAME),Nvl(PROV_E_NAME,PROV_A_NAME))
          InTo V_Name 
          From IAS_PROVINCES
         Where PROV_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='CITY_NO' THEN        
       Select Decode(P_lng_no,1,Nvl(CITY_A_NAME,CITY_E_NAME),Nvl(CITY_E_NAME,CITY_A_NAME))
          InTo V_Name 
          From CITIES 
         Where CITY_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='CMP_NO' THEN        
       Select Decode(P_lng_no,1,Nvl(CMP_LNAME,CMP_FNAME),Nvl(CMP_FNAME,CMP_LNAME))
          InTo V_Name 
          From S_CMPNY 
         Where CMP_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='LC_NO' THEN        
       Select LC_DESC
          InTo V_Name 
          From LC_MASTER 
         Where LC_NO=P_CLM_VAL  And RowNum<=1; 
  Elsif UPPER(P_CLM)='ZONE_NO' THEN        
       Select Decode(P_Lng_no,1,Nvl(ZONE_L_NM,ZONE_F_NM), Nvl(ZONE_F_NM,ZONE_L_NM) )
          InTo V_Name 
          From S_ZONE 
         Where ZONE_NO=P_CLM_VAL   And RowNum<=1;         
 Elsif UPPER(P_CLM)='AC_CODE_DTL' THEN     
       
       --P_Cb_Type
       
       If  P_Ac_Dtl_Typ in(1,2) then
       
          V_Name:=IAS_CshBnk_Pkg.Get_CB_Name (P_Ac_Dtl_Typ,P_CLM_VAL,P_Lng_no);
       
       ElsIf P_Ac_Dtl_Typ=3 Then    
         
         V_Name:=IAS_Cst_Pkg.Get_C_Name(P_CLM_VAL,P_Lng_no);
            
       ElsIf P_Ac_Dtl_Typ=4 Then    
         
         V_Name:=IAS_Vndr_Pkg.Get_v_Name(P_CLM_VAL,P_Lng_no);
         
       ElsIf P_Ac_Dtl_Typ in(5,6) Then    
         
         V_Name:=GLS_ACCNTDTL_Pkg.Get_ACCDTL_NM (P_Ac_CODE_DtL=>P_CLM_VAL ,P_Ac_Dtl_Typ =>P_Ac_Dtl_Typ,P_Lng_no =>P_Lng_no) ;
         
         
       ElsIf P_Ac_Dtl_Typ =7 Then    
         
         V_Name:=YS_EMP_Pkg.Get_EMP_NM(P_CLM_VAL,P_Lng_no);          
        
       END IF;
         
  Elsif UPPER(P_CLM)='AC_CODE_DTL_SUB' THEN   
         
      V_Name:=YS_AC_DTL_SUB_PKG.GET_AC_DTL_SUB_NM(P_AC_CODE_DTL_SUB=>P_CLM_VAL  , P_Lng_no =>P_Lng_no);
  ELSE
        V_Name:=NULL;
End If;
  Return(V_Name);                                       
Exception When Others Then
  Return (Null);
END  GET_VER_CODE_NAME;
/
CREATE Function Get_Wcode_Revaluate_Cost (P_Icode   In  Ias_Itm_Dtl.I_Code%Type ,
                                                                P_Td      In  Date                    ,
                                                                P_Cond    In  Varchar2 Default Null   ) Return Number Is
     V_Final_Cost    Number  := 0 ;
     V_Wt_Cost       Number  := 0 ;
     V_Wt_Avlqty     Number  := 0 ;
     V_Lst_Date       Date              ;
     V_Wtavg_Type  Ias_Para_Inv.Wtavg_Type%Type ;
  Begin
     V_Lst_Date := To_Date(Ias_Gen_Pkg.Get_Sysdate,'DD/MM/YYYY') ;
     If   V_Lst_Date = P_Td Then
          Begin
             Select  Decode(Sum(Nvl( Ias_Itm_Wcode.Avl_Qty,0)),0,Sum(Nvl(Ias_Itm_Wcode.I_Cwtavg,0)),Sum(Nvl( Ias_Itm_Wcode.Avl_Qty,0)*Nvl(Ias_Itm_Wcode.I_Cwtavg,0)))/
              Decode(Sum(Nvl( Ias_Itm_Wcode.Avl_Qty,0)),0,Count(Nvl( Ias_Itm_Wcode.Avl_Qty,0)),Sum(Nvl( Ias_Itm_Wcode.Avl_Qty,0)))
                Into V_Final_Cost
               From Ias_Itm_Wcode
                Where Ias_Itm_Wcode.I_Code   =  P_Icode
                 And  Ias_Itm_Wcode.P_Size   =  1
                  ||'  '|| P_Cond ;
          Exception
           When No_Data_Found Then
             V_Final_Cost :=  0 ;
          End;
     Else
          Begin
            Select Wtavg_Type 
             Into V_Wtavg_Type
            From Ias_Para_Inv ;
          Exception
           When Others Then
             V_Wtavg_Type :=  1 ;
          End ;
          Declare 
             Cursor C_Itm Is Select    Distinct W_Code , 
                                                Get_Cost( V_Wtavg_Type, 0, P_Icode,W_Code,P_Td,P_Td )  Wtavg ,
                                                Get_Icode_AvlQty(P_Icode,P_Size,W_Code,Null,Null,P_Td )  Avl_Qty 
                                    From Ias_Itm_Wcode 
                                      Where  I_Code    = P_Icode
                                       And   Itm_Unt   = Ias_Itm_Pkg.Get_Icode_Min_Unit  (P_I_Code => P_Icode )  ;
           Begin
              For I_Itm  In C_Itm Loop
                 
                   V_Wt_Cost   := Nvl(V_Wt_Cost,0)   + Nvl(I_Itm.Wtavg,0) ;
                   V_Wt_Avlqty := Nvl(V_Wt_Avlqty,0) + Nvl(I_Itm.Avl_Qty,0) ;
             End Loop ;
           End ;
            V_Final_Cost :=  (Nvl(V_Wt_Cost,0)*Nvl(V_Wt_Avlqty,0))/Nvl(V_Wt_Avlqty,0) ;
     End If ;
     Return (Nvl(V_Final_Cost,0));
  Exception
    When Others Then
      Return (0);
  End Get_Wcode_Revaluate_Cost ;
/
CREATE Function Gnr_Chk_Doc_No_By_Doc_Srl_Fnc ( P_Doc_Srl In Number 
                                                         , P_Doc_No  In Number ) Return Number  Is
 Begin
   If P_Doc_Srl Like '%'||P_Doc_No Then
      Return (1) ;
   Else
      Return (0) ;
   End If;

Exception
   When Others Then
      Return (1);
End Gnr_Chk_Doc_No_By_Doc_Srl_Fnc ;
/
CREATE Function Ias_Ar_Get_Rep_Label (
   P_Lang_No      Number,
   P_Rep_Type     Number,
   P_Label_No     Number Default 1,
   P_Label_Type   Number Default 1
)
   Return Char
Is
   V_Name   Varchar2 (100);
Begin
   If P_Rep_Type = 1
   Then
      V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 290);             --Period
   Elsif P_Rep_Type = 2
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 169);       --Groups No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 558);      --Group Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 591);           --Group
      End If;
   Elsif P_Rep_Type = 3
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 176);        --Items No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 177);       --Item Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2556);          --Items
      End If;
   Elsif P_Rep_Type = 4
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 388);    --Icustomer No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 390);   --Customer Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 905);        --Customer
      End If;
   Elsif P_Rep_Type = 5
   Then
      If P_Label_No = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2529);  --Cust And Item
      Elsif P_Label_No = 2
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 388); --Icustomer No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 390);
                                                              --Customer Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 905);     --Customer
         End If;
      Elsif P_Label_No = 3
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 176);     --Items No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 177);    --Item Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2556);       --Items
         End If;
      End If;
   Elsif P_Rep_Type = 6
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 395);     --Salesman No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 396);   --Salesman Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 407);        --Salesman
      End If;
   Elsif P_Rep_Type = 7
   Then
      If P_Label_No = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2530);
                                                         --Reprs And Customer
      Elsif P_Label_No = 2
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 395);  --Salesman No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 396);
                                                              --Salesman Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 407);     --Salesman
         End If;
      Elsif P_Label_No = 3
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 388); --Icustomer No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 390);
                                                              --Customer Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 905);     --Customer
         End If;
      End If;
   Elsif P_Rep_Type = 8
   Then
      If P_Label_No = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2531); --Reprs And Item
      Elsif P_Label_No = 2
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 395);  --Salesman No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 396);
                                                              --Salesman Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 407);     --Salesman
         End If;
      Elsif P_Label_No = 3
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 176);     --Items No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 177);    --Item Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2556);       --Items
         End If;
      End If;
   Elsif P_Rep_Type = 9
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 393);       --Region No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 394);     --Region Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2543);         --Region
      End If;
   Elsif P_Rep_Type = 10
   Then
      If P_Label_No = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2532);
                                                        --Regins And Salesman
      Elsif P_Label_No = 2
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 393);    --Region No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 394);  --Region Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2543);      --Region
         End If;
      Elsif P_Label_No = 3
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 395);  --Salesman No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 396);
                                                              --Salesman Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 407);     --Salesman
         End If;
      End If;
   Elsif P_Rep_Type = 11
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 193);   --Whearhouse No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 195); --Whearhouse Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1326);     --Whearhouse
      End If;
   Elsif P_Rep_Type = 12
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 21);   --Cost Center No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 738);
                                                           --Cost Center Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 728);     --Cost Center
      End If;
   Elsif P_Rep_Type = 13
   Then
      V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 947);          --Bill Type
   Elsif P_Rep_Type = 15
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1389);      --Contry No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1390);    --Contry Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 525);          --Contry
      End If;
   Elsif P_Rep_Type = 16
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1959);    --Province No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1960);  --Province Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2544);       --Province
      End If;
   Elsif P_Rep_Type = 17
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1386);        --City No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1387);      --City Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 333);            --City
      End If;
   Elsif P_Rep_Type = 18
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2452);     --Project No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2453);   --Project Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2517);        --Project
      End If;
   Elsif P_Rep_Type = 19
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 50);        --Branch No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 43);      --Branch Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2555);         --Branch
      End If;
   Elsif P_Rep_Type = 20
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2187);      --Driver No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1435);    --Driver Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2545);         --Driver
      End If;
   Elsif P_Rep_Type = 21
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2241);   --Actitivty No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 3646); --Actitivty Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 3696);      --Actitivty
      End If;
   Elsif P_Rep_Type = 22
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 3788);
                                                          --Classification No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 3789);
                                                        --Classification Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1020); --Classification
      End If;
   Elsif P_Rep_Type = 23
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1645);  --Main Group No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 558); --Main Group Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1655);     --Main Group
      End If;
   Elsif P_Rep_Type = 24
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1646);   --Sub Group No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 558);  --Sub Group Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1656);      --Sub Group
      End If;
   Elsif P_Rep_Type = 25
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 169);
                                                         --Assistant Group No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 558);
                                                       --Assistant Group Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2216);
                                                            --Assistant Group
      End If;
   Elsif P_Rep_Type = 26
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 169); --Detail Group No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 558);
                                                          --Detail Group Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2217);   --Detail Group
      End If;
   Elsif P_Rep_Type = 27
   Then
      If P_Label_No = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 3977);  --Item And Cust
      Elsif P_Label_No = 2
      Then
         If P_Label_Type = 1
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 176);     --Items No
         Elsif P_Label_Type = 2
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 177);    --Item Name
         Elsif P_Label_Type = 3
         Then
            V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 2556);       --Items
         End If;
      End If;
   Elsif P_Label_No = 3
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 388);     --Customer No
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 390);   --Customer Name
      Elsif P_Label_Type = 3
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 905);        --Customer
      End If;
   Elsif P_Rep_Type = 29
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 4970);
                                                           --Promoters Number
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 4971); --Promoters Name
      End If;
   Elsif P_Rep_Type = 30
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 319);  --C_Class Number
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 769);    --C_Class Name
      End If;
   Elsif P_Rep_Type = 31
   Then
      If P_Label_Type = 1
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 169);    --Group Number
      Elsif P_Label_Type = 2
      Then
         V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 558);      --Group Name
      End If;
   Elsif P_Rep_Type = 35 Then
      If P_Label_Type=1 Then
          V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 1928);  -- Employess No                                  
      Elsif P_Label_Type=2 Then
          V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,1929);     --Employess Name   
      End If;
   Elsif P_Rep_Type = 36 Then
      If P_Label_Type=1 Then
          V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 5590);  -- Insurance Card No                                  
      Elsif P_Label_Type=2 Then
          V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,5591);     --nsurance Card Name   
      End If;  
    Elsif P_Rep_Type = 38 Then
          If P_Label_Type=1 Then
              V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 351);  -- Season Item No                                  
          Elsif P_Label_Type=2 Then
              V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2224);    -- Season Item Name   
          End If; 
    Elsif P_Rep_Type = 39 Then
          If P_Label_Type=1 Then
              V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 6699);  -- Season Item No                                  
          Elsif P_Label_Type=2 Then
              V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,6700);    -- Season Item Name   
          End If;
    Elsif P_Rep_Type = 40 Then
          If P_Label_Type=1 Then
              V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 6709);  -- Season Item No                                  
          Elsif P_Label_Type=2 Then
              V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,6710);    -- Season Item Name   
          End If; 
    Elsif P_Rep_Type = 41 Then
          If P_Label_Type=1 Then
              V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 6699);  -- Season Item No                                  
          Elsif P_Label_Type=2 Then
              V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,6700);    -- Season Item Name   
          End If;  
    Elsif P_Rep_Type = 42 Then
          If P_Label_Type=1 Then
              V_Name := Ias_Gen_Pkg.Get_Prompt (P_Lang_No, 169);  -- Group  No                                  
          Elsif P_Label_Type=2 Then
              V_Name :=  Ias_Gen_Pkg.Get_Prompt(P_Lang_No,558);    -- Group Name   
          End If;        
   End If;

   Return (V_Name);
Exception
   When Others
   Then
      Return (Null);
End Ias_Ar_Get_Rep_Label;
/
CREATE Function  Ias_Ar_Get_Rep_Title ( P_Lang_No    Number ,
                                                           P_Local_Rep  Number,
                                                           P_Sales_Type Number,
                                                           P_Rep_Grp    Number,
                                                           P_Rep_Type   Number,
                                                           P_Rep_Sum    Number  DEFAULT NULL ) Return Char Is
 P_Name Varchar2(100);
 V_Hdr  Varchar2(40);
 V_Curr Varchar2(40):=' - '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2542);  --By local carrency
 V_By   Varchar2(20):=' - '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2260);  --By
 P_Rep_SumAny Varchar2(20):=' - ';                                  -- Summary OR analysis
Begin
    If  P_Rep_Sum=1 Then
         P_Rep_SumAny:=P_Rep_SumAny||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2552);   --Sammary
       Elsif P_Rep_Sum=2 Then
         P_Rep_SumAny:=P_Rep_SumAny||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,168);  --Analysis
       Else
         P_Rep_SumAny:=null;
 End IF;
    If P_Sales_Type=1 Then
      If P_Rep_Grp=1 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,118);
        Elsif P_Rep_Grp=2 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,494);
        Elsif P_Rep_Grp=5 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2533);
        Elsif P_Rep_Grp=6 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2534);
      End If;
    Elsif P_Sales_Type=2 Then
      If P_Rep_Grp=1 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,121);
        Elsif P_Rep_Grp=2 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2535);
        Elsif P_Rep_Grp=5 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2536);
        Elsif P_Rep_Grp=6 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2537);
      End If;
    Elsif P_Sales_Type=3 Then
      If P_Rep_Grp=1 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,1649);
        Elsif P_Rep_Grp=2 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2538);
        Elsif P_Rep_Grp=5 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2539);
        Elsif P_Rep_Grp=6 Then
        V_Hdr:=Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2540);
      End If;
    End If;
    
    V_Hdr:= V_Hdr||V_By;
    
    If P_Rep_Type=1 Then
     IF   P_Sales_Type=3 And P_Rep_Grp=1 Then
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,364)||P_Rep_SumAny||V_Curr;      -- By Bill no - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,364)||P_Rep_SumAny;    --  -494        -- ill no - By Period
        End If;
      Else
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,290)||P_Rep_SumAny||V_Curr;      -- Manthly Sales - By Period - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,290)||P_Rep_SumAny;         -- Manthly Sales - By Period
        End If;
      End IF;
    Elsif P_Rep_Type=2 Then
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,591)||P_Rep_SumAny||V_Curr;      -- Manthly Sales - By Group - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,591)||P_Rep_SumAny;               --Manthly Sales - By Group
        End If;
     Elsif P_Rep_Type=3 Then     
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2556)||P_Rep_SumAny||V_Curr;       --Manthly Sales - By Item - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2556)||P_Rep_SumAny;                --Manthly Sales - By Item
        End If;
     Elsif P_Rep_Type=4 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,905)||P_Rep_SumAny||V_Curr;      --Manthly Sales - By Customer - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,905)||P_Rep_SumAny;               --Manthly Sales - By Customer 
        End If;
    Elsif P_Rep_Type=5 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2529)||P_Rep_SumAny||V_Curr;      --Manthly Sales - By Customer & Item- By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2529)||P_Rep_SumAny;              --Manthly Sales - By Customer & Item
        End If;
    Elsif P_Rep_Type=6 Then 
        If P_Local_Rep=1 Then  
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,407)||P_Rep_SumAny||V_Curr;       --Manthly Sales - By Salesman - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,407)||P_Rep_SumAny;                --Manthly Sales - By Salesman 
        End If;
    Elsif P_Rep_Type=7 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2530)||P_Rep_SumAny||V_Curr;       --Manthly Sales - By Salesman & Customer- By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2530)||P_Rep_SumAny;               --Manthly Sales - By Salesman & Customer
        End If;
    Elsif P_Rep_Type=8 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2531)||P_Rep_SumAny||V_Curr;        --Manthly Sales - By Salesman & Item- By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2531)||P_Rep_SumAny;                 --Manthly Sales - By Salesman & Item
        End If;
    Elsif    P_Rep_Type=9 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2543)||P_Rep_SumAny||V_Curr;         --Manthly Sales - By Region - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2543)||P_Rep_SumAny;                 --Manthly Sales - By Region
        End If;
    Elsif P_Rep_Type=10 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2532)||P_Rep_SumAny||V_Curr;       --Manthly Sales - By Region & SalesMan- By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2532)||P_Rep_SumAny;                --Manthly Sales - By Region & SalesMan
        End If;
  Elsif P_Rep_Type=11 Then     
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,1326)||P_Rep_SumAny||V_Curr;         --Manthly Sales - By Wherehouse - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,1326)||P_Rep_SumAny;                 --Manthly Sales - By Wherehouse
        End If;
    Elsif P_Rep_Type=12 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,728)||P_Rep_SumAny||V_Curr;          --Manthly Sales - By Cost Center - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,728)||P_Rep_SumAny;                  --Manthly Sales - By Cost Center
        End If;            
    Elsif    P_Rep_Type=13 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,947)||P_Rep_SumAny||V_Curr;         --Manthly Sales - By Bill Type - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,947)||P_Rep_SumAny;                 --Manthly Sales - By Bill Type
        End If;
    Elsif P_Rep_Type=15 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,525)||P_Rep_SumAny||V_Curr;           --Manthly Sales - By contry - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,525)||P_Rep_SumAny;                    --Manthly Sales - By contry 
        End If;
    Elsif P_Rep_Type=16 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2544)||P_Rep_SumAny||V_Curr;           --Manthly Sales - By gevr - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2544)||P_Rep_SumAny;                   --Manthly Sales - By gevr 
        End If;            
    Elsif P_Rep_Type=17 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,333)||P_Rep_SumAny||V_Curr;           --Manthly Sales - By city - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,333)||P_Rep_SumAny;                   --Manthly Sales - By city 
        End If;        
    Elsif P_Rep_Type=18 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2517)||P_Rep_SumAny||V_Curr;           --Manthly Sales - By Project - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2517)||P_Rep_SumAny;                   --Manthly Sales - By Project 
        End If;                      
    Elsif P_Rep_Type=19 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2555)||P_Rep_SumAny||V_Curr;           --Manthly Branch - By Branch - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2555)||P_Rep_SumAny;                   --Manthly Branch - By Branch 
        End If; 
    Elsif P_Rep_Type=20 Then 
        If P_Local_Rep=1 Then 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2545)||P_Rep_SumAny||V_Curr;           --Manthly Driver - By Branch - By local currency
        Else 
            P_Name:=V_Hdr||'  '||Ias_Gen_Pkg.Get_Prompt(P_Lang_No,2545)||P_Rep_SumAny;                   --Manthly Driver - By Branch 
        End If; 
    End If;
    
    Return(P_Name);
            
Exception When Others Then
    Return (Null);
End;
/
CREATE Function Ias_Ar_Get_V_Name (
   P_Lang_No    In   Number,
   P_Type       In   Number,
   P_Code       In   Varchar2,
   P_Code_Loc        Number Default 1,
   P_Code2      In   Varchar2 Default Null
)
   Return Varchar2 Is
   V_Name                        Varchar2 (200);
Begin
   If P_Type > 1 Then
      If P_Type = 2 Then
         Select Decode (P_Lang_No,1, Nvl (G_A_Name, G_E_Name),Nvl (G_E_Name, G_A_Name))
           Into V_Name
           From Group_Details
          Where G_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 3 Then
         Select Decode (P_Lang_No,1, Nvl (I_Name, I_E_Name),Nvl (I_E_Name, I_Name))
           Into V_Name
           From Ias_Itm_Mst
          Where I_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 4 Then
         Select Decode (P_Lang_No,1, Nvl (C_A_Name, C_E_Name),Nvl (C_E_Name, C_A_Name))
           Into V_Name
           From Customer
          Where C_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 5 Then
         If P_Code_Loc = 1 Then
            Select Decode (P_Lang_No,1, Nvl (C_A_Name, C_E_Name),Nvl (C_E_Name, C_A_Name))
              Into V_Name
              From Customer
             Where C_Code = P_Code And Rownum <= 1;
         Elsif P_Code_Loc = 2 Then
            Select Decode (P_Lang_No,1, Nvl (I_Name, I_E_Name),Nvl (I_E_Name, I_Name))
              Into V_Name
              From Ias_Itm_Mst
             Where I_Code = P_Code And Rownum <= 1;
         End If;
      Elsif P_Type = 6 Then
         Select Decode (P_Lang_No,1, Nvl (Reprs_A_Name, Reprs_E_Name),Nvl (Reprs_E_Name, Reprs_A_Name))
           Into V_Name
           From Sales_Man
          Where Reprs_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 7 Then
         If P_Code_Loc = 1 Then
            Select Decode (P_Lang_No,1, Nvl (Reprs_A_Name, Reprs_E_Name),Nvl (Reprs_E_Name, Reprs_A_Name))
              Into V_Name
              From Sales_Man
             Where Reprs_Code = P_Code And Rownum <= 1;
         Elsif P_Code_Loc = 2 Then
            Select Decode (P_Lang_No,1, Nvl (C_A_Name, C_E_Name),Nvl (C_E_Name, C_A_Name))
              Into V_Name
              From Customer
             Where C_Code = P_Code And Rownum <= 1;
         End If;
      Elsif P_Type = 8 Then
         If P_Code_Loc = 1 Then
            Select Decode (P_Lang_No,1, Nvl (Reprs_A_Name, Reprs_E_Name),Nvl (Reprs_E_Name, Reprs_A_Name))
              Into V_Name
              From Sales_Man
             Where Reprs_Code = P_Code And Rownum <= 1;
         Elsif P_Code_Loc = 2 Then
            Select Decode (P_Lang_No,1, Nvl (I_Name, I_E_Name),Nvl (I_E_Name, I_Name))
              Into V_Name
              From Ias_Itm_Mst
             Where I_Code = P_Code And Rownum <= 1;
         End If;
      Elsif P_Type = 9 Then
         Select Decode (P_Lang_No,1, Nvl (R_A_Name, R_A_Name),Nvl (R_E_Name, R_A_Name))
           Into V_Name
           From Regions
          Where R_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 10 Then
         If P_Code_Loc = 1 Then
            Select Decode (P_Lang_No,1, Nvl (R_A_Name, R_A_Name),Nvl (R_E_Name, R_A_Name))
              Into V_Name
              From Regions
             Where R_Code = P_Code And Rownum <= 1;
         Elsif P_Code_Loc = 2 Then
            Select Decode (P_Lang_No,1, Nvl (Reprs_A_Name, Reprs_E_Name),Nvl (Reprs_E_Name, Reprs_A_Name))
              Into V_Name
              From Sales_Man
             Where Reprs_Code = P_Code And Rownum <= 1;
         End If;
      Elsif P_Type = 11 Then
         Select Decode (P_Lang_No,1, Nvl (W_Name, W_E_Name),Nvl (W_E_Name, W_Name))
           Into V_Name
           From Warehouse_Details
          Where W_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 12 Then
         Select Decode (P_Lang_No,1, Nvl (Cc_A_Name, Cc_E_Name),Nvl (Cc_E_Name, Cc_A_Name))
           Into V_Name
           From Cost_Centers
          Where Cc_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 13 Then
         Select Decode (P_Lang_No,1, Nvl (Si_A_Name, Si_E_Name),Nvl (Si_E_Name, Si_A_Name))
           Into V_Name
           From Ias_Sales_Types
          Where Si_Type = P_Code And Rownum <= 1;
      Elsif P_Type = 15 Then
         Select Decode (P_Lang_No,1, Nvl (Cntry_A_Name, Cntry_E_Name),Nvl (Cntry_E_Name, Cntry_A_Name))
           Into V_Name
           From Cntry
          Where Cntry_No = P_Code And Rownum <= 1;
      Elsif P_Type = 16 Then
         Select Decode (P_Lang_No,1, Nvl (Prov_A_Name, Prov_E_Name),Nvl (Prov_E_Name, Prov_A_Name))
           Into V_Name
           From Ias_Provinces
          Where Prov_No = P_Code And Rownum <= 1;
      Elsif P_Type = 17 Then
         Select Decode (P_Lang_No,1, Nvl (City_A_Name, City_E_Name),Nvl (City_E_Name, City_A_Name))
           Into V_Name
           From Cities
          Where City_No = P_Code And Rownum <= 1;
      Elsif P_Type = 18 Then
         Select Decode (P_Lang_No,1, Nvl (Pj_A_Name, Pj_E_Name),Nvl (Pj_E_Name, Pj_A_Name))
           Into V_Name
           From Ias_Projects
          Where Pj_No = P_Code And Rownum <= 1;
      Elsif P_Type = 19 Then
         Select Decode (P_Lang_No,1, Nvl (Brn_Lname, Brn_Fname),Nvl (Brn_Fname, Brn_Lname))
           Into V_Name
           From S_Brn
          Where Brn_No = P_Code And Rownum <= 1;
      Elsif P_Type = 20 Then
         Select Decode (P_Lang_No,1, Nvl (Driver_A_Name, Driver_E_Name),Nvl (Driver_E_Name, Driver_A_Name))
           Into V_Name
           From Ias_Drivers
          Where Driver_No = P_Code And Rownum <= 1;
      Elsif P_Type = 21 Then
         Select Decode (P_Lang_No,1, Nvl (Actv_A_Name, Actv_E_Name),Nvl (Actv_E_Name, Actv_A_Name))
           Into V_Name
           From Ias_Actvty
          Where Actv_No = P_Code And Rownum <= 1;
      Elsif P_Type = 22 Then
         Select Decode (P_Lang_No,1, Nvl (Grp_L_Name, Grp_F_Name),Nvl (Grp_F_Name, Grp_L_Name))
           Into V_Name
           From Ias_Grp_Itm_Lvl
          Where Grp_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 23 Then
         Select Decode (P_Lang_No,1, Nvl (Mng_A_Name, Mng_E_Name),Nvl (Mng_E_Name, Mng_A_Name))
           Into V_Name
           From Ias_Mainsub_Grp_Dtl
          Where Mng_Code = P_Code And G_Code=Nvl(P_Code2,G_Code) And Rownum <= 1;
      Elsif P_Type = 24 Then
         Select Decode (P_Lang_No,1, Nvl (Subg_A_Name, Subg_E_Name),Nvl (Subg_E_Name, Subg_A_Name))
           Into V_Name
           From Ias_Sub_Grp_Dtl
          Where Subg_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 25 Then
         Select Decode (P_Lang_No,1, Nvl (Assistant_A_Name, Assistant_E_Name),Nvl (Assistant_E_Name, Assistant_A_Name))
           Into V_Name
           From Ias_Assistant_Group
          Where Assistant_No = P_Code And Rownum <= 1;
      Elsif P_Type = 26 Then
         Select Decode (P_Lang_No,1, Nvl (Detail_A_Name, Detail_E_Name),Nvl (Detail_E_Name, Detail_A_Name))
           Into V_Name
           From Ias_Detail_Group
          Where Detail_No = P_Code And Rownum <= 1;
      Elsif P_Type = 27 Then
         If P_Code_Loc = 1 Then
            Select Decode (P_Lang_No,1, Nvl (I_Name, I_E_Name),Nvl (I_E_Name, I_Name))
              Into V_Name
              From Ias_Itm_Mst
             Where I_Code = P_Code And Rownum <= 1;
         Elsif P_Code_Loc = 2 Then
            Select Decode (P_Lang_No,1, Nvl (C_A_Name, C_E_Name),Nvl (C_E_Name, C_A_Name))
              Into V_Name
              From Customer
             Where C_Code = P_Code And Rownum <= 1;
         End If;
      Elsif P_Type = 29 Then
         Select Decode (P_Lang_No,1, Nvl (Prm_L_Nm, Prm_F_Nm),Nvl (Prm_F_Nm, Prm_L_Nm))
           Into V_Name
           From Ias_Promoters
          Where Prm_Code = P_Code And Rownum <= 1;
      Elsif P_Type = 30 Then
         Select Decode (P_Lang_No,1, Nvl (C_Class_Name, C_Class_E_Name),Nvl (C_Class_E_Name, C_Class_Name))
           Into V_Name
           From Customer_Class
          Where C_Class = P_Code And Rownum <= 1;
      Elsif P_Type = 31 Then
         Select Decode (P_Lang_No,1, Nvl (C_Group_A_Name, C_Group_E_Name),Nvl (C_Group_E_Name, C_Group_A_Name))
           Into V_Name
           From Customer_Group
          Where C_Group_Code = P_Code And Rownum <= 1;      
   Elsif P_Type = 32 Then
      If P_Code_Loc = 1 Then
         Select Decode (P_Lang_No,1, Nvl (C_Group_A_Name, C_Group_E_Name),Nvl (C_Group_E_Name, C_Group_A_Name))
           Into V_Name
           From Customer_Group
          Where C_Group_Code = P_Code And Rownum <= 1;
      Elsif P_Code_Loc = 2 Then
         Select Decode (P_Lang_No,1, Nvl (C_Class_Name, C_Class_E_Name),Nvl (C_Class_E_Name, C_Class_Name))
           Into V_Name
           From Customer_Class
          Where C_Class = P_Code And Rownum <= 1;
      End If;
   Elsif P_Type = 33 Then
      If P_Code_Loc = 1 Then
         Select Decode (P_Lang_No,1, Nvl (C_Group_A_Name, C_Group_E_Name),Nvl (C_Group_E_Name, C_Group_A_Name))
           Into V_Name
           From Customer_Group
          Where C_Group_Code = P_Code And Rownum <= 1;
      Elsif P_Code_Loc = 2 Then
         Select Decode (P_Lang_No,1, Nvl (C_A_Name, C_E_Name),Nvl (C_E_Name, C_A_Name))
           Into V_Name
           From Customer
          Where C_Code = P_Code And Rownum <= 1;
      End If;
   Elsif P_Type = 34 Then
      Select Flg_Desc
        Into V_Name
        From S_Flags
       Where Lang_No = P_Lang_No
         And Flg_Code = 'TYPE_NAME_SI'
         And Flg_Value = P_Code
         And Rownum <= 1;

   Elsif P_Type=35 Then
        Select Decode(P_Lang_No,1,Nvl(EMP_L_NM,EMP_F_NM),Nvl(EMP_F_NM,EMP_L_NM))
          Into V_Name 
          From S_EMP
         Where EMP_NO=P_Code 
           And Rownum<=1;    
   Elsif P_Type=36 Then
        Select Decode(P_Lang_No,1,Nvl(PRSON_L_NM, PRSON_F_NM),Nvl(PRSON_F_NM, PRSON_L_NM))
          Into V_Name 
          From IAS_INSRNCE_CARD
         Where PRSON_CARD_NO=P_Code 
           And Rownum<=1;
   Elsif P_Type=38 Then
        Select Decode(P_Lang_No,1,Nvl(Sub_L_Name, Sub_F_Name),Nvl(Sub_F_Name, Sub_L_Name))
          Into V_Name 
          From Ias_Gnr_Code_Dtl
         Where Main_Code = 1
           And Sub_No=P_Code 
           And Rownum<=1;  
   Elsif P_Type=39 Then
        Select Decode(P_Lang_No,1,Nvl(Ptnt_L_Nm,Ptnt_F_Nm),Nvl(Ptnt_F_Nm, Ptnt_L_Nm))
          Into V_Name 
          From Hps_Ptnt
         Where Ptnt_No=P_Code 
           And Rownum<=1;
   Elsif P_Type=40 Then
        Select Decode(P_Lang_No,1,Nvl(Dctr_L_Nm, Dctr_F_Nm),Nvl(Dctr_F_Nm, Dctr_L_Nm))
          Into V_Name 
          From Hps_Dctr
         Where Dctr_No=P_Code 
           And Rownum<=1;
   Elsif P_Type=41 Then
       Select Decode(P_Lang_No,1,Nvl(Ptnt_L_Nm,Ptnt_F_Nm),Nvl(Ptnt_F_Nm, Ptnt_L_Nm))
          Into V_Name 
          From Hps_Ptnt
         Where Ptnt_No=P_Code 
           And Rownum<=1;         
   Elsif P_Type=42 Then
       Select Decode(P_Lang_No,1,Nvl(C_GROUP_A_NAME,C_GROUP_E_NAME),Nvl(C_GROUP_E_NAME,C_GROUP_A_NAME))
          Into V_Name 
          From Customer_Group
         Where C_GROUP_CODE=P_Code 
           And Rownum<=1;         
   End If;
 End If;

   Return (V_Name);
Exception
   When Others Then
      Return (Null);
End Ias_Ar_Get_V_Name;
/
CREATE FUNCTION Ias_Check_Light_Trans_Fnc (P_Doc_Type Number,P_Doc_Ser Number) Return Number Is
  Cnt Number:=0;
BEGIN  
   If P_Doc_Type In (1,2,3) Then
     Cnt := Ias_Gen_Pkg.Get_Cnt('Select 1 From Ias_Post_Dtl 
                                  Where Doc_Type='||P_Doc_Type||'
                                    And Doc_Ser ='||P_Doc_Ser||'
                                    And Nvl(External_Post,0)<>0
                                    And c_code Is Not Null
                                    And RowNum<=1');
   Else
     Cnt := Ias_Gen_Pkg.Get_Cnt('Select 1 From Item_Movement 
                                  Where Doc_Type='||P_Doc_Type||'
                                    And Doc_Ser ='||P_Doc_Ser||'
                                    And Nvl(External_Post,0)<>0
                                    And RowNum<=1');                                    
   End If;                                  
   Return(Cnt);
Exception
   When Others Then
      Return(0);
END Ias_Check_Light_Trans_Fnc;
/
CREATE FUNCTION Ias_Chk_Brn_Up_Del_Fnc ( 
																P_Brn_Scr   In Number , 
																P_Brn_Data  In Number ,
																P_Trns_Type In Number ) RETURN NUMBER IS  
BEGIN
   If P_Brn_Scr = P_Brn_Data Then --P_Trns_Type (1-Update , 2-Delete)
     Return(0);
   Else
     Return(1);
   End If;
EXCEPTION WHEN OTHERS THEN
       Return(0);
END Ias_Chk_Brn_Up_Del_Fnc;
/
CREATE FUNCTION Ias_Chk_Lght_Doc_Brn_Fnc ( P_Brn_No        In S_Brn.Brn_No%TYPE , 
                                                               P_Doc_Type      In Number,
                                                               P_Use_Lght_Sys  In Number            ) RETURN NUMBER IS
 
							 V_Head_Office NUMBER;
							 V_Brn_Lght    NUMBER;
							 V_Chk         NUMBER:=0;
							 V_Msg_No      NUMBER; 
							 V_Inpt_Typ    NUMBER:=0; 
							BEGIN
						  
							   
						  If P_Brn_No Is Not Null And P_Doc_Type Is Not Null And P_Use_Lght_Sys=1 And IAS_DBS_Sys_Pkg.Check_Object ( P_ObjNm => 'IAS_PARA_LGHT' ,P_ObjType => 'TABLE')=1 THEN    
						    V_Inpt_Typ := Ys_Gen_Pkg.Get_Cnt('Select Inpt_Cntr_Br_Typ From Ias_Lght_Doc_Brn Where Brn_No='||P_Brn_No||' and Post_Doc_Type='||P_Doc_Type||' And Rownum<=1');
							    
							    V_Head_Office := Ias_Gen_Pkg.Get_Cnt('Select Nvl(Head_Office,1) From Ias_Para_Lght');    
						    V_Brn_Lght    := Ias_Gen_Pkg.Get_Cnt('Select Nvl(Brn_Lght,0) From S_Brn Where Brn_No='||P_Brn_No||' And RowNum<=1');
							    ------------------------------------------------------
							    If Nvl(V_Inpt_Typ,0)=0 Then
							       If V_Head_Office=1 And Nvl(V_Brn_Lght,0)=1 Then
							         V_Msg_No := 4857;
							       End If; 
							    ElsIf Nvl(V_Brn_Lght,0)=1 Then
							        If Nvl(V_Inpt_Typ,0)=1 And V_Head_Office=0 Then
							           V_Msg_No := 4858;             
							        ElsIf Nvl(V_Inpt_Typ,0)=2 And V_Head_Office=1 Then
							           V_Msg_No := 4857;
							        End If;
							    ElsIf V_Head_Office=0 Then
							        V_Msg_No := 4858;
							    End If;
							    ------------------------------------------------------     
							  End If;
							 
							  Return(Nvl(V_Msg_No,0));
							    
							Exception 
							    When others then
							     Return(0);
							End Ias_Chk_Lght_Doc_Brn_Fnc;
/
CREATE Function Ias_Chk_Trns_Not_Pst_Fnc( P_Brn_No      In Number      Default Null,
                                                     P_F_Date      In Date      Default Null,
                                                     P_T_Date      In Date      Default Null,
                                                     R_RTRN_FLG    IN NUMBER    Default 1 ,
                                                     P_LANG_NO     IN NUMBER    Default 1) Return NUMBER Is                                                
                                                                
    V_F_Date Date;
    V_T_Date Date;
    V_Cnt  Number;
    V_Msg_no Number;
    V_External_Post number;
Begin

    If P_F_Date Is Null Then
     V_F_Date:=Ias_Gen_Pkg.Get_Frst_Day;
    Else
     V_F_Date:=P_F_Date;
    End If;
    
    If P_T_Date Is Null Then
     V_T_Date:=Ias_Gen_Pkg.Get_Sysdate;
    Else
     V_T_Date:=P_T_Date;
    End If;

    V_Msg_no:=null;
    --##-----------------------------------------------------------------------------------------------------##-----
    If Ias_Dbs_Sys_Pkg.Check_Object ( P_Objnm=>'IAS_BILL_MST_BR' , P_Objtype => 'TABLE' )=1 Then
       -----------------------------------------------------------------
        Begin
                
         V_External_Post :=Ias_Gen_Pkg.Get_Cnt('Select External_Post From Ias_Bill_Mst_Br 
                                                                    Where nvl(bill_post,0)=0                                                     
                                                                    And nvl(CNCL_FLG,0)=0
                                                                    And Nvl(External_Post,0)=70 
                                                                    And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')              
                                                                    And bill_date Between To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')             
                                                                    And rownum <= 1'); 
        Exception When Others Then 
          V_External_Post:=0;
        End;      
        --Return V_External_Post;       
        If Nvl(V_External_Post,0)>0 Then
            IF Nvl(R_RTRN_FLG,0)=1 THEN
               Return 5136;--There is document Unposted In Distributor System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5136,DOC_TYPE_NAME(P_lang_no,4));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	Null;
               END;  
            END IF; 
        End IF;
            
        Begin
             
         V_External_Post :=Ias_Gen_Pkg.Get_Cnt('Select External_Post  From Ias_Bill_Mst_Br 
                                      Where nvl(bill_post,0)=0                                                     
                                        And nvl(CNCL_FLG,0)=0
                                        And Nvl(External_Post,0)=85 
                                        And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')              
                                        And bill_date Between To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')             
                                        And rownum <= 1'); 
        Exception When Others Then 
          V_External_Post:=0;
        End;                                              
        IF Nvl(V_External_Post,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5137;--There is document Unposted In Light System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5137,DOC_TYPE_NAME(P_lang_no,4));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF;                  
        End IF;
            
        Begin
             
         V_External_Post :=Ias_Gen_Pkg.Get_Cnt('Select External_Post  From Ias_Bill_Mst_Br 
                                      Where nvl(bill_post,0)=0                                                     
                                        And nvl(CNCL_FLG,0)=0
                                        And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')              
                                        And bill_date Between To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')             
                                        And rownum <= 1'); 
        Exception When Others Then 
          V_External_Post:=0;
        End;              
        IF Nvl(V_External_Post,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5140;--There is document Unposted .
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5140,DOC_TYPE_NAME(P_lang_no,4));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF;
        End If;

     End If;            
            -----------------------------------------------------------
     If Ias_Dbs_Sys_Pkg.Check_Object ( P_Objnm=>'IAS_RT_BILL_MST_BR' , P_Objtype => 'TABLE' )=1 Then
       -----------------------------------------------------------------
        Begin
            V_External_Post :=Ias_Gen_Pkg.Get_Cnt('Select External_Post  From Ias_Rt_Bill_Mst_Br 
                                          Where Nvl(Rt_Bill_Post,0)=0                                                                      
                                            And Nvl(Cncl_Flg,0)=0 
                                            And Nvl(External_Post,0)=70 
                                            And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')                                                                      
                                            And Rt_Bill_Date Between To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')             
                                            And Rownum <= 1 ');                                                        
        Exception When Others Then 
          V_External_Post:=0;
        End;             
        If Nvl(V_External_Post,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5136;--There is document Unposted In Distributor System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5136,DOC_TYPE_NAME(P_lang_no,5));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;
            
        Begin             
            V_External_Post :=Ias_Gen_Pkg.Get_Cnt('Select External_Post  From Ias_Rt_Bill_Mst_Br 
                                          Where Nvl(Rt_Bill_Post,0)=0                                                                      
                                            And Nvl(Cncl_Flg,0)=0 
                                            And Nvl(External_Post,0)=85 
                                            And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')                                                                      
                                            And Rt_Bill_Date Between To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')             
                                            And Rownum <= 1 '); 
        Exception When Others Then 
          V_External_Post:=0;
        End;                                              
        IF Nvl(V_External_Post,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5137;--There is document Unposted In Light System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5137,DOC_TYPE_NAME(P_lang_no,5));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF;                  
        End IF;
            
        Begin
            V_External_Post :=Ias_Gen_Pkg.Get_Cnt('Select External_Post  From Ias_Rt_Bill_Mst_Br 
                                          Where Nvl(Rt_Bill_Post,0)=0                                                                      
                                            And Nvl(Cncl_Flg,0)=0 
                                            And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')                                                                      
                                            And Rt_Bill_Date Between To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')             
                                            And Rownum <= 1 '); 
        Exception When Others Then 
          V_External_Post:=0;
        End;              
        IF Nvl(V_External_Post,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5140;--There is document Unposted .
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5140,DOC_TYPE_NAME(P_lang_no,5));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF;
        End If;                            

     End If;                        
 --##-----------------------------------------------------------------------------------------------------##----- 
     --## check stn syestem
     If Ias_Dbs_Sys_Pkg.Check_Object ( P_Objnm=>'STN_BILL_MST' , P_Objtype => 'TABLE' )=1 Then
        Begin
            V_Cnt :=Ias_Gen_Pkg.Get_Cnt('Select 1 From Stn_Bill_Mst
                                                   Where Nvl(Doc_Pst,0)=0  
                                                     And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')                    
                                                     And Doc_Date Between  To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')                  
                                                     And Rownum <= 1');                                                        
        Exception When Others Then 
          V_Cnt:=0;
        End;             
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5138;--There is document Unposted In Fuel Station System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5138,DOC_TYPE_NAME(P_lang_no,4));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;                                             
     End If;
--##-----------------------------------------------------------------------------------------------------##----- 
 --## check pos syestem   
     If Ias_Dbs_Sys_Pkg.Check_Object ( P_Objnm=> 'IAS_POS_BILL_MST' , P_Objtype => 'SYNONYM' )=1 Then
        Begin
             V_Cnt :=Ias_Gen_Pkg.Get_Cnt('Select 1 From Ias_Pos_Bill_Mst
                                               Where Nvl(Posted,0)= 0
                                                 And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')                      
                                                 And Bill_Date Between  To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')                   
                                                 And Rownum<=1');
        Exception When Others Then 
         V_Cnt:=0;
        End;                                        
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5139;--There is document Unposted In Point Of Sale System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5139,DOC_TYPE_NAME(P_lang_no,4));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;
     End If;                                          
     IF Ias_Dbs_Sys_Pkg.Check_Object( P_Objnm=>'IAS_POS_RT_BILL_MST' , P_Objtype => 'SYNONYM' )=1 Then
        Begin
         V_Cnt :=Ias_Gen_Pkg.Get_Cnt(' Select 1 From Ias_Pos_Rt_Bill_Mst
                                           Where Nvl(Posted,0)= 0                      
                                             And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')
                                             And Rt_Bill_Date  Between  To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')                   
                                             And Rownum <= 1');
        Exception When Others Then 
         V_Cnt:=0;
        End;                                        
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5139;--There is document Unposted In Point Of Sale System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5139,DOC_TYPE_NAME(P_lang_no,5));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;                                                  
     End If;   
     IF Ias_Dbs_Sys_Pkg.Check_Object( P_Objnm=>'IAS_POS_PAY_CASH' , P_Objtype => 'SYNONYM' )=1 Then
        Begin
         V_Cnt :=Ias_Gen_Pkg.Get_Cnt(' Select 1 From IAS_POS_PAY_CASH
                                           Where Nvl(DOC_POST,0)= 0                      
                                             And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')
                                             And RET_VOUCHER_DATE  Between  To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')                   
                                             And Rownum <= 1');
        Exception When Others Then 
         V_Cnt:=0;
        End;  
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5139;--There is document Unposted In Point Of Sale System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5139,DOC_TYPE_NAME(P_lang_no,39,2));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;             
     End If;
     IF Ias_Dbs_Sys_Pkg.Check_Object( P_Objnm=>'IAS_POS_PAY_BILLS' , P_Objtype => 'SYNONYM' )=1 Then
        Begin
         V_Cnt :=Ias_Gen_Pkg.Get_Cnt('Select 1 From IAS_POS_PAY_BILLS
                                           Where Nvl(DOC_POST,0)= 0                      
                                             And (RT_BILL_NO IS NOT NULL OR CARD_NO IS NOT NULL )
                                             And BRN_NO=Decode('||Nvl(P_Brn_No,0)||',0,BRN_NO,'||Nvl(P_Brn_No,0)||')
                                             And BILL_DATE  Between  To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')                   
                                             And Rownum <= 1');
        Exception When Others Then 
         V_Cnt:=0;
        End; 
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5139;--There is document Unposted In Point Of Sale System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5139,DOC_TYPE_NAME(P_lang_no,39,1));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;              
     End If;                         
--##-----------------------------------------------------------------------------------------------------##-----
 --## Check Resturant syestem   
     If Ias_Dbs_Sys_Pkg.Check_Object ( P_Objnm=> 'RMS_BILL_MST' , P_Objtype => 'SYNONYM' )=1 Then
        Begin
         V_Cnt :=Ias_Gen_Pkg.Get_Cnt(' Select 1 From Rms_Bill_Mst 
                                           Where Nvl(Pst_Flg,0)= 0                      
                                             And Bill_Date Between  To_Date('''||V_F_Date||''',''DD/MM/YYYY'') And To_Date('''||V_T_Date||''',''DD/MM/YYYY'')                   
                                             And Rownum <= 1');
        Exception When Others Then 
         V_Cnt:=0;
        End;
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5144;--There are documents Unposted In Restaurant System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5144,DOC_TYPE_NAME(P_lang_no,4));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;                                                
     End If;
     If Ias_Dbs_Sys_Pkg.Check_Object ( P_Objnm=>'RMS_RT_BILL_MST' , P_Objtype => 'SYNONYM' )=1 Then
        Begin
         V_Cnt :=Ias_Gen_Pkg.Get_Cnt(' Select 1 From RMS_RT_BILL_MST
                                           Where Nvl(Pst_Flg,0)= 0                      
                                             And Rt_Bill_Date  Between  To_Date('''||V_F_Date||''',''Dd/Mm/Yyyy'') And To_Date('''||V_T_Date||''',''Dd/Mm/Yyyy'')                   
                                             And Rownum <= 1');
        Exception When Others Then 
         V_Cnt:=0;
        End;                                      
        If Nvl(V_Cnt,0)>0 Then
            IF R_RTRN_FLG=1 THEN
               Return 5144;--There are documents Unposted In Restaurant System
            ELSE
               BEGIN
                	Insert Into S_LOG_CHK_BFR_CLS(MSG_NO, MSG_TXT_FXD) values(5144,DOC_TYPE_NAME(P_lang_no,5));
                	Commit;
               EXCEPTION WHEN OTHERS THEN 
                	NULL;
               END;  
            END IF; 
        End IF;                  
     End If;                 
--##-----------------------------------------------------------------------------------------------------##-----                    
  
  Return V_Msg_no; 
  
End Ias_Chk_Trns_Not_Pst_Fnc;
/
CREATE FUNCTION Ias_Get_Doc_Del_Fnc ( P_Brn_No      In S_Brn.Brn_No%Type     ,
                                                            P_Serial_Type In Number                ,
                                                            P_Doc_Ser     In Number                ,                                                          
                                                            P_Doc_Type    In Number                ,
                                                            P_doc_jv_type In Number   Default Null ,
                                                            P_Pur_Type    In Number   Default Null ,
                                                            P_Cc_Code     In Varchar2 Default Null ,                                                         
                                                            P_w_code      In Number   Default Null ,
                                                            P_Cash_No     In Number   Default Null ) RETURN NUMBER IS
  V_Doc_No  Number:= Null;
  V_Cnt     Number:= 0;
  P_Whr     Varchar2(2000);                                                           
BEGIN
----------------------------------------------------------------------------------------
   -- 1- accumulated
   -- 2- doc_jv_type
   -- 3- by cost_center
   -- 4- warehouse
   -- 5- warehouse + doc_jv_type
   -- 6- by cost_center  + doc_jv_type
   -- 7- by cash
   -- 8- by bank
   -- 9- By Journal   
----------------------------------------------------------------------------------------
   V_Cnt := Ias_gen_Pkg.Get_Cnt('Select 1 From Ias_Doc_Del
                                  Where Brn_No   = '||P_Brn_No||'
                                    And Doc_Type = '||P_Doc_Type||'
                                    And Doc_Ser  = '||P_Doc_Ser ||'      
                                    And RowNum<=1');
----------------------------------------------------------------------------------------                                    
   If Nvl(V_Cnt,0)>0 Then
   
     If P_Serial_Type=2 Then
       P_Whr := ' And doc_jv_type='||P_doc_jv_type;
     ElsIf P_Serial_Type=3 Then
       P_Whr := ' And Cc_Code In ( Select Cc_Code From Cost_Centers
	                               Where Nvl(C_Sr,0)=(Select Nvl(C_Sr,0) 
                                                      From Cost_Centers 
	                                                    where Cc_Code='''||P_Cc_code||'''))';  
     ElsIf P_Serial_Type = 4 Then
       P_Whr := ' And W_Code In ( Select W_Code From Warehouse_Details
	                               Where Nvl(W_Ser,0)=(Select Nvl(W_Ser,0) 
                                                        From Warehouse_Details 
	                                                   where W_Code='||P_w_code||'))';         
     ElsIf P_Serial_Type=5 Then
       P_Whr := ' And w_code='||P_w_code||
                ' And doc_jv_type='||P_doc_jv_type;  
     ElsIf P_Serial_Type=6 Then
       P_Whr := ' And cc_code='''||P_cc_code||'''
                  And doc_jv_type='||P_doc_jv_type;    
     ElsIf P_Serial_Type=7 Then
       P_Whr := ' And doc_jv_type='||P_doc_jv_type||' 
                  And Cash_no In ( Select Cash_no From cash_in_hand
        	                        Where Nvl(cash_sr,0)=(Select Nvl(cash_sr,0) 
                                     From cash_in_hand
        	                        where Cash_no='||P_Cash_no||'))';                                
     ElsIf P_Serial_Type=8 Then
       P_Whr := ' And doc_jv_type='||P_doc_jv_type||' 
                  And Cash_no In ( Select bank_no From cash_at_bank
        	                        Where Nvl(bank_sr,0)=(Select Nvl(bank_sr,0) 
                                     From cash_at_bank
        	                        where bank_no='||P_Cash_no||'))';                                    
     ElsIf P_Serial_Type=9 Then
       P_Whr := ' And Doc_Jv_Type In ( Select Jv_type From Jv_Types
        	                        Where Nvl(Sequenced,0)=(Select Nvl(Sequenced,0) 
                                                            From jv_Types
        	                                                where Jv_Type='||P_doc_jv_type||'))';                                    
     ElsIf P_Serial_Type= 10 Then 
          P_Whr := ' And pur_type= '||P_Pur_Type;
     End If;
     ----------------------------------------------------------------------------------------
     V_Doc_No := Ias_gen_Pkg.Get_Cnt('Select Nvl(Max(Doc_No),0)+1 From Ias_Doc_Del
                                       Where Brn_No   = '||P_Brn_No||'
                                        And  Doc_Type ='||P_Doc_Type||P_Whr);
     ----------------------------------------------------------------------------------------                                                           
   End If;
----------------------------------------------------------------------------------------    
   Return(V_Doc_No);      
----------------------------------------------------------------------------------------   
   EXCEPTION     
     WHEN OTHERS THEN
       Return(Null);
END Ias_Get_Doc_Del_Fnc;
/
CREATE FUNCTION Ias_Get_Enc_Pass_fnc wrapped 
a000000
230
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
177 148
7rGiigLngGC5O7AaOP0BF+9cQu0wgy5pvkhqfHTNbmSPFow1L7/YszUrkROpDJl7JffnrMlH
Bl86ziWb98D30hya+yr0Wds3ppbvxJ0oYf7VmNlXm80/XI+0KS+mvf+DE9z40OE08Pqdpt1L
HZOKYvumY7uDkvIvt3oT/7WE/4o/3MIDxVxCem/md2Hpg85ylvfSEA1YnsqA/doqxD7FCC+f
7MmlqV7t08sHAZ0sOcRQQjxmBozWNcOoPaiSlXnQ+MJ1ozTJHveWcrDjPSebIgd+4Qywdha7
Og/Dby7k0bdNHcTfwmy3TlOoXu1z+y84cZw=
/
/
CREATE FUNCTION Ias_Get_Icode_Reserve_Qty ( P_Icode   In Ias_Itm_Mst.I_CODE%TYPE,
    		                                                    P_Psize   In Ias_Itm_Dtl.P_Size%Type                    ,
    		                                                    P_Wcode   In WAREHOUSE_DETAILS.W_CODE%TYPE   DEFAULT NUll,
    		                                                    P_Tdate   In DATE     DEFAULT NULL  ,                                                                
                                                                P_Doc_Ser In Number   DEFAULT NULL  ,
                                                                P_C_Code In Customer.C_Code%Type   DEFAULT NULL)  Return Number Is
  V_Qty   NUMBER:=0;
Begin   
 If P_Doc_Ser  Is Not Null Then
      Select Nvl(Sum(Nvl(CP_Qty,0)),0) /Nvl( p_Psize,1)
       Into V_Qty
        From Ias_Reserve_Dtl
         Where I_Code             = P_Icode
          And  Nvl(W_Code,0)      = Decode(P_Wcode,Null,Nvl(W_Code,0),P_Wcode)          
          And  Nvl(Doc_Ser_Ref,0) <> P_Doc_Ser
          And  Nvl(C_Code,'0')    <> Decode(P_C_Code,Null,Nvl(C_Code,'0'),P_C_Code)
          And  T_Date             >= Decode(P_Tdate,Null,T_Date,P_Tdate) 
          And  Nvl(Reserved,0)     = 1 
          And  Nvl(Cp_Qty,0)      >= 0 ;
 Else
     Select Nvl(Sum(Nvl(CP_Qty,0)),0) /Nvl( p_Psize,1)
       Into V_Qty
        From Ias_Reserve_Dtl
         Where I_Code             = P_Icode
          And  Nvl(W_Code,0)      = Decode(P_Wcode,Null,Nvl(W_Code,0),P_Wcode)
          And  T_Date             >= Decode(P_Tdate,Null,T_Date,P_Tdate) 
          And  Nvl(Reserved,0)     = 1 
          And  Nvl(Cp_Qty,0)      >= 0 ;   
 End If;
 
 Return (Nvl(V_Qty,0));
  
  Exception
   When Others  Then
     Return (0);
End Ias_Get_Icode_Reserve_Qty;
/
CREATE FUNCTION Ias_Get_Itm_Barcode_Fnc ( P_Barcode_Type Number , P_Icode Varchar2 , P_Barcode Varchar2) RETURN Varchar2 IS
  V_Barcode  Ias_Itm_Unt_Barcode.Barcode%Type;
  V_Icode    Ias_Itm_Unt_Barcode.I_Code%Type;
BEGIN   
   -----------------------------------------------------------------------------------------------------
   If P_Barcode_Type=1 Then --  Barcode Same Item
     V_Icode := P_Icode;   
   End If;
   -----------------------------------------------------------------------------------------------------
   If V_Icode Is Not Null Then
       If P_Barcode_Type=1 And Nvl(P_Barcode,'0')<>'0' Then
          V_Barcode := P_Barcode ;
       Else   
          Begin
            Select Barcode InTo V_Barcode From Ias_Itm_Unt_Barcode Where I_Code=V_Icode And RowNum<=1;
          Exception When Others Then 
            V_Barcode := Null;
          End;
       End If;   
   End If;
   -----------------------------------------------------------------------------------------------------
   Return(V_Barcode);
   -----------------------------------------------------------------------------------------------------             
EXCEPTION 
   WHEN OTHERS THEN
       Return(Null);
END Ias_Get_Itm_Barcode_Fnc;
/
CREATE FUNCTION Ias_Get_OB_AC_CC_FNC( P_Loc_Cur In VARCHAR2,
						                                                P_a_code  In ACCOUNT.A_CODE%TYPE,
						                                                P_acy     In VARCHAR2,
						                                                P_Fd      In Date   	Default Null ,
						                                                P_loc_amt In NUMBER 	Default 0 ,
						                                                P_cc_code In COST_CENTERS.CC_CODE%TYPE,
						                                                P_Mn_SbAc In NUMBER 	Default 1,
						                                                P_TBL_DTL In VARCHAR2 Default 'IAS_POST_DTL') 
						                                                RETURN NUMBER Is
     v_Obal  NUMBER;
BEGIN  
If P_a_code Is Not Null Then
    If P_Mn_SbAc=0 And P_loc_amt=0 Then
      v_Obal:=0;
    Else
        	/*Select Sum(Decode(P_loc_amt,0,                                  
        	              Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    Into V_Obal                 
        	    From Ias_Acc_Tree, Ias_Post_Dtl ,Ias_Cc_Tree
          Where Ias_Post_Dtl.a_code     =   Ias_Acc_Tree.a_code 
            And Ias_Post_Dtl.CC_code    =   Ias_cc_Tree.cc_code
        	And Ias_Acc_Tree.Ac_tree    =   P_a_code       
        	And Ias_cc_Tree.cc_tree     =   P_cc_code       
        	And ((P_loc_amt=1 And P_Mn_SbAc=0) Or (Decode(Ias_Acc_Tree.Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))           
        	And ( (Ias_Post_Dtl.Doc_Type=0) Or (Doc_Date < P_Fd ));*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From Ias_Acc_Tree, '||P_TBL_DTL||',Ias_Cc_Tree
          Where '||P_TBL_DTL||'.a_code     =   Ias_Acc_Tree.a_code 
            And ((Decode(Ias_Acc_Tree.Mn_Sub,1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_SbAc||'=0))
            And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
            And '||P_TBL_DTL||'.CC_code =   Ias_cc_Tree.cc_code
        	And Ias_Acc_Tree.Ac_tree    =   '''||P_a_code||'''       
        	And Ias_cc_Tree.cc_tree     =   '''||P_cc_code||'''  '
            Into V_Obal ;

    End If;
Else
    Execute Immediate
        'Select Sum(Decode('||P_loc_amt||',0,                                  
                      Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
                          Nvl(Amt,0))) 
            From Ias_Cc_Tree, '||P_TBL_DTL||'
     Where '||P_TBL_DTL||'.CC_code     =   Ias_cc_Tree.cc_code
       And '||P_TBL_DTL||'.a_cy        =   Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)
       And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
       And Ias_cc_Tree.cc_tree      =   '''||P_cc_code||''' '
       Into V_Obal ;
    /*Select Sum(Decode(P_loc_amt,0,                                  
                  Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),
                      Nvl(Amt,0))) 
        Into V_Obal                 
        From Ias_Post_Dtl ,Ias_Cc_Tree
     Where Ias_Post_Dtl.CC_code     =   Ias_cc_Tree.cc_code
       And Ias_cc_Tree.cc_tree      =   P_cc_code       
       And Ias_Post_Dtl.a_cy        =   Nvl(P_acy, Ias_Post_Dtl.a_cy)           
       And ((Ias_Post_Dtl.Doc_Type=0) Or (Doc_Date < P_Fd ));*/
End if;
	Return(v_Obal);

 Exception 
  When others then
    Return(0);
End Ias_Get_OB_AC_CC_FNC;
/
CREATE FUNCTION Ias_Get_OB_AC_CC_PJ_FNC( P_Loc_Cur   In VARCHAR2,
                                                    P_a_code    In ACCOUNT.A_CODE%TYPE,
                                                    P_acy       In VARCHAR2,
                                                    P_Fd        In Date   	Default Null ,
                                                    P_loc_amt   In NUMBER 	Default 0 ,
                                                    P_cc_code   In COST_CENTERS.CC_CODE%TYPE,
                                                    P_Pj_No     In IAS_PROJECTS.Pj_No%TYPE,
                                                    P_Mn_SbAc   In NUMBER 	Default 1,
                                                    P_TBL_DTL   In VARCHAR2 Default 'IAS_POST_DTL') 
                                                    RETURN NUMBER Is
     v_Obal  NUMBER;
BEGIN  
If P_a_code Is Not Null And P_Cc_Code Is Not Null Then --By Ac And Cc And Pj --
    If P_Mn_SbAc=0 And P_loc_amt=0 Then
      v_Obal:=0;
    Else
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From Ias_Acc_Tree, '||P_TBL_DTL||',Ias_Cc_Tree,IAS_PJ_TREE
          Where '||P_TBL_DTL||'.a_code     =   Ias_Acc_Tree.a_code 
            And ((Decode(Ias_Acc_Tree.Mn_Sub,1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_SbAc||'=0))
            And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
            And '||P_TBL_DTL||'.CC_code =   Ias_cc_Tree.cc_code
            And '||P_TBL_DTL||'.Pj_No   =   IAS_PJ_TREE.Pj_No
        	And Ias_Acc_Tree.Ac_tree    =   '''||P_a_code||'''       
        	And Ias_cc_Tree.cc_tree     =   '''||P_cc_code||'''
        	And IAS_PJ_TREE.PJ_TREE     =   '||P_Pj_No||'   '
            Into V_Obal ;
    End If;
ElsIf P_a_code Is Not Null And P_Cc_Code Is Null Then --By Ac And Pj --
    If P_Mn_SbAc=0 And P_loc_amt=0 Then
      v_Obal:=0;
    Else
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From Ias_Acc_Tree, '||P_TBL_DTL||',IAS_PJ_TREE
          Where '||P_TBL_DTL||'.a_code     =   Ias_Acc_Tree.a_code 
            And ((Decode(Ias_Acc_Tree.Mn_Sub,1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_SbAc||'=0))
            And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
            And '||P_TBL_DTL||'.Pj_No   =   IAS_PJ_TREE.Pj_No
        	And Ias_Acc_Tree.Ac_tree    =   '''||P_a_code||'''       
        	And IAS_PJ_TREE.PJ_TREE     =   '||P_Pj_No||'   '
            Into V_Obal ;
    End If;
ElsIf P_a_code Is Null And P_Cc_Code Is Not Null Then --By Cc And Pj --
    If P_Mn_SbAc=0 And P_loc_amt=0 Then
      v_Obal:=0;
    Else
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From  '||P_TBL_DTL||',Ias_Cc_Tree,IAS_PJ_TREE
          Where '||P_TBL_DTL||'.CC_code =   Ias_cc_Tree.cc_code
            And '||P_TBL_DTL||'.a_cy        =   Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)
            And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
            And '||P_TBL_DTL||'.Pj_No   =   IAS_PJ_TREE.Pj_No
        	And Ias_cc_Tree.cc_tree     =   '''||P_cc_code||'''
        	And IAS_PJ_TREE.PJ_TREE     =   '||P_Pj_No||'   '
            Into V_Obal ;
    End If;
Else
    Execute Immediate
        'Select Sum(Decode('||P_loc_amt||',0,                                  
                      Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
                          Nvl(Amt,0))) 
            From IAS_PJ_TREE, '||P_TBL_DTL||'
     Where '||P_TBL_DTL||'.Pj_No       =   IAS_PJ_TREE.Pj_No   
       And '||P_TBL_DTL||'.a_cy        =   Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)
       And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
       And IAS_PJ_TREE.PJ_TREE      =   '''||P_Pj_No||''' '
       Into V_Obal ;
End if;
	Return(v_Obal);

 Exception 
  When others then
    Return(0);
End Ias_Get_OB_AC_CC_PJ_FNC;
/
CREATE FUNCTION Ias_Get_OB_AC_FNC(   P_Loc_Cur In VARCHAR2,
                                                P_a_code  In ACCOUNT.A_CODE%TYPE,
                                                P_acy     In VARCHAR2,
                                                P_Fd      In Date       Default Null ,
                                                P_Mnth    In NUMBER     Default Null ,
                                                P_loc_amt In NUMBER     Default 0 ,
                                                P_cc_code In COST_CENTERS.CC_CODE%TYPE,
                                                P_Mn_Sub  In NUMBER     Default 1,
                                                P_TBL_DTL In VARCHAR2 Default 'IAS_POST_DTL')                                                                 
                                                RETURN NUMBER Is
     v_Obal  NUMBER;
BEGIN  
If P_cc_code Is Null Then
    If P_Mn_Sub=0 And P_loc_amt=0 Then
      v_Obal:=0;
    Else
        If P_Mnth Is Null Then -- By Date

            /*Select Sum(Decode(P_loc_amt,0,                                  
                          Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),
                              Nvl(Amt,0))) 
            Into V_Obal                 
            From Ias_Acc_Tree, Ias_Post_Dtl 
         Where Ias_Acc_Tree.a_code = Ias_Post_Dtl.a_code
             And Ias_Acc_Tree.Ac_tree = P_a_code       
             And ((P_loc_amt=1 And P_Mn_Sub=0) Or (Decode(Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))           
             And Nvl(Ias_Post_Dtl.Cc_Code,'0')= Nvl(P_cc_code,Nvl(Ias_Post_Dtl.Cc_Code,'0'))
             And ( (Ias_Post_Dtl.Doc_Type=0) Or (Doc_Date < P_Fd ));*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From Ias_Acc_Tree, '||P_TBL_DTL||'
          Where '||P_TBL_DTL||'.a_code     =   Ias_Acc_Tree.a_code 
            And ((Decode(Ias_Acc_Tree.Mn_Sub,1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_Sub||'=0))
            And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
            And Ias_Acc_Tree.Ac_tree    =   '''||P_a_code||''' '       
            Into V_Obal ;
       Else -- By Month
          /*Select Sum(Decode(P_loc_amt,0,                                  
                              Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),
                              Nvl(Amt,0))) 
                Into v_Obal                 
                From Ias_Acc_Tree, Ias_Post_Dtl 
             Where Ias_Acc_Tree.a_code = Ias_Post_Dtl.a_code
                 And Ias_Acc_Tree.Ac_tree = P_a_code       
                 And ((P_loc_amt=1 And P_Mn_Sub=0) Or (Decode(Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))   
                 And Nvl(Ias_Post_Dtl.Cc_Code,'0')= Nvl(P_cc_code,Nvl(Ias_Post_Dtl.Cc_Code,'0'))
                 And ( (Ias_Post_Dtl.Doc_Type=0) Or (Ias_Post_Dtl.Mnth < P_Mnth ) );*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From Ias_Acc_Tree, '||P_TBL_DTL||'
          Where '||P_TBL_DTL||'.a_code     =   Ias_Acc_Tree.a_code 
            And ((Decode(Ias_Acc_Tree.Mn_Sub,1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_Sub||'=0))
            And (('||P_TBL_DTL||'.Mnth < '||P_Mnth||' ) Or ('||P_TBL_DTL||'.Doc_Type=0))
            And Ias_Acc_Tree.Ac_tree    =   '''||P_a_code||''' '       
            Into V_Obal ;
     
        End If;
    End If;    
Else
    If P_a_code Is Null Then
        If P_Mnth Is Null Then -- By Date
             /*Select Sum(Decode(P_loc_amt,0,Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),Nvl(Amt,0))) 
               Into V_Obal                 
               From Ias_Post_Dtl 
            Where Nvl(Ias_Post_Dtl.Cc_Code,'0')= Nvl(P_cc_code,Nvl(Ias_Post_Dtl.Cc_Code,'0'))
              And ((P_loc_amt=1 And P_Mn_Sub Is Null) Or (Decode(P_Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))
                And ((Ias_Post_Dtl.Doc_Type=0) Or (Doc_Date < P_Fd ));*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From '||P_TBL_DTL||'
            Where Nvl('||P_TBL_DTL||'.CC_code,0)= Nvl('''||P_cc_code||''',Nvl('||P_TBL_DTL||'.CC_code,0))
              And ((Decode('||P_Mn_Sub||',1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_Sub||' Is Null) )
              And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0) ) '       
            Into V_Obal ;
                
        Else -- By Month
          /*Select Sum(Decode(P_loc_amt,0,Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),Nvl(Amt,0))) 
                Into v_Obal                 
                From Ias_Post_Dtl
             Where Nvl(Ias_Post_Dtl.Cc_Code,'0')= Nvl(P_cc_code,Nvl(Ias_Post_Dtl.Cc_Code,'0'))
             And ((P_loc_amt=1 And P_Mn_Sub is null ) Or (Decode(P_Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))
                 And ((Ias_Post_Dtl.Doc_Type=0) Or (Ias_Post_Dtl.Mnth < P_Mnth ) );*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From '||P_TBL_DTL||'
            Where Nvl('||P_TBL_DTL||'.CC_code,0)= Nvl('''||P_cc_code||''',Nvl('||P_TBL_DTL||'.CC_code,0))
              And ((Decode('||P_Mn_Sub||',1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_Sub||' Is Null) )
              And (('||P_TBL_DTL||'.Mnth < '||P_Mnth||' ) Or ('||P_TBL_DTL||'.Doc_Type=0)) '       
            Into V_Obal ;
     
        End If;
    Else   -- By CC_code And A_code
      
        If P_Mnth Is Null Then -- By Date
            
            /*Select Sum(Decode(P_loc_amt,0,Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),Nvl(Amt,0))) 
              Into V_Obal                 
              From  Ias_Post_Dtl 
           Where  Nvl(Ias_Post_Dtl.Cc_Code,'0')= Nvl(P_cc_code,Nvl(Ias_Post_Dtl.Cc_Code,'0'))
             And Ias_Post_Dtl.a_Code= P_a_code    
             And ((P_loc_amt=1 And P_Mn_Sub is null) Or (Decode(P_Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))
               And ((Ias_Post_Dtl.Doc_Type=0) Or (Doc_Date < P_Fd ));*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From '||P_TBL_DTL||'
            Where '||P_TBL_DTL||'.a_code     =   '''||P_a_code||'''
              And ((Decode('||P_Mn_Sub||',1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_Sub||' Is Null) )
              And ((Doc_Date < '''||P_Fd||''' ) Or ('||P_TBL_DTL||'.Doc_Type=0) ) 
              And Nvl('||P_TBL_DTL||'.CC_code,0)= Nvl('''||P_cc_code||''',Nvl('||P_TBL_DTL||'.CC_code,0))'       
            Into V_Obal ;               
        Else -- By Month
        
          /*Select Sum(Decode(P_loc_amt,0,Decode(P_acy,P_Loc_Cur,Nvl(Amt,0),Nvl(Amt_F,0)),Nvl(Amt,0))) 
                Into v_Obal                 
                From Ias_Post_Dtl
             Where Nvl(Ias_Post_Dtl.Cc_Code,'0')= Nvl(P_cc_code,Nvl(Ias_Post_Dtl.Cc_Code,'0'))
             And Ias_Post_Dtl.a_Code= P_a_code    
             And ((P_loc_amt=1 And P_Mn_Sub is null ) Or (Decode(P_Mn_Sub,1,Ias_Post_Dtl.a_cy,P_acy) = Nvl(P_acy, Ias_Post_Dtl.a_cy)))
                 And ((Ias_Post_Dtl.Doc_Type=0) Or (Ias_Post_Dtl.Mnth < P_Mnth ) );*/
        Execute Immediate
        	'Select Sum(Decode('||P_loc_amt||',0,                                  
        	              Decode('''||P_acy||''','''||P_Loc_Cur||''',Nvl(Amt,0),Nvl(Amt_F,0)),
        	                  Nvl(Amt,0))) 
        	    From '||P_TBL_DTL||'
            Where '||P_TBL_DTL||'.a_code     =   '''||P_a_code||'''
              And ((Decode('||P_Mn_Sub||',1,'||P_TBL_DTL||'.a_cy,'''||P_acy||''') = Nvl('''||P_acy||''', '||P_TBL_DTL||'.a_cy)) Or ('||P_loc_amt||'=1 And '||P_Mn_Sub||' Is Null) )
              And (('||P_TBL_DTL||'.Mnth < '||P_Mnth||' ) Or ('||P_TBL_DTL||'.Doc_Type=0)) 
              And Nvl('||P_TBL_DTL||'.CC_code,0)= Nvl('''||P_cc_code||''',Nvl('||P_TBL_DTL||'.CC_code,0))'       
            Into V_Obal ;               
     
        End If;
    
    End if;
End if;
    Return(v_Obal);

 Exception 
  When others then
    Return(0);
End Ias_Get_OB_AC_FNC;
/
CREATE FUNCTION IAS_Get_Prompt_By_Fld (P_Lng_no In number ,
                                                  P_CLM_nm In char ,
                                                  P_TBL_nm In char DEFAULT '0') RETURN CHAR Is
						 Cmnt      varchar2(100);
						BEGIN
						 Select Ias_Gen_Pkg.Get_Prompt(P_Lng_no,TO_NUMBER(SUBSTR(Comments,1,4))) 
						   into Cmnt
						   From User_Col_Comments 
						   Where Comments In (Select To_Char(Label_No) From Ias_Labels)
						     AND DECODE(P_TBL_nm,'0','0',Table_Name )=NVL(P_TBL_nm,'0')
						     AND COLUMN_NAME=P_clm_nm
						     And RowNum<=1;
						      
						     IF Cmnt LIKE IAS_GEN_PKG.GET_PROMPT(P_Lng_no,1220) THEN
						        CMNT:=IAS_GEN_PKG.GET_PROMPT(P_Lng_no,3183);
						     END IF;
					
						   Return(Cmnt);
						 Exception 
						   When Others Then
						     Return(Null);
						END IAS_Get_Prompt_By_Fld;
/
CREATE Function IAs_Get_Purchase_Qty( P_Type    In Number                          ,
                                                 P_I_Code  In Ias_Itm_Mst.I_Code%Type        , 
                                                 P_Doc_No  In P_Order_Detail.Po_No%Type       ,
                                                 P_Doc_Ser In P_Order_Detail.Po_Ser%Type      ,
                                                 P_Doc_Seq In P_Order_Detail.Doc_Sequence%Type) Return Number Is
  V_Qty   Number := 0 ;
 Begin
 If P_Type  = 1 Then   -- Purchase Request
     Select Nvl(Sum(I_Qty),0) 
        Into V_Qty 
       From P_Order_Detail
        Where I_Code                =  P_I_Code
         And  Pr_Ser                 =  P_Doc_Ser 
         And  Pr_No                  =  P_Doc_No
         And Doc_Sequence_Prq =  P_Doc_Seq  ;  
  ElsIf P_Type = 2 Then  -- Purchase Order  
     Select Nvl(Sum(I_Qty),0) 
        Into V_Qty 
       From Ias_Pi_Bill_Dtl
        Where I_Code         = P_I_Code
         And  Po_Ser         = P_Doc_Ser 
         And  Po_No          = P_Doc_No 
         And Doc_Sequence_Grn_Po = P_Doc_Seq  ;  
  End If ;  
  Return(V_Qty); 
 Exception 
    When Others Then 
    Return (0);
 End IAs_Get_Purchase_Qty  ;
/
CREATE FUNCTION Ias_Get_Sales_Year_Fnc ( P_Type      Number,
                                                             P_Usr       Varchar2,
                                                             P_Fld_Name  Varchar2,
                                                             P_Fld_Value Varchar2,
                                                             P_Acy       Varchar2, 
                                                             Local_Rep   Number Default 0,
                                                             P_Tname     Varchar2 Default Null ,
                                                             P_Whr       Varchar2 Default Null) RETURN NUMBER IS
  V_Sale     Number:=0;
  V_RtSale   Number:=0;
  V_Tname    Varchar2(50); 
  Local_Cur  Varchar2(30); 
  V_Fld_Name Varchar2(50);
  V_Whr      Varchar2(2000);
BEGIN
--##---------------------------------------------------------------------------##--

   If P_Tname Is Not Null Then
      V_Tname := ','||P_Tname;     
   End if;           
   V_Fld_Name := Replace(P_Fld_Name,'Rt_Bill','Bill');
   V_Whr:= Replace(P_Whr,'Rt_Bill','Bill');
  	Select Cur_Code InTo Local_Cur From Ex_Rate Where L_f=1;  
   ---------------------------------------------------------------------------------
   If P_Type In (1,3) Then
       -----------------------------------------------------------------------------
       Execute Immediate 'Select Sum((Nvl('||P_Usr||'.Ias_Bill_Dtl.I_Qty,0)*(Nvl('||P_Usr||'.Ias_Bill_Dtl.I_Price,0)-Nvl(Ias_Bill_Dtl.Dis_Amt,0)           
                                     +Nvl('||P_Usr||'.Ias_Bill_Dtl.Othr_Amt,0)+Nvl('||P_Usr||'.Ias_Bill_Dtl.Vat_Amt,0))) *  Decode('||Local_Rep||',0,1,'||P_Usr||'.Ias_Bill_Mst.Bill_Rate))
                           From '||P_Usr||'.Ias_Bill_Mst,'||P_Usr||'.Ias_Bill_Dtl '||V_Tname||' 
                          Where '||P_Usr||'.Ias_Bill_Mst.Bill_Ser='||P_Usr||'.Ias_Bill_Dtl.Bill_Ser '||V_Whr||'
                           AND Decode('||Local_Rep||',0,'||P_Usr||'.Ias_Bill_Mst.Bill_Currency,'''||Local_Cur||''')  =Decode('||Local_Rep||',0,'''||P_Acy||''','''||Local_Cur||''')                            
                            AND '||V_Fld_Name||'='''||P_Fld_Value||'''' InTo V_Sale;                            
       -----------------------------------------------------------------------------
    End If;   
    ---------------------------------------------------------------------------------
    If P_Type In (2,3) Then
       -----------------------------------------------------------------------------   
       Execute Immediate 'Select Sum((Nvl('||P_Usr||'.Ias_Rt_Bill_Dtl.I_Qty,0)*(Nvl('||P_Usr||'.Ias_Rt_Bill_Dtl.I_Price,0)-Nvl(Ias_Rt_Bill_Dtl.Dis_Amt,0)           
                                     +Nvl('||P_Usr||'.Ias_Rt_Bill_Dtl.Othr_Amt,0)+Nvl('||P_Usr||'.Ias_Rt_Bill_Dtl.Vat_Amt,0)))  *  Decode('||Local_Rep||',0,1,'||P_Usr||'.Ias_Rt_Bill_Mst.Rt_Bill_Rate)) 
                           From '||P_Usr||'.Ias_Rt_Bill_Mst,'||P_Usr||'.Ias_Rt_Bill_Dtl'||V_Tname||' 
                          Where '||P_Usr||'.Ias_Rt_Bill_Mst.Rt_Bill_Ser='||P_Usr||'.Ias_Rt_Bill_Dtl.Rt_Bill_Ser '||Replace(V_Whr,'Bill','Rt_Bill')||'
          AND Decode('||Local_Rep||',0,'||P_Usr||'.Ias_Rt_Bill_Mst.Rt_Bill_Currency,'''||Local_Cur||''')  =Decode('||Local_Rep||',0,'''||P_Acy||''','''||Local_Cur||''')                      
                             AND '||Replace(V_Fld_Name,'Bill','Rt_Bill')||'='''||P_Fld_Value||'''' InTo V_RtSale;                   
       -----------------------------------------------------------------------------
    End If; 
--##---------------------------------------------------------------------------##--
   If P_Type =1 Then
      RETURN V_Sale;
   ElsIf P_Type =2 Then
      RETURN V_RtSale;
   ElsIf P_Type =3 Then
      RETURN Nvl(V_Sale,0)-Nvl(V_RtSale,0);
   End If;
--##---------------------------------------------------------------------------##--
   EXCEPTION WHEN OTHERS THEN       
     Raise_application_error(-20443,SqlErrm) ;     
END Ias_Get_Sales_Year_Fnc;
/
CREATE Function Ias_Get_Sale_Age ( P_I_Code        In Ias_Itm_Mst.I_Code%Type      ,
						                                             P_W_Code        In Warehouse_Details.W_Code%Type ,
						                                             P_F_Date        In Date                          ,
						                                             P_T_Date        In Date                          ,
						                                             P_Age_Type      In Number                        ,
						                                             P_Type          In Number                        ,
                                                         P_Use_Min_Lmt In Number Default 0                )  Return Number Is  
  V_Age            Number ;
  V_F_Avl_Qty      Number ;
  V_T_Avl_Qty      Number ;
  V_Cnt            Number ;
  V_Doc_Date       Date   ;
  V_Max_Doc_Date   Date   ;
  V_Min_Doc_Date   Date   ;
  V_Tr_Date        Date   ;
  V_Rec_Tr_Date    Date   ;
  V_Road_Distance  Number ;
  V_Tr_Ser         Ias_Whtrns_Mst.Tr_Ser%Type  ;
  V_Lost_Day       Number ; 
  P_Cmp_Value    Number ;
Begin
    If    P_Type = 1 Then -- General Age For Item
          If  P_Age_Type = 1 Then -- Default Option
--##-----------------------------------------------------------------##--
            /*
            Begin
                Select Sum(First_Inc_Date-Last_Out_Date)
                 Into V_Lost_Day
                From Ias_Itm_Sales_Age
                 Where I_Code = P_I_Code
                  And  W_Code = P_W_Code
                  And  Last_Out_Date >= P_F_Date
                  And  Last_Out_Date <= P_T_Date
                  And  First_Inc_Date > Last_Out_Date
                  And  First_Inc_Date Is Not Null 
                  And  Last_Out_Date  Is Not Null ;
            Exception
              When Others Then
               V_Lost_Day := 0 ;
            End ;*/
--##-----------------------------------------------------------------##--
            If Nvl(P_Use_Min_Lmt,0) = 1  Then
               P_Cmp_Value :=  Ias_Itm_Pkg.Get_Itm_Min_Qty( P_I_Code  => P_I_Code  ,  P_W_Code => P_W_Code ) ; 
            Else
               P_Cmp_Value := 0 ;
            End If ;
--##-----------------------------------------------------------------##--
            --## Get Avl Qty 
            Begin
                V_F_Avl_Qty := Yr_Get_Icode_Avlqty_Fnc ( P_Icode   => P_I_Code   ,
				                                                 P_Psize   => 1          ,
				                                                 P_Wcode   => Null       ,
				                                                 P_Expdate => Null       ,
				                                                 P_Batchno => Null       ,
				                                                 P_Idate   => P_F_Date   ) ;
            Exception
               When Others Then
                 V_F_Avl_Qty := 0 ;
            End ;                                           
            Begin
                V_T_Avl_Qty := Yr_Get_Icode_Avlqty_Fnc ( P_Icode   => P_I_Code   ,
				                                                 P_Psize   => 1          ,
				                                                 P_Wcode   => Null       ,
				                                                 P_Expdate => Null       ,
				                                                 P_Batchno => Null       ,
				                                                 P_Idate   => P_T_Date   ) ;
            Exception
               When Others Then
                 V_T_Avl_Qty := 0 ;
            End ;     
--##-----------------------------------------------------------------##--
          
            If Nvl(V_F_Avl_Qty,0) > P_Cmp_Value And Nvl(V_T_Avl_Qty,0) > P_Cmp_Value Then
               V_Age := To_Date(P_T_Date,'DD/MM/YYYY') - To_Date(P_F_Date,'DD/MM/YYYY') ;
               V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);                
            ElsIf Nvl(V_F_Avl_Qty,0) > P_Cmp_Value  And Nvl(V_T_Avl_Qty,0) = P_Cmp_Value Then
                  Begin
                    Select Max(I_Date) Into V_Doc_Date 
                     From Ias_V_Item_Movement_Yr
                      Where I_Code    = P_I_Code
                        And I_Date   <= P_T_Date
                        And In_Out    = -1  ;
                  Exception
                     When Others Then
                       V_Doc_Date := Null ;
                  End ;
                  If V_Doc_Date Is Not Null Then
                     V_Age := To_Date(V_Doc_Date,'DD/MM/YYYY') - To_Date(P_F_Date,'DD/MM/YYYY') ;
                     V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                  End If ;                 
            ElsIf Nvl(V_F_Avl_Qty,0) = P_Cmp_Value And Nvl(V_T_Avl_Qty,0) > P_Cmp_Value Then
                    Begin
                      Select Min(Gr_Date) Into V_Min_Doc_Date
                       From Ias_V_Gr_Detail_Yr
                        Where I_Code    = P_I_Code
                          And Gr_Date  Between P_F_Date And  P_T_Date  ;
                    Exception
                       When Others Then
                         V_Min_Doc_Date := Null ;
                    End ;                   
                    If V_Min_Doc_Date Is Not Null Then
                       V_Age := To_Date(P_T_Date,'DD/MM/YYYY') - To_Date(V_Min_Doc_Date,'DD/MM/YYYY') ;
                       V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                    End If ;              
            ElsIf Nvl(V_T_Avl_Qty,0) = P_Cmp_Value And  Nvl(V_F_Avl_Qty,0) = P_Cmp_Value  Then
                  Begin
                    Select Max(I_Date) Into V_Doc_Date 
                     From Ias_V_Item_Movement_Yr
                      Where I_Code   = P_I_Code
                       And I_Date   <= P_T_Date
                       And In_Out    = -1  ;
                  Exception
                     When Others Then
                       V_Doc_Date := Null ;
                  End ;
                  Begin
                    Select Min(Gr_Date) Into V_Min_Doc_Date
                     From Ias_V_Gr_Detail_Yr
                      Where I_Code    = P_I_Code
                        And Gr_Date  Between P_F_Date And  P_T_Date  ;
                  Exception
                     When Others Then
                       V_Min_Doc_Date := Null ;
                  End ; 
                  
                  If V_Doc_Date Is Not Null And V_Min_Doc_Date Is Not Null  Then
                     V_Age := To_Date(V_Doc_Date,'DD/MM/YYYY') - To_Date(V_Min_Doc_Date,'DD/MM/YYYY') ;
                     V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                  End If ;
            End If ;
--##-----------------------------------------------------------------##--
--##-----------------------------------------------------------------##--
          ElsIf  P_Age_Type = 2 Then -- Min Transfer
               Begin
                  Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Date) Tr_Date
                    Into V_Tr_Date 
                   From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                    Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Inout_Type = 1
                     And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code 
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Date      >= P_F_Date ;
               Exception
                 When Others Then
                   V_Tr_Date  := Null ;
               End ;
               If  V_Tr_Date Is Not Null Then
                       Begin
                          Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Ser) Tr_Ser 
                            Into V_Tr_Ser 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 1
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date       = V_Tr_Date ;
                       Exception
                         When Others Then
                           V_Tr_Ser   := Null ;
                       End ;
               End If ;
               If V_Tr_Ser Is Not Null Then
                       Begin
                          Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Date) Rec_Tr_Date
                            Into V_Rec_Tr_Date 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 2
                             And  Ias_V_Whtrns_Mst_Yr.F_Tr_Ser      = V_Tr_Ser
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code  
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date      <= P_T_Date ;
                       Exception
                         When Others Then
                           V_Rec_Tr_Date  := Null ;
                       End ;                   
               End If ;
               If V_Tr_Date Is Not Null And  V_Rec_Tr_Date Is Not Null Then
                  V_Road_Distance := V_Rec_Tr_Date - V_Tr_Date ;
               End If ;
               If P_T_Date Is Not Null And V_Tr_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Tr_Date,'DD/MM/YYYY') - Nvl(V_Road_Distance,0);
               Else
                  V_Age := 0 ;
               End If ;
          ElsIf  P_Age_Type = 3 Then -- Min Incoming
               Begin
                  Select Min(Ias_V_Gr_Detail_Yr.Gr_Date) Gr_Date
                    Into V_Min_Doc_Date 
                   From Ias_V_Gr_Detail_Yr
                    Where Ias_V_Gr_Detail_Yr.Pi_Type     Not In (3,15,17)
                     And  Ias_V_Gr_Detail_Yr.I_Code      = P_I_Code 
                     And  Ias_V_Gr_Detail_Yr.Gr_Date    >= P_F_Date ;
               Exception
                 When Others Then
                   V_Min_Doc_Date  := Null ;
               End ;
               If P_T_Date Is Not Null And V_Min_Doc_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Min_Doc_Date,'DD/MM/YYYY');
               Else
                  V_Age := 0 ;
               End If ;  
          ElsIf  P_Age_Type = 4 Then -- Max Transfer
               Begin
                  Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Date) Tr_Date
                    Into V_Tr_Date 
                   From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                    Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Inout_Type = 1
                     And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code 
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Date      >= P_F_Date ;
               Exception
                 When Others Then
                   V_Tr_Date  := Null ;
               End ;
               If  V_Tr_Date Is Not Null Then
                       Begin
                          Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Ser) Tr_Ser 
                            Into V_Tr_Ser 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 1
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date       = V_Tr_Date ;
                       Exception
                         When Others Then
                           V_Tr_Ser   := Null ;
                       End ;
               End If ;
               If V_Tr_Ser Is Not Null Then
                       Begin
                          Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Date) Rec_Tr_Date
                            Into V_Rec_Tr_Date 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 2
                             And  Ias_V_Whtrns_Mst_Yr.F_Tr_Ser      = V_Tr_Ser
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code  
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date      <= P_T_Date ;
                       Exception
                         When Others Then
                           V_Rec_Tr_Date  := Null ;
                       End ;                   
               End If ;
               If V_Tr_Date Is Not Null And  V_Rec_Tr_Date Is Not Null Then
                  V_Road_Distance := V_Rec_Tr_Date - V_Tr_Date ;
               End If ;
               If P_T_Date Is Not Null And V_Tr_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Tr_Date,'DD/MM/YYYY') - Nvl(V_Road_Distance,0);
               Else
                  V_Age := 0 ;
               End If ;          
          ElsIf  P_Age_Type = 5 Then -- Max Incoming          
               Begin
                  Select Max(Ias_V_Gr_Detail_Yr.Gr_Date) Gr_Date
                    Into V_Min_Doc_Date 
                   From Ias_V_Gr_Detail_Yr
                    Where Ias_V_Gr_Detail_Yr.Pi_Type    Not In (3,15,17)
                     And  Ias_V_Gr_Detail_Yr.I_Code      = P_I_Code 
                     And  Ias_V_Gr_Detail_Yr.Gr_Date    >= P_F_Date ;
               Exception
                 When Others Then
                   V_Min_Doc_Date  := Null ;
               End ;
               If P_T_Date Is Not Null And V_Min_Doc_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Min_Doc_Date,'DD/MM/YYYY');
               Else
                  V_Age := 0 ;
               End If ;          
          End If ;        
    ElsIf P_Type = 2 Then -- General Age For Item And Wcode
--##-----------------------------------------------------------------##--
        If  P_Age_Type = 1 Then -- Default Option
--##-----------------------------------------------------------------##--
            Begin
                Select Sum(First_Inc_Date-Last_Out_Date)
                 Into V_Lost_Day
                From Ias_Itm_Sales_Age
                 Where I_Code = P_I_Code
                  And  W_Code = P_W_Code
                  And  Last_Out_Date >= P_F_Date
                  And  Last_Out_Date <= P_T_Date
                  And  First_Inc_Date > Last_Out_Date
                  And  First_Inc_Date Is Not Null 
                  And  Last_Out_Date  Is Not Null ;
            Exception
              When Others Then
               V_Lost_Day := 0 ;
            End ;
--##-----------------------------------------------------------------##--
            If Nvl(P_Use_Min_Lmt,0) = 1  Then
               P_Cmp_Value :=  Ias_Itm_Pkg.Get_Itm_Min_Qty( P_I_Code  => P_I_Code  ,  P_W_Code => P_W_Code ) ; 
            Else
               P_Cmp_Value := 0 ;
            End If ;
--##-----------------------------------------------------------------##--
            --## Get Avl Qty 
            Begin
                V_F_Avl_Qty := Yr_Get_Icode_Avlqty_Fnc ( P_Icode   => P_I_Code   ,
			                                                   P_Psize   => 1          ,
			                                                   P_Wcode   => P_W_Code   ,
			                                                   P_Expdate => Null       ,
			                                                   P_Batchno => Null       ,
			                                                   P_Idate   => P_F_Date   ) ;
            Exception
               When Others Then
                 V_F_Avl_Qty := 0 ;
            End ;                                           
            Begin
                V_T_Avl_Qty := Yr_Get_Icode_Avlqty_Fnc ( P_Icode   => P_I_Code   ,
				                                                 P_Psize   => 1          ,
				                                                 P_Wcode   => P_W_Code   ,
				                                                 P_Expdate => Null       ,
				                                                 P_Batchno => Null       ,
				                                                 P_Idate   => P_T_Date   ) ;
            Exception
               When Others Then
                 V_T_Avl_Qty := 0 ;
            End ;     
--##-----------------------------------------------------------------##--
            If Nvl(V_F_Avl_Qty,0) > P_Cmp_Value  And Nvl(V_T_Avl_Qty,0) >  P_Cmp_Value  Then
               V_Age := To_Date(P_T_Date,'DD/MM/YYYY') - To_Date(P_F_Date,'DD/MM/YYYY') ;
               V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);                
            ElsIf Nvl(V_F_Avl_Qty,0) > P_Cmp_Value   And Nvl(V_T_Avl_Qty,0) <=  P_Cmp_Value  Then
                  Begin
                    Select Max(I_Date) Into V_Doc_Date 
                     From Ias_V_Item_Movement_Yr
                      Where I_Code    = P_I_Code
                        And W_Code    = P_W_Code
                        And I_Date   <= P_T_Date
                        And In_Out    = -1  ;
                  Exception
                     When Others Then
                       V_Doc_Date := Null ;
                  End ;
                  If V_Doc_Date Is Not Null Then
                     V_Age := To_Date(V_Doc_Date,'DD/MM/YYYY') - To_Date(P_F_Date,'DD/MM/YYYY') ;
                     V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                  End If ;                 
            ElsIf Nvl(V_F_Avl_Qty,0) <= P_Cmp_Value   And Nvl(V_T_Avl_Qty,0) >  P_Cmp_Value  Then
                    Begin
                      Select Min(Gr_Date) Into V_Min_Doc_Date
                       From Ias_V_Gr_Detail_Yr
                        Where I_Code    = P_I_Code
                          And W_Code    = P_W_Code
                          And Gr_Date  Between P_F_Date And  P_T_Date  ;
                    Exception
                       When Others Then
                         V_Min_Doc_Date := Null ;
                    End ;                   
                    If V_Min_Doc_Date Is Not Null Then
                       V_Age := To_Date(P_T_Date,'DD/MM/YYYY') - To_Date(V_Min_Doc_Date,'DD/MM/YYYY') ;
                       V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                    End If ;              
            ElsIf Nvl(V_T_Avl_Qty,0) <= P_Cmp_Value   And  Nvl(V_F_Avl_Qty,0) <= P_Cmp_Value   Then
                  Begin
                    Select Max(I_Date) Into V_Doc_Date 
                     From Ias_V_Item_Movement_Yr
                      Where I_Code   = P_I_Code
                       And W_Code    = P_W_Code
                       And I_Date   <= P_T_Date
                       And In_Out    = -1  ;
                  Exception
                     When Others Then
                       V_Doc_Date := Null ;
                  End ;
                  Begin
                    Select Min(Gr_Date) Into V_Min_Doc_Date
                     From Ias_V_Gr_Detail_Yr
                      Where I_Code    = P_I_Code
                        And W_Code    = P_W_Code
                        And Gr_Date  Between P_F_Date And  P_T_Date  ;
                  Exception
                     When Others Then
                       V_Min_Doc_Date := Null ;
                  End ; 
                  
                  If V_Doc_Date Is Not Null And V_Min_Doc_Date Is Not Null  Then
                     V_Age := To_Date(V_Doc_Date,'DD/MM/YYYY') - To_Date(V_Min_Doc_Date,'DD/MM/YYYY') ;
                     V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                  End If ;
            End If ;
--##-----------------------------------------------------------------##--
        ElsIf  P_Age_Type = 2 Then -- Min Transfer
               Begin
                  Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Date) Tr_Date
                    Into V_Tr_Date 
                   From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                    Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Inout_Type = 1
                     And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code 
                     And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = P_W_Code 
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Date      >= P_F_Date ;
               Exception
                 When Others Then
                   V_Tr_Date  := Null ;
               End ;
               If  V_Tr_Date Is Not Null Then
                       Begin
                          Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Ser) Tr_Ser 
                            Into V_Tr_Ser 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 1
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code
                             And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = P_W_Code  
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date       = V_Tr_Date ;
                       Exception
                         When Others Then
                           V_Tr_Ser   := Null ;
                       End ;
               End If ;
               If V_Tr_Ser Is Not Null Then
                       Begin
                          Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Date) Rec_Tr_Date
                            Into V_Rec_Tr_Date 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 2
                             And  Ias_V_Whtrns_Mst_Yr.F_Tr_Ser      = V_Tr_Ser
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code 
                             And  Ias_V_Whtrns_Dtl_Yr.W_Code        = P_W_Code 
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date      <= P_T_Date ;
                       Exception
                         When Others Then
                           V_Rec_Tr_Date  := Null ;
                       End ;                   
               End If ;
               If V_Tr_Date Is Not Null And  V_Rec_Tr_Date Is Not Null Then
                  V_Road_Distance := V_Rec_Tr_Date - V_Tr_Date ;
               End If ;
               If P_T_Date Is Not Null And V_Tr_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Tr_Date,'DD/MM/YYYY') - Nvl(V_Road_Distance,0);
               Else
                  V_Age := 0 ;
               End If ;
        ElsIf  P_Age_Type = 3 Then -- Min Incoming
               Begin
                  Select Min(Ias_V_Gr_Detail_Yr.Gr_Date) Gr_Date
                    Into V_Min_Doc_Date 
                   From Ias_V_Gr_Detail_Yr
                    Where Ias_V_Gr_Detail_Yr.Pi_Type     Not In (3,15,17)
                     And  Ias_V_Gr_Detail_Yr.I_Code      = P_I_Code 
                     And  Ias_V_Gr_Detail_Yr.W_Code      = P_W_Code 
                     And  Ias_V_Gr_Detail_Yr.Gr_Date    >= P_F_Date ;
               Exception
                 When Others Then
                   V_Min_Doc_Date  := Null ;
               End ;
               If P_T_Date Is Not Null And V_Min_Doc_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Min_Doc_Date,'DD/MM/YYYY');
               Else
                  V_Age := 0 ;
               End If ;    
        ElsIf  P_Age_Type = 4 Then -- Max Transfer
               Begin
                  Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Date) Tr_Date
                    Into V_Tr_Date 
                   From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                    Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Inout_Type = 1
                     And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code 
                     And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = P_W_Code 
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Date      >= P_F_Date ;
               Exception
                 When Others Then
                   V_Tr_Date  := Null ;
               End ;
               If  V_Tr_Date Is Not Null Then
                       Begin
                          Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Ser) Tr_Ser 
                            Into V_Tr_Ser 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 1
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code
                             And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = P_W_Code  
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date       = V_Tr_Date ;
                       Exception
                         When Others Then
                           V_Tr_Ser   := Null ;
                       End ;
               End If ;
               If V_Tr_Ser Is Not Null Then
                       Begin
                          Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Date) Rec_Tr_Date
                            Into V_Rec_Tr_Date 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 2
                             And  Ias_V_Whtrns_Mst_Yr.F_Tr_Ser      = V_Tr_Ser
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = P_I_Code 
                             And  Ias_V_Whtrns_Dtl_Yr.W_Code        = P_W_Code 
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date      <= P_T_Date ;
                       Exception
                         When Others Then
                           V_Rec_Tr_Date  := Null ;
                       End ;                   
               End If ;
               If V_Tr_Date Is Not Null And  V_Rec_Tr_Date Is Not Null Then
                  V_Road_Distance := V_Rec_Tr_Date - V_Tr_Date ;
               End If ;
               If P_T_Date Is Not Null And V_Tr_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Tr_Date,'DD/MM/YYYY') - Nvl(V_Road_Distance,0);
               Else
                  V_Age := 0 ;
               End If ;        
        ElsIf  P_Age_Type = 5 Then -- Max Incoming
               Begin
                  Select Max(Ias_V_Gr_Detail_Yr.Gr_Date) Gr_Date
                    Into V_Min_Doc_Date 
                   From Ias_V_Gr_Detail_Yr
                    Where Ias_V_Gr_Detail_Yr.Pi_Type     Not In (3,15,17)
                     And  Ias_V_Gr_Detail_Yr.I_Code      = P_I_Code 
                     And  Ias_V_Gr_Detail_Yr.W_Code      = P_W_Code 
                     And  Ias_V_Gr_Detail_Yr.Gr_Date    >= P_F_Date ;
               Exception
                 When Others Then
                   V_Min_Doc_Date  := Null ;
               End ;
               If P_T_Date Is Not Null And V_Min_Doc_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Min_Doc_Date,'DD/MM/YYYY');
               Else
                  V_Age := 0 ;
               End If ;         
        End If ;
--##-----------------------------------------------------------------##--
    End If ;
    If Nvl(V_Age,0) > 0 Then
       V_Age := Nvl(V_Age,0) + 1 ;
    End If ;   
    Return (Nvl(V_Age,0));    
End  Ias_Get_Sale_Age ;
/
CREATE Function Ias_Get_Sale_Age_Batch ( P_I_Code     In Ias_Itm_Mst.I_Code%Type Default Null    ,
                                                    P_W_Code     In Warehouse_Details.W_Code%Type Default Null,
                                                    P_Batch_No   In Item_Movement.Batch_No%Type   Default Null,
                                                    P_F_Date     In Date                         ,
                                                    P_T_Date     In Date                         ,
                                                    P_Age_Type   In Number                       )  Return Number Is  
  V_Age            Number ;
  V_F_Avl_Qty      Number ;
  V_T_Avl_Qty      Number ;
  V_Cnt            Number ;
  V_Doc_Date       Date   ;
  V_Max_Doc_Date   Date   ;
  V_Min_Doc_Date   Date   ;
  V_Tr_Date        Date   ;
  V_Rec_Tr_Date    Date   ;
  V_Road_Distance  Number ;
  V_Tr_Ser         Ias_Whtrns_Mst.Tr_Ser%Type  ;
  V_Lost_Day       Number ; 
Begin
--##-----------------------------------------------------------------##--
        If  P_Age_Type = 1 Then -- Default Option
--##-----------------------------------------------------------------##--
            Begin
                Select Sum(First_Inc_Date-Last_Out_Date)
                 Into V_Lost_Day
                From Ias_Itm_Sales_Age
                 Where I_Code = P_I_Code
                  And  W_Code = P_W_Code
                  And  Last_Out_Date >= P_F_Date
                  And  Last_Out_Date <= P_T_Date
                  And  First_Inc_Date > Last_Out_Date
                  And  First_Inc_Date Is Not Null 
                  And  Last_Out_Date  Is Not Null ;
            Exception
              When Others Then
               V_Lost_Day := 0 ;
            End ;
--##-----------------------------------------------------------------##--
            --## Get Avl Qty 
            If P_I_Code Is Null Then
               Begin  
                Select Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0) 
                  Into V_F_Avl_Qty
                 From Ias_V_Item_Movement_Yr
                  Where W_Code   = Decode(P_W_Code,Null,W_Code,P_W_Code)
                   And  Batch_No = Decode(P_Batch_No,Null,Batch_No,Nvl(P_Batch_No,'0'))
                   And  I_Date  <= P_F_Date ;
		           Exception
		              When Others Then
		                V_F_Avl_Qty := 0 ;
		           End ; 
               Begin  
                Select Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0) 
                  Into V_T_Avl_Qty
                 From Ias_V_Item_Movement_Yr
                  Where W_Code   = Decode(P_W_Code,Null,W_Code,P_W_Code)
                   And  Batch_No = Decode(P_Batch_No,Null,Batch_No,Nvl(P_Batch_No,'0'))
                   And  I_Date  <= P_T_Date ;
		           Exception
		              When Others Then
		                V_T_Avl_Qty := 0 ;
		           End ;
            Else
		            Begin
		                V_F_Avl_Qty := Get_Icode_Avlqty ( P_Icode   => P_I_Code   ,
		                                                  P_Psize   => 1          ,
		                                                  P_Wcode   => P_W_Code   ,
		                                                  P_Expdate => Null       ,
		                                                  P_Batchno => P_Batch_No ,
		                                                  P_Idate   => P_F_Date   ) ;
		            Exception
		               When Others Then
		                 V_F_Avl_Qty := 0 ;
		            End ;                                           
		            Begin
		                V_T_Avl_Qty := Get_Icode_Avlqty ( P_Icode   => P_I_Code   ,
		                                                  P_Psize   => 1          ,
		                                                  P_Wcode   => P_W_Code   ,
		                                                  P_Expdate => Null       ,
		                                                  P_Batchno => P_Batch_No ,
		                                                  P_Idate   => P_T_Date   ) ;
		            Exception
		               When Others Then
		                 V_T_Avl_Qty := 0 ;
		            End ;     
            End If ;
--##-----------------------------------------------------------------##--
            If Nvl(V_F_Avl_Qty,0) > 0 And Nvl(V_T_Avl_Qty,0) > 0 Then
               V_Age := To_Date(P_T_Date,'DD/MM/YYYY') - To_Date(P_F_Date,'DD/MM/YYYY') ;
               V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);                
            ElsIf Nvl(V_F_Avl_Qty,0) > 0  And Nvl(V_T_Avl_Qty,0) = 0 Then
                  Begin
                    Select Max(I_Date) Into V_Doc_Date 
                     From Ias_V_Item_Movement_Yr
                      Where I_Code    = Decode(P_I_Code,Null,I_Code,P_I_Code)
                        And W_Code    = Decode(P_W_Code,Null,W_Code,P_W_Code)
                        And Batch_No  = Decode(P_Batch_No,Null,Batch_No,P_Batch_No)
                        And I_Date   <= P_T_Date
                        And In_Out    = -1  ;
                  Exception
                     When Others Then
                       V_Doc_Date := Null ;
                  End ;
                  If V_Doc_Date Is Not Null Then
                     V_Age := To_Date(V_Doc_Date,'DD/MM/YYYY') - To_Date(P_F_Date,'DD/MM/YYYY') ;
                     V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                  End If ;                 
            ElsIf Nvl(V_F_Avl_Qty,0) = 0 And Nvl(V_T_Avl_Qty,0) > 0 Then
                    Begin
                      Select Min(Gr_Date) Into V_Min_Doc_Date
                       From Ias_V_Gr_Detail_Yr
                        Where I_Code    = Decode(P_I_Code,Null,I_Code,P_I_Code)
                        And W_Code      = Decode(P_W_Code,Null,W_Code,P_W_Code)
                        And Batch_No    =  Decode(P_Batch_No,Null,Batch_No,P_Batch_No)
                          And Gr_Date   Between P_F_Date And  P_T_Date  ;
                    Exception
                       When Others Then
                         V_Min_Doc_Date := Null ;
                    End ;                   
                    If V_Min_Doc_Date Is Not Null Then
                       V_Age := To_Date(P_T_Date,'DD/MM/YYYY') - To_Date(V_Min_Doc_Date,'DD/MM/YYYY') ;
                       V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                    End If ;              
            ElsIf Nvl(V_T_Avl_Qty,0) = 0 And  Nvl(V_F_Avl_Qty,0) = 0  Then
                  Begin
                    Select Max(I_Date) Into V_Doc_Date 
                     From Ias_V_Item_Movement_Yr
                      Where I_Code   = Decode(P_I_Code,Null,I_Code,P_I_Code)
                        And W_Code   = Decode(P_W_Code,Null,W_Code,P_W_Code)
                        And Batch_No =  Decode(P_Batch_No,Null,Batch_No,P_Batch_No)
                       And I_Date   <= P_T_Date
                       And In_Out    = -1  ;
                  Exception
                     When Others Then
                       V_Doc_Date := Null ;
                  End ;
                  Begin
                    Select Min(Gr_Date) Into V_Min_Doc_Date
                     From Ias_V_Gr_Detail_Yr
                      Where I_Code    = Decode(P_I_Code,Null,I_Code,P_I_Code)
                        And W_Code    = Decode(P_W_Code,Null,W_Code,P_W_Code)
                        And Batch_No  =  Decode(P_Batch_No,Null,Batch_No,P_Batch_No)
                        And Gr_Date  Between P_F_Date And  P_T_Date  ;
                  Exception
                     When Others Then
                       V_Min_Doc_Date := Null ;
                  End ; 
                  
                  If V_Doc_Date Is Not Null And V_Min_Doc_Date Is Not Null  Then
                     V_Age := To_Date(V_Doc_Date,'DD/MM/YYYY') - To_Date(V_Min_Doc_Date,'DD/MM/YYYY') ;
                     V_Age := Nvl(V_Age,0) - Nvl(V_Lost_Day,0);
                  End If ;
            End If ;
--##-----------------------------------------------------------------##--
        ElsIf  P_Age_Type = 2 Then -- Min Transfer
               Begin
                  Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Date) Tr_Date
                    Into V_Tr_Date 
                   From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                    Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Inout_Type = 1
                     And  Ias_V_Whtrns_Dtl_Yr.I_Code        = Decode(P_I_Code,Null,Ias_V_Whtrns_Dtl_Yr.I_Code,P_I_Code) 
                     And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = Decode(P_W_Code,Null,Ias_V_Whtrns_Dtl_Yr.T_W_Code,P_W_Code) 
                     And  Ias_V_Whtrns_Dtl_Yr.Batch_No      = Decode(P_Batch_No,Null,Ias_V_Whtrns_Dtl_Yr.Batch_No,P_Batch_No)
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Date      >= P_F_Date ;
               Exception
                 When Others Then
                   V_Tr_Date  := Null ;
               End ;
               If  V_Tr_Date Is Not Null Then
                       Begin
                          Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Ser) Tr_Ser 
                            Into V_Tr_Ser 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 1
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = Decode(P_I_Code,Null,Ias_V_Whtrns_Dtl_Yr.I_Code,P_I_Code) 
                             And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = Decode(P_W_Code,Null,Ias_V_Whtrns_Dtl_Yr.T_W_Code,P_W_Code) 
                             And  Ias_V_Whtrns_Dtl_Yr.Batch_No      = Decode(P_Batch_No,Null,Ias_V_Whtrns_Dtl_Yr.Batch_No,P_Batch_No) 
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date       = V_Tr_Date ;
                       Exception
                         When Others Then
                           V_Tr_Ser   := Null ;
                       End ;
               End If ;
               If V_Tr_Ser Is Not Null Then
                       Begin
                          Select Min(Ias_V_Whtrns_Mst_Yr.Tr_Date) Rec_Tr_Date
                            Into V_Rec_Tr_Date 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 2
                             And  Ias_V_Whtrns_Mst_Yr.F_Tr_Ser      = V_Tr_Ser
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = Decode(P_I_Code,Null,Ias_V_Whtrns_Dtl_Yr.I_Code,P_I_Code)  
                             And  Ias_V_Whtrns_Dtl_Yr.W_Code        = Decode(P_W_Code,Null,Ias_V_Whtrns_Dtl_Yr.W_Code,P_W_Code)  
                             And  Ias_V_Whtrns_Dtl_Yr.Batch_No      = Decode(P_Batch_No,Null,Ias_V_Whtrns_Dtl_Yr.Batch_No,P_Batch_No) 
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date      <= P_T_Date ;
                       Exception
                         When Others Then
                           V_Rec_Tr_Date  := Null ;
                       End ;                   
               End If ;
               If V_Tr_Date Is Not Null And  V_Rec_Tr_Date Is Not Null Then
                  V_Road_Distance := V_Rec_Tr_Date - V_Tr_Date ;
               End If ;
               If P_T_Date Is Not Null And V_Tr_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Tr_Date,'DD/MM/YYYY') - Nvl(V_Road_Distance,0);
               Else
                  V_Age := 0 ;
               End If ;
        ElsIf  P_Age_Type = 3 Then -- Min Incoming
               Begin
                  Select Min(Ias_V_Gr_Detail_Yr.Gr_Date) Gr_Date
                    Into V_Min_Doc_Date 
                   From Ias_V_Gr_Detail_Yr
                    Where Ias_V_Gr_Detail_Yr.Pi_Type     Not In (3,15,17)
                     And  Ias_V_Gr_Detail_Yr.I_Code      = Decode(P_I_Code,Null,Ias_V_Gr_Detail_Yr.I_Code,P_I_Code)  
                     And  Ias_V_Gr_Detail_Yr.W_Code      = Decode(P_W_Code,Null,Ias_V_Gr_Detail_Yr.W_Code,P_W_Code)   
                     And  Ias_V_Gr_Detail_Yr.Batch_No    = Decode(P_Batch_No,Null,Ias_V_Gr_Detail_Yr.Batch_No,P_Batch_No) 
                     And  Ias_V_Gr_Detail_Yr.Gr_Date    >= P_F_Date ;
               Exception
                 When Others Then
                   V_Min_Doc_Date  := Null ;
               End ;
               If P_T_Date Is Not Null And V_Min_Doc_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Min_Doc_Date,'DD/MM/YYYY');
               Else
                  V_Age := 0 ;
               End If ;    

        ElsIf  P_Age_Type = 4 Then -- Max Transfer
               Begin
                  Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Date) Tr_Date
                    Into V_Tr_Date 
                   From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                    Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Inout_Type = 1
                     And  Ias_V_Whtrns_Dtl_Yr.I_Code        = Decode(P_I_Code,Null,Ias_V_Whtrns_Dtl_Yr.I_Code,P_I_Code) 
                     And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = Decode(P_W_Code,Null,Ias_V_Whtrns_Dtl_Yr.T_W_Code,P_W_Code) 
                     And  Ias_V_Whtrns_Dtl_Yr.Batch_No      = Decode(P_Batch_No,Null,Ias_V_Whtrns_Dtl_Yr.Batch_No,P_Batch_No)
                     And  Ias_V_Whtrns_Mst_Yr.Tr_Date      >= P_F_Date ;
               Exception
                 When Others Then
                   V_Tr_Date  := Null ;
               End ;
               If  V_Tr_Date Is Not Null Then
                       Begin
                          Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Ser) Tr_Ser 
                            Into V_Tr_Ser 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 1
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = Decode(P_I_Code,Null,Ias_V_Whtrns_Dtl_Yr.I_Code,P_I_Code) 
                             And  Ias_V_Whtrns_Dtl_Yr.T_W_Code      = Decode(P_W_Code,Null,Ias_V_Whtrns_Dtl_Yr.T_W_Code,P_W_Code) 
                             And  Ias_V_Whtrns_Dtl_Yr.Batch_No      = Decode(P_Batch_No,Null,Ias_V_Whtrns_Dtl_Yr.Batch_No,P_Batch_No) 
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date       = V_Tr_Date ;
                       Exception
                         When Others Then
                           V_Tr_Ser   := Null ;
                       End ;
               End If ;
               If V_Tr_Ser Is Not Null Then
                       Begin
                          Select Max(Ias_V_Whtrns_Mst_Yr.Tr_Date) Rec_Tr_Date
                            Into V_Rec_Tr_Date 
                           From Ias_V_Whtrns_Mst_Yr,Ias_V_Whtrns_Dtl_Yr
                            Where Ias_V_Whtrns_Mst_Yr.Tr_Ser        = Ias_V_Whtrns_Dtl_Yr.Tr_Ser
                             And  Ias_V_Whtrns_Mst_Yr.Tr_InOut_Type = 2
                             And  Ias_V_Whtrns_Mst_Yr.F_Tr_Ser      = V_Tr_Ser
                             And  Ias_V_Whtrns_Dtl_Yr.I_Code        = Decode(P_I_Code,Null,Ias_V_Whtrns_Dtl_Yr.I_Code,P_I_Code)  
                             And  Ias_V_Whtrns_Dtl_Yr.W_Code        = Decode(P_W_Code,Null,Ias_V_Whtrns_Dtl_Yr.W_Code,P_W_Code)  
                             And  Ias_V_Whtrns_Dtl_Yr.Batch_No      = Decode(P_Batch_No,Null,Ias_V_Whtrns_Dtl_Yr.Batch_No,P_Batch_No) 
                             And  Ias_V_Whtrns_Mst_Yr.Tr_Date      <= P_T_Date ;
                       Exception
                         When Others Then
                           V_Rec_Tr_Date  := Null ;
                       End ;                   
               End If ;
               If V_Tr_Date Is Not Null And  V_Rec_Tr_Date Is Not Null Then
                  V_Road_Distance := V_Rec_Tr_Date - V_Tr_Date ;
               End If ;
               If P_T_Date Is Not Null And V_Tr_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Tr_Date,'DD/MM/YYYY') - Nvl(V_Road_Distance,0);
               Else
                  V_Age := 0 ;
               End If ;
        ElsIf  P_Age_Type = 5 Then -- Max Incoming
               Begin
                  Select Max(Ias_V_Gr_Detail_Yr.Gr_Date) Gr_Date
                    Into V_Min_Doc_Date 
                   From Ias_V_Gr_Detail_Yr
                    Where Ias_V_Gr_Detail_Yr.Pi_Type     Not In (3,15,17)
                     And  Ias_V_Gr_Detail_Yr.I_Code      = Decode(P_I_Code,Null,Ias_V_Gr_Detail_Yr.I_Code,P_I_Code)  
                     And  Ias_V_Gr_Detail_Yr.W_Code      = Decode(P_W_Code,Null,Ias_V_Gr_Detail_Yr.W_Code,P_W_Code)   
                     And  Ias_V_Gr_Detail_Yr.Batch_No    = Decode(P_Batch_No,Null,Ias_V_Gr_Detail_Yr.Batch_No,P_Batch_No) 
                     And  Ias_V_Gr_Detail_Yr.Gr_Date    >= P_F_Date ;
               Exception
                 When Others Then
                   V_Min_Doc_Date  := Null ;
               End ;
               If P_T_Date Is Not Null And V_Min_Doc_Date Is Not Null Then
                  V_Age := To_Date(P_T_Date,'DD/MM/YYYY') -To_Date(V_Min_Doc_Date,'DD/MM/YYYY');
               Else
                  V_Age := 0 ;
               End If ;   
                       
        End If ;
--##-----------------------------------------------------------------##--
    If Nvl(V_Age,0) > 0 Then
       V_Age := Nvl(V_Age,0) + 1 ;
    End If ;
    Return (Nvl(V_Age,0));    
End  Ias_Get_Sale_Age_Batch ;
/
CREATE FUNCTION Ias_Inv_Doctype_Nm( P_lang    In NUMBER,
                                                          P_doctype In NUMBER,
                                                          P_jvtype  In NUMBER Default Null) RETURN CHAR IS
v_jvname   Varchar2(100);
v_dvname   VARCHAR2(50);

BEGIN
 
 If P_Doctype = 5  and P_jvtype Is Not Null Then
   
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
 
 Elsif P_Doctype = 6 and P_jvtype Is Not Null Then
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

 Else
  
     Begin
        Select Flg_Desc 
          Into v_dvname 
          From S_Flags
         Where Lang_no  = P_lang
           and Flg_Code ='DOC_TYPE_INV'
           and Flg_Value= P_doctype;
      
      Exception 
         When Others Then
          v_dvname:=Null;
     End;
     
     If P_Doctype In (1,2,3,4)  Then
 
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
        
     End If; 
       
     Return(v_dvname||' '||v_jvname);
       
 End If;
 End Ias_Inv_Doctype_Nm;
/
CREATE Function Inv_Get_Avg_Itm_Cst_Fnc ( P_Cost_Type  In Ias_Para_Inv.Costing_Type%Type ,
                                                     P_Wtavg_Type In Ias_Para_Inv.Wtavg_Type%Type   ,
                                                                                                          P_I_Code     In Ias_Itm_Mst.I_Code%Type        ) Return Number Is

   V_Avg_Itm_Wtavg      Number ;
   
Begin

   If P_Cost_Type = 2 Then -- Wtavg
      If P_Wtavg_Type = 1 Then -- By Item
         Select Nvl(I_Cwtavg, 0)
           Into V_Avg_Itm_Wtavg
          From Ias_Itm_Mst
          Where I_Code = P_I_Code ;
      Elsif P_Wtavg_Type = 2 Then -- By Item + W_Code
         Select Avg(I_Cwtavg)
           Into V_Avg_Itm_Wtavg
           From Ias_Itm_Wcode
          Where I_Code = P_I_Code
           And Itm_Unt           = Ias_Itm_Pkg.Get_Icode_Min_Unit  (P_I_Code => P_I_Code )
           And  Nvl(I_Cwtavg, 0) > 0 ;
      Elsif P_Wtavg_Type = 3 Then -- By Item + Whg_Code
         Select Avg(I_Cwtavg)
           Into V_Avg_Itm_Wtavg
           From (  Select Max(I_Cwtavg) I_Cwtavg
                    From Ias_Itm_Wcode
                     Where I_Code   = P_I_Code
                      And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit  (P_I_Code => P_I_Code )
                  Group By Whg_Code)
          Where Nvl(I_Cwtavg, 0) > 0;
      End If;
   Else
      V_Avg_Itm_Wtavg := 0;
   End If;

   Return Nvl(V_Avg_Itm_Wtavg,0);
   
End Inv_Get_Avg_Itm_Cst_Fnc ;
/
CREATE Function Inv_Get_Itm_Batch_Auto_Sq_Fnc( P_Icode     In Ias_Itm_Mst.I_Code%Type    ,
                                                          P_Doc_Date  In Date                       ,
                                                          P_Use_Batch In Item_Movement.Batch_No%Type 
                                                          ) Return Varchar2
                         Is
                             V_Batch_Sq           Varchar2(200);
                             Fld_Nm               Varchar2(100);
                             V_Max_Batch          Varchar2(100);
                             Mthd_No              Number;
                             V_Use_Batch          Number;
                             V_Use_Batch_Itm      Number;  
                             V_Fld_Frmt           Varchar2(100); 
                             V_Config_Batch       Varchar2(100);
                             V_Date               Date; 
                             V_Use_Batch_No_Auto_Sq_Flg  Number; 
                             V_Batch_No_Mthd_No_Sq       Number;    
                                                                          
                                                                               
         Begin                                                    
         
        If Nvl(P_Use_Batch,0)  =  1       Then                          -- Use Batch
              Begin
                Select Nvl(Use_Batch_No,0),Nvl(Use_Batch_No_Auto_Sq_Flg,0),Batch_No_Mthd_No_Sq 
                        Into V_Use_Batch_Itm,V_Use_Batch_No_Auto_Sq_Flg,V_Batch_No_Mthd_No_Sq
                        From Ias_Itm_Mst
                       Where I_Code=P_Icode;                                     
                Exception 
                When Others Then
                Null ;  
                End;
             
         If V_Use_Batch_Itm = 1 And V_Use_Batch_No_Auto_Sq_Flg = 1 And V_Batch_No_Mthd_No_Sq Is Not Null     Then
                Declare 
                
                     Cursor C_Itm_Batch
                           Is
                              Select Fld_Nm,Fld_Lngth,Fld_Frmt,FLD_CODE  
                                From Inv_Batch_No_Mthd_Dtl
                                Where Mthd_No = V_Batch_No_Mthd_No_Sq
                                Order By Rcrd_No ;
                             
                Begin
                   For I In C_Itm_Batch
                   Loop
                     If I.Fld_Nm = 1    Then                                         -- By Item
                        V_Batch_Sq :=V_Batch_Sq||P_Icode;

                     Elsif I.Fld_Nm = 2    Then                                           -- By Sequence
                      
                       Begin 
                           Select Max(Batch_No)  Into V_Max_Batch 
                           From Ias_Itm_Mst , Gr_Detail
                           Where Ias_Itm_Mst.I_Code = Gr_Detail.I_Code 
                            And  Ias_Itm_Mst.Batch_No_Mthd_No_Sq = V_Batch_No_Mthd_No_Sq; 
                       Exception 
                           When Others Then
                            V_Max_Batch :=Null ;  
                        End;
                        
                        V_Max_Batch := Substr(V_Max_Batch,(NVL(Length(V_Batch_Sq),0))+1,I.Fld_Lngth ) ; 
                        V_Config_Batch :=Get_Auto_Incrmnt_Fnc(P_Src_Str     => V_Max_Batch,
                                                              P_Mx_Str_Lnth => I.Fld_Lngth,
                                                              P_Lpad        => 1 );
                       
                        V_Batch_Sq :=V_Batch_Sq|| V_Config_Batch ;
                      
                     Elsif I.Fld_Nm = 3    Then                                            -- By Day
                       Begin 
                        Select To_Char(To_Date(P_Doc_Date),Nvl(I.Fld_Frmt,'DD')) Into V_Config_Batch   From Dual; 
                       Exception 
                       When Others Then
                        V_Config_Batch :=Null ;  
                       End;
                      V_Batch_Sq :=V_Batch_Sq||V_Config_Batch;
                     
                     Elsif I.Fld_Nm = 4    Then                                     -- By Month
                       Begin 
                        Select To_Char(To_Date(P_Doc_Date),Nvl(I.Fld_Frmt,'MM')) Into V_Config_Batch   From Dual; 
                        Exception 
                       When Others Then
                        V_Config_Batch :=Null ;  
                       End;
                        V_Batch_Sq :=V_Batch_Sq||V_Config_Batch;
                     
                     Elsif I.Fld_Nm = 5    Then                                     -- By Year
                       Begin
                        Select To_Char(To_Date(P_Doc_Date),Nvl(I.Fld_Frmt,'YY')) Into V_Config_Batch   From Dual; 
                        Exception 
                        When Others Then
                        V_Config_Batch :=Null ;  
                       End;
                        V_Batch_Sq :=V_Batch_Sq||V_Config_Batch;
                     
                     Elsif I.Fld_Nm = 6    Then                                      -- By Day + Month
                       Begin 
                        Select To_Char(To_Date(P_Doc_Date),Nvl(I.Fld_Frmt,'DD/MM')) Into V_Config_Batch   From Dual; 
                       Exception 
                       When Others Then
                        V_Config_Batch :=Null ;  
                       End; 
                        V_Batch_Sq :=V_Batch_Sq||V_Config_Batch;
                     
                     Elsif I.Fld_Nm = 7    Then                                    --By Mouth + Year
                       Begin 
                        Select To_Char(To_Date(P_Doc_Date),Nvl(I.Fld_Frmt,'MM/YY')) Into V_Config_Batch   From Dual; 
                       Exception 
                       When Others Then
                        V_Config_Batch :=Null ;  
                       End; 
                        V_Batch_Sq :=V_Batch_Sq||V_Config_Batch;
                     
                     Elsif I.Fld_Nm = 8    Then                                     -- By Day + Month + Year 
                       Begin 
                        Select To_Char(To_Date(P_Doc_Date),Nvl(I.Fld_Frmt,'DD/MM/YY')) Into V_Config_Batch   From Dual; 
                       Exception 
                       When Others Then
                        V_Config_Batch :=Null ;  
                       End; 
                        V_Batch_Sq :=V_Batch_Sq||V_Config_Batch;
                    
                    Elsif I.Fld_Nm = 9    Then                                     -- By Classification  Code                       
                        V_Batch_Sq :=V_Batch_Sq||Lpad(I.FLD_CODE,I.Fld_Lngth,'0');
                     End If;
                  
                   End Loop ;
          
                
              End;  
                                 
         
         End If;
      
         Return (V_Batch_Sq); 
        End If;  
     End Inv_Get_Itm_Batch_Auto_Sq_Fnc ;
/
CREATE Function  Inv_Get_Itm_Prmry_Cst_Fnc ( P_I_Code     In Ias_Itm_Mst.I_Code%Type      
                                                      , P_P_Size     In Ias_Itm_Dtl.P_Size%Type       
                                                      , P_W_Code     In Ias_Itm_Wcode.W_Code%Type    
                                                      , P_Cost_Type  In Ias_Para_Inv.Costing_Type%Type  
                                                      , P_Wtavg_Type In Ias_Para_Inv.Wtavg_Type%Type  
                                                      , P_Prmry_Cst_Type In Number 
                                                      ) Return Number Is
   V_Prmry_Cst   Number := 0;
Begin
   --##-----------------------------------------------------------------------------------##--
   If P_Cost_Type = 2 Then   -- Wtavg                                                                                                                                                                                 -- Wtavg
      If P_Prmry_Cst_Type = 1 Then
          If P_Wtavg_Type = 1 Then                                                                                                                                                                      -- WtAvg Item
             Begin
               Select Primary_Cost
                 Into V_Prmry_Cst
                 From Ias_Itm_Mst
                Where I_Code = P_I_Code 
                 And Nvl(Service_Itm,0) = 0
                 And Rownum <= 1;
             Exception
               When Others Then
                  V_Prmry_Cst := 0;
             End;
          Elsif P_Wtavg_Type = 2 Then                                                                                                                                                        -- WtAvg I_Code + W_Code
             Begin
               Select Nvl(Primary_Cost, 0)
                 Into V_Prmry_Cst
                 From Ias_Itm_Wcode
                Where I_Code = P_I_Code 
                 And  W_Code = P_W_Code 
                 And Itm_Unt = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                 And Rownum <= 1 ;
             Exception
               When Others Then
                  V_Prmry_Cst := 0;
             End;
          Elsif P_Wtavg_Type = 3 Then                                                                                                                                                      -- WtAvg I_Code + Whg_Code
             Begin
               Select Max(Nvl(Primary_Cost, 0))
                 Into V_Prmry_Cst
                 From Ias_Itm_Wcode
                Where I_Code   = P_I_Code 
                 And  Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_W_Code) 
                 And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                 And  Rownum <= 1;
             Exception
               When Others Then
                  V_Prmry_Cst := 0;
             End;
          End If;
      End If;

      If P_Prmry_Cst_Type = 2 Then
         Begin
            Select Nvl(Primary_Cost, 0)
              Into V_Prmry_Cst
              From Ias_Itm_Mst
             Where I_Code  = P_I_Code 
              And Nvl(Service_Itm,0) = 0
              And  Rownum <= 1;
         Exception
            When Others Then
               V_Prmry_Cst := 0;
         End;
      End If;

      If P_Prmry_Cst_Type = 3 Then -- First Movement 
         Begin
            Select Nvl(Stk_Cost, 0)/ Nvl(P_Size,1)
              Into V_Prmry_Cst
              From Gr_Detail
             Where I_Code = P_I_Code 
              And  Rec_No = ( Select Min(Rec_No)
		                       From Gr_Detail
		                        Where I_Code   = P_I_Code ) ;
         Exception
            When Others Then
               V_Prmry_Cst := 0;
         End;
      End If; 
           
   ElsIf P_Cost_Type = 1 Then  -- FIFO                                                                                                                                                                           -- FIFO
      Begin
         V_Prmry_Cst := Last_Incoming_Price(P_Wtavg_Type, P_I_Code, P_P_Size, P_W_Code, 1) / Nvl(P_P_Size, 1);
      Exception
         When Others Then
            V_Prmry_Cst := 0 ;
      End;
   End If;

   --##-----------------------------------------------------------------------------------##--
   Return (Nvl(V_Prmry_Cst, 0));
--##-----------------------------------------------------------------------------------##--
Exception
   When Others Then
      Return (0);
End Inv_Get_Itm_Prmry_Cst_Fnc ;
/
CREATE Function Inv_Get_Itm_QR_Code_Mthd_No ( P_QR_Code_Type In Ias_Itm_Mst.Use_Qr_Code_Type%Type ,
						                                                        P_Itm_Code     In Ias_Itm_Mst.I_Code%Type           ,
					                                                        P_Itm_Unt      In Ias_Itm_Dtl.Itm_Unt%Type          )  Return Varchar2 Is
    V_QR_Code_Mthd_No Ias_Itm_Mst.QR_Code_Mthd_No%Type ;
Begin
   If  P_QR_Code_Type = 1 Then -- By Item 
       Select QR_Code_Mthd_No
         Into V_QR_Code_Mthd_No
         From Ias_Itm_Mst
        Where I_Code = P_Itm_Code
         And Rownum<=1;
   ElsIf  P_QR_Code_Type = 2 Then -- By Item Unit
       Select QR_Code_Mthd_No
         Into V_QR_Code_Mthd_No
         From Ias_Itm_Dtl
        Where I_Code  = P_Itm_Code
         And  Itm_Unt = P_Itm_Unt 
         And Rownum<=1;   
   End If ;
     
    Return(V_QR_Code_Mthd_No);
    
 Exception 
  When Others Then
      Return(Null);
End Inv_Get_Itm_QR_Code_Mthd_No ;
/
CREATE Function Inv_Get_Itm_Wtavg_Fnc( P_I_Code       In Ias_Itm_Mst.I_Code%Type
                                                , P_P_Size       In Ias_Itm_Dtl.P_Size%Type 
                                                , P_W_Code       In Ias_Itm_Wcode.W_Code%Type
                                                , P_Cost_Type    In Ias_Para_Inv.Costing_Type%Type
                                                , P_Wtavg_Type   In Ias_Para_Inv.Wtavg_Type%Type
                                                , P_Avg_Cst_Type In Number                                        -- Local Currency
                                                ) Return Number Is
   V_Wtavg   Number := 0;
 Begin
--##-----------------------------------------------------------------------------------##--
   If P_Cost_Type = 2 Then -- Wtavg                                                                                                                                                                                   -- Wtavg
--##-----------------------------------------------------------------------------------##--
      If P_Avg_Cst_Type  = 1 Then
         If P_Wtavg_Type = 1 Then                                                                                                                                                                      -- WtAvg Item
            Begin
               Select I_Cwtavg
                 Into V_Wtavg
               From Ias_Itm_Mst
                Where I_Code  = P_I_Code 
                 And Nvl(Service_Itm,0) = 0
                 And  Rownum <= 1 ;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;
         ElsIf P_Wtavg_Type = 2 Then                                                                                                                                                        -- WtAvg I_Code + W_Code
            Begin
               Select I_Cwtavg
                 Into V_Wtavg
               From Ias_Itm_Wcode
                Where I_Code  = P_I_Code 
                  And W_Code  = P_W_Code 
                  And Itm_Unt = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                  And Rownum <= 1 ;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;
         ElsIf P_Wtavg_Type = 3 Then                                                                                                                                                      -- WtAvg I_Code + Whg_Code
            Begin
               Select Max(Nvl(I_Cwtavg, 0))
                 Into V_Wtavg
               From Ias_Itm_Wcode
                Where I_Code   = P_I_Code 
                 And  Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_W_Code) 
                 And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code);
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;           
         End If;
      End If;
--##-----------------------------------------------------------------------------------##--
      If P_Avg_Cst_Type  = 2 Then
         If P_Wtavg_Type = 3 Then                                                                                                                                                         -- WtAvg I_Code + Whg_Code
            Begin
               Select Max(I_Cwtavg)
                 Into V_Wtavg
                 From Ias_Itm_Wcode
                Where I_Code   = P_I_Code 
                 And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                 And  Whg_Code <> Ias_Wcode_Pkg.Get_Whg_Code(P_W_Code) 
                 And  Nvl(I_Cwtavg, 0) > 0;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;
         ElsIf P_Wtavg_Type = 2 Then                                                                                                                                                        -- WtAvg I_Code + W_Code
            Begin
               Select Max(I_Cwtavg)
                 Into V_Wtavg
                 From Ias_Itm_Wcode
                Where I_Code   = P_I_Code 
                 And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                 And  Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_W_Code) 
                 And  Nvl(I_Cwtavg, 0) > 0;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;

            If V_Wtavg = 0 Then
               Begin
                  Select Max(I_Cwtavg)
                    Into V_Wtavg
                    From Ias_Itm_Wcode
                   Where I_Code   = P_I_Code 
                    And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                    And  Whg_Code <> Ias_Wcode_Pkg.Get_Whg_Code(P_W_Code) 
                    And  Nvl(I_Cwtavg, 0) > 0;
               Exception
                  When Others Then
                     V_Wtavg := 0;
               End;
            End If;
         ElsIf P_Wtavg_Type = 1 Then                                                                                                                                                                      -- WtAvg Item
            Begin
               Select I_Cwtavg
                 Into V_Wtavg
               From Ias_Itm_Mst
                Where I_Code  = P_I_Code
                 And Nvl(Service_Itm,0) = 0 
                 And  Rownum <= 1 ;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;         
         End If;
      End If;
--##-----------------------------------------------------------------------------------##--
      If P_Avg_Cst_Type  = 3 Then
         If P_Wtavg_Type = 1 Then                                                                                                                                                                      -- WtAvg Item
            Begin
               Select Primary_Cost
                 Into V_Wtavg
                 From Ias_Itm_Mst
                Where I_Code  = P_I_Code
                 And Nvl(Service_Itm,0) = 0 
                 And  Rownum <= 1 ;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;
         Elsif P_Wtavg_Type = 2 Then                                                                                                                                                        -- WtAvg I_Code + W_Code
            Begin
               Select Nvl(Primary_Cost, 0)
                 Into V_Wtavg
                 From Ias_Itm_Wcode
                Where I_Code  = P_I_Code 
                 And  W_Code  = P_W_Code 
                 And  Itm_Unt = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                 And  Rownum <= 1 ;
            Exception
               When Others Then
                  V_Wtavg := 0;
            End;
         Elsif P_Wtavg_Type = 3 Then                                                                                                                                                      -- WtAvg I_Code + Whg_Code
            Begin
               Select Max(Nvl(Primary_Cost, 0))
                 Into V_Wtavg
                 From Ias_Itm_Wcode
                Where I_Code   = P_I_Code 
                 And  Whg_Code = Ias_Wcode_Pkg.Get_Whg_Code(P_W_Code) 
                 And  Itm_Unt  = Ias_Itm_Pkg.Get_Icode_Min_Unit(P_I_Code => P_I_Code) 
                 And  Rownum  <= 1 ;
            Exception
               When Others Then
                  V_Wtavg := 0 ;
            End;
         End If;
      End If;
--##-----------------------------------------------------------------------------------##--
      If P_Avg_Cst_Type = 4 Then
         Begin
            Select Nvl(Primary_Cost, 0)
              Into V_Wtavg
             From Ias_Itm_Mst
              Where I_Code  = P_I_Code 
               And Nvl(Service_Itm,0) = 0
               And  Rownum <= 1 ;
         Exception
            When Others Then
               V_Wtavg := 0 ;
         End;
      End If;
--##-----------------------------------------------------------------------------------##--
      If P_Avg_Cst_Type = 5 Then
         Begin
            Select Nvl(I_Cwtavg, 0)
              Into V_Wtavg
              From Ias_Itm_Mst
             Where I_Code  = P_I_Code
              And Nvl(Service_Itm,0) = 0 
              And  Rownum <= 1 ;
         Exception
            When Others Then
               V_Wtavg := 0 ;
         End;
      End If;
--##-----------------------------------------------------------------------------------##--
      If P_Avg_Cst_Type = 6 Then
         Begin
            Select (Nvl(Vndr_Price, 0) * Ias_Gen_Pkg.Get_Cur_Rate(Ias_V_Vndr_Itm.A_Cy)) / Ias_Gen_Pkg.Get_Cur_Rate(Ias_Gen_Pkg.Get_Stk_Cur)
              Into V_Wtavg
              From Ias_V_Vndr_Itm
             Where I_Code            = P_I_Code 
              And  Nvl(Main_Vndr, 0) = 1 
              And  Rownum <= 1 ;
         Exception
            When Others Then
               Begin
                  Select (Nvl(Vndr_Price, 0) * Ias_Gen_Pkg.Get_Cur_Rate(Ias_V_Vndr_Itm.A_Cy)) / Ias_Gen_Pkg.Get_Cur_Rate(Ias_Gen_Pkg.Get_Stk_Cur)
                    Into V_Wtavg
                    From Ias_V_Vndr_Itm
                   Where I_Code  = P_I_Code 
                    And  Rownum <= 1;
               Exception
                  When Others Then
                     V_Wtavg := 0;
               End;
         End;
      End If;
--##-----------------------------------------------------------------------------------##--      
   ElsIf P_Cost_Type = 1 Then                                                                                                                                                                                -- FIFO
      Begin
         V_Wtavg := Last_Incoming_Price(P_Wtavg_Type, P_I_Code, P_P_Size, P_W_Code, 1) / Nvl(P_P_Size, 1);
      Exception
         When Others Then
            V_Wtavg := 0;
      End;
   End If;
--##-----------------------------------------------------------------------------------##--
   Return (Nvl(V_Wtavg, 0));
--##-----------------------------------------------------------------------------------##--
Exception
   When Others Then
      Return (0);
End Inv_Get_Itm_Wtavg_Fnc ;
/
CREATE Function Inv_Get_Lst_Itm_Prmry_Cst_Fnc ( P_I_Code     In Ias_Itm_Mst.I_Code%Type   
                                                         , P_P_Size     In Ias_Itm_Dtl.P_Size%Type    
                                                         , P_W_Code     In Ias_Itm_Wcode.W_Code%Type 
                                                         , P_Cost_Type  In Ias_Para_Inv.Costing_Type%Type 
                                                         , P_Wtavg_Type In Ias_Para_Inv.Wtavg_Type%Type 
                                                         ) Return Number Is
   V_Prmry_Cst   Number := 0;

   Cursor Cst_Ordr  Is
        Select Cst_Code
          From Inv_Itm_Cst_Ordr
         Where Cst_Type = 2
      Order By Cst_Ordr ;
Begin
   --##-----------------------------------------------------------------------------------##--
   If P_Cost_Type = 2 Then -- Wtavg
      For I In Cst_Ordr Loop
          V_Prmry_Cst := Inv_Get_Itm_Prmry_Cst_Fnc( P_I_Code         => P_I_Code      , 
                                                    P_P_Size         => P_P_Size      , 
                                                    P_W_Code         => P_W_Code      , 
                                                    P_Cost_Type      => P_Cost_Type   ,    
                                                    P_Wtavg_Type     => P_Wtavg_Type  , 
                                                    P_Prmry_Cst_Type => I.Cst_Code  
                                                  ) ;

         If Nvl(V_Prmry_Cst, 0) > 0 Or I.Cst_Code  = 3 Then
            Exit;
         End If;
      End Loop;
   ElsIf P_Cost_Type = 1 Then -- FIFO
          V_Prmry_Cst := Inv_Get_Itm_Prmry_Cst_Fnc( P_I_Code         => P_I_Code      , 
                                                    P_P_Size         => P_P_Size      , 
                                                    P_W_Code         => P_W_Code      , 
                                                    P_Cost_Type      => P_Cost_Type   ,    
                                                    P_Wtavg_Type     => P_Wtavg_Type  , 
                                                    P_Prmry_Cst_Type => 0  
                                                  ) ;
   End If;

   Return Nvl(V_Prmry_Cst, 0);
   
Exception
   When Others Then
      Return (0);
End Inv_Get_Lst_Itm_Prmry_Cst_Fnc ;
/
CREATE Function Inv_Get_Lst_Itm_Wtavg_Fnc ( P_I_Code     In Ias_Itm_Mst.I_Code%Type
                                                     , P_P_Size     In Ias_Itm_Dtl.P_Size%Type
                                                     , P_W_Code     In Ias_Itm_Wcode.W_Code%Type
                                                     , P_Cost_Type  In Ias_Para_Inv.Costing_Type%Type
                                                     , P_Wtavg_Type In Ias_Para_Inv.Wtavg_Type%Type 
                                                     ) Return Number Is
    V_Wtavg   Number := 0;

    Cursor Cst_Ordr  Is
     Select Cst_Code
     From Inv_Itm_Cst_Ordr
         Where Cst_Type = 1
      Order By Cst_Ordr;
 Begin

   If P_Cost_Type = 2 Then -- Wtavg
      For I In Cst_Ordr Loop
          V_Wtavg := Inv_Get_Itm_Wtavg_Fnc ( P_I_Code       => P_I_Code     , 
                                             P_P_Size       => P_P_Size     , 
                                             P_W_Code       => P_W_Code     , 
                                             P_Cost_Type    => P_Cost_Type  , 
                                             P_Wtavg_Type   => P_Wtavg_Type , 
                                             P_Avg_Cst_Type => I.Cst_Code   ) ;

          If Nvl(V_Wtavg, 0) > 0 Then
             Exit;
          End If;
      End Loop;
   ElsIf P_Cost_Type = 1 Then -- FIFO
         V_Wtavg := Inv_Get_Itm_Wtavg_Fnc ( P_I_Code       => P_I_Code     ,  
                                            P_P_Size       => P_P_Size     , 
                                            P_W_Code       => P_W_Code     , 
                                            P_Cost_Type    => P_Cost_Type  , 
                                            P_Wtavg_Type   => P_Wtavg_Type , 
                                            P_Avg_Cst_Type => 0            ) ;
   End If;

   Return Nvl(V_Wtavg, 0);
 
 Exception
   When Others Then
      Return (0);
 End Inv_Get_Lst_Itm_Wtavg_Fnc ;
/
CREATE Function  Inv_Get_Wcode_Cost( P_Costing_Type  Ias_Para_Inv.Costing_Type%Type,
                                                					 P_Wtavg_Type    Ias_Para_Inv.Wtavg_Type%Type  ,
					                                                 P_Wcode         In Number                     , 
					                                                 P_Td In Date Default Null)
   Return Number
Is
   V_Wt_Cost        Number := 0;
Begin
  
   Select Sum(Nvl(Avl_Qty, 0) * Nvl(I_Cwtavg, 0))
     Into V_Wt_Cost
     From (Select I_Code,
                  W_Code,
                  Avl_Qty,
                  (Case
                      When P_Costing_Type = 2 Then
                         Ias_Itm_Pkg.Get_Grand_Wtavg(P_Wtavg_Type => P_Wtavg_Type, P_Icode => I_Code, P_Wcode => W_Code)
                      Else
                         Last_Incoming_Price(P_Wtavg_Type   => P_Wtavg_Type,
                                             P_Icode        => I_Code,
                                             P_Psize        => 1,
                                             P_Wcode        => W_Code,
                                             P_Type         => 1)
                   End)
                     I_Cwtavg
             From (  Select I_Code, W_Code, Nvl(Sum(In_Out * (Nvl(P_Qty, 0) + Nvl(Pf_Qty, 0))), 0) Avl_Qty
                       From Item_Movement
                      Where W_Code = p_wcode
                   Group By I_Code, W_Code
                     Having Nvl(Sum(In_Out * (Nvl(P_Qty, 0) + Nvl(Pf_Qty, 0))), 0) > 0));

   Return V_Wt_Cost;
Exception
   When Others Then
      Return 0;
End Inv_Get_Wcode_Cost;
/
CREATE FUNCTION IS_NUMBER (VAL VARCHAR2) RETURN NUMBER IS
   RES NUMBER;
BEGIN
   RES:=VAL;
   RETURN 1;
EXCEPTION WHEN VALUE_ERROR THEN 
   RETURN 0;
END;
/
CREATE FUNCTION Last_Incoming_Price ( P_Wtavg_Type In Number, 
																														P_Icode      In Ias_Itm_Mst.I_CODE%TYPE,
                                                            P_Psize      In Number, 
                                                            P_Wcode      In WAREHOUSE_DETAILS.W_CODE%TYPE  Default Null, 
                                                            P_Type       In Number  Default 0 )
           RETURN Number  IS
v_Lst_Inc_Price Number ;

-- P_Type  ==>  0 = without  pi_type=0 , 1= with pi_type=0
BEGIN

If P_Type = 0 Then --(1)

	If P_Icode Is Not Null Then
  	 If P_Wtavg_Type = 3 Then
					Begin	   
					   Select (nvl(stk_cost,0)/nvl(p_size,1))* P_Psize
					     Into v_Lst_Inc_Price
					     From Gr_Detail ,
						       ( SELECT MAX(gr_Detail.gr_date)  GDate
					                , MAX(gr_Detail.Rec_NO)   RecNo
					             From Gr_detail
					            Where I_Code = P_Icode
					              And Nvl(Whg_Code,0) = Nvl(Ias_Wcode_Pkg.Get_Whg_Code  ( P_Wcode) ,Nvl(Whg_Code,0))
					              ) tb1
				      Where I_Code = P_Icode
					      and Nvl(Whg_Code,0) = Nvl(Ias_Wcode_Pkg.Get_Whg_Code  ( P_Wcode) ,Nvl(Whg_Code,0))
					      and Gr_Detail.Rec_No =tb1.RecNo
					      and rownum=1;
				   Exception
					   When Others Then
					    v_Lst_Inc_Price:=0;
					End;	  
	   Else
					Begin	   
					   Select (nvl(stk_cost,0)/nvl(p_size,1))* P_Psize
					     Into v_Lst_Inc_Price
					     From Gr_Detail ,
						       ( SELECT MAX(gr_Detail.gr_date)  GDate
					                , MAX(gr_Detail.Rec_NO)   RecNo
					             From Gr_detail
					            Where I_Code = P_Icode
					            --and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,w_code)) 
					              and Nvl(W_code,0) = Nvl(P_Wcode,Nvl(W_code,0))                 
					              ) tb1
				      Where I_Code = P_Icode
					    --and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,W_code))
					      and Nvl(W_code,0) = Nvl(P_Wcode,Nvl(W_code,0))
					      and Gr_Detail.Rec_No =tb1.RecNo
					      and rownum=1;
				   Exception
					   When Others Then
					    v_Lst_Inc_Price:=0;
				End;
	   End If ;
	End If;

Else --(1)

  If P_Icode Is Not Null Then
	Begin
	     If P_Wtavg_Type = 3 Then
					 Select (nvl(stk_cost,0)/nvl(p_size,1))* P_Psize  Into v_Lst_Inc_Price
					   From Gr_Detail ,
						   (SELECT
					        MAX(gr_Detail.gr_date)  GDate,
					        MAX(gr_Detail.Rec_NO)   RECNO
					        From Gr_Detail
					       Where I_Code = P_Icode
					         And Nvl(Whg_Code,0) = Nvl(Ias_Wcode_Pkg.Get_Whg_Code  ( P_Wcode) ,Nvl(Whg_Code,0))
					         ) tb1
					 Where I_Code = P_Icode
					   And Nvl(Whg_Code,0) = Nvl(Ias_Wcode_Pkg.Get_Whg_Code  ( P_Wcode) ,Nvl(Whg_Code,0))
					   and Gr_Detail.REC_NO =tb1.RECNO
					   and rownum=1;
			 Else
					 Select (nvl(stk_cost,0)/nvl(p_size,1))* P_Psize  Into v_Lst_Inc_Price
					   From Gr_Detail ,
						   (SELECT
					        MAX(gr_Detail.gr_date)  GDate,
					        MAX(gr_Detail.Rec_NO)   RECNO
					        From Gr_Detail
					       Where I_Code = P_Icode
					       --and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,W_code))
					         and Nvl(W_code,0) = Nvl(P_Wcode,Nvl(W_code,0))
					         ) tb1
					 Where I_Code = P_Icode
					 --and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,W_code))
					   and Nvl(W_code,0) = Nvl(P_Wcode,Nvl(W_code,0))
					   and Gr_Detail.REC_NO =tb1.RECNO
					   and rownum=1;			 
			 End If ;
	 Exception
	   When no_data_found Then
	    Begin
	     If P_Wtavg_Type = 1 Then -- By Item
		     Select nvl(I_Cwtavg,0) * P_Psize
		       Into v_Lst_Inc_Price 
		       From Ias_Itm_Mst
			    where I_code=P_Icode;
			 Else -- By Item + w_code
			     Begin
               Select nvl(I_Cwtavg,0) * P_Psize
                 Into v_Lst_Inc_Price 
               From Ias_Itm_Wcode
                where I_code=P_Icode
                  and W_code=Nvl(P_Wcode,W_code);
			     Exception
              When No_Data_Found Then
                 Select nvl(I_Cwtavg,0) 
                   Into v_Lst_Inc_Price 
                  From Ias_Itm_Mst
                   where I_code=P_Icode;
           End ;
			 End If;
			    
		   Exception When Others Then
		    v_Lst_Inc_Price:=0;
		  End;
	  When Others Then
	   v_Lst_Inc_Price:=0;
	End;
	End If;

End If; --(1)

Return v_Lst_Inc_Price ;

END Last_Incoming_Price;
/
CREATE FUNCTION Last_Incoming_Price_To_Date ( P_Wtavg_Type In Number, 
                                                                    P_Icode      In Ias_Itm_Mst.I_CODE%TYPE,
                                                                    P_Psize      In Number, 
                                                                    P_Wcode      In WAREHOUSE_DETAILS.W_CODE%TYPE  Default Null, 
                                                                    P_Type       In Number  Default 0 ,
                                                                    P_Date In Date Default Null  )
           RETURN Number  IS
v_Lst_Inc_Price Number ;

-- P_Type  ==>  0 = without  pi_type=0 , 1= with pi_type=0
BEGIN

If P_Type = 0 Then --(1)

    If P_Icode Is Not Null Then

    Begin
       Select (nvl(stk_cost,0)/nvl(p_size,1))* P_Psize
         Into v_Lst_Inc_Price
         From Gr_Detail ,
               ( SELECT MAX(gr_Detail.gr_date)  GDate
                    , MAX(gr_Detail.Rec_NO)   RecNo
                 From Gr_detail
                Where I_code = P_Icode
                  and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,w_code))         
                  and gr_detail.pi_type IN (2,5)
                  And Gr_Detail.Gr_Date <= Nvl(P_Date,Gr_Detail.Gr_Date)) tb1
      Where I_Code = P_Icode
          and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,W_code))
          and gr_detail.pi_type In (2,5)
          And Gr_Detail.Gr_Date <= Nvl(P_Date,Gr_Detail.Gr_Date)
          and Gr_Detail.Rec_No =tb1.RecNo
          and rownum=1;
   Exception
       When Others Then
        v_Lst_Inc_Price:=0;
    End;
    
    End If;

Else --(1)

  If P_Icode Is Not Null Then

    Begin
     Select (nvl(stk_cost,0)/nvl(p_size,1))  Into v_Lst_Inc_Price
       From Gr_Detail ,
           (SELECT
            MAX(gr_Detail.gr_date)  GDate,
            MAX(gr_Detail.Rec_NO)   RECNO
            From Gr_Detail
           Where I_code = P_Icode
             and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,W_code))
             and gr_detail.pi_type In (0,2,5)
             And Gr_Detail.Gr_Date <= Nvl(P_Date,Gr_Detail.Gr_Date)) tb1
     Where I_Code = P_Icode
       and W_code = Decode(P_Wtavg_Type,1,W_code,Nvl(P_Wcode,W_code))
       and gr_detail.pi_type IN (0,2,5)
       And Gr_Detail.Gr_Date <= Nvl(P_Date,Gr_Detail.Gr_Date)
       and Gr_Detail.REC_NO =tb1.RECNO
       and rownum=1;
     Exception
       When no_data_found Then
        Begin
         If P_Wtavg_Type = 1 Then -- By Item
             Select nvl(I_Cwtavg,0) 
               Into v_Lst_Inc_Price 
               From Ias_Itm_Mst
                where I_Code=P_Icode;
             Else -- By Item + w_code
               Select nvl(I_Cwtavg,0) 
                 Into v_Lst_Inc_Price 
               From Ias_Itm_Wcode
                where I_code=P_Icode
                  and W_code=Nvl(P_Wcode,W_code);
             End If;
                
           Exception When Others Then
            v_Lst_Inc_Price:=0;
          End;
      When Others Then
       v_Lst_Inc_Price:=0;
    End;
    End If;

End If; --(1)

Return v_Lst_Inc_Price ;

END Last_Incoming_Price_To_Date;
/
CREATE Function Last_Purchase_Price ( P_Wtavg_Type In Number, 
					                                                  P_Icode      In Ias_Itm_Mst.I_Code%Type,
					                                                  P_Psize      In Number, 
					                                                  P_Wcode      In Warehouse_Details.W_Code%Type  Default Null  )
           Return Number  Is
   V_Lst_Prchs_Price Number ;
 Begin

  If P_Icode Is Not Null Then
     Begin
         If P_Wtavg_Type = 3 Then
             Select (Nvl(Stk_Cost,0)/Nvl(P_Size,1))  Into V_Lst_Prchs_Price
               From Gr_Detail ,
                   (Select
                    Max(Gr_Detail.Gr_Date)  Gdate,
                    Max(Gr_Detail.Rec_No)   Recno
                    From Gr_Detail
                   Where Gr_Detail.Pi_Type = 2 
                     And Gr_Detail.I_Code = P_Icode
                     And Nvl(Gr_Detail.Whg_Code,0) = Nvl(Ias_Wcode_Pkg.Get_Whg_Code  ( P_Wcode) ,Nvl(Gr_Detail.Whg_Code,0))
                     ) Tb1
             Where Gr_Detail.Pi_Type          = 2
               And Gr_Detail.I_Code           = P_Icode
               And Nvl(Gr_Detail.Whg_Code,0)  = Nvl(Ias_Wcode_Pkg.Get_Whg_Code  ( P_Wcode) ,Nvl(Gr_Detail.Whg_Code,0))
               And Gr_Detail.Rec_No           = Tb1.Recno
               And Rownum=1;
         Else
             Select (Nvl(Stk_Cost,0)/Nvl(P_Size,1))  Into V_Lst_Prchs_Price
               From Gr_Detail ,
                   (Select
                    Max(Gr_Detail.Gr_Date)  Gdate,
                    Max(Gr_Detail.Rec_No)   Recno
                    From Gr_Detail
                   Where Gr_Detail.Pi_Type = 2
                     And Gr_Detail.I_Code  = P_Icode
                   --And W_Code = Decode(P_Wtavg_Type,1,W_Code,Nvl(P_Wcode,W_Code))
                     And Nvl(W_Code,0) = Nvl(P_Wcode,Nvl(W_Code,0))
                     ) Tb1
             Where Gr_Detail.Pi_Type = 2
               And Gr_Detail.I_Code  = P_Icode
             --And W_Code = Decode(P_Wtavg_Type,1,W_Code,Nvl(P_Wcode,W_Code))
               And Nvl(Gr_Detail.W_Code,0)     = Nvl(P_Wcode,Nvl(Gr_Detail.W_Code,0))
               And Gr_Detail.Rec_No  = Tb1.Recno
               And Rownum=1;             
         End If ;
     Exception
       When No_Data_Found Then
            V_Lst_Prchs_Price := 0 ;
      When Others Then
            V_Lst_Prchs_Price := 0 ;
     End;
  End If;

  Return V_Lst_Prchs_Price ;

 End Last_Purchase_Price ;
/
CREATE FUNCTION Last_Sale_Price( P_Icode  In Ias_Itm_Mst.I_CODE%TYPE ,
    					                                      	 P_c_code In CUSTOMER.C_CODE%TYPE    DEFAULT NULL,
              					                             	 P_Acy    In VARCHAR2)
    RETURN Number  IS

Lst_Sale_Price Number ;
Max_Bill_date  Date;
Max_Bill_no    Number ;

BEGIN

If P_Icode Is Not Null and P_Acy Is Not Null Then


    Select Max(Bill_Date),Max(bill_no) 
      Into Max_Bill_date,Max_Bill_no
      From Ias_Bill_Mst
     Where Bill_currency=P_Acy
       and nvl(Ias_Bill_Mst.c_code,'0')= Decode(P_c_code,Null,nvl(Ias_Bill_Mst.c_code,'0'),P_c_code)
       and Exists( Select 1 From Ias_Bill_Dtl
                    Where Bill_Ser =Ias_Bill_Mst.Bill_Ser 
                      And I_Code= P_Icode);
                 
 Begin
    Select Max(nvl(D.i_price,0))
      Into Lst_Sale_Price
      From Ias_Bill_Mst M,Ias_Bill_Dtl D
     Where M.Bill_Ser = D.Bill_Ser 
       and I_Code=P_Icode
       and bill_date =Max_Bill_date
       and M.bill_no =Max_Bill_no
       and nvl(M.c_code,'0')= Decode(P_c_code,Null,nvl(M.c_code,'0'),P_c_code);
	   
	Exception
	  When Others Then
	   Lst_Sale_Price:=0;
	End;
End If;


Return Lst_Sale_Price;

End Last_Sale_Price;
/
CREATE FUNCTION NVL22(P_VAL1 VARCHAR2, P_VAL2 VARCHAR2 , P_VAL3 VARCHAR2) RETURN VARCHAR2 IS
								    V_RES VARCHAR2(500);
								BEGIN
								    SELECT NVL2(P_VAL1, P_VAL2 , P_VAL3) INTO V_RES FROM DUAL;
								    RETURN V_RES;
								EXCEPTION WHEN OTHERS THEN RETURN NULL;
								END;
CREATE Function Open_Stock ( P_I_code  In   Ias_Itm_Mst.I_Code%Type,
                                        P_W_Code  In   Warehouse_Details.W_Code%Type Default Null,
                                        P_Date    In   Date     Default Null,
                                        P_Whr     In   Varchar2  Default Null)  Return Number    Is
              
   V_Op_Qty   Number :=0 ;
   V_Sqlstr   Varchar2(4000) ;
   V_Tbl_Nm   Varchar2(4000) ;
 Begin
--##--------------------------------------------------------------------------------------------------------------------###--    
     If P_Date >= Ias_Gen_Pkg.Get_Frst_Day Then
        V_Tbl_Nm := ' Item_Movement ' ;        
     Else
        V_Tbl_Nm := ' Ias_V_Item_Movement_Yr ' ;    
     End If ;
               
     Begin
       
       V_Sqlstr:=' Select Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0)  
                      From  '||V_Tbl_Nm||' Itm_Mov 
                        Where I_Code =  '||''''||P_I_Code||''''||' '  ;

       If P_W_Code Is Not Null Then
          V_Sqlstr:= V_Sqlstr|| ' And    Itm_Mov.W_Code = '|| P_W_Code ;
       End If ;

       If P_Date Is Not Null Then
         -- V_Sqlstr:= V_Sqlstr|| ' And ( Itm_Mov.I_Date< To_Date( '||''''||P_Date||''''||',''DD/MM/YYYY'')   )  ' ;
            V_Sqlstr:= V_Sqlstr|| ' And ( Itm_Mov.I_Date< To_Date( '||''''||P_Date||''''||',''DD/MM/YYYY'')  Or Itm_Mov.Doc_Type=0 )  ' ;
       End If ;
       
       If P_Whr Is Not Null Then
          V_Sqlstr:= V_Sqlstr||' '|| P_Whr ;
       End If ;
        
     Execute Immediate V_Sqlstr  Into   V_Op_Qty  ;
         
     Exception  When Others Then
          
          V_Op_Qty := 0 ; 
            
     End;
--##--------------------------------------------------------------------------------------------------------------------###--
     Return (Nvl(V_Op_Qty,0));
--##--------------------------------------------------------------------------------------------------------------------###--  
 End Open_Stock ;
/
CREATE Function Open_Stock_Exp_Bat ( P_I_code  In   Ias_Itm_Mst.I_Code%Type,
                                                P_W_Code  In   Warehouse_Details.W_Code%Type Default Null,
                                                P_Date       In   Date     Default Null,
                                                P_Expdate  In   Date     Default Null ,
			        P_Bat         In   Varchar2 Default Null ,
                                                P_Whr        In   Varchar2  Default Null)  Return Number    Is
              
   V_Op_Qty   Number :=0 ;
   V_Sqlstr   Varchar2(4000) ;
   V_Tbl_Nm   Varchar2(4000) ;
 Begin
--##--------------------------------------------------------------------------------------------------------------------###--    
     If P_Date >= Ias_Gen_Pkg.Get_Frst_Day Then
        V_Tbl_Nm := ' Item_Movement ' ;        
     Else
        V_Tbl_Nm := ' Ias_V_Item_Movement_Yr ' ;    
     End If ;
               
     Begin
       
       V_Sqlstr:=' Select Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0)  
                      From  '||V_Tbl_Nm||' Itm_Mov 
                        Where I_Code =  '||''''||P_I_Code||''''||' '  ;

       If P_W_Code Is Not Null Then
          V_Sqlstr:= V_Sqlstr|| ' And    Itm_Mov.W_Code = '|| P_W_Code ;
       End If ;

       If P_Date Is Not Null Then
          --V_Sqlstr:= V_Sqlstr|| ' And ( Itm_Mov.I_Date< To_Date( '||''''||P_Date||''''||',''DD/MM/YYYY'')  )  ' ;
            V_Sqlstr:= V_Sqlstr|| ' And ( Itm_Mov.I_Date< To_Date( '||''''||P_Date||''''||',''DD/MM/YYYY'')  Or Itm_Mov.Doc_Type=0 )  ' ;
       End If ;

       If P_Bat Is Not Null Then
          V_Sqlstr:= V_Sqlstr|| ' And    Nvl(Itm_Mov.Batch_No,0) = '||''''||P_Bat||''''||' '  ;
       End If ;

       If P_Expdate Is Not Null Then
          V_Sqlstr:= V_Sqlstr|| ' And Itm_Mov.Expire_Date = To_Date( '||''''||P_Expdate||''''||',''DD/MM/YYYY'')  ' ;
       End If ;
              
              
       If P_Whr Is Not Null Then
          V_Sqlstr:= V_Sqlstr||' '|| P_Whr ;
       End If ;
        
     Execute Immediate V_Sqlstr  Into   V_Op_Qty  ;
         
     Exception  When Others Then
          
          V_Op_Qty := 0 ; 
            
     End;
--##--------------------------------------------------------------------------------------------------------------------###--
     Return (Nvl(V_Op_Qty,0));
--##--------------------------------------------------------------------------------------------------------------------###--  
 End Open_Stock_Exp_Bat ;
/
CREATE Function Sync_Doc_To_Tra(p_doc_type number,
                                           p_doc_ser number,
                                           p_username varchar2,
                                           p_password varchar2,
                                           p_url varchar2,
                                           p_lang_no number,
                                           p_tmp varchar2 default null) return varchar2
is 
  v_envelope    CLOB;
  v_xml         XMLTYPE;  
  v_isSuccessed varchar2(5);
  v_bill_ser_rt varchar2(38);
  v_TRA_bill_no varchar2(50);
  v_error_msg   varchar2(4000);
  v_fragment    clob;
  ----------------------------
  v_ProfileID varchar2(100);
  v_CopyIndicator varchar2(100);
  v_InvoiceTypeCode varchar2(100);
begin
 if p_doc_type = 4 then -- Sales
    
    v_ProfileID       := 'TICARIFATURA';
    v_CopyIndicator   := 'false';
    v_InvoiceTypeCode := 'SATIS';
    
    for i in (SELECT b.bill_no,
                   to_char(b.bill_ser) bill_ser,
                   b.bill_date,
                   b.DISC_AMT,
                   (select nvl(count(*),0) from ias_bill_dtl where ias_bill_dtl.bill_ser=b.bill_ser) items_cnt,
                   a_desc,
                   b.ref_no,
                   b.vat_amt,
                   round(b.vat_amt/(b.bill_amt-nvl(b.disc_amt,0))*100,0) vat_per,
                   b.bill_rate,
                   b.bill_currency,
                   b.c_code,
                   to_char(b.ad_date,'yyyy-mm-dd') iss_date,
                   to_char(b.ad_date,'hh24:mi:ss') iss_time,
                   b.brn_no,
                   b.bill_amt,
                   b.othr_amt,
                   b.WEB_SRVC_TRNSFR_DATA_DSC,
                   b.WEB_SRVC_TRNSFR_DATA_FLG,
                   ------------------------
                   c.c_tax_code,
                   c_e_name first_name,
                   c_e_name last_name,
                   c_phone phone,
                   c_fax fax,
                   c_mobile mobile,
                   c_e_name email,
                   c_web_site web_site,
                   (SELECT r_e_name FROM regions WHERE r_code = c.r_code) area,
                   (SELECT city_e_name FROM cities WHERE city_no = c.city_no) city,
                   (SELECT cntry_e_name FROM cntry WHERE cntry_no = c.cntry_no) cntry,
                   c.field11  CitySubdivisionName, --CitySubdivisionName
                   c.field12 BuildingNumber, --BuildingNumber
                   c.field13 BuildingName,  --BuildingName
                   c.field14 BlockName,     --BlockName
                   c.field15 StreetName,    --StreetName
                   c.field16 Room           --Room
            FROM ias_bill_mst b, customer c
            WHERE b.c_Code = c.c_Code AND bill_ser = p_doc_ser)
      loop
        if i.WEB_SRVC_TRNSFR_DATA_FLG = 0 then
            return 'This bill has already been posted';
        end if;
        v_envelope := '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
        <s:Header>
            <ActivityId CorrelationId="c244ff4a-7d40-4550-8c27-05a882eabe55" xmlns="http://schemas.microsoft.com/2004/09/ServiceModel/Diagnostics">00000000-0000-0000-0000-000000000000</ActivityId>
        </s:Header>
        <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
            <SendInvoice xmlns="http://tempuri.org/">
                <userInfo Username="'||p_username||'" Password="'||p_password||'"/>
                <invoices>
                    <InvoiceInfo>
                        <Invoice>
                            <ProfileID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_ProfileID||'</ProfileID>
                            <CopyIndicator xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_CopyIndicator||'</CopyIndicator>
                            <UUID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.bill_ser||p_tmp||'</UUID>
                            <IssueDate xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_date||'</IssueDate>
                            <IssueTime xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_time||'</IssueTime>
                            <InvoiceTypeCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_InvoiceTypeCode||'</InvoiceTypeCode>
                            <Note xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.a_desc||'</Note>
                            <DocumentCurrencyCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.bill_currency||'</DocumentCurrencyCode>
                            <PricingCurrencyCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.bill_currency||'</PricingCurrencyCode>
                            <LineCountNumeric xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.items_cnt||'</LineCountNumeric>
                            <!-- <OrderReference xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <ID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">zzzzxxxx</ID>
                                <IssueDate xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_date||'</IssueDate>
                            </OrderReference>-->
                            <<BRN_DETAILS>>
                            <AccountingCustomerParty xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <Party>
                                    <WebsiteURI xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.web_site||'</WebsiteURI>
                                    <PartyIdentification>
                                        <ID schemeID="VKN" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.c_tax_code||'</ID>
                                    </PartyIdentification>
                                    <PartyName>
                                        <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.first_name||'</Name>
                                    </PartyName>
                                    <PostalAddress>
                                        <Room xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.room||'</Room>
                                        <StreetName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.streetName||'</StreetName>
                                        <BlockName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.BlockName||'</BlockName>
                                        <BuildingNumber xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.buildingNumber||'</BuildingNumber>
                                        <BuildingName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.buildingName||'</BuildingName>
                                        <CitySubdivisionName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.city||'</CitySubdivisionName>
                                        <CityName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.city||'</CityName>
                                        <Country>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.cntry||'</Name>
                                        </Country>
                                    </PostalAddress>
                                    <PartyTaxScheme>
                                        <TaxScheme>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">Alici Vergi Dairesi</Name>
                                        </TaxScheme>
                                    </PartyTaxScheme>
                                    <Contact>
                                        <Telephone xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.phone||'</Telephone>
                                        <Telefax xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.fax||'</Telefax>
                                        <ElectronicMail xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.email||'</ElectronicMail>
                                    </Contact>
                                </Party>
                            </AccountingCustomerParty>
                            <AllowanceCharge xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <ChargeIndicator xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||(case nvl(i.disc_amt,0) when  0 then 'false' else 'true' end)||'</ChargeIndicator>
                                <AllowanceChargeReason xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></AllowanceChargeReason>
                                <Amount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.DISC_amt||'</Amount>
                            </AllowanceCharge>
                            <TaxTotal xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <TaxAmount currencyID="'||i.bill_currency||'"
                                    xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">0
                                </TaxAmount>
                                <TaxSubtotal>
                                    <TaxAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.vat_amt||'</TaxAmount>
                                    <Percent xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.vat_per||'</Percent>
                                    <TaxCategory>
                                        <TaxExemptionReasonCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">301</TaxExemptionReasonCode>
                                        <TaxExemptionReason xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></TaxExemptionReason>
                                        <TaxScheme>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">KDV</Name>
                                            <TaxTypeCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">0015</TaxTypeCode>
                                        </TaxScheme>
                                    </TaxCategory>
                                </TaxSubtotal>
                            </TaxTotal>
                            <LegalMonetaryTotal xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <LineExtensionAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||(i.bill_amt+nvl(i.othr_amt,0))||'</LineExtensionAmount>
                                <TaxExclusiveAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.bill_amt||'</TaxExclusiveAmount>
                                <TaxInclusiveAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(i.bill_amt+nvl(i.vat_amt,0)+nvl(i.othr_amt,0),2)||'</TaxInclusiveAmount>
                                <AllowanceTotalAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(nvl(i.DISC_AMT,0),2)||'</AllowanceTotalAmount>
                                <ChargeTotalAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">5</ChargeTotalAmount>
                                <PayableRoundingAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">6</PayableRoundingAmount>
                                <PayableAmount currencyID="'||i.bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(i.bill_amt+nvl(i.vat_amt,0)+nvl(i.othr_amt,0)-nvl(i.disc_amt,0),2)||'</PayableAmount>
                            </LegalMonetaryTotal>
                            <<ITEM_DETAILS>>
                        </Invoice>
                        <Scenario>Automated</Scenario>
                    </InvoiceInfo>
                </invoices>
            </SendInvoice>
          </s:Body>
        </s:Envelope>';
        
        --geting brn_details ##<AccountingSupplierParty> node
        v_fragment:=null;
        
        select xmlelement("AccountingSupplierParty",
              xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2' as "xmlns"),
              xmlelement("Party",
                 xmlelement("PartyIdentification",
                    xmlelement("ID",
                        xmlattributes('VKN' as "schemeID",
                                      'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               brn_tax_code)),
                 xmlelement("PartyName",
                    xmlelement("Name",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               cmp_fname)),
                 xmlelement("PostalAddress",
                    xmlelement("Room",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               402),
                    xmlelement("StreetName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               'street name '),
                    xmlelement("BuildingNumber",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               'Bulding no'),
                    xmlelement("CitySubdivisionName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT city_e_name FROM cities WHERE city_no = s_brn.city_no)),
                    xmlelement("CityName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT city_e_name FROM cities WHERE city_no = s_brn.city_no)),
                    xmlelement("Country",
                        xmlelement("Name",
                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT cntry_e_name FROM cntry WHERE cntry_no = s_brn.cntry_no)))),
                 xmlelement("PartyTaxScheme",
                    xmlelement("TaxScheme",
                        xmlelement("Name",
                                    xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                    'Esenler')))
               )).getClobVal() into v_fragment from s_brn
        where brn_no=i.brn_no;
        
        v_envelope := replace(v_envelope,'<<BRN_DETAILS>>',v_fragment);
        
        v_fragment := null;
        
        --Getting Bill Items ##<InvoiceLine> Nodes
        select xmlagg( 
            xmlelement("InvoiceLine",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2' as "xmlns"),
                          xmlelement("ID",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      rownum),
                          xmlelement("InvoicedQuantity",
                                      xmlattributes(itm_unt as "unitCode",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      nvl(ias_bill_dtl.i_qty,0)+nvl(ias_bill_dtl.free_qty,0)),
                          xmlelement("LineExtensionAmount",
                                      xmlattributes(bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      i_qty*(i_price+nvl(ias_bill_dtl.othr_amt,0)+nvl(ias_bill_dtl.vat_amt,0)-nvl(dis_amt,0))),
                          xmlelement("AllowanceCharge",
                                xmlelement("ChargeIndicator",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            (case nvl(dis_amt,0) when 0 then 'false' else 'true' end)),
                                xmlelement("AllowanceChargeReason",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            'testing'),
                                xmlelement("MultiplierFactorNumeric",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            round((dis_amt/i_price),2)),/*
                                xmlelement("SequenceNumeric",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            1),*/
                                xmlelement("Amount",
                                            xmlattributes(bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           dis_amt),
                                xmlelement("BaseAmount",
                                            xmlattributes(bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           i_price),
                                xmlelement("PerUnitAmount",
                                            xmlattributes(bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           i_price)),
                          xmlelement("TaxTotal",
                                xmlelement("TaxAmount",
                                      xmlattributes(bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      ias_bill_dtl.vat_amt),
                                xmlelement("TaxSubtotal",
                                      xmlelement("TaxAmount",
                                      xmlattributes(bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      ias_bill_dtl.vat_amt),
                                      xmlelement("Percent",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      ias_bill_dtl.vat_per),
                                      xmlelement("TaxCategory",
                                         xmlelement("TaxExemptionReason",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            '12345 say?�l?� kanuna istinaden'),
                                         xmlelement("TaxScheme",
                                            xmlelement("Name",
                                                xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                                'KDV'),
                                            xmlelement("TaxTypeCode",
                                                xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                                '0015')) 
                                    ))),
                                   ----------
                          xmlelement("Item",
                              xmlelement("Description",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      item_desc),
                              xmlelement("Name",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      decode(p_lang_no,1,i_name,nvl(i_e_name,i_name))),
                              xmlelement("BrandName",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      mark_itm),
                              xmlelement("ModelName",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      MANF_CODE),
                                      -------------
                              xmlelement("BuyersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          c_code /*ro be replaced with customer tax code ??*/)),
                              xmlelement("SellersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          (select brn_tax_code from s_brn where s_brn.brn_no=ias_bill_mst.brn_no) /*ro be replaced with saller tax code ??*/)),
                              xmlelement("ManufacturersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          ias_bill_dtl.i_code))),
                          xmlelement("Price",
                              xmlelement("PriceAmount",
                                          xmlattributes(bill_currency as "currencyID",
                                                       'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          i_price+nvl(ias_bill_dtl.othr_amt,0)))
                        )).GetClobVal() into v_fragment    from ias_bill_mst,ias_bill_dtl,ias_itm_mst
            where ias_bill_mst.bill_ser=ias_bill_dtl.bill_ser 
            and ias_bill_dtl.i_code=ias_itm_mst.i_code
            and ias_bill_dtl.bill_ser=i.bill_ser;
            
            v_envelope := replace(v_envelope,'<<ITEM_DETAILS>>',v_fragment);
            
      end loop;

      v_xml := APEX_WEB_SERVICE.make_request(
         p_url      => p_url,
         p_action   => 'http://tempuri.org/IBasicIntegration/SendInvoice',
         p_envelope => v_envelope
      );
     
      SELECT v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/@IsSucceded','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/@Message','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/Value/@Id','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/Value/@Number','xmlns="http://tempuri.org/"').getStringVal()
      into   v_isSuccessed,
             v_error_msg,
             v_bill_ser_rt,
             v_TRA_bill_no
      FROM   dual;
      
      if upper(v_isSuccessed)='TRUE' then
        --update the ias_bill_mst with the TRA_bill_no,
        update ias_bill_mst 
        set    WEB_SRVC_TRNSFR_DATA_DSC=v_TRA_bill_no,
               WEB_SRVC_TRNSFR_DATA_FLG = 1
        where  to_char(bill_ser)=v_bill_ser_rt;
        commit;
        return 'TRUE';
      else
        --error 
        return v_error_msg;
      end if;
 elsif p_doc_type=5 then --Sales Returns
 
    v_ProfileID       := 'TICARIFATURA';
    v_CopyIndicator   := 'false';
    v_InvoiceTypeCode := 'IADE';
     
    for i in (SELECT b.rt_bill_no,
                   to_char(b.rt_bill_ser) rt_bill_ser,
                   b.rt_bill_date,
                   b.DISC_AMT,
                   (select nvl(count(*),0) from ias_rt_bill_dtl where ias_rt_bill_dtl.rt_bill_ser=b.rt_bill_ser) items_cnt,
                   a_desc,
                   b.ref_no,
                   b.vat_amt,
                   round(b.vat_amt/(b.bill_amt-nvl(b.disc_amt,0))*100,0) vat_per,
                   b.rt_bill_rate,
                   b.rt_bill_currency,
                   b.c_code,
                   to_char(b.ad_date,'yyyy-mm-dd') iss_date,
                   to_char(b.ad_date,'hh24:mi:ss') iss_time,
                   b.brn_no,
                   b.bill_amt,                   
                   b.othr_amt,
                   b.WEB_SRVC_TRNSFR_DATA_DSC,
                   b.WEB_SRVC_TRNSFR_DATA_FLG,
                   ------------------------
                   c.c_tax_code,
                   c_e_name first_name,
                   c_e_name last_name,
                   c_phone phone,
                   c_fax fax,
                   c_mobile mobile,
                   c_e_name email,
                   c_web_site web_site,
                   (SELECT r_e_name FROM regions WHERE r_code = c.r_code) area,
                   (SELECT city_e_name FROM cities WHERE city_no = c.city_no) city,
                   (SELECT cntry_e_name FROM cntry WHERE cntry_no = c.cntry_no) cntry,
                   c.field11  CitySubdivisionName, --CitySubdivisionName
                   c.field12 BuildingNumber, --BuildingNumber
                   c.field13 BuildingName, --BuildingName
                   c.field14 BlockName, --BlockName
                   c.field15 StreetName, --StreetName
                   c.field16 Room --Room
            FROM ias_rt_bill_mst b, customer c
            WHERE b.c_Code = c.c_Code AND rt_bill_ser = p_doc_ser)
      loop
        if i.WEB_SRVC_TRNSFR_DATA_FLG = 1 then
            return 'This bill has already been posted';
        end if;
        v_envelope := '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
        <s:Header>
            <ActivityId CorrelationId="c244ff4a-7d40-4550-8c27-05a882eabe55" xmlns="http://schemas.microsoft.com/2004/09/ServiceModel/Diagnostics">00000000-0000-0000-0000-000000000000</ActivityId>
        </s:Header>
        <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
            <SendInvoice xmlns="http://tempuri.org/">
                <userInfo Username="'||p_username||'" Password="'||p_password||'"/>
                <invoices>
                    <InvoiceInfo>
                        <Invoice>
                            <ProfileID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_ProfileID||'</ProfileID>
                            <CopyIndicator xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_CopyIndicator||'</CopyIndicator>
                            <UUID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.rt_bill_ser||p_tmp||'</UUID>
                            <IssueDate xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_date||'</IssueDate>
                            <IssueTime xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_time||'</IssueTime>
                            <InvoiceTypeCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_InvoiceTypeCode||'</InvoiceTypeCode>
                            <Note xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.a_desc||'</Note>
                            <DocumentCurrencyCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.rt_bill_currency||'</DocumentCurrencyCode>
                            <PricingCurrencyCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.rt_bill_currency||'</PricingCurrencyCode>
                            <LineCountNumeric xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.items_cnt||'</LineCountNumeric>
                            <!-- <OrderReference xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <ID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">zzzzxxxx</ID>
                                <IssueDate xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_date||'</IssueDate>
                            </OrderReference>-->
                            <<BRN_DETAILS>>
                            <AccountingCustomerParty xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <Party>
                                    <WebsiteURI xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.web_site||'</WebsiteURI>
                                    <PartyIdentification>
                                        <ID schemeID="VKN" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.c_tax_code||'</ID>
                                    </PartyIdentification>
                                    <PartyName>
                                        <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.first_name||'</Name>
                                    </PartyName>
                                    <PostalAddress>
                                        <Room xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.room||'</Room>
                                        <StreetName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.streetName||'</StreetName>
                                        <BlockName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.BlockName||'</BlockName>
                                        <BuildingNumber xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.buildingNumber||'</BuildingNumber>
                                        <BuildingName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.buildingName||'</BuildingName>
                                        <CitySubdivisionName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.city||'</CitySubdivisionName>
                                        <CityName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.city||'</CityName>
                                        <Country>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.cntry||'</Name>
                                        </Country>
                                    </PostalAddress>
                                    <PartyTaxScheme>
                                        <TaxScheme>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">Alici Vergi Dairesi</Name>
                                        </TaxScheme>
                                    </PartyTaxScheme>
                                    <Contact>
                                        <Telephone xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.phone||'</Telephone>
                                        <Telefax xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.fax||'</Telefax>
                                        <ElectronicMail xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.email||'</ElectronicMail>
                                    </Contact>
                                </Party>
                            </AccountingCustomerParty>
                            <AllowanceCharge xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <ChargeIndicator xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||(case nvl(i.disc_amt,0) when  0 then 'false' else 'true' end)||'</ChargeIndicator>
                                <AllowanceChargeReason xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></AllowanceChargeReason>
                                <Amount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.DISC_amt||'</Amount>
                            </AllowanceCharge>
                            <TaxTotal xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <TaxAmount currencyID="'||i.rt_bill_currency||'"
                                    xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">0
                                </TaxAmount>
                                <TaxSubtotal>
                                    <TaxAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.vat_amt||'</TaxAmount>
                                    <Percent xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.vat_per||'</Percent>
                                    <TaxCategory>
                                        <TaxExemptionReasonCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">301</TaxExemptionReasonCode>
                                        <TaxExemptionReason xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></TaxExemptionReason>
                                        <TaxScheme>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">KDV</Name>
                                            <TaxTypeCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">0015</TaxTypeCode>
                                        </TaxScheme>
                                    </TaxCategory>
                                </TaxSubtotal>
                            </TaxTotal>
                            <LegalMonetaryTotal xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <LineExtensionAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||(i.bill_amt+nvl(i.othr_amt,0))||'</LineExtensionAmount>
                                <TaxExclusiveAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.bill_amt||'</TaxExclusiveAmount>
                                <TaxInclusiveAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(i.bill_amt+nvl(i.vat_amt,0)+nvl(i.othr_amt,0),2)||'</TaxInclusiveAmount>
                                <AllowanceTotalAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(nvl(i.DISC_AMT,0),2)||'</AllowanceTotalAmount>
                                <ChargeTotalAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">5</ChargeTotalAmount>
                                <PayableRoundingAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">6</PayableRoundingAmount>
                                <PayableAmount currencyID="'||i.rt_bill_currency||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(i.bill_amt+nvl(i.vat_amt,0)+nvl(i.othr_amt,0)-nvl(i.disc_amt,0),2)||'</PayableAmount>
                            </LegalMonetaryTotal>
                            <<ITEM_DETAILS>>
                        </Invoice>
                        <Scenario>Automated</Scenario>
                    </InvoiceInfo>
                </invoices>
            </SendInvoice>
          </s:Body>
        </s:Envelope>';
        
        --geting brn_details ##<AccountingSupplierParty> node
        v_fragment:=null;
        select xmlelement("AccountingSupplierParty",
              xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2' as "xmlns"),
              xmlelement("Party",
                 xmlelement("PartyIdentification",
                    xmlelement("ID",
                        xmlattributes('VKN' as "schemeID",
                                      'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               brn_tax_code)),
                 xmlelement("PartyName",
                    xmlelement("Name",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               cmp_fname)),
                 xmlelement("PostalAddress",
                    xmlelement("Room",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               402),
                    xmlelement("StreetName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               'street name '),
                    xmlelement("BuildingNumber",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               'Bulding no'),
                    xmlelement("CitySubdivisionName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT city_e_name FROM cities WHERE city_no = s_brn.city_no)),
                    xmlelement("CityName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT city_e_name FROM cities WHERE city_no = s_brn.city_no)),
                    xmlelement("Country",
                        xmlelement("Name",
                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT cntry_e_name FROM cntry WHERE cntry_no = s_brn.cntry_no)))),
                 xmlelement("PartyTaxScheme",
                    xmlelement("TaxScheme",
                        xmlelement("Name",
                                    xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                    'Esenler')))
               )).getClobVal() into v_fragment from s_brn
        where brn_no=i.brn_no;
        
        v_envelope := replace(v_envelope,'<<BRN_DETAILS>>',v_fragment);
        
        v_fragment := null;
        
        --Getting Bill Items ##<InvoiceLine> Nodes
        select xmlagg( 
            xmlelement("InvoiceLine",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2' as "xmlns"),
                          xmlelement("ID",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      rownum),
                          xmlelement("InvoicedQuantity",
                                      xmlattributes(itm_unt as "unitCode",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      nvl(ias_rt_bill_dtl.i_qty,0)+nvl(ias_rt_bill_dtl.free_qty,0)),
                          xmlelement("LineExtensionAmount",
                                      xmlattributes(rt_bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      i_qty*(i_price+nvl(ias_rt_bill_dtl.othr_amt,0)+nvl(ias_rt_bill_dtl.vat_amt,0)-nvl(dis_amt,0))),
                          xmlelement("AllowanceCharge",
                                xmlelement("ChargeIndicator",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            (case nvl(dis_amt,0) when 0 then 'false' else 'true' end)),
                                xmlelement("AllowanceChargeReason",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            'testing'),
                                xmlelement("MultiplierFactorNumeric",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            round((dis_amt/i_price),2)),/*
                                xmlelement("SequenceNumeric",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            1),*/
                                xmlelement("Amount",
                                            xmlattributes(rt_bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           dis_amt),
                                xmlelement("BaseAmount",
                                            xmlattributes(rt_bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           i_price),
                                xmlelement("PerUnitAmount",
                                            xmlattributes(rt_bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           i_price)),
                          xmlelement("TaxTotal",
                                xmlelement("TaxAmount",
                                      xmlattributes(rt_bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      ias_rt_bill_dtl.vat_amt),
                                xmlelement("TaxSubtotal",
                                      xmlelement("TaxAmount",
                                      xmlattributes(rt_bill_currency as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      ias_rt_bill_dtl.vat_amt),
                                      xmlelement("Percent",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      ias_rt_bill_dtl.vat_per),
                                      xmlelement("TaxCategory",
                                         xmlelement("TaxExemptionReason",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            '12345 say?�l?� kanuna istinaden'),
                                         xmlelement("TaxScheme",
                                            xmlelement("Name",
                                                xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                                'KDV'),
                                            xmlelement("TaxTypeCode",
                                                xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                                '0015')) 
                                    ))),
                                   ----------
                          xmlelement("Item",
                              xmlelement("Description",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      item_desc),
                              xmlelement("Name",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      decode(p_lang_no,1,i_name,nvl(i_e_name,i_name))),
                              xmlelement("BrandName",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      mark_itm),
                              xmlelement("ModelName",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      MANF_CODE),
                                      -------------
                              xmlelement("BuyersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          c_code /*ro be replaced with customer tax code ??*/)),
                              xmlelement("SellersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          (select brn_tax_code from s_brn where s_brn.brn_no=ias_rt_bill_mst.brn_no) /*ro be replaced with saller tax code ??*/)),
                              xmlelement("ManufacturersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          ias_rt_bill_dtl.i_code))),
                          xmlelement("Price",
                              xmlelement("PriceAmount",
                                          xmlattributes(rt_bill_currency as "currencyID",
                                                       'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          i_price+nvl(ias_rt_bill_dtl.othr_amt,0)))
                        )).GetClobVal() into v_fragment    from ias_rt_bill_mst,ias_rt_bill_dtl,ias_itm_mst
            where ias_rt_bill_mst.rt_bill_ser=ias_rt_bill_dtl.rt_bill_ser 
            and ias_rt_bill_dtl.i_code=ias_itm_mst.i_code
            and ias_rt_bill_dtl.rt_bill_ser=i.rt_bill_ser;
            
            v_envelope := replace(v_envelope,'<<ITEM_DETAILS>>',v_fragment);
            
      end loop;
      v_xml := APEX_WEB_SERVICE.make_request(
         p_url      => p_url,
         p_action   => 'http://tempuri.org/IBasicIntegration/SendInvoice',
         p_envelope => v_envelope
      );

      SELECT v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/@IsSucceded','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/@Message','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/Value/@Id','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/Value/@Number','xmlns="http://tempuri.org/"').getStringVal()
      into   v_isSuccessed,
             v_error_msg,
             v_bill_ser_rt,
             v_TRA_bill_no
      FROM   dual;
      
      if upper(v_isSuccessed)='TRUE' then
        --update the ias_rt_bill_mst with the TRA_bill_no,
        update ias_rt_bill_mst 
        set    WEB_SRVC_TRNSFR_DATA_DSC=v_TRA_bill_no,
               WEB_SRVC_TRNSFR_DATA_FLG = 1
        where  to_char(rt_bill_ser)=v_bill_ser_rt;
        commit;
        return 'TRUE';
      else
        --error 
        return v_error_msg;
      end if;
 elsif p_doc_type=15 then --Sales Additional Discount
    for i in (SELECT d.doc_no,
                   to_char(d.doc_ser) doc_ser,
                   d.doc_date,
                   nvl(d.ADD_DISC_AMT_MST,0) DISC_AMT,
                   (select nvl(count(*),0) from IAS_BILL_DTL_ADD_DISC where IAS_BILL_DTL_ADD_DISC.doc_ser=d.doc_ser) items_cnt,
                   null a_desc,
                   d.ref_no,
                   B.ADD_DISC_AMT_MST*round(b.vat_amt/(b.bill_amt-nvl(b.ADD_DISC_AMT_MST,0))*100,0)/100 vat_amt,--correct this 
                   round(b.vat_amt/(b.bill_amt-nvl(b.ADD_DISC_AMT_MST,0))*100,0) vat_per,
                   --b.vat_per,
                   d.doc_rate,
                   d.a_cy,
                   d.c_code,
                   to_char(d.ad_date,'yyyy-mm-dd') iss_date,
                   to_char(d.ad_date,'hh24:mi:ss') iss_time,
                   d.brn_no,
                   b.bill_amt,
                   d.WEB_SRVC_TRNSFR_DATA_DSC,
                   d.WEB_SRVC_TRNSFR_DATA_FLG,
                   ------------------------
                   c.c_tax_code,
                   c_e_name first_name,
                   c_e_name last_name,
                   c_phone phone,
                   c_fax fax,
                   c_mobile mobile,
                   c_e_name email,
                   c_web_site web_site,
                   (SELECT r_e_name FROM regions WHERE r_code = c.r_code) area,
                   (SELECT city_e_name FROM cities WHERE city_no = c.city_no) city,
                   (SELECT cntry_e_name FROM cntry WHERE cntry_no = c.cntry_no) cntry,
                   c.field11  CitySubdivisionName, --CitySubdivisionName
                   c.field12 BuildingNumber, --BuildingNumber
                   c.field13 BuildingName, --BuildingName
                   c.field14 BlockName, --BlockName
                   c.field15 StreetName, --StreetName
                   c.field16 Room --Room
            FROM IAS_BILL_MST_ADD_DISC d,ias_bill_mst b, customer c
            where d.bill_ser=b.bill_ser
            and   d.c_Code = c.c_Code AND doc_ser = p_doc_ser)
      loop
        if i.WEB_SRVC_TRNSFR_DATA_FLG = 1 then
            return 'This bill has already been posted';
        end if;
        v_envelope := '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/">
        <s:Header>
            <ActivityId CorrelationId="c244ff4a-7d40-4550-8c27-05a882eabe55" xmlns="http://schemas.microsoft.com/2004/09/ServiceModel/Diagnostics">00000000-0000-0000-0000-000000000000</ActivityId>
        </s:Header>
        <s:Body xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
            <SendInvoice xmlns="http://tempuri.org/">
                <userInfo Username="'||p_username||'" Password="'||p_password||'"/>
                <invoices>
                    <InvoiceInfo>
                        <Invoice>
                            <ProfileID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_ProfileID||'</ProfileID>
                            <CopyIndicator xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_CopyIndicator||'</CopyIndicator>
                            <UUID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.doc_ser||p_tmp||'</UUID>
                            <IssueDate xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_date||'</IssueDate>
                            <IssueTime xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_time||'</IssueTime>
                            <InvoiceTypeCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||v_InvoiceTypeCode||'</InvoiceTypeCode>
                            <Note xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.a_desc||'</Note>
                            <DocumentCurrencyCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.a_cy||'</DocumentCurrencyCode>
                            <PricingCurrencyCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.a_cy||'</PricingCurrencyCode>
                            <LineCountNumeric xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.items_cnt||'</LineCountNumeric>
                            <!-- <OrderReference xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <ID xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">zzzzxxxx</ID>
                                <IssueDate xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.iss_date||'</IssueDate>
                            </OrderReference>-->
                            <<BRN_DETAILS>>
                            <AccountingCustomerParty xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <Party>
                                    <WebsiteURI xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.web_site||'</WebsiteURI>
                                    <PartyIdentification>
                                        <ID schemeID="VKN" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.c_tax_code||'</ID>
                                    </PartyIdentification>
                                    <PartyName>
                                        <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.first_name||'</Name>
                                    </PartyName>
                                    <PostalAddress>
                                        <Room xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.room||'</Room>
                                        <StreetName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.streetName||'</StreetName>
                                        <BlockName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.BlockName||'</BlockName>
                                        <BuildingNumber xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.buildingNumber||'</BuildingNumber>
                                        <BuildingName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.buildingName||'</BuildingName>
                                        <CitySubdivisionName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.city||'</CitySubdivisionName>
                                        <CityName xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.city||'</CityName>
                                        <Country>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.cntry||'</Name>
                                        </Country>
                                    </PostalAddress>
                                    <PartyTaxScheme>
                                        <TaxScheme>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">Alici Vergi Dairesi</Name>
                                        </TaxScheme>
                                    </PartyTaxScheme>
                                    <Contact>
                                        <Telephone xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.phone||'</Telephone>
                                        <Telefax xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.fax||'</Telefax>
                                        <ElectronicMail xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.email||'</ElectronicMail>
                                    </Contact>
                                </Party>
                            </AccountingCustomerParty>
                            <AllowanceCharge xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <ChargeIndicator xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||(case nvl(i.disc_amt,0) when  0 then 'false' else 'true' end)||'</ChargeIndicator>
                                <AllowanceChargeReason xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></AllowanceChargeReason>
                                <Amount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.DISC_amt||'</Amount>
                            </AllowanceCharge>
                            <TaxTotal xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <TaxAmount currencyID="'||i.a_cy||'"
                                    xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">0
                                </TaxAmount>
                                <TaxSubtotal>
                                    <TaxAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.vat_amt||'</TaxAmount>
                                    <Percent xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.vat_per||'</Percent>
                                    <TaxCategory>
                                        <TaxExemptionReasonCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">301</TaxExemptionReasonCode>
                                        <TaxExemptionReason xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></TaxExemptionReason>
                                        <TaxScheme>
                                            <Name xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">KDV</Name>
                                            <TaxTypeCode xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">0015</TaxTypeCode>
                                        </TaxScheme>
                                    </TaxCategory>
                                </TaxSubtotal>
                            </TaxTotal>
                            <LegalMonetaryTotal xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2">
                                <LineExtensionAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||(i.bill_amt)||'</LineExtensionAmount>
                                <TaxExclusiveAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||i.bill_amt||'</TaxExclusiveAmount>
                                <TaxInclusiveAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(i.bill_amt+nvl(i.vat_amt,0),2)||'</TaxInclusiveAmount>
                                <AllowanceTotalAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(nvl(i.DISC_AMT,0),2)||'</AllowanceTotalAmount>
                                <ChargeTotalAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">5</ChargeTotalAmount>
                                <PayableRoundingAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">6</PayableRoundingAmount>
                                <PayableAmount currencyID="'||i.a_cy||'" xmlns="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">'||round(i.bill_amt+nvl(i.vat_amt,0)-nvl(i.disc_amt,0),2)||'</PayableAmount>
                            </LegalMonetaryTotal>
                            <<ITEM_DETAILS>>
                        </Invoice>
                        <Scenario>Automated</Scenario>
                    </InvoiceInfo>
                </invoices>
            </SendInvoice>
          </s:Body>
        </s:Envelope>';
        
        --Getting Bill Items ##<InvoiceLine> Nodes
        v_fragment:=null;
        
        select xmlelement("AccountingSupplierParty",
              xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2' as "xmlns"),
              xmlelement("Party",
                 xmlelement("PartyIdentification",
                    xmlelement("ID",
                        xmlattributes('VKN' as "schemeID",
                                      'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               brn_tax_code)),
                 xmlelement("PartyName",
                    xmlelement("Name",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               cmp_fname)),
                 xmlelement("PostalAddress",
                    xmlelement("Room",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               402),
                    xmlelement("StreetName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               'street name '),
                    xmlelement("BuildingNumber",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               'Bulding no'),
                    xmlelement("CitySubdivisionName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT city_e_name FROM cities WHERE city_no = s_brn.city_no)),
                    xmlelement("CityName",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT city_e_name FROM cities WHERE city_no = s_brn.city_no)),
                    xmlelement("Country",
                        xmlelement("Name",
                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                               (SELECT cntry_e_name FROM cntry WHERE cntry_no = s_brn.cntry_no)))),
                 xmlelement("PartyTaxScheme",
                    xmlelement("TaxScheme",
                        xmlelement("Name",
                                    xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                    'Esenler')))
               )).getClobVal() into v_fragment from s_brn
        where brn_no=i.brn_no;
        
        v_envelope := replace(v_envelope,'<<BRN_DETAILS>>',v_fragment);
        
        v_fragment := null;
        
        select xmlagg( 
            xmlelement("InvoiceLine",
                        xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2' as "xmlns"),
                          xmlelement("ID",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      rownum),
                          xmlelement("InvoicedQuantity",
                                      xmlattributes(IAS_BILL_DTL_ADD_DISC.itm_unt as "unitCode",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      nvl(IAS_BILL_DTL_ADD_DISC.net_qty,0)),
                          xmlelement("LineExtensionAmount",
                                      xmlattributes(a_cy as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      IAS_BILL_DTL_ADD_DISC.net_qty*(ias_bill_dtl.i_price+nvl(IAS_BILL_DTL_ADD_DISC.add_vat_amt,0)-nvl(IAS_BILL_DTL_ADD_DISC.ADD_DIS_AMT_DTL,0))),
                          xmlelement("AllowanceCharge",
                                xmlelement("ChargeIndicator",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            (case nvl(IAS_BILL_DTL_ADD_DISC.ADD_DIS_AMT_DTL,0) when 0 then 'false' else 'true' end)),
                                xmlelement("AllowanceChargeReason",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            'testing'),
                                xmlelement("MultiplierFactorNumeric",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            round((IAS_BILL_DTL_ADD_DISC.ADD_DIS_AMT_DTL/IAS_BILL_DTL_ADD_DISC.PRICE_AFTER_DISC),2)),/*
                                xmlelement("SequenceNumeric",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            1),*/
                                xmlelement("Amount",
                                            xmlattributes(a_cy as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           IAS_BILL_DTL_ADD_DISC.ADD_DIS_AMT_DTL),
                                xmlelement("BaseAmount",
                                            xmlattributes(a_cy as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           IAS_BILL_DTL_ADD_DISC.PRICE_AFTER_DISC),
                                xmlelement("PerUnitAmount",
                                            xmlattributes(a_cy as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                           IAS_BILL_DTL_ADD_DISC.PRICE_AFTER_DISC)),
                          xmlelement("TaxTotal",
                                xmlelement("TaxAmount",
                                      xmlattributes(a_cy as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      IAS_BILL_DTL_ADD_DISC.add_vat_amt),
                                xmlelement("TaxSubtotal",
                                      xmlelement("TaxAmount",
                                      xmlattributes(a_cy as "currencyID",
                                                    'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      IAS_BILL_DTL_ADD_DISC.add_vat_amt),
                                      xmlelement("Percent",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      IAS_BILL_DTL_ADD_DISC.vat_per),
                                      xmlelement("TaxCategory",
                                         xmlelement("TaxExemptionReason",
                                            xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                            '12345 say?�l?� kanuna istinaden'),
                                         xmlelement("TaxScheme",
                                            xmlelement("Name",
                                                xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                                'KDV'),
                                            xmlelement("TaxTypeCode",
                                                xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                                '0015')) 
                                    ))),
                                   ----------
                          xmlelement("Item",
                              xmlelement("Description",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      IAS_BILL_DTL_ADD_DISC.item_desc),
                              xmlelement("Name",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      decode(p_lang_no,1,i_name,nvl(i_e_name,i_name))),
                              xmlelement("BrandName",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      mark_itm),
                              xmlelement("ModelName",
                                      xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                      MANF_CODE),
                                      -------------
                              xmlelement("BuyersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          c_code /*ro be replaced with customer tax code ??*/)),
                              xmlelement("SellersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          (select brn_tax_code from s_brn where s_brn.brn_no=IAS_BILL_MST_ADD_DISC.brn_no) /*ro be replaced with saller tax code ??*/)),
                              xmlelement("ManufacturersItemIdentification",
                                      xmlelement("ID",
                                           xmlattributes('urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          IAS_BILL_DTL_ADD_DISC.i_code))),
                          xmlelement("Price",
                              xmlelement("PriceAmount",
                                          xmlattributes(a_cy as "currencyID",
                                                       'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2' as "xmlns"),
                                          ias_bill_dtl.i_price))
                        )).GetClobVal() into v_fragment    from IAS_BILL_MST_ADD_DISC,
                                                                IAS_BILL_DTL_ADD_DISC,
                                                                ias_itm_mst,
                                                                ias_bill_dtl
            where IAS_BILL_MST_ADD_DISC.doc_ser=IAS_BILL_DTL_ADD_DISC.doc_ser 
            and IAS_BILL_DTL_ADD_DISC.i_code=ias_itm_mst.i_code
            and ias_bill_mst_add_disc.bill_ser=ias_bill_dtl.bill_ser
            and ias_bill_dtl_add_disc.i_code=ias_bill_dtl.i_code
            and ias_bill_dtl_add_disc.rcrd_no=ias_bill_dtl.rcrd_no
            and IAS_BILL_DTL_ADD_DISC.doc_ser=i.doc_ser;
            
            v_envelope := replace(v_envelope,'<<ITEM_DETAILS>>',v_fragment);
            
      end loop;


      v_xml := APEX_WEB_SERVICE.make_request(
         p_url      => p_url,
         p_action   => 'http://tempuri.org/IBasicIntegration/SendInvoice',
         p_envelope => v_envelope
      );
     

      SELECT v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/@IsSucceded','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/@Message','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/Value/@Id','xmlns="http://tempuri.org/"').getStringVal(),
             v_xml.extract('//SendInvoiceResponse/SendInvoiceResult/Value/@Number','xmlns="http://tempuri.org/"').getStringVal()
      into   v_isSuccessed,
             v_error_msg,
             v_bill_ser_rt,
             v_TRA_bill_no
      FROM   dual;
      
      if upper(v_isSuccessed)='TRUE' then
        --update the IAS_BILL_MST_ADD_DISC with the TRA_bill_no,
        update IAS_BILL_MST_ADD_DISC 
        set    WEB_SRVC_TRNSFR_DATA_DSC=v_TRA_bill_no,
               WEB_SRVC_TRNSFR_DATA_FLG=1
        where  to_char(doc_ser)=v_bill_ser_rt;
        commit;
        return 'TRUE';
      else
        --error 
        return v_error_msg;
      end if;
 else
    return 'Synchronizing doc type '||p_doc_type||' has not been implemented yet.'; 
 end if;
Exception When Others Then 
    Return Sqlerrm;
End Sync_Doc_To_TRA ;
/
CREATE Function Tafkeet ( Amount   In  Number,
                                                                                                A_curr   In  Varchar2,
                                                                                                Lang_no  In  Number )
  Return Varchar2 Is
  Amnt_num    Number         := Amount;
  Amnt_char   Varchar2 (50);
  Amnt1_char  Varchar2 (50);
  Frac_char   Varchar2 (50);
  V_Cur_Frc_No Number;
  Amnt        Varchar2 (50);
  Amnt1       Varchar2 (50);
  Sub1        Varchar2 (300) := Null;
  Sub2        Varchar2 (300) := Null;
  Sub3        Varchar2 (300) := Null;
  Sub4        Varchar2 (300) := Null;
  Sub5        Varchar2 (300) := Null;
  Plural      Varchar2 (1);
  Ln          Number;
  Ln1         Number;
  Ln2         Number;
  Fc          Number;
------------------------------------------------------------
  Frc_name    Varchar2 (50);
  Curr_name   Varchar2 (50);
  Miyat       Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2631);
  Miyatain    Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2632);
  Alf         Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2628);
  Alfain      Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2629);
  Alaf        Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2630);
  Million     Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2641);
  Millionain  Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2642);
  Malayeen    Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2643);
  Miliar      Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2644);
  Miliarain   Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2645);
  Miliarat    Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2646);
  Wa          Varchar2 (50)   := Ias_gen_pkg.Get_prompt (Lang_no, 2640);
  Lng_No      Number:=Lang_no;

------------------------------------------------------------
  Function Is_zero (Amnt Varchar2, L Number)
    Return Boolean Is
------------------------------------------------------------
    Stat  Boolean := True;
    M     Number  := 1;
  Begin
    While M <= L Loop
      If Substr (Amnt, M, 1) != 0 Then
        Stat := False;
        Exit;
      End If;

      M := M + 1;
    End Loop;

    Return (Stat);
  End;

------------------------------------------------------------
  Function Ones (Num Number)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Num = 0 Then
      Return (Null);
    Elsif Num = 1 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2601));
    Elsif Num = 2 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2602));
    Elsif Num = 3 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2603));
    Elsif Num = 4 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2604));
    Elsif Num = 5 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2605));
    Elsif Num = 6 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2606));
    Elsif Num = 7 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2607));
    Elsif Num = 8 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2608));
    Elsif Num = 9 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2609));
    End If;
  End;
------------------------------------------------------------
  Function Tens (Num Number)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Num = 0 Then
      Return (Null);
    Elsif Num = 11 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2611));
    Elsif Num = 12 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2612));
    Elsif Num = 13 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2613));
    Elsif Num = 14 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2614));
    Elsif Num = 15 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2615));
    Elsif Num = 16 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2616));
    Elsif Num = 17 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2617));
    Elsif Num = 18 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2618));
    Elsif Num = 19 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2619));
    Elsif Num = 10 Or Num = 1 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2610));
    Elsif Num = 20 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2620));
    Elsif Num = 30 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2621));
    Elsif Num = 40 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2622));
    Elsif Num = 50 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2623));
    Elsif Num = 60 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2624));
    Elsif Num = 70 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2625));
    Elsif num= 71 then 
      return ('Soixante-Onze'); 
    Elsif  num= 72 then
      return('Soixante-Douze');
    Elsif num=73 then
      return('Soixante-Treize');
    Elsif num=74 then 
      return('Soixante-Quatorze');
    Elsif num= 75 then 
      return('Soixante-Quinze');
    Elsif num=76 then 
      return('Soixante-Seize');
    Elsif num=77 then
      return('Soixante-Dix Sept');
    Elsif num=78 then
      return('Soixante-Dix huit');
    Elsif num=79 then
       return('Soixante-Dix Neuf');
    Elsif Num = 80 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2626));
    Elsif Num = 90 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2627));
    Elsif num= 91 then
       return ('Quatre-Vingt-Onze');
    Elsif  num= 92 then
       return('Quatre-Vingt-Douze');
    Elsif num=93 then
       return('Quatre-Vingt-Treize');
    Elsif num=94 then 
      return('Quatre-Vingt-Quatorze');
    Elsif num= 95 then 
      return('Quatre-Vingt-Quinze');
    Elsif num=96 then 
       return('Quatre-Vingt-Seize');
    Elsif num=97 then
       return('Quatre-Vingt-Dix Sept');
    Elsif num=98 then
       return('Quatre-Vingt-Dix Huit');
    Elsif num=99 then
      return('Quatre-Vingt-Dix Neuf');      
    End If;
  End;

------------------------------------------------------------
  Function Hundred (Num Number)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Num = 100 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2631));
    Elsif Num = 200 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2632));
    Elsif Num = 300 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2633));
    Elsif Num = 400 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2634));
    Elsif Num = 500 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2635));
    Elsif Num = 600 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2636));
    Elsif Num = 700 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2637));
    Elsif Num = 800 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2638));
    Elsif Num = 900 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2639));
    End If;
  End;

------------------------------------------------------------
  Function One_digit (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Amnt = 0 Then
      Return (Null);
    Elsif Amnt = 1 Then
      Return (Curr_name);
    Elsif Amnt = 2 Then
      Return (Ias_gen_pkg.Get_prompt (Lang_no, 2602) || ' ' || Curr_name);
    Elsif Amnt Between '3' And '10' Then
      Return (Curr_name);
    Else
      Return (Ones (To_number (Amnt)) || ' ' || Curr_name);
    End If;
  End;

  Function Two_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1          Varchar2 (30) := Null;
    Sub2          Varchar2 (30) := Null;
    First_digit   Varchar2 (1);
    Second_digit  Varchar2 (1);
  Begin
    First_digit := Substr (Amnt, 1, 1);
    Second_digit := Substr (Amnt, 2, 1);

    If First_digit = 0 Then
      Sub1 := One_digit (Second_digit);
    End If;

    If First_digit = 1 Or Second_digit = 0 Or ( First_digit = 7 And Lng_no = 3 ) Or ( First_digit = 9 And Lng_no = 3 ) Then
      Sub1 := Tens (To_number (Amnt));
    Else
      Sub1 := Ones (To_number (Second_digit));
      Sub2 := Tens (To_number (First_digit) * 10);
    End If;

    If Sub2 Is Not Null And  Lng_No = 1  Then
      Sub1 := Sub1 || ' ' || Wa;
    End If;

    If Lng_No = 1 Then
        Return (Sub1 || ' ' || Sub2);
    Else
        Return (Sub2 || ' ' || Sub1);
    End If;
  End;

  Function One_digit_h (Amnt Varchar2)
    Return Varchar2 Is
  Begin
    If Amnt = 0 Then
      Return (Null);
    Elsif Amnt = 2 Then
      Return (Frc_name);
    Elsif Amnt Between 3 And 10 Then
      Return (Frc_name);
    Else
      Return (Ones (To_number (Amnt)) || ' ' || Frc_name);
    End If;
  End;
  Function Two_digits_h (Amnt Varchar2)
    Return Varchar2 Is
    Sub1          Varchar2 (30) := Null;
    Sub2          Varchar2 (30) := Null;
    First_digit   Varchar2 (1);
    Second_digit  Varchar2 (1);
  Begin
    First_digit := Substr (Amnt, 1, 1);
    Second_digit := Substr (Amnt, 2, 1);

    If First_digit <> 1 And Second_digit <> 0 Then
      if  Lng_no = 3 And (First_digit=7 Or First_digit=9 ) then
        Sub1 := Tens( to_number(amnt));
        Sub2 := null;
        return(Wa || ' ' || sub1|| ' ' || frc_name);
      end if;

      Sub1 := Ones (To_number (Second_digit));
      Sub2 := Tens (To_number (First_digit) * 10);

      
      If Lng_No = 1 Then
          If Sub2 Is Not Null Then
            Sub1 := Sub1 || ' ' || Wa;
          End If;    
        Return (Sub1 || ' ' || Sub2 || ' ' || Frc_name);
      Else      
        Return (Sub2 || ' ' || Sub1 || ' ' || Frc_name);  
      End If;  
    End If;

    If First_digit = 0 Then
      Return (One_digit_h (Second_digit));
    End If;

    If First_digit = 1 Or Second_digit = 0 Then
      Sub1 := Tens (To_number (Amnt));
      Sub2 := Null;
      Return (Sub1 || ' ' || Frc_name);
    End If;

    If First_digit > 1 Or Second_digit = 0 Then
      Sub1 := Tens (To_number (Amnt) * 10);
      Sub2 := Null;
      Return (Sub1 || ' ' || Frc_name);
    End If;
  End;
------------------------------------------------------------
Function Three_Digits_H (Amnt Varchar2) Return Varchar2 Is
 ------------------------------------------------------------ 
      Sub1 Varchar2(500) := Null;
      Sub2 Varchar2(500) := Null;
      First_Digit Varchar2(1);
      Second_Digit Varchar2(1);
 Begin
         First_Digit := Substr(Amnt,1,1);
         If First_Digit = 0 Then
          Return(Two_Digits_H(Substr(Amnt,2,2)));
         End If;
         Sub1 := Hundred(To_Number(First_Digit)*100);
         If Is_Zero( Substr(Amnt,2,2), 2) Then
          Sub2 := ' ' || Frc_Name;
         Else
          Sub1 := Sub1 || ' ' || Wa;
          Sub2 := Two_Digits_H( Substr(Amnt,2,2));
         End If;
         Return(Sub1||' '||Sub2);
 End;

------------------------------------------------------------
  Function Three_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1          Varchar2 (500) := Null;
    Sub2          Varchar2 (500) := Null;
    First_digit   Varchar2 (1);
    Second_digit  Varchar2 (1);
  Begin
    First_digit := Substr (Amnt, 1, 1);

    If First_digit = 0 Then
      Return (Two_digits (Substr (Amnt, 2, 2)));
    End If;

    Sub1 := Hundred (To_number (First_digit) * 100);

    If Is_zero (Substr (Amnt, 2, 2), 2) Then
      Sub2 := Null;
    Else
      Sub1 := Sub1 || ' ' || Wa;
      Sub2 := Two_digits (Substr (Amnt, 2, 2));
    End If;

    Return (Sub1 || ' ' || Sub2);
  End;

  Function Four_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Three_digits (Substr (Amnt, 2, 3)));
    End If;

    If Substr (Amnt, 1, 1) = 1 Then
      Sub1 := Alf;
      Sub2 := Null;
    Elsif Substr (Amnt, 1, 1) = 2 Then
      Sub1 := Alfain;
      Sub2 := Null;
    Else
      Sub1 := Ones (To_number (Substr (Amnt, 1, 1))) || ' ' || Alaf;
      Sub2 := Null;
    End If;

    If To_number (Substr (Amnt, 2, 3)) > 0 Then
      Sub2 := Three_digits (Substr (Amnt, 2, 3));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Five_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Four_digits (Substr (Amnt, 2, 4)));
    End If;

    Sub1 := Two_digits (Substr (Amnt, 1, 2));

    If Substr (Amnt, 1, 2) = 1 Then
      Sub1 := Sub1 || ' ' || Alaf;
    Else
      Sub1 := Sub1 || ' ' || Alf;
    End If;

    If To_number (Substr (Amnt, 3, 3)) > 0 Then
      Sub2 := Three_digits (Substr (Amnt, 3, 3));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Six_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Five_digits (Substr (Amnt, 2, 5)));
    End If;

    Sub1 := Three_digits (Substr (Amnt, 1, 3)) || ' ' || Alf;

    If To_number (Substr (Amnt, 4, 3)) > 0 Then
      Sub2 := Three_digits (Substr (Amnt, 4, 3));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Seven_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Six_digits (Substr (Amnt, 2, 6)));
    End If;

    If Substr (Amnt, 1, 1) = 1 Then
      Sub1 := Million;
    Elsif Substr (Amnt, 1, 1) = 2 Then
      Sub1 := Millionain;
    Else
      Sub1 := Ones (Substr (Amnt, 1, 1)) || ' ' || Malayeen;
    End If;

    If To_number (Substr (Amnt, 2, 6)) > 0 Then
      Sub2 := Six_digits (Substr (Amnt, 2, 6));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Eight_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Seven_digits (Substr (Amnt, 2, 7)));
    End If;

    Sub1 := Two_digits (Substr (Amnt, 1, 2));

    If Substr (Amnt, 1, 2) = '10' Then
      Sub1 := Sub1 || ' ' || Malayeen;
    Else
      Sub1 := Sub1 || ' ' || Million;
    End If;

    If To_number (Substr (Amnt, 2, 7)) > 0 Then
      Sub2 := Six_digits (Substr (Amnt, 3, 6));
    End If;

    If Ltrim (Rtrim ((Sub2))) Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Nine_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Eight_digits (Substr (Amnt, 2, 8)));
    End If;

    Sub1 := Hundred (To_number (Substr (Amnt, 1, 1)) * 100);

    If Substr (Amnt, 2, 1) = 0 Then
      If Substr (Amnt, 3, 1) = 1 Then
        Sub1 := Sub1 || ' ' || Wa || ' ' || Ones (1) || ' ' || Million;
      Elsif Substr (Amnt, 3, 1) = 2 Then
        Sub1 := Sub1 || ' ' || Wa || ' ' || Millionain;
      Elsif Substr (Amnt, 2, 2) = '00' Then
        Sub1 := Sub1 || ' ' || Million;
      Else
        Sub1 :=
             Sub1
          || ' '
          || Wa
          || ' '
          || Ones (To_number (Substr (Amnt, 3, 1)))
          || ' '
          || Malayeen;
      End If;
    Elsif Substr (Amnt, 2, 2) = '10' Then
      Sub1 :=
           Sub1
        || ' '
        || Wa
        || ' '
        || Tens (To_number (Substr (Amnt, 2, 2)))
        || ' '
        || Malayeen;
    Else
      Sub1 :=
           Sub1
        || ' '
        || Wa
        || ' '
        || Two_digits (Substr (Amnt, 2, 2))
        || ' '
        || Million;
    End If;

    If To_number (Substr (Amnt, 4, 6)) > 0 Then
      Sub2 := Six_digits (Substr (Amnt, 4, 6));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Ten_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------    ! l   ------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Nine_digits (Substr (Amnt, 2, 9)));
    End If;

    If Substr (Amnt, 1, 1) = 1 Then
      Sub1 := Miliar;
    Elsif Substr (Amnt, 1, 1) = 2 Then
      Sub1 := Miliarain;
    Else
      Sub1 := Ones (Substr (Amnt, 1, 1)) || ' ' || Miliarat;
    End If;

    If To_number (Substr (Amnt, 2, 9)) > 0 Then
      Sub2 := Nine_digits (Substr (Amnt, 2, 9));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Eleven_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Ten_digits (Substr (Amnt, 2, 10)));
    End If;

    Sub1 := Two_digits (Substr (Amnt, 1, 2));

    If Substr (Amnt, 1, 2) = '10' Then
      Sub1 := Sub1 || ' ' || Miliarat;
    Else
      Sub1 := Sub1 || ' ' || Miliar;
    End If;

    If Substr (Amnt, 3, 9) > 0 Then
      Sub2 := Nine_digits (Substr (Amnt, 3, 9));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Twelve_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Eleven_digits (Substr (Amnt, 2, 11)));
    End If;

    Sub1 := Hundred (To_number (Substr (Amnt, 1, 1)) * 100);

    If Substr (Amnt, 2, 1) = 0 Then
      If Substr (Amnt, 3, 1) = 1 Then
        Sub1 := Sub1 || ' ' || Wa || ' ' || Ones (1) || ' ' || Miliar;
      Elsif Substr (Amnt, 3, 1) = 2 Then
        Sub1 := Sub1 || ' ' || Wa || ' ' || Miliarain;
      Elsif Substr (Amnt, 2, 2) = '00' Then
        Sub1 := Sub1 || ' ' || Miliar;
      Else
        Sub1 :=
             Sub1
          || ' '
          || Wa
          || ' '
          || Ones (To_number (Substr (Amnt, 3, 1)))
          || ' '
          || Miliarat;
      End If;
    Elsif Substr (Amnt, 2, 2) = '10' Then
      Sub1 :=
           Sub1
        || ' '
        || Wa
        || ' '
        || Tens (To_number (Substr (Amnt, 2, 2)))
        || ' '
        || Miliarat;
    Else
      Sub1 :=
           Sub1
        || ' '
        || Wa
        || ' '
        || Two_digits (Substr (Amnt, 2, 2))
        || ' '
        || Miliar;
    End If;

    If To_number (Substr (Amnt, 4, 9)) > 0 Then
      Sub2 := Nine_digits (Substr (Amnt, 4, 9));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Procedure Check_riyals (Amnt Varchar2) Is
------------------------------------------------------------
  Begin
    If Amnt = '10' Then
      Sub1 := Sub1 || ' ' || Curr_name;
    Elsif Amnt Between '01' And '09' Then
      Sub1 := Sub1 || ' ' || Curr_name;
    -- null;
    Elsif Ln = 1 Then
      Null;
    Else
      Sub1 := Sub1 || ' ' || Curr_name;
    End If;

    If Ln1 > 0 Then
      Sub1 := Sub1 || ' ' || Wa || ' ' || Sub5;
    End If;
  End;
Begin                               
                -- main function starts --
--================================================
    IF Lang_no = 3 THEN -- France 
       RETURN(Tafkeet_F (Amount => Amount, A_curr => A_curr, Lang_no => Lang_no ));
    END IF;
--================================================
    Begin                               
        Select    Decode(Lang_No,1,Nvl(CUR_FRACTION,Cur_E_FRACTION),Nvl(Cur_E_FRACTION,Cur_FRACTION)), 
                 Decode(Lang_No,1,Nvl(Cur_name,Cur_E_Name),Nvl(Cur_E_name,Cur_Name)),
                 Nvl(Cur_Frc_No,2)
            Into     Frc_name    , 
              Curr_name   ,
            V_Cur_Frc_No
            From     Ex_rate
            Where Cur_code = A_curr;
    Exception When Others Then
        Null;
    End;
--================================================
  Amnt_char := To_char (Amnt_num);
  Ln1 := Instr (Amnt_char, '.');

  If Ln1 > 0 Then
    Frac_char := Substr (Amnt_char, Ln1 + 1, 3);
    Amnt_char := Substr (Amnt_char, 1, Ln1 - 1);
  End If;

  Ln := Nvl (Nvl (Length (Amnt_char), 0), 0);
  Ln2 := Nvl (Nvl (Length (Frac_char), 0), 0);

  If Ln1 > 0 Then
    If V_Cur_Frc_No=3  Then
     Sub5 := Three_Digits_H(Rpad(Frac_Char,3,0));
    Else
     Sub5 := Two_Digits_H(Rpad(Frac_Char,2,0));
    End If;
  End If;

  If Ln = 1 Then
    Sub1 := One_digit (Amnt_char);
    Check_riyals (Amnt_char);
  Elsif Ln = 2 Then
    Sub1 := Two_digits (Amnt_char);
    Check_riyals (Amnt_char);
  Elsif Ln = 3 Then
    Sub1 := Three_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 2, 2));
  Elsif Ln = 4 Then
    Sub1 := Four_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 3, 2));
  Elsif Ln = 5 Then
    Sub1 := Five_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 4, 2));
  Elsif Ln = 6 Then
    Sub1 := Six_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 5, 2));
  Elsif Ln = 7 Then
    Sub1 := Seven_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 6, 2));
  Elsif Ln = 8 Then
    Sub1 := Eight_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 7, 2));
  Elsif Ln = 9 Then
    Sub1 := Nine_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 8, 2));
  Elsif Ln = 10 Then
    Sub1 := Ten_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 9, 2));
  Elsif Ln = 11 Then
    Sub1 := Eleven_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 10, 2));
  Elsif Ln = 12 Then
    Sub1 := Twelve_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 11, 2));
  Elsif Ln = 0 And Ln2 > 0 Then
    If V_Cur_Frc_No=3  Then
     Sub1 := Three_Digits_H(Rpad(Frac_Char,3,0));
    Else
     Sub1 := Two_Digits_H(Rpad(Frac_Char,2,0));
    End If;
  Else
    Return (Ias_gen_pkg.Get_prompt (Lang_no, 2600));
  End If;

  Return (Sub1);
End Tafkeet;
/
CREATE FUNCTION Tafkeet_a (amount number, a_curr VARCHAR2) RETURN VARCHAR2 IS

 amnt_num number := amount;

 amnt_char  varchar2(50);
 amnt1_char varchar2(50);

 frac_char varchar2(50);
 amnt      varchar2(50);
 amnt1     varchar2(50);

 sub1 varchar2(300) := null;
 sub2 varchar2(300) := null;
 sub3 varchar2(300) := null;
 sub4 varchar2(300) := null;
 sub5 varchar2(300) := null;

 plural VARCHAR2(1);

 ln  number;
 ln1 number;
 ln2 number;

 fc number;
 ------------------------------------------------------------ 

  frc_name varchar2(50);
  V_Cur_Frc_No Number;
  curr_name varchar2(50);


 miyat VARCHAR2(3) := '���';
 miyatain VARCHAR2(5) := '�����';

 alf VARCHAR2(3):= '���';
 alfain VARCHAR2(5) := '�����';
 alaf VARCHAR2(4) := '����';

 million VARCHAR2(5) := '�����';
 millionain VARCHAR2(11):= '����� �����';
 malayeen VARCHAR2(6) := '������';

 miliar VARCHAR2(5) := '�����';
 miliarain VARCHAR2(7) := '�������';
 miliarat VARCHAR2(7) := '�������';

 wa VARCHAR2(3) := '�';
 ------------------------------------------------------------ 

 function is_zero(amnt VARCHAR2, l number) return boolean is
 ------------------------------------------------------------ 
  stat boolean := true;
  m number := 1;
 begin
  while m <= l loop
    if substr(amnt,m,1) != 0 then
      stat := false;
      exit;
    end if;
    m := m + 1;
  end loop;
 return(stat);
 end;
 ------------------------------------------------------------ 

 function ONES(num number) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin
  if num = 0 then
   return(null);
  elsif num = 1 then
    return('����');
  elsif num = 2 then
    return('�����');
  elsif num = 3 then
    return('�����');
  elsif num = 4 then
    return('�����');
  elsif num = 5 then
    return('����');
  elsif num = 6 then
    return('���');
  elsif num = 7 then
    return('����');
  elsif num = 8 then
    return('������');
  elsif num = 9 then
    return('����');
  end if;
 end;
 ------------------------------------------------------------

 function TENS(num number) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin
  if num = 0 then
   return(null);
  elsif num = 11 then
   return('���� ���');
  elsif num = 12 then
   return('���� ���');
  elsif num = 13 then
   return('����� ���');
  elsif num = 14 then
   return('����� ���');
  elsif num = 15 then
   return('���� ���');
  elsif num = 16 then
   return('��� ���');
  elsif num = 17 then
   return('���� ���');
  elsif num = 18 then
   return('������ ���');
  elsif num = 19 then
   return('���� ���');
  elsif num = 10 or num = 1 then
   return('����');
  elsif num = 20 then
   return('�����');
  elsif num = 30 then
   return('������');
  elsif num = 40 then
   return('������');
  elsif num = 50 then
   return('�����');
  elsif num = 60 then
   return('����');
  elsif num = 70 then
   return('�����');
  elsif num = 80 then
   return('������');
  elsif num = 90 then
   return('�����');
  end if;
 end ;
 ------------------------------------------------------------ 

 function HUNDRED(num number) return VARCHAR2 is
 ------------------------------------------------------------ 

 begin
 if num = 100 then
  return('���');
 elsif num = 200 then
  return('�����');
 elsif num = 300 then
  return('��������');
 elsif num = 400 then
  return('��������');
 elsif num = 500 then
  return('�������');
 elsif num = 600 then
  return('������');
 elsif num = 700 then
  return('�������');
 elsif num = 800 then
  return('��������');
 elsif num = 900 then
  return('�������');
 end if;
 end;
 ------------------------------------------------------------

 function one_digit(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin
 if amnt = 0 then return(null);
 elsif amnt = 1 then return(curr_name);
 elsif amnt = 2 then return(' ����� ' ||curr_name);
 elsif amnt between '3' and '10' then return(curr_name);
 else return(ONES( to_number(amnt))||' '||curr_name);
 end if;
 end;

 function two_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(30) := null;
  sub2 varchar2(30) := null;
  first_digit VARCHAR2(1);
  second_digit VARCHAR2(1);
 begin
 first_digit := substr(amnt,1,1);
 second_digit := substr(amnt,2,1);

 if first_digit = 0 then
--    return(one_digit(second_digit));
--    sub1  := null;
       sub1 := one_digit(second_digit);
 end if;
if first_digit = 1 or second_digit = 0 then
-- if first_digit not null and second_digit = 0 then

   sub1 := TENS( to_number(amnt));
 else
  sub1 := ONES( to_number(second_digit));
  sub2 := TENS( to_number(first_digit) * 10);
 end if;
 if sub2 Is Not Null then
  sub1 := sub1 || ' ' || wa;
 end if;
 return(sub1 || ' ' || sub2);
 end ;
 ------------------------------------------------------------ 

function one_digit_h(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
begin
 if amnt = 0 then return(null);
 elsif amnt = 2 then return(frc_name);
 elsif amnt between 3 and 10 then return(frc_name);
 else return(ONES(to_number(amnt))||' '||frc_name);
 end if;

 end;
 ------------------------------------------------------------ 

function two_digits_h(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(30)  := null;
  sub2 varchar2(30) := null;
  first_digit VARCHAR2(1);
  second_digit VARCHAR2(1);
 begin
 first_digit := substr(amnt,1,1);
 second_digit := substr(amnt,2,1);

 if first_digit <> 1  and second_digit <> 0 then
   sub1 := ONES( to_number(second_digit));
   sub2 := TENS( to_number(first_digit) * 10);
 if sub2 Is Not Null  then
     sub1 := sub1 || ' ' || wa;
 end if;
 return(sub1||' '|| sub2 || ' ' || frc_name);
 end if;

 if first_digit = 0 then
--    sub2 := one_digit_h(second_digit);
    return(one_digit_h(second_digit));
 end if;

if first_digit = 1  or second_digit = 0 then
   sub1 := TENS( to_number(amnt));
   sub2 := null;
   return(sub1|| ' ' || frc_name);

 end if;
 if  first_digit > 1  or  second_digit = 0 then
    sub1 := TENS( to_number(amnt)*10);
    sub2 := null;
    return(sub1|| ' ' || frc_name);

 end if;
 end ;
 ------------------------------------------------------------
 Function Three_Digits_h (Amnt Varchar2) Return Varchar2 Is
	  Sub1 Varchar2(500) := Null;
	  Sub2 Varchar2(500) := Null;
	  First_Digit Varchar2(1);
	  Second_Digit Varchar2(1);
 Begin
		 First_Digit := Substr(Amnt,1,1);
		 If First_Digit = 0 Then
		  Return(Two_Digits_H(Substr(Amnt,2,2)));
		 End If;
		 Sub1 := Hundred(To_Number(First_Digit)*100);
		 If Is_Zero( Substr(Amnt,2,2), 2) Then
		  Sub2 := ' ' || Frc_Name;
		 Else
		  Sub1 := Sub1 || ' ' || Wa;
		  Sub2 := Two_Digits_H( Substr(Amnt,2,2));
		 End If;
		 Return(Sub1||' '||Sub2);
 End;


 ------------------------------------------------------------  

 function three_digits (amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(500) := null;
  sub2 varchar2(500) := null;
  first_digit VARCHAR2(1);
  second_digit VARCHAR2(1);
 begin

 first_digit := substr(amnt,1,1);
 if first_digit = 0 then
  return(two_digits(substr(amnt,2,2)));
 end if;
 sub1 := HUNDRED(to_number(first_digit)*100);
 if is_zero( substr(amnt,2,2), 2) then
  sub2 := null;
 else
  sub1 := sub1 || ' ' || wa;
  sub2 := two_digits( substr(amnt,2,2));
 end if;
 return(sub1||' '||sub2);
 end;
 ------------------------------------------------------------ 

 function four_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(three_digits(substr(amnt,2,3)));
 end if;
 if substr(amnt,1,1) = 1 then
    sub1 := alf;
    sub2 := null;
 elsif substr(amnt,1,1) = 2 then
    sub1 := alfain;
    sub2 := null;
 else
    sub1 := ONES(to_number(substr(amnt,1,1))) || ' ' || alaf;
    sub2 := null;
 end if;
if  to_number(substr(amnt,2,3)) > 0 then
  sub2 := three_digits(substr(amnt,2,3));
end if;
 if sub2 Is Not Null then
  sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function five_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;

 begin
 if substr(amnt,1,1) = 0 then
  return(four_digits(substr(amnt,2,4)));
 end if;
 sub1 := two_digits( substr(amnt,1,2));
 if substr(amnt,1,2) = 1
 	then     sub1 := sub1 ||' '||alaf;
 else
    sub1 := sub1 ||' '||alf;
 end if;
--if  to_number(substr(amnt,2,4)) > 0 then
-- sub2 := three_digits(substr(amnt,3,3));
--end if;
if  to_number(substr(amnt,3,3)) > 0 then
 sub2 := three_digits(substr(amnt,3,3));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa|| ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function six_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(five_digits(substr(amnt,2,5)));
 end if;
  sub1 := three_digits(substr(amnt,1,3))||' '||alf;
  if  to_number(substr(amnt,4,3)) > 0 then
     sub2 := three_digits(substr(amnt,4,3));
  end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function seven_digits(amnt VARCHAR2) return VARCHAR2 is
------------------------------------------------------------
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(six_digits(substr(amnt,2,6)));
 end if;
 if substr(amnt,1,1) = 1 then
    sub1 := million;
 elsif substr(amnt,1,1) = 2 then
   sub1 := millionain;
 else
   sub1 := ONES(substr(amnt,1,1))||' '||malayeen;
 end if;
if  to_number(substr(amnt,2,6)) > 0 then
 sub2 := six_digits( substr(amnt,2,6));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 Function eight_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(seven_digits(substr(amnt,2,7)));
 end if;
 sub1 := two_digits(substr(amnt,1,2));
 if substr(amnt,1,2) = '10' then sub1 := sub1 ||' '||malayeen;
 else
  sub1 := sub1 ||' '||million;
 end if;
if  to_number(substr(amnt,2,7)) > 0 then
 sub2 := six_digits( substr(amnt,3,6));
end if;

 if Ltrim(Rtrim((sub2))) Is Not Null Then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function nine_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(eight_digits(substr(amnt,2,8)));
 end if;
 sub1 := HUNDRED(to_number(substr(amnt,1,1))*100);
 if substr(amnt,2,1) = 0 then
  if substr(amnt,3,1) = 1 then
   sub1 := sub1|| ' ' || wa|| ' ' || ONES(1)||' '||million;
  elsif substr(amnt,3,1) = 2 then
   sub1 := sub1|| ' ' || wa||' '||millionain;
  elsif substr(amnt,2,2) = '00' then
   sub1 := sub1 ||' '||million;
  else
   sub1 := sub1|| ' ' || wa||' '||ONES( to_number(substr(amnt,3,1)))||' '||malayeen;
  end if;
 elsif substr(amnt,2,2) = '10' then
  sub1 := sub1 || ' ' || wa||' '||TENS(to_number(substr(amnt,2,2)))|| ' '||malayeen;
 else
  sub1 := sub1|| ' ' || wa ||' '||two_digits(substr(amnt,2,2))|| ' '||million;
 end if;

if  to_number(substr(amnt,4,6)) > 0 then
 sub2 := six_digits( substr(amnt,4,6));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function ten_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------    ! l   ------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(nine_digits(substr(amnt,2,9)));
 end if;
 if substr(amnt,1,1) = 1 then
    sub1 := miliar;
 elsif substr(amnt,1,1) = 2 then
   sub1 := miliarain;
 else
   sub1 := ONES(substr(amnt,1,1))||' '||miliarat;
 end if;
if  to_number(substr(amnt,2,9)) > 0 then
 sub2 := nine_digits( substr(amnt,2,9));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa||  ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function eleven_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(ten_digits(substr(amnt,2,10)));
 end if;
 sub1 := two_digits(substr(amnt,1,2));
 if substr(amnt,1,2) = '10' then
   sub1 := sub1 ||' '||miliarat;
 else
   sub1 := sub1||' '||miliar;
 end if;
if  substr(amnt,3,9) > 0 then
 sub2 := nine_digits( substr(amnt,3,9));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa ||  ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function twelve_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(eleven_digits(substr(amnt,2,11)));
 end if;
 sub1 := HUNDRED(to_number(substr(amnt,1,1))*100);
 if substr(amnt,2,1) = 0 then
  if substr(amnt,3,1) = 1 then
   sub1 := sub1|| ' ' || wa ||  ' ' || ONES(1)||' '||miliar;
  elsif substr(amnt,3,1) = 2 then
   sub1 := sub1|| ' ' || wa ||' '||miliarain;
  elsif substr(amnt,2,2) = '00' then
   sub1 := sub1 ||' '||miliar;
  else
   sub1 := sub1|| ' ' || wa||' '||ONES( to_number(substr(amnt,3,1)))||' '||miliarat;
  end if;
 elsif substr(amnt,2,2) = '10' then
  sub1 := sub1 || ' ' ||  wa||' '||TENS(to_number(substr(amnt,2,2)))|| ' '||miliarat;
 else
  sub1 := sub1|| ' ' || wa ||' '||two_digits(substr(amnt,2,2))|| ' '||miliar;
 end if;
 if  to_number(substr(amnt,4,9)) > 0 then
     sub2 := nine_digits( substr(amnt,4,9));
  end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa ||  ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 PROCEDURE check_riyals(amnt VARCHAR2) is
 ------------------------------------------------------------ 
 begin
 if amnt = '10'  then
    sub1 := sub1 ||' '||curr_name;

 elsif amnt between '01' and '09' then
 	 sub1 := sub1 ||' '||curr_name;
   -- null;
 elsif ln = 1 then
    null;
 else
    sub1 := sub1 ||' '||curr_name;
 end if;
 if ln1 > 0  then
     sub1 := sub1  ||  ' ' || wa ||  ' ' || sub5 ;
     end if;
 end;

Begin   -- main function starts --
--================================================
Select Cur_Fraction,Cur_Name,Nvl(Cur_Frc_No,2)
       Into
       Frc_Name,Curr_Name,V_Cur_Frc_No
From Ex_Rate
Where Cur_Code = A_Curr;

--================================================
 amnt_char := to_char(amnt_num);
 ln1 := instr(amnt_char,'.');
 if ln1 > 0  then
    frac_char := substr(amnt_char,ln1+1,3);
    amnt_char := substr(amnt_char,1,ln1-1);
 end if;

 ln := NVL(NVL(length(amnt_char), 0), 0);
 ln2 := NVL(NVL(length(frac_char ), 0), 0);
 if ln1 > 0 then
    If V_Cur_Frc_No=3  Then
     Sub5 := Three_Digits_h(Rpad(Frac_Char,3,0));
    Else
     Sub5 := Two_Digits_h(Rpad(Frac_Char,2,0));
    End If;
 end if;
 if ln = 1 then
    sub1 :=  one_digit(amnt_char);
    check_riyals(amnt_char);
 elsif ln= 2 then
    sub1 := two_digits(amnt_char);
    check_riyals(amnt_char);
 elsif ln = 3 then
    sub1 := three_digits(amnt_char);
    check_riyals(substr(amnt_char,2,2));
 elsif ln = 4 then
    sub1 := four_digits(amnt_char);
    check_riyals(substr(amnt_char,3,2));
 elsif ln = 5 then
     sub1 := five_digits(amnt_char);
     check_riyals(substr(amnt_char,4,2));
 elsif ln = 6 then
     sub1 := six_digits(amnt_char);
     check_riyals(substr(amnt_char,5,2));
 elsif ln = 7 then
     sub1 := seven_digits(amnt_char);
     check_riyals(substr(amnt_char,6,2));
 elsif ln = 8 then
     sub1 := eight_digits(amnt_char);
     check_riyals(substr(amnt_char,7,2));
 elsif ln = 9 then
     sub1 := nine_digits(amnt_char);
     check_riyals(substr(amnt_char,8,2));
 elsif ln = 10 then
         sub1 := ten_digits(amnt_char);
     check_riyals(substr(amnt_char,9,2));
 elsif ln = 11 then
     sub1 := eleven_digits(amnt_char);
     check_riyals(substr(amnt_char,10,2));
 elsif ln = 12 then
     sub1 := twelve_digits(amnt_char);
     check_riyals(substr(amnt_char,11,2));
 elsif ln = 0 and ln2 > 0  then
    If V_Cur_Frc_No=3  Then
      Sub1 := Three_Digits_h(Rpad(Frac_Char,3,0));
    Else
      Sub1 := Two_Digits_h(Rpad(Frac_Char,2,0));
    End If;
 else
    return('  �� ���� ������� ���� �� 12 ��� ... �����  '  );
 end if;

 return( sub1);

END Tafkeet_A;
/
CREATE FUNCTION Tafkeet_E (amount number, a_curr varchar) RETURN VARCHAR2 IS
 amnt_num number := amount;

 amnt_char varchar2(250);
 amnt1_char varchar2(250);
 V_Cur_Frc_No Number;
 frac_char varchar2(250);
 amnt varchar2(250);
 amnt1 varchar2(250);

 sub1 varchar2(300) := null;
 sub2 varchar2(300) := null;
 sub3 varchar2(300) := null;
 sub4 varchar2(300) := null;
 sub5 varchar2(300) := null;

 plural VARCHAR2(10);

 ln number;
 ln1 number;
 ln2 number;

 fc number;
 ------------------------------------------------------------ 


 curr_name varchar2(50);

 Frc_name      varchar2(50);
 v_curr_desc_2 varchar2(250);
 v_curr_desc_3 varchar2(250);



 miyat VARCHAR2(50) := 'one hundred';
 miyatain VARCHAR2(50) := 'Two hundred';

 alf VARCHAR2(50):= 'Thousand';
 alfain VARCHAR2(50) := 'Two thousand';
 alaf VARCHAR2(50) := 'Thousands';

 million VARCHAR2(50) := 'Million';
 millionain VARCHAR2(50):= 'Two Million';
 malayeen VARCHAR2(50) := 'Millions';

 miliar VARCHAR2(50) := 'Milliard';
 miliarain VARCHAR2(50) := 'Two Milliard';
 miliarat VARCHAR2(50) := 'Billions';

 wa VARCHAR2(3) := '';
 wafr VARCHAR2(3) := 'And';
 ------------------------------------------------------------ 

 function is_zero(amnt VARCHAR2, l number) return boolean is
 ------------------------------------------------------------ 
  stat boolean := true;
  m number := 1;
 begin
  while m <= l loop
    if substr(amnt,m,1) != 0 then
      stat := false;
      exit;
    end if;
    m := m + 1;
  end loop;
 return(stat);
 end;
 ------------------------------------------------------------ 

 function ONES(num number) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin
  if num = 0 then
   return(null);
  elsif num = 1 then
    return('One');
  elsif num = 2 then
    return('Two');
  elsif num = 3 then
    return('Three');
  elsif num = 4 then
    return('Four');
  elsif num = 5 then
    return('Five');
  elsif num = 6 then
    return('Six');
  elsif num = 7 then
    return('Seven');
  elsif num = 8 then
    return('Eight');
  elsif num = 9 then
    return('Nine');
  end if;
 end;
 ------------------------------------------------------------ 

 function TENS(num number) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin
  if num = 0 then
   return(null);
  elsif num = 11 then
   return('Eleven');
  elsif num = 12 then
   return('Twelve');
  elsif num = 13 then
   return('Thirteen');
  elsif num = 14 then
   return('Fourteen');
  elsif num = 15 then
   return('Fifteen');
  elsif num = 16 then
   return('Sixteen');
  elsif num = 17 then
   return('Seventeen');
  elsif num = 18 then
   return('Eighteen');
  elsif num = 19 then
   return('Nineteen');
  elsif num = 10 or num = 1 then
   return('Ten');
  elsif num = 20 then
   return('Twenty');
  elsif num = 30 then
   return('Thirty');
  elsif num = 40 then
   return('Forty');
  elsif num = 50 then
   return('Fifty');
  elsif num = 60 then
   return('Sixty');
  elsif num = 70 then
   return('Seventy');
  elsif num = 80 then
   return('Eighty');
  elsif num = 90 then
   return('Ninety');
  end if;
 end ;
 ------------------------------------------------------------ 

 function HUNDRED(num number) return VARCHAR2 is
 ------------------------------------------------------------ 
---
 begin
 if num = 100 then
  return('One Hundred');
 elsif num = 200 then
  return('Two Hundred');
 elsif num = 300 then
  return('Three Hundred');
 elsif num = 400 then
  return('Four Hundred');
 elsif num = 500 then
  return('Five Hundred');
 elsif num = 600 then
  return('Six Hundred');
 elsif num = 700 then
  return('Seven Hundred');
 elsif num = 800 then
  return('Eight Hundred');
 elsif num = 900 then
  return('Nine Hundred');
 end if;
 end;
 ------------------------------------------------------------

 function one_digit(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin

 if amnt = 0 then return(null);
 elsif amnt = 1 then return(curr_name);
 elsif amnt = 2 then return('two'||curr_name);
 elsif amnt = 1 or amnt between '3' and '10' then return(curr_name);
 else return(ONES( to_number(amnt))||' '||curr_name);
 end if;
 end;
 ----------  @  l   -------------------------------------------------- 

 function two_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(30) := null;
  sub2 varchar2(30) := null;
  first_digit VARCHAR2(1);
  second_digit VARCHAR2(1);
 begin
 first_digit := substr(amnt,1,1);
 second_digit := substr(amnt,2,1);

 if first_digit = 0 then
--    return(one_digit(second_digit));
--    sub1  := null;
       sub1 := one_digit(second_digit);
 end if;
if first_digit = 1 or second_digit = 0 then
-- if first_digit not null and second_digit = 0 then

   sub1 := TENS( to_number(amnt));
 else
  sub1 := ONES( to_number(second_digit));
  sub2 := TENS( to_number(first_digit) * 10);
 end if;
 if sub2 Is Not Null then
  sub1 := sub1 ;
  --sub1 := sub1 || ' ' || wa;
 end if;
 --return(sub1 || ' ' || sub2);
  return(sub2 || ' ' || sub1);
 end ;
 
 ------------------------------------------------------------ 

function one_digit_h(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
 begin
 if amnt = 0 then return(null);
 elsif amnt = 1 then return(Frc_name);
 elsif amnt = 2 then return(v_curr_desc_2);
 elsif amnt between '3' and '10' then return(v_curr_desc_3);
 else return(ONES( to_number(amnt))||' '||Frc_name);
 end if;
 end;
 ------------------------------------------------------------ 

function two_digits_h(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(30)  := null;
  sub2 varchar2(30) := null;

  first_digit VARCHAR2(1);
  second_digit VARCHAR2(1);
 begin
 first_digit := substr(amnt,1,1);
 second_digit := substr(amnt,2,1);

 if first_digit <> 1  and second_digit <> 0 then
   sub1 := ONES( to_number(second_digit));
   sub2 := TENS( to_number(first_digit) * 10);

if sub2 Is Not Null  then
     sub1 := sub1 || ' ' || wa;
 end if;

 return(sub1||' '|| sub2 || ' ' || Frc_name);

 end if;

 if first_digit = 0 then
--    sub2 := one_digit_h(second_digit);
    return(one_digit_h(second_digit));
 end if;

if first_digit = 1  or second_digit = 0 then
   sub1 := TENS(to_number(amnt));
   sub2 := null;
   return(sub1|| ' ' || Frc_name);
 end if;

 if  first_digit > 1  or  second_digit = 0 then
   sub1 := TENS( to_number(amnt)*10);
   sub2 := null;
   return(sub1|| ' ' || Frc_name);
 end if;

 end ;
 
 ------------------------------------------------------------
 Function Three_Digits_h (Amnt Varchar2) Return Varchar2 Is
	  Sub1 Varchar2(500) := Null;
	  Sub2 Varchar2(500) := Null;
	  First_Digit Varchar2(1);
	  Second_Digit Varchar2(1);
 Begin
		 First_Digit := Substr(Amnt,1,1);
		 If First_Digit = 0 Then
		  Return(Two_Digits_H(Substr(Amnt,2,2)));
		 End If;
		 Sub1 := Hundred(To_Number(First_Digit)*100);
		 If Is_Zero( Substr(Amnt,2,2), 2) Then
		  Sub2 := ' ' || Frc_Name;
		 Else
		  Sub1 := Sub1 || ' ' || Wa;
		  Sub2 := Two_Digits_H( Substr(Amnt,2,2));
		 End If;
		 Return(Sub1||' '||Sub2);
 End;
 ------------------------------------------------------------ 
 

 function three_digits (amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(500) := null;
  sub2 varchar2(500) := null;
  first_digit VARCHAR2(1);
  second_digit VARCHAR2(1);
 begin
 first_digit := substr(amnt,1,1);
 if first_digit = 0 then
  return(two_digits( substr(amnt,2,2)));
 end if;
 sub1 := HUNDRED( to_number(first_digit)*100);
 if is_zero( substr(amnt,2,2), 2) then
  sub2 := null;
 else
  sub1 := sub1 || ' ' || wa;
  sub2 := two_digits( substr(amnt,2,2));
 end if;
 return(sub1||' '||sub2);
 end;
 ------------------------------------------------------------ 

 function four_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(three_digits(substr(amnt,2,3)));
 end if;
 if substr(amnt,1,1) = 1 then
    sub1 := ONES(substr(amnt,1,1))||' '||alf;
    sub2 := null;
 elsif substr(amnt,1,1) = 2 then
    sub1 := alfain;
    sub2 := null;
 else
   sub1 := ONES( to_number(substr(amnt,1,1))) || ' ' || alaf;
    sub2 := null;
 end if;
if  to_number(substr(amnt,2,3)) > 0 then
  sub2 := three_digits(substr(amnt,2,3));
end if;
 if sub2 Is Not Null then
  sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function five_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;

 begin
 if substr(amnt,1,1) = 0 then
   return(four_digits(substr(amnt,2,4)));
 end if;
 sub1 := two_digits( substr(amnt,1,2));
 if substr(amnt,1,2) = 1
 	then     sub1 := sub1 ||' '||alaf;
 else
    sub1 := sub1 ||' '||alf;
 end if;
--if  to_number(substr(amnt,2,4)) > 0 then
--- sub2 := three_digits(substr(amnt,3,3));
--end if;
if  to_number(substr(amnt,3,3)) > 0 then
 sub2 := three_digits(substr(amnt,3,3));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa|| ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function six_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(five_digits(substr(amnt,2,5)));
 end if;

/* if substr(amnt,2,2) = '01' then
   sub1 := three_digits( '100');
   sub1 := sub1 || ' ' || wa || ' ' || alf;
 elsif substr(amnt,2,2) = '02' then
   sub1 := three_digits( '100');
   sub1 := sub1 || ' ' || wa || ' ' || alfain;
 elsif substr(amnt,2,2) = '10' then
   sub1 := three_digits(substr(amnt,1,3))||' '||alaf;
  else
   sub1 := three_digits(substr(amnt,1,3))||' '||alf;
 end if;
*/
--if  to_number(substr(amnt,2,5)) > 0 then
-- sub2 := three_digits(substr(amnt,4,3));
--end if;

   sub1 := three_digits(substr(amnt,1,3))||' '||alf;
   if  to_number(substr(amnt,4,3)) > 0 then
      sub2 := three_digits(substr(amnt,4,3));
   end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function seven_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(six_digits(substr(amnt,2,6)));
 end if;
 if substr(amnt,1,1) = 1 then
    sub1 := ONES(substr(amnt,1,1))||' '||million;
 elsif substr(amnt,1,1) = 2 then
   sub1 := millionain;
 else
   sub1 := ONES(substr(amnt,1,1))||' '||malayeen;
 end if;
if  to_number(substr(amnt,2,6)) > 0 then
 sub2 := six_digits( substr(amnt,2,6));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function eight_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(seven_digits(substr(amnt,2,7)));
 end if;
 sub1 := two_digits(substr(amnt,1,2));
 if substr(amnt,1,2) = '10' then sub1 := sub1 ||' '||malayeen;
 else
  sub1 := sub1 ||' '||million;
 end if;
if  to_number(substr(amnt,2,7)) > 0 then
 sub2 := six_digits( substr(amnt,3,6));
end if;

 if Ltrim(Rtrim((sub2))) Is Not Null Then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function nine_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(eight_digits(substr(amnt,2,8)));
 end if;
 sub1 := HUNDRED(to_number(substr(amnt,1,1))*100);
 if substr(amnt,2,1) = 0 then
  if substr(amnt,3,1) = 1 then
   sub1 := sub1|| ' ' || wa|| ' ' || ONES(1)||' '||million;
  elsif substr(amnt,3,1) = 2 then
   sub1 := sub1|| ' ' || wa||' '||millionain;
  elsif substr(amnt,2,2) = '00' then
   sub1 := sub1 ||' '||million;
  else
   sub1 := sub1|| ' ' || wa||' '||ONES( to_number(substr(amnt,3,1)))||' '||malayeen;
  end if;
 elsif substr(amnt,2,2) = '10' then
  sub1 := sub1 || ' ' || wa||' '||TENS(to_number(substr(amnt,2,2)))|| ' '||malayeen;
 else
  sub1 := sub1|| ' ' || wa ||' '||two_digits(substr(amnt,2,2))|| ' '||million;
 end if;

if  to_number(substr(amnt,4,6)) > 0 then
 sub2 := six_digits( substr(amnt,4,6));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa || ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function ten_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------    ! l   ------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(nine_digits(substr(amnt,2,9)));
 end if;
 if substr(amnt,1,1) = 1 then
    sub1 := miliar;
 elsif substr(amnt,1,1) = 2 then
   sub1 := miliarain;
 else
   sub1 := ONES(substr(amnt,1,1))||' '||miliarat;
 end if;
if  to_number(substr(amnt,2,9)) > 0 then
 sub2 := nine_digits( substr(amnt,2,9));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa||  ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function eleven_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(ten_digits(substr(amnt,2,10)));
 end if;
 sub1 := two_digits(substr(amnt,1,2));
 if substr(amnt,1,2) = '10' then
   sub1 := sub1 ||' '||miliarat;
 else
   sub1 := sub1||' '||miliar;
 end if;
if  substr(amnt,3,9) > 0 then
 sub2 := nine_digits( substr(amnt,3,9));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa ||  ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 function twelve_digits(amnt VARCHAR2) return VARCHAR2 is
 ------------------------------------------------------------ 
  sub1 varchar2(200) := null;
  sub2 varchar2(200) := null;
 begin
 if substr(amnt,1,1) = 0 then
  return(eleven_digits(substr(amnt,2,11)));
 end if;
 sub1 := HUNDRED(to_number(substr(amnt,1,1))*100);
 if substr(amnt,2,1) = 0 then
  if substr(amnt,3,1) = 1 then
   sub1 := sub1|| ' ' || wa ||  ' ' || ONES(1)||' '||miliar;
  elsif substr(amnt,3,1) = 2 then
   sub1 := sub1|| ' ' || wa ||' '||miliarain;
  elsif substr(amnt,2,2) = '00' then
   sub1 := sub1 ||' '||miliar;
  else
   sub1 := sub1|| ' ' || wa||' '||ONES( to_number(substr(amnt,3,1)))||' '||miliarat;
  end if;
 elsif substr(amnt,2,2) = '10' then
  sub1 := sub1 || ' ' ||  wa||' '||TENS(to_number(substr(amnt,2,2)))|| ' '||miliarat;
 else
  sub1 := sub1|| ' ' || wa ||' '||two_digits(substr(amnt,2,2))|| ' '||miliar;
 end if;
if  to_number(substr(amnt,4,9)) > 0 then
 sub2 := nine_digits( substr(amnt,4,9));
end if;

 if sub2 Is Not Null then
   sub1 := sub1 || ' ' || wa ||  ' ' || sub2;
 end if;
 return(sub1);
 end;
 ------------------------------------------------------------ 

 PROCEDURE check_riyals(amnt VARCHAR2) is
 ------------------------------------------------------------ 
 begin
 if amnt = '10'  then
    sub1 := sub1 ||' '||curr_name;
 elsif amnt between '01' and '09' then
 	 sub1 := sub1 ||' '||curr_name;
   -- null;
 elsif ln = 1 then
    null;
 else
    sub1 := sub1 ||' '||curr_name;
 end if;
 if ln1 > 0  then
     sub1 := sub1  ||  ' ' || wafr ||  ' ' || sub5 ;
     end if;
 end;

Begin   -- main function starts --
--================================================
Select Cur_Fraction,Cur_Name,Nvl(Cur_Frc_No,2)
       Into
       Frc_Name,Curr_Name,V_Cur_Frc_No
From Ex_Rate
Where Cur_Code = A_Curr;
 --================================================
 amnt_char := to_char(amnt_num);
 ln1 := instr(amnt_char,'.');
 if ln1 > 0  then
       frac_char := substr(amnt_char,ln1+1,3);
       amnt_char := substr(amnt_char,1,ln1-1);
 end if;

 ln := NVL(NVL(length(amnt_char), 0), 0);
 ln2 := NVL(NVL(length(frac_char ), 0), 0);
 if ln1 > 0 then
    If V_Cur_Frc_No=3  Then
     Sub5 := Three_Digits_H(Rpad(Frac_Char,3,0));
    Else
     Sub5 := Two_Digits_H(Rpad(Frac_Char,2,0));
    End If;
 end if;
 if ln = 1 then
    sub1 :=  one_digit(amnt_char);
    check_riyals(amnt_char);
 elsif ln= 2 then
    sub1 := two_digits(amnt_char);
    check_riyals(amnt_char);
 elsif ln = 3 then
    sub1 := three_digits(amnt_char);
    check_riyals(substr(amnt_char,2,2));
 elsif ln = 4 then
    sub1 := four_digits(amnt_char);
    check_riyals(substr(amnt_char,3,2));
 elsif ln = 5 then
     sub1 := five_digits(amnt_char);
     check_riyals(substr(amnt_char,4,2));
 elsif ln = 6 then
     sub1 := six_digits(amnt_char);
     check_riyals(substr(amnt_char,5,2));
 elsif ln = 7 then
     sub1 := seven_digits(amnt_char);
     check_riyals(substr(amnt_char,6,2));
 elsif ln = 8 then
     sub1 := eight_digits(amnt_char);
     check_riyals(substr(amnt_char,7,2));
 elsif ln = 9 then
     sub1 := nine_digits(amnt_char);
     check_riyals(substr(amnt_char,8,2));
 elsif ln = 10 then
         sub1 := ten_digits(amnt_char);
     check_riyals(substr(amnt_char,9,2));
 elsif ln = 11 then
     sub1 := eleven_digits(amnt_char);
     check_riyals(substr(amnt_char,10,2));
 elsif ln = 12 then
     sub1 := twelve_digits(amnt_char);
     check_riyals(substr(amnt_char,11,2));
 elsif ln = 0 and ln2 > 0  then
    If V_Cur_Frc_No=3  Then
      Sub1 := Three_Digits_H(Rpad(Frac_Char,3,0));
    Else
      Sub1 := Two_Digits_H(Rpad(Frac_Char,2,0));
    End If;
 else
    return(' You cannot use more than 12 digits ... Thanks'  );
 end if;

 return( sub1);


END Tafkeet_E;
/
CREATE FUNCTION Tafkeet_F ( Amount   In  Number,
                                                                                                A_curr   In  Varchar2,
                                                                                                Lang_no  In  Number )
  Return Varchar2 Is
  Amnt_num    Number         := Amount;
  Amnt_char   Varchar2 (50);
  Amnt1_char  Varchar2 (50);
  Frac_char   Varchar2 (50);
  V_Cur_Frc_No Number;
  Amnt        Varchar2 (50);
  Amnt1       Varchar2 (50);
  Sub1        Varchar2 (300) := Null;
  Sub2        Varchar2 (300) := Null;
  Sub3        Varchar2 (300) := Null;
  Sub4        Varchar2 (300) := Null;
  Sub5        Varchar2 (300) := Null;
  Plural      Varchar2 (1);
  Ln          Number;
  Ln1         Number;
  Ln2         Number;
  Fc          Number;
------------------------------------------------------------
  Frc_name    Varchar2 (50);
  Curr_name   Varchar2 (50);
  Miyat       Varchar2 (50)   := 'Cent';
  Miyatain    Varchar2 (50)   := 'Deux Cent';
  Alf         Varchar2 (50)   := 'Mille';
  Alfain      Varchar2 (50)   := 'Deux Mille';
  Alaf        Varchar2 (50)   := 'Mille';
  Million     Varchar2 (50)   := 'Million';
  Millionain  Varchar2 (50)   := 'Deux Millions';
  Malayeen    Varchar2 (50)   := 'Millions';
  Miliar      Varchar2 (50)   := 'Milliard';
  Miliarain   Varchar2 (50)   := 'Deux Milliards';
  Miliarat    Varchar2 (50)   := 'Milliards';
  Wa          Varchar2 (50)   := 'et';
  Lng_No      Number:=Lang_no;

------------------------------------------------------------
  Function Is_zero (Amnt Varchar2, L Number)
    Return Boolean Is
------------------------------------------------------------
    Stat  Boolean := True;
    M     Number  := 1;
  Begin
    While M <= L Loop
      If Substr (Amnt, M, 1) != 0 Then
        Stat := False;
        Exit;
      End If;

      M := M + 1;
    End Loop;

    Return (Stat);
  End;

------------------------------------------------------------
  Function Ones (Num Number)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Num = 0 Then
      Return (Null);
  elsif num = 1 then
    return('Un');
  elsif num = 2 then
    return('Deux');
  elsif num = 3 then
    return('Trois');
  elsif num = 4 then
    return('Quatre');
  elsif num = 5 then
    return('Cinq');
  elsif num = 6 then
    return('Six');
  elsif num = 7 then
    return('Sept');
  elsif num = 8 then
    return('Huit');
  elsif num = 9 then
    return('Neuf');
    End If;
  End;
------------------------------------------------------------
  Function Tens (Num Number)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Num = 0 Then
      Return (Null);
    elsif num = 11 then
   return('Onze');
  elsif num = 12 then
   return('Douze');
  elsif num = 13 then
   return('Treize');
  elsif num = 14 then
   return('Quatorze');
  elsif num = 15 then
   return('Quinze');
  elsif num = 16 then
   return('Seize');
  elsif num = 17 then
   return('Dix-Sept');
  elsif num = 18 then
   return('Dix-Huit');
  elsif num = 19 then
   return('Dix-Neuf');
  elsif num= 71 then
   return ('Soixante-Onze');
  elsif  num= 72 then
   return('Soixante-Douze');
  elsif num=73 then
   return('Soixante-Treize');
  elsif num=74 then 
   return('Soixante-Quatorze');
  elsif num= 75 then 
   return('Soixante-Quinze');
  elsif num=76 then 
  return('Soixante-Seize');
   elsif num=77 then
  return('Soixante-Dix-Sept');
  elsif num=78 then
  return('Soixante-Dix-Huit');
  elsif num=79 then
  return('Soixante-Dix-Neuf');
  elsif num = 10 or num = 1 then
   return('Dix');
  elsif num = 20 then
   return('Vingt');
  elsif num = 30 then
   return('Trente');
  elsif num = 40 then
   return('Quarante');
  elsif num = 50 then
   return('Cinquante');
  elsif num = 60 then
   return('Soixante');
   elsif num = 70 then
   return('Soixante-Dix');
  elsif num = 80 then
   return('Quatre-Vingt');
  elsif num = 90 then
   return('Quatre-Vingt-Dix');
   elsif num= 91 then
   return ('Quatre-Vingt-Onze');
  elsif  num= 92 then
   return('Quatre-Vingt-Douze');
  elsif num=93 then
   return('Quatre-Vingt-Treize');
  elsif num=94 then 
   return('Quatre-Vingt-Quatorze');
  elsif num= 95 then 
   return('Quatre-Vingt-Quinze');
  elsif num=96 then 
  return('Quatre-Vingt-Seize');
   elsif num=97 then
  return('Quatre-Vingt-Dix-Sept');
  elsif num=98 then
  return('Quatre-Vingt-Dix-Huit');
  elsif num=99 then
  return('Quatre-Vingt-Dix-Neuf');
    End If;
  End;

------------------------------------------------------------
  Function Hundred (Num Number)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
 if num = 100 then
  return('Cent');
 elsif num = 200 then
  return('Deux Cent');
 elsif num = 300 then
  return('Trios Cent');
 elsif num = 400 then
  return('Quatre Cent');
 elsif num = 500 then
  return('Cinq Cent');
 elsif num = 600 then
  return('Six Cent');
 elsif num = 700 then
  return('Sept Cent');
 elsif num = 800 then
  return('Huit Cent');
 elsif num = 900 then
  return('Neuf Cent');
    End If;
  End;

------------------------------------------------------------
  Function One_digit (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
  Begin
    If Amnt = 0 Then
      Return (Null);
    Elsif Amnt = 1 Then
      Return (Curr_name);
    Elsif Amnt = 2 Then
      Return ('Deux' || ' ' || Curr_name);
    Elsif Amnt Between '3' And '10' Then
      Return (Curr_name);
    Else
      Return (Ones (To_number (Amnt)) || ' ' || Curr_name);
    End If;
  End;

  Function Two_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1          Varchar2 (30) := Null;
    Sub2          Varchar2 (30) := Null;
    First_digit   Varchar2 (1);
    Second_digit  Varchar2 (1);
  Begin
    First_digit := Substr (Amnt, 1, 1);
    Second_digit := Substr (Amnt, 2, 1);

    If First_digit = 0 Then
      Sub1 := One_digit (Second_digit);
    End If;

    If First_digit = 1 Or First_digit = 7 Or First_digit = 9 Or Second_digit = 0 Then
      Sub1 := Tens (To_number (Amnt));
    Else
      Sub1 := Ones (To_number (Second_digit));
      Sub2 := Tens (To_number (First_digit) * 10);
    End If;

    If Sub2 Is Not Null And  Lng_No = 1  Then
      Sub1 := Sub1 || ' ' || Wa;
    End If;

    If Second_digit = 1 And First_digit <> 1 And First_digit <> 0 And First_digit <> 7 And First_digit <> 9 Then
           Return (Sub2 || ' ' || Wa || ' ' || Sub1);
    Else
    If First_digit = 0 Or First_digit = 1 Or First_digit = 7 Or First_digit = 9 Or Second_digit = 0 Then
        Return (Sub2 || ' ' || Sub1);
        Else
    Return (Sub2 || '-' || Sub1);
    End If;
    End If;
  End;

  Function One_digit_h (Amnt Varchar2)
    Return Varchar2 Is
  Begin
    If Amnt = 0 Then
      Return (Null);
    Elsif Amnt = 2 Then
      Return (Frc_name);
    Elsif Amnt Between 3 And 10 Then
      Return (Frc_name);
    Else
      Return (Ones (To_number (Amnt)) || ' ' || Frc_name);
    End If;
  End;
  Function Two_digits_h (Amnt Varchar2)
    Return Varchar2 Is
    Sub1          Varchar2 (30) := Null;
    Sub2          Varchar2 (30) := Null;
    First_digit   Varchar2 (1);
    Second_digit  Varchar2 (1);
  Begin
    First_digit := Substr (Amnt, 1, 1);
    Second_digit := Substr (Amnt, 2, 1);

    If First_digit <> 1 And Second_digit <> 0 Then
     if  First_digit=1 or  First_digit=7 or First_digit=9 then
     Sub1 := Tens( to_number(amnt));
     Sub2 := null;
     return(Wa || ' ' || sub1|| ' ' || frc_name);
      end if;
      Sub1 := Ones (To_number (Second_digit));
      Sub2 := Tens (To_number (First_digit) * 10);

      
       If Second_digit = 1 And First_digit <> 1 And First_digit <> 0 And First_digit <> 7 And First_digit <> 9 Then
             Return (Sub2 || ' ' || Wa || ' ' || Sub1 || ' ' || Frc_name);
      Else  
       If First_digit = 0 Or First_digit = 1 Or First_digit = 7 Or First_digit = 9 Or Second_digit = 0 Then
        Return (Wa || ' ' || Sub2 || ' ' || Sub1 || ' ' || Frc_name); 
       Else      
        Return (Wa || ' ' || Sub2 || '-' || Sub1 || ' ' || Frc_name);
     End If;        
      End If;  
    End If;

    If First_digit = 0 Then
      Return (One_digit_h (Second_digit));
    End If;

    If First_digit = 1 Or Second_digit = 0 Then
      Sub1 := Tens (To_number (Amnt));
      Sub2 := Null;
      Return (Wa || ' ' || Sub1 || ' ' || Frc_name);
    End If;

    If First_digit > 1 Or Second_digit = 0 Then
      Sub1 := Tens (To_number (Amnt) * 10);
      Sub2 := Null;
      Return (Wa || ' ' || Sub1 || ' ' || Frc_name);
    End If;
  End;
------------------------------------------------------------
Function Three_Digits_H (Amnt Varchar2) Return Varchar2 Is
 ------------------------------------------------------------ 
      Sub1 Varchar2(500) := Null;
      Sub2 Varchar2(500) := Null;
      First_Digit Varchar2(1);
      Second_Digit Varchar2(1);
 Begin
         First_Digit := Substr(Amnt,1,1);
         If First_Digit = 0 Then
          Return(Two_Digits_H(Substr(Amnt,2,2)));
         End If;
         Sub1 := Hundred(To_Number(First_Digit)*100);
         If Is_Zero( Substr(Amnt,2,2), 2) Then
          Sub2 := ' ' || Frc_Name;
         Else
          Sub1 := Sub1 ;
          Sub2 := Two_Digits_H( Substr(Amnt,2,2));
         End If;
         Return(Wa || ' ' || Sub1||' '||Sub2);
 End;

------------------------------------------------------------
  Function Three_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1          Varchar2 (500) := Null;
    Sub2          Varchar2 (500) := Null;
    First_digit   Varchar2 (1);
    Second_digit  Varchar2 (1);
  Begin
    First_digit := Substr (Amnt, 1, 1);

    If First_digit = 0 Then
      Return (Two_digits (Substr (Amnt, 2, 2)));
    End If;

    Sub1 := Hundred (To_number (First_digit) * 100);

    If Is_zero (Substr (Amnt, 2, 2), 2) Then
      Sub2 := Null;
    Else
      Sub1 := Sub1 ;
      Sub2 := Two_digits (Substr (Amnt, 2, 2));
    End If;

    Return (Sub1 || ' ' || Sub2);
  End;

  Function Four_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Three_digits (Substr (Amnt, 2, 3)));
    End If;

    If Substr (Amnt, 1, 1) = 1 Then
      Sub1 := Alf;
      Sub2 := Null;
    Elsif Substr (Amnt, 1, 1) = 2 Then
      Sub1 := Alfain;
      Sub2 := Null;
    Else
      Sub1 := Ones (To_number (Substr (Amnt, 1, 1))) || ' ' || Alaf;
      Sub2 := Null;
    End If;

    If To_number (Substr (Amnt, 2, 3)) > 0 Then
      Sub2 := Three_digits (Substr (Amnt, 2, 3));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Five_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Four_digits (Substr (Amnt, 2, 4)));
    End If;

    Sub1 := Two_digits (Substr (Amnt, 1, 2));

    If Substr (Amnt, 1, 2) = 1 Then
      Sub1 := Sub1 || ' ' || Alaf;
    Else
      Sub1 := Sub1 || ' ' || Alf;
    End If;

    If To_number (Substr (Amnt, 3, 3)) > 0 Then
      Sub2 := Three_digits (Substr (Amnt, 3, 3));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Six_digits (Amnt Varchar2)
    Return Varchar2 Is
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Five_digits (Substr (Amnt, 2, 5)));
    End If;

    Sub1 := Three_digits (Substr (Amnt, 1, 3)) || ' ' || Alf;

    If To_number (Substr (Amnt, 4, 3)) > 0 Then
      Sub2 := Three_digits (Substr (Amnt, 4, 3));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Seven_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Six_digits (Substr (Amnt, 2, 6)));
    End If;

    If Substr (Amnt, 1, 1) = 1 Then
      Sub1 := Ones (Substr (Amnt, 1, 1)) || ' ' || million;
    Elsif Substr (Amnt, 1, 1) = 2 Then
      Sub1 := Millionain;
    Else
      Sub1 := Ones (Substr (Amnt, 1, 1)) || ' ' || Malayeen;
    End If;

    If To_number (Substr (Amnt, 2, 6)) > 0 Then
      Sub2 := Six_digits (Substr (Amnt, 2, 6));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Eight_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Seven_digits (Substr (Amnt, 2, 7)));
    End If;

    Sub1 := Two_digits (Substr (Amnt, 1, 2));

    If Substr (Amnt, 1, 2) = '10' Then
      Sub1 := Sub1 || ' ' || Malayeen;
    Else
      Sub1 := Sub1 || ' ' || Malayeen;
    End If;

    If To_number (Substr (Amnt, 2, 7)) > 0 Then
      Sub2 := Six_digits (Substr (Amnt, 3, 6));
    End If;

    If Ltrim (Rtrim ((Sub2))) Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Nine_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Eight_digits (Substr (Amnt, 2, 8)));
    End If;

    Sub1 := Hundred (To_number (Substr (Amnt, 1, 1)) * 100);

    If Substr (Amnt, 2, 1) = 0 Then
      If Substr (Amnt, 3, 1) = 1 Then
        Sub1 := Sub1 || ' ' || Ones (1) || ' ' || Malayeen;
      Elsif Substr (Amnt, 3, 1) = 2 Then
        Sub1 := Sub1 || ' ' || Millionain;
      Elsif Substr (Amnt, 2, 2) = '00' Then
        Sub1 := Sub1 || ' ' || Malayeen;
      Else
        Sub1 :=
             Sub1
          || ' '
          || Ones (To_number (Substr (Amnt, 3, 1)))
          || ' '
          || Malayeen;
      End If;
    Elsif Substr (Amnt, 2, 2) = '10' Then
      Sub1 :=
           Sub1
        || ' '
        || Tens (To_number (Substr (Amnt, 2, 2)))
        || ' '
        || Malayeen;
    Else
      Sub1 :=
           Sub1
        || ' '
        || Two_digits (Substr (Amnt, 2, 2))
        || ' '
        || Malayeen;
    End If;

    If To_number (Substr (Amnt, 4, 6)) > 0 Then
      Sub2 := Six_digits (Substr (Amnt, 4, 6));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Ten_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------    ! l   ------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Nine_digits (Substr (Amnt, 2, 9)));
    End If;

    If Substr (Amnt, 1, 1) = 1 Then
      Sub1  := Ones (Substr (Amnt, 1, 1)) || ' ' || Miliar;
    Elsif Substr (Amnt, 1, 1) = 2 Then
      Sub1 := Miliarain;
    Else
      Sub1 := Ones (Substr (Amnt, 1, 1)) || ' ' || Miliarat;
    End If;

    If To_number (Substr (Amnt, 2, 9)) > 0 Then
      Sub2 := Nine_digits (Substr (Amnt, 2, 9));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Eleven_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Ten_digits (Substr (Amnt, 2, 10)));
    End If;

    Sub1 := Two_digits (Substr (Amnt, 1, 2));

    If Substr (Amnt, 1, 2) = '10' Then
      Sub1 := Sub1 || ' ' || Miliarat;
    Else
      Sub1 := Sub1 || ' ' || Miliarat;
    End If;

    If Substr (Amnt, 3, 9) > 0 Then
      Sub2 := Nine_digits (Substr (Amnt, 3, 9));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Function Twelve_digits (Amnt Varchar2)
    Return Varchar2 Is
------------------------------------------------------------
    Sub1  Varchar2 (200) := Null;
    Sub2  Varchar2 (200) := Null;
  Begin
    If Substr (Amnt, 1, 1) = 0 Then
      Return (Eleven_digits (Substr (Amnt, 2, 11)));
    End If;

    Sub1 := Hundred (To_number (Substr (Amnt, 1, 1)) * 100);

    If Substr (Amnt, 2, 1) = 0 Then
      If Substr (Amnt, 3, 1) = 1 Then
        Sub1 := Sub1 || ' ' || Ones (1) || ' ' || Miliar;
      Elsif Substr (Amnt, 3, 1) = 2 Then
        Sub1 := Sub1 || ' ' || Miliarain;
      Elsif Substr (Amnt, 2, 2) = '00' Then
        Sub1 := Sub1 || ' ' || Miliarat;
      Else
        Sub1 :=
             Sub1
          || ' '
          || Ones (To_number (Substr (Amnt, 3, 1)))
          || ' '
          || Miliarat;
      End If;
    Elsif Substr (Amnt, 2, 2) = '10' Then
      Sub1 :=
           Sub1
        || ' '
        || Tens (To_number (Substr (Amnt, 2, 2)))
        || ' '
        || Miliarat;
    Else
      Sub1 :=
           Sub1
        || ' '
        || Two_digits (Substr (Amnt, 2, 2))
        || ' '
        || Miliarat;
    End If;

    If To_number (Substr (Amnt, 4, 9)) > 0 Then
      Sub2 := Nine_digits (Substr (Amnt, 4, 9));
    End If;

    If Sub2 Is Not Null Then
      Sub1 := Sub1 || ' ' || Sub2;
    End If;

    Return (Sub1);
  End;

------------------------------------------------------------
  Procedure Check_riyals (Amnt Varchar2) Is
------------------------------------------------------------
  Begin
    If Amnt = '10' Then
      Sub1 := Sub1 || ' ' || Curr_name;
    Elsif Amnt Between '01' And '09' Then
      Sub1 := Sub1 || ' ' || Curr_name;
    -- null;
    Elsif Ln = 1 Then
      Null;
    Else
      Sub1 := Sub1 || ' ' || Curr_name;
    End If;

    If Ln1 > 0 Then
      Sub1 := Sub1 || ' ' || Sub5;
    End If;
  End;
Begin                               
                -- main function starts --
--================================================
    Begin                               
        Select    Decode(Lang_No,1,Nvl(CUR_FRACTION,Cur_E_FRACTION),Nvl(Cur_E_FRACTION,Cur_FRACTION)), 
                 Decode(Lang_No,1,Nvl(Cur_name,Cur_E_Name),Nvl(Cur_E_name,Cur_Name)),
                 Nvl(Cur_Frc_No,2)
            Into     Frc_name    , 
              Curr_name   ,
            V_Cur_Frc_No
            From     Ex_rate
            Where Cur_code = A_curr;
    Exception When Others Then
        Null;
    End;
--================================================
  Amnt_char := To_char (Amnt_num);
  Ln1 := Instr (Amnt_char, '.');

  If Ln1 > 0 Then
    Frac_char := Substr (Amnt_char, Ln1 + 1, 3);
    Amnt_char := Substr (Amnt_char, 1, Ln1 - 1);
  End If;

  Ln := Nvl (Nvl (Length (Amnt_char), 0), 0);
  Ln2 := Nvl (Nvl (Length (Frac_char), 0), 0);

  If Ln1 > 0 Then
    If V_Cur_Frc_No=3  Then
     Sub5 := Three_Digits_H(Rpad(Frac_Char,3,0));
    Else
     Sub5 := Two_Digits_H(Rpad(Frac_Char,2,0));
    End If;
  End If;

  If Ln = 1 Then
    Sub1 := One_digit (Amnt_char);
    Check_riyals (Amnt_char);
  Elsif Ln = 2 Then
    Sub1 := Two_digits (Amnt_char);
    Check_riyals (Amnt_char);
  Elsif Ln = 3 Then
    Sub1 := Three_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 2, 2));
  Elsif Ln = 4 Then
    Sub1 := Four_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 3, 2));
  Elsif Ln = 5 Then
    Sub1 := Five_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 4, 2));
  Elsif Ln = 6 Then
    Sub1 := Six_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 5, 2));
  Elsif Ln = 7 Then
    Sub1 := Seven_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 6, 2));
  Elsif Ln = 8 Then
    Sub1 := Eight_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 7, 2));
  Elsif Ln = 9 Then
    Sub1 := Nine_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 8, 2));
  Elsif Ln = 10 Then
    Sub1 := Ten_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 9, 2));
  Elsif Ln = 11 Then
    Sub1 := Eleven_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 10, 2));
  Elsif Ln = 12 Then
    Sub1 := Twelve_digits (Amnt_char);
    Check_riyals (Substr (Amnt_char, 11, 2));
  Elsif Ln = 0 And Ln2 > 0 Then
    If V_Cur_Frc_No=3  Then
     Sub1 := Three_Digits_H(Rpad(Frac_Char,3,0));
    Else
     Sub1 := Two_Digits_H(Rpad(Frac_Char,2,0));
    End If;
  Else
    Return (Ias_gen_pkg.Get_prompt (Lang_no, 2600));
  End If;

  Return (Sub1);
End Tafkeet_F;
/
CREATE Function Yr_Get_Icode_Avlqty_Fnc (  P_Icode   In   Ias_Itm_Mst.I_Code%Type ,
                                                      P_Psize   In   Number                   ,
                                                      P_Wcode   In   Warehouse_Details.W_Code%Type   Default Null,
                                                      P_Expdate In   Date     Default Null    ,
                                                      P_Batchno In   Varchar2 Default Null    ,
                                                      P_Idate   In   Date     Default Null    ) Return Number Is
   V_Avl_Qty   Number:= 0 ;
   V_Whr       Varchar2(4000) := ' ';
 Begin

       If P_Wcode Is Not Null Then
          V_Whr := V_Whr||' And W_Code = '||P_Wcode ;
       End If ;  

       If P_Expdate Is Not Null Then
          V_Whr := V_Whr||' And Expire_Date = '||Nvl(''''||P_Expdate||'''','01/01/1900') ;
       End If ;  
       If P_Batchno Is Not Null Then
          V_Whr := V_Whr||' And Batch_No = '||Nvl(''''||P_Batchno||'''','0') ;
       End If ;  
              
       Begin
           Execute Immediate ' Select Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0) /Nvl( '||P_Psize||',1)
												         From Ias_V_Item_Movement_Yr
												          Where I_Code = '||''''||P_Icode||''''
												          ||V_Whr||
												          ' And I_Date <='||''''|| P_Idate||'''' Into V_Avl_Qty;
          
		   Exception
		    When No_Data_Found    Then
		         V_Avl_Qty:=0;
		    When Others  Then
		         V_Avl_Qty:=0;
	   End;
       Return (Nvl(V_Avl_Qty,0));
 Exception
   When No_Data_Found  Then
     Return 0;
   When Others  Then
     Return Null;
 End Yr_Get_Icode_Avlqty_Fnc ;
/
CREATE Function Yr_Get_Itm_Age_Fnc  ( P_Icode       In Varchar2                ,
                                                            P_Td          In Date                    ,
                                                            P_Wcode       In Number   Default Null   ,
                                                            P_Batch_No    In Varchar2 Default Null   ,
                                                            P_Expire_Date In Date     Default Null   ,
                                                            P_Tble_Nm     In Varchar2                ) Return Number Is
  V_Age    Number := 0 ;
  V_SqlStr Varchar2(4000) ;
  Begin
   -- Lst_Date := Ias_Gen_Pkg.Get_Sysdate ;
   If P_Icode Is Not Null And P_Td Is Not Null Then
       Begin
            V_SqlStr :=  ' Select Sum(( To_Date('||''''||P_Td||''''||',''DD/MM/YYYY'') - To_Date(Gr_Date,''DD/MM/YYYY'')) * Cp_Qty ) /Sum(Cp_Qty)
              From '|| P_Tble_Nm||'
             Where I_Code      = '||''''||P_Icode||'''' ;
	          If P_Wcode Is Not Null Then
	             V_SqlStr := V_SqlStr ||' And  Itm_Mov.W_Code  = '||P_Wcode ;
	          End If ;
	          If P_Batch_No Is Not Null Then
	                V_SqlStr := V_SqlStr ||' And Itm_Mov.Batch_No    = '||''''||P_Batch_No||'''' ;
	          End If ;
	          If P_Expire_Date Is Not Null Then
	             V_SqlStr := V_SqlStr ||' And Itm_Mov.Expire_Date = '||''''||P_Expire_Date||'''' ;
	          End If ;
             V_SqlStr := V_SqlStr ||' And Gr_Date  <= To_Date('||''''||P_Td||''''||' ,''DD/MM/YYYY'') And Nvl(Cp_Qty,0)>0 '  ;
             Execute Immediate V_SqlStr Into  V_Age  ; 
          Exception
           When No_Data_Found Then
             V_Age :=  0 ;
          End;
    End If ;
    Return (Nvl(V_Age,0));
  Exception
    When Others Then
      Return (0);
 End Yr_Get_Itm_Age_Fnc ;
/
CREATE Function Yr_Open_Stock_Fnc ( P_Icode       In   Ias_Itm_Mst.I_Code%Type,
                                               P_Wcode       In   Warehouse_Details.W_Code%Type Default Null,
                                               P_Idate       In   Date     Default Null,
                                               P_Exp_Date    In   Date     Default Null,
                                               P_Batch_No    In   Varchar2 Default Null,
                                               P_Cond        In   Varchar2 Default Null,
                                               P_Tble_Nm_Mst In Varchar2               ,
                                               P_Tble_Nm_Dtl In Varchar2              )  Return Number Is
   V_Avl_Qty Number:=0;
   V_Op      Number:=0;
   V_SqlStr  Varchar2(4000) ;
   --P_Tble_Nm_Dtl = IAS_V_ITEM_MOVEMENT_YR ,P_Tble_Nm_Mst = Ias_Itm_Mst
Begin
   If P_Idate Is Not Null Then
      Begin
          V_SqlStr := ' Select   Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0)
              From '||P_Tble_Nm_Dtl||' Itm_Mov,'||P_Tble_Nm_Mst||' Itm_Dtl
             Where  Itm_Mov.I_Code=Itm_Dtl.I_code And Itm_Dtl.I_Code      = '||''''||P_Icode||''''||' AND ITM_DTL.Itm_Unt = Itm_Pkg.Get_Icode_Min_Unit  (P_I_Code => '||''''||P_Icode||'''' || ')'||' '  ;
               
          If P_Wcode Is Not Null Then
             V_SqlStr := V_SqlStr ||' And  Itm_Mov.W_Code  = '||P_Wcode ;
          End If ;
          If P_Batch_No Is Not Null Then
                V_SqlStr := V_SqlStr ||' And Itm_Mov.Batch_No    = '||''''||P_Batch_No||'''' ;
          End If ;
          If P_Exp_Date Is Not Null Then
             V_SqlStr := V_SqlStr ||' And Itm_Mov.Expire_Date = '||''''||P_Exp_Date||'''' ;
          End If ;
          V_SqlStr := V_SqlStr ||'  And Itm_Mov.Doc_Type = 0 '||P_Cond  ;          
          Execute Immediate V_SqlStr Into  V_Op  ; 
                   
      Exception
        When No_Data_Found    Then
         V_Op:=0;
      End; 

      Begin      
        V_SqlStr :=  ' Select   Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0) 
								          From '||P_Tble_Nm_Dtl||' Itm_Mov,'||P_Tble_Nm_Mst||' Itm_Dtl
							             Where  Itm_Mov.I_Code=Itm_Dtl.I_code And Itm_Dtl.I_Code      = '||''''||P_Icode||'''' ||' AND ITM_DTL.Itm_Unt = Itm_Pkg.Get_Icode_Min_Unit  (P_I_Code => '||''''||P_Icode||'''' || ')'||' '  ;
          If P_Wcode Is Not Null Then
             V_SqlStr := V_SqlStr ||' And  Itm_Mov.W_Code  = '||P_Wcode ;
          End If ;
          If P_Batch_No Is Not Null Then
                V_SqlStr := V_SqlStr ||' And Itm_Mov.Batch_No    = '||''''||P_Batch_No||'''' ;
          End If ;
          If P_Exp_Date Is Not Null Then
             V_SqlStr := V_SqlStr ||' And Itm_Mov.Expire_Date = '||''''||P_Exp_Date||'''' ;
          End If ;
          V_SqlStr := V_SqlStr ||'  And Itm_Mov.Doc_Type <>0
                                     And Itm_Mov.I_Date   < To_Date('||''''||P_Idate||'''' ||',''DD/MM/YYYY'') '||P_Cond    ;
          Execute Immediate V_SqlStr Into  V_Avl_Qty  ; 
      Exception
        When No_Data_Found   Then
          V_Avl_Qty:=0;
      End; 

   Elsif P_Idate Is Null  Then
         Begin
	          V_SqlStr :=   ' Select   Nvl(Sum(In_Out*(Nvl(P_Qty,0)+Nvl(Pf_Qty,0)) ),0)
	              From '||P_Tble_Nm_Dtl||' Itm_Mov,'||P_Tble_Nm_Mst||' Itm_Dtl
             Where Itm_Mov.I_Code=Itm_Dtl.I_code And Itm_Dtl.I_Code      = '||''''||P_Icode||''''||' AND ITM_DTL.Itm_Unt = Itm_Pkg.Get_Icode_Min_Unit  (P_I_Code => '||''''||P_Icode||'''' || ')'||' '  ;
	          If P_Wcode Is Not Null Then
	             V_SqlStr := V_SqlStr ||' And  Itm_Mov.W_Code  = '||P_Wcode ;
	          End If ;
	          If P_Batch_No Is Not Null Then
	                V_SqlStr := V_SqlStr ||' And Itm_Mov.Batch_No    = '||''''||P_Batch_No||'''' ;
	          End If ;
	          If P_Exp_Date Is Not Null Then
	             V_SqlStr := V_SqlStr ||' And Itm_Mov.Expire_Date = '||''''||P_Exp_Date||'''' ;
	          End If ;
            V_SqlStr := V_SqlStr ||' And Itm_Mov.Doc_Type    = 0 '||P_Cond  ;
            Execute Immediate V_SqlStr Into  V_Avl_Qty  ; 
         Exception
           When No_Data_Found   Then
             V_Op:=0;
         End; 
   End If;

  Return (Nvl(V_Avl_Qty,0)+Nvl(V_Op,0));
  
Exception
   When No_Data_Found Then
      Return 0;
   When Others Then
      Return Null;
End Yr_Open_Stock_Fnc ;
/
CREATE FUNCTION YS_CHK_SPCL_CHR_FNC ( P_STR  IN  VARCHAR2 , P_STR_TYP IN VARCHAR2 DEFAULT 'CODE' ) RETURN VARCHAR2 IS 
--P_STR_TYP  = CODE OR NAME

 V_CHR  VARCHAR2(2);
BEGIN

IF INSTR(P_STR,'--') > 0 THEN
   RETURN ('--');
END IF;

FOR I IN 1..LENGTH(P_STR) LOOP
    
    V_CHR := SUBSTR(P_STR,I,1);
    
    IF P_STR_TYP ='CODE' THEN 
      IF (ASCII(V_CHR) BETWEEN 30 AND 47 OR ASCII(V_CHR) BETWEEN 91 AND 96 OR ASCII(V_CHR) IN (10,13,64,123,125) ) AND V_CHR NOT IN ('-','/','\') 
          AND ASCII(V_CHR) NOT IN (45,46,95) THEN
         RETURN (V_CHR);
      END IF;
    ELSE
      IF V_CHR IN ('%') OR ASCII(V_CHR) IN (10,13)  THEN
         RETURN (V_CHR);
      END IF;
    END IF;

END LOOP;

RETURN (NULL);

END YS_CHK_SPCL_CHR_FNC;
/
CREATE FUNCTION Ys_Get_Blnc_Ac_Dtl_Fnc(P_A_CODE       IN ACCOUNT.A_CODE%TYPE  DEFAULT NULL,
                                                             P_AC_DTL_TYP   IN NUMBER    DEFAULT NULL,
                                                             P_AC_CODE_DTL  IN VARCHAR2  DEFAULT NULL,
                                                             P_LOC_CUR      IN VARCHAR2  DEFAULT YS_GEN_PKG.GET_LOCAL_CUR,
                                                             P_CUR_CODE     IN VARCHAR2  DEFAULT NULL,
                                                             P_CC_CODE      IN COST_CENTERS.CC_CODE%TYPE  DEFAULT NULL,
                                                             P_PJ_CODE      IN IAS_PROJECTS.PJ_NO%TYPE    DEFAULT NULL,
                                                             P_ACTV_CODE    IN IAS_ACTVTY.ACTV_NO%TYPE    DEFAULT NULL,
                                                             P_REP_CODE     IN SALES_MAN.REPRS_CODE%TYPE  DEFAULT NULL,
                                                             P_COL_NO       IN COLLERCTOR.COL_NO%TYPE  DEFAULT NULL,
                                                             P_F_DATE       IN DATE     DEFAULT YS_GEN_PKG.GET_FRST_DAY,
                                                             P_T_DATE       IN DATE     DEFAULT YS_GEN_PKG.GET_FINAL_DAY,
                                                             P_BLNC_TYP     IN NUMBER   DEFAULT 1,
                                                             P_LOC_AMT      IN NUMBER   DEFAULT 0 ,
                                                             P_DOC_POST     IN NUMBER   DEFAULT 1    )
 RETURN  NUMBER IS

 v_blnc_amt   NUMBER:=0;

BEGIN

-- AC_DTL_TYPE :  0 = Account , 1 = Cash , 2 = Bank  , 3  = customer , 4 = vendor , 7 = employee
-- P_BLNC_TYP  :  0 = Open_bal , 1 = Net Balance  ,2 = Period Balance
-- P_LOC_AMT    :  0 = By Cur_code , 1 = Local Amt
-- P_DOC_POST  :  0 = not posted , 1 = posted , 2 = All


If P_LOC_AMT = 0 Then --(1) -- by cur_code

    If P_BLNC_TYP = 0  Then -- Open_bal (2)

           Select Decode(P_cur_code,Null,nvl(sum(amt),0),P_Loc_Cur,nvl(sum(amt),0),nvl(sum(amt_f),0))
             Into v_blnc_amt
             From Ias_Post_Dtl
            where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
              and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
              and nvl(Ac_Dtl_Typ,0)   = Decode(P_Ac_Dtl_Typ,0,nvl(Ac_Dtl_Typ,0),P_Ac_Dtl_Typ)
              and a_cy= Decode(P_cur_code,null,a_cy,P_cur_code)
              and (doc_date < P_F_Date Or doc_type = 0)
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
              and nvl(pj_no,'0')   = Decode(P_pj_code,null,nvl(pj_no,'0'),P_pj_code)
              and nvl(actv_no,'0') = Decode(P_actv_code,null,nvl(actv_no,'0'),P_actv_code)
              and nvl(Rep_code,'0') = Decode(P_Rep_code,null,nvl(Rep_code,'0'),P_Rep_code)
              and nvl(Col_No,0)    = Decode(P_Col_No,null,nvl(Col_No,0),P_Col_No)
              and nvl(doc_post,0)  = Decode(P_DOC_POST,2,nvl(doc_post,0),P_DOC_POST);

    Elsif  P_BLNC_TYP = 2  Then   -- Period Balance without open balances for this period(2)


           Select Decode(P_cur_code,Null,nvl(sum(amt),0),P_LOC_CUR,nvl(sum(amt),0),nvl(sum(amt_f),0))
             Into v_blnc_amt
             From Ias_Post_Dtl
            where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
              and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
              and nvl(Ac_Dtl_Typ,0)   = Decode(P_Ac_Dtl_Typ,0,nvl(Ac_Dtl_Typ,0),P_Ac_Dtl_Typ)
              and a_cy= Decode(P_cur_code,null,a_cy,P_cur_code)
              and doc_date between P_F_Date and  P_T_Date
              and doc_type<>0
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
              and nvl(pj_no,'0')   = Decode(P_pj_code,null,nvl(pj_no,'0'),P_pj_code)
              and nvl(actv_no,'0') = Decode(P_actv_code,null,nvl(actv_no,'0'),P_actv_code)
              and nvl(Rep_code,'0') = Decode(P_Rep_code,null,nvl(Rep_code,'0'),P_Rep_code)
              and nvl(Col_No,0)    = Decode(P_Col_No,null,nvl(Col_No,0),P_Col_No)
              and nvl(doc_post,0)    = Decode(P_DOC_POST,2,nvl(doc_post,0),P_DOC_POST);
              
    Else -- Balance (2)


           Select Decode(P_cur_code,Null,nvl(sum(amt),0),P_LOC_CUR,nvl(sum(amt),0),nvl(sum(amt_f),0))
             Into v_blnc_amt
             From Ias_Post_Dtl
            where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
              and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
              and nvl(Ac_Dtl_Typ,0)   = Decode(P_Ac_Dtl_Typ,0,nvl(Ac_Dtl_Typ,0),P_Ac_Dtl_Typ)
              and a_cy= Decode(P_cur_code,null,a_cy,P_cur_code)
              and doc_date <= P_T_Date
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
              and nvl(pj_no,'0')   = Decode(P_pj_code,null,nvl(pj_no,'0'),P_pj_code)
              and nvl(actv_no,'0') = Decode(P_actv_code,null,nvl(actv_no,'0'),P_actv_code)
              and nvl(Rep_code,'0') = Decode(P_Rep_code,null,nvl(Rep_code,'0'),P_Rep_code)
              and nvl(Col_No,0)    = Decode(P_Col_No,null,nvl(Col_No,0),P_Col_No)
              and nvl(doc_post,0)    = Decode(P_DOC_POST,2,nvl(doc_post,0),P_DOC_POST);



    End If; --(2)
--#------------------------------------------------------------------------##--
Else -- Local Cur
--#------------------------------------------------------------------------##--

    If P_BLNC_TYP = 0  Then -- Open_bal (2)

           Select nvl(sum(amt),0)
             Into v_blnc_amt
             From Ias_Post_Dtl
            where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
              and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
              and nvl(Ac_Dtl_Typ,0)   = Decode(P_Ac_Dtl_Typ,0,nvl(Ac_Dtl_Typ,0),P_Ac_Dtl_Typ)
              and a_cy= Decode(P_cur_code,null,a_cy,P_cur_code)
              and (doc_date < P_F_Date Or doc_type = 0)
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
              and nvl(pj_no,'0')   = Decode(P_pj_code,null,nvl(pj_no,'0'),P_pj_code)
              and nvl(actv_no,'0') = Decode(P_actv_code,null,nvl(actv_no,'0'),P_actv_code)
              and nvl(Rep_code,'0') = Decode(P_Rep_code,null,nvl(Rep_code,'0'),P_Rep_code)
              and nvl(Col_No,0)    = Decode(P_Col_No,null,nvl(Col_No,0),P_Col_No)
              and nvl(doc_post,0)  = Decode(P_DOC_POST,2,nvl(doc_post,0),P_DOC_POST);
    
    Elsif  P_BLNC_TYP = 2  Then   -- Period Balance without open balances for this period(2)

       Select nvl(sum(amt),0)
             Into v_blnc_amt
             From Ias_Post_Dtl
            where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
              and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
              and nvl(Ac_Dtl_Typ,0)   = Decode(P_Ac_Dtl_Typ,0,nvl(Ac_Dtl_Typ,0),P_Ac_Dtl_Typ)
              and a_cy= Decode(P_cur_code,null,a_cy,P_cur_code)
              and doc_date between P_F_Date and  P_T_Date
              and doc_type<>0
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
              and nvl(pj_no,'0')   = Decode(P_pj_code,null,nvl(pj_no,'0'),P_pj_code)
              and nvl(actv_no,'0') = Decode(P_actv_code,null,nvl(actv_no,'0'),P_actv_code)
              and nvl(Rep_code,'0') = Decode(P_Rep_code,null,nvl(Rep_code,'0'),P_Rep_code)
              and nvl(Col_No,0)    = Decode(P_Col_No,null,nvl(Col_No,0),P_Col_No)
              and nvl(doc_post,0)    = Decode(P_DOC_POST,2,nvl(doc_post,0),P_DOC_POST);
              
    Else -- Balance (2)


           Select nvl(sum(amt),0)
             Into v_blnc_amt
             From Ias_Post_Dtl
            where nvl(A_code,'0') = Decode(P_A_Code,null,nvl(A_Code,'0'),P_A_Code)
              and nvl(Ac_Code_Dtl,'0') = Decode(P_Ac_code_Dtl,Null,nvl(Ac_Code_Dtl,'0'),P_Ac_Code_Dtl)
              and nvl(Ac_Dtl_Typ,0)   = Decode(P_Ac_Dtl_Typ,0,nvl(Ac_Dtl_Typ,0),P_Ac_Dtl_Typ)
              and a_cy= Decode(P_cur_code,null,a_cy,P_cur_code)
              and doc_date <= P_T_Date
              and nvl(cc_code,'0') = Decode(P_cc_code,null,nvl(cc_code,'0'),P_cc_code)
              and nvl(pj_no,'0')   = Decode(P_pj_code,null,nvl(pj_no,'0'),P_pj_code)
              and nvl(actv_no,'0') = Decode(P_actv_code,null,nvl(actv_no,'0'),P_actv_code)
              and nvl(Rep_code,'0') = Decode(P_Rep_code,null,nvl(Rep_code,'0'),P_Rep_code)
              and nvl(Col_No,0)    = Decode(P_Col_No,null,nvl(Col_No,0),P_Col_No)
              and nvl(doc_post,0)    = Decode(P_DOC_POST,2,nvl(doc_post,0),P_DOC_POST);



    End If; --(2)


End If;--(1)


   Return(nvl(v_blnc_amt,0));

Exception
 When others then
  Return(0);
End Ys_Get_Blnc_Ac_Dtl_Fnc;
/
CREATE Function Calc_Wtavg_Cost ( P_Cost_Type  In Number,
                                             P_Wtavg_Type In Number,
                                             P_Icode      In Ias_Itm_Mst.I_CODE%TYPE,
                                             P_Iqty       In Number,
                                             P_Frqty      In Number  Default 0,
                                             P_Icost      In Number,
                                             P_Psize      In Number,
                                             P_Wcode      In WAREHOUSE_DETAILS.W_CODE%TYPE,
                                             P_Frc_No     In Number,
                                             P_Brn_no     In Number  Default Null,
                                             P_Brn_Year   In Number  Default Null,
                                             P_Cmp_no     In Number  Default Null,
                                             P_Brn_Usr    In Number  Default Null)  Return Number Is
		  v_Avlqty  Number:=0;
		  v_Wtavg   Number:=0;
			v_Nwtavg  Number:=0;

		--P_Cost_Type  ==> 1 = FIFO , 2 = WtAvg
		--P_Wtavg_Type ==> 1 = Item , 2 = Item + W_code , 3 = Item + Whg_code

  Begin
	      
	   If P_Cost_Type = 2 Then -- Wt_Avg Item
		      
        If P_Wtavg_Type = 1 Then -- By Item
           v_Avlqty:= Get_Icode_AvlQty(P_Icode=>P_Icode,P_Psize=>1) ;
        ElsIf P_Wtavg_Type = 2 Then -- By Item + W_code
           v_Avlqty:= Get_Icode_AvlQty(P_Icode=>P_Icode,P_Psize=>1,P_Wcode=>P_Wcode) ;
        ElsIf P_Wtavg_Type = 3 Then -- By Item + Whg_code
          v_Avlqty:= Get_Icode_Whgcode_Avlqty(P_Icode=>P_Icode,P_Psize=>1,P_Whgcode=>Ias_Wcode_Pkg.Get_Whg_Code(P_Wcode)) ;	         
        End If;
	       
		    If P_Wtavg_Type = 1 Then -- WtAvg Item
               Begin
                  Select Nvl(I_cwtavg,0)
                    Into V_Wtavg 
                    From Ias_Itm_Mst 
                   Where I_code=P_Icode
                     And Nvl(Service_Itm,0) = 0
                     And Rownum<=1;
               Exception
                 When Others Then
                    V_Wtavg := 0 ;
               End ;	           
		    ElsIf  P_Wtavg_Type = 2  Then -- WtAvg I_Code + W_Code       
                   Begin  
                      Select Nvl(I_Cwtavg,0) 
                        Into V_Wtavg 
                        From Ias_Itm_Wcode 
                       Where I_code  = P_Icode
                         And W_code  = P_Wcode
                         And Itm_Unt = Ias_Itm_Pkg.Get_Icode_Min_Unit (P_I_Code => P_Icode ) 
                         And Rownum<=1;
                   Exception 
                     When Others Then
                          V_Wtavg := 0 ;
                   End ;    
                     
        ElsIf  P_Wtavg_Type = 3  Then -- WtAvg I_Code + Whg_Code         
                  Begin                                       
                      Select Max(Nvl(I_Cwtavg,0)) 
                        Into V_Wtavg 
                        From Ias_Itm_Wcode 
                       Where I_code    = P_Icode
                         And Whg_Code  = Ias_Wcode_Pkg.Get_Whg_Code  (P_Wcode)
                         And Itm_Unt   = Ias_Itm_Pkg.Get_Icode_Min_Unit (P_I_Code => P_Icode ) 
                         And RowNum   <= 1 ;         		     
                  Exception 
                      When Others Then
                        V_Wtavg :=  0 ;
                  End ;
				                             
        End If ;                                    	      
                
             		     
		 End If;   -- Wt_Avg Item

                 
                  	     

	   If v_Avlqty <= 0 Then
	      v_Nwtavg :=Nvl(p_Icost,0)/nvl(p_psize,1);
	   Else
	     Begin
        v_Nwtavg := ((Nvl(v_Wtavg,0) * nvl(v_Avlqty,0)) + (Nvl(p_Icost,0)* (nvl(p_IQty,0) + nvl(P_Frqty,0) )))/(((nvl(p_IQty,0) + nvl(P_Frqty,0) )*nvl(p_psize,1))+ nvl(v_Avlqty,0)) ;
	      Exception
	       When ZERO_DIVIDE then
	        v_Nwtavg:=v_Wtavg;
	     End;
	   End If;
	   
	   If P_Cost_Type = 2 Then -- WtAvg 
	      If P_Wtavg_Type = 1 Then --By Item
			      Begin
			        Update Ias_Itm_Mst Set I_cwtavg = Round(nvl(v_Nwtavg,0) ,P_Frc_No)
			         Where I_Code = P_Icode;

			        Update Ias_Itm_Mst Set Primary_Cost = Nvl(I_cwtavg,0)
			         Where I_Code = P_Icode
			          And  Nvl(Primary_Cost,0)  = 0 ;
			         			         
			       Exception
			         When Others Then
			           Raise_Application_Error(-20004,'Error When Updating i_cwtavg For i_code = '||P_Icode||chr(13)||SqlErrm) ;		    
			      End;	   
			         
	      ElsIf P_Wtavg_Type = 2 Then --By Item_Wcode
			      Begin
			        Update Ias_Itm_Wcode Set I_cwtavg = Round(nvl(v_Nwtavg,0) * nvl(p_size,1),P_Frc_No)
			         Where I_Code = P_Icode
			           and W_code = P_Wcode ;

			        Update Ias_Itm_Wcode Set Primary_Cost = Nvl(I_cwtavg,0)
			         Where I_Code = P_Icode
			          And  W_code = P_Wcode 
			          And  Nvl(Primary_Cost,0)  = 0 ;
			          			           
			       Exception			         
			         When Others Then
		           Raise_Application_Error(-20005,'Error When Updating i_cwtavg In Ias_Itm_Wcode For i_code = '||P_Icode||chr(13)||SqlErrm) ;		    
			      End;
	      ElsIf P_Wtavg_Type = 3 Then --By Item_Whgcode
			      Begin
			        Update Ias_Itm_Wcode Set I_cwtavg = Round(nvl(v_Nwtavg,0) * nvl(p_size,1),P_Frc_No)
			         Where I_Code   = P_Icode
			           and Whg_code = Ias_Wcode_Pkg.Get_Whg_Code  (P_Wcode);

			        Update Ias_Itm_Wcode Set Primary_Cost = Nvl(I_cwtavg,0)
			         Where I_Code   = P_Icode
			          And  Whg_code = Ias_Wcode_Pkg.Get_Whg_Code  (P_Wcode)
			          And  Nvl(Primary_Cost,0)  = 0 ;
			          			           
			       Exception			         
			         When Others Then
		           Raise_Application_Error(-20006,'Error When Updating i_cwtavg In Ias_Itm_Wcode For i_code = '||P_Icode||chr(13)||SqlErrm) ;		    
			      End;
	      End If;

	      If  P_Wtavg_Type In ( 2, 3 ) Then  
	       
		        Begin
				        Update Ias_Itm_Mst
				         Set I_Cwtavg = Round(Nvl(Inv_Get_Avg_Itm_Cst_Fnc( P_Cost_Type   => P_Cost_Type  ,
				                                                           P_Wtavg_Type  => P_Wtavg_Type ,
				                                                           P_I_Code      => P_Icode      ) ,0) , P_Frc_No )
				         Where I_Code = P_Icode ; 
			      Exception			         
			         When Others Then
		           Raise_Application_Error(-20007,'Error When Updating Avg I_Cwtavg In Ias_Itm_Wcode For i_code = '||P_Icode||chr(13)||SqlErrm) ;		    
			      End;	      
	      
	      End If ;	      
	   
	   End If;
   
     Return(v_Nwtavg);
   
End Calc_Wtavg_Cost;
/
CREATE FUNCTION Check_Ac_Cst_Vnd(P_a_code In ACCOUNT.A_CODE%TYPE) RETURN NUMBER IS
 Cnt  NUMBER;
BEGIN
--cnt = 1 Customer
--cnt = 2 Vendor

If P_a_code Is Not Null Then --(1)

 Begin
  Select 1 Into Cnt From Customer
   Where c_a_code =P_a_code
     and RowNum<=1;
 
   Exception
   When No_Data_Found Then
    Cnt:=0;
   When Others Then
    Cnt:=0;
  End;
