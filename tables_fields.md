## Account (ACCOUNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | إجباري |  | PK |
| A_NAME_ENG | A_NAME_ENG (A_NAME_ENG) | VARCHAR2(100), | إجباري |  |  |
| A_REPORT | A_REPORT (A_REPORT) | NUMBER(5, 0) CONSTRAINT | إجباري |  |  |
| FAV_AC | FAV_AC (FAV_AC) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| ADVNC_EXPNS_RVNU_FLG | ADVNC_EXPNS_RVNU_FLG (ADVNC_EXPNS_RVNU_FLG) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 131072 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## AccountCurrency (ACCOUNT_CURR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  | PK |

## AccountGrouping (ACCOUNT_GROUPING)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(5, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## AccountType (ACCOUNT_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ACCOUNT_TYPE | ACCOUNT_TYPE (ACCOUNT_TYPE) | NUMBER(5, 0), | اختياري |  | PK |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## ALL_BRANCHES (ALL_BRANCHES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FILE_NM | FILE_NM (FILE_NM) | VARCHAR2(50), | اختياري |  |  |

## APX_SCR_PRV (APX_SCR_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SCR_NO | SCR_NO (SCR_NO) | NUMBER(5, 0), | اختياري |  | PK |

## ARS_ANSWR_QUESTNNR_DTL (ARS_ANSWR_QUESTNNR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ANSWR_NO | ANSWR_NO (ANSWR_NO) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| CNFRM_DSC | CNFRM_DSC (CNFRM_DSC) | VARCHAR2(250), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| TRNS_NO | TRNS_NO (TRNS_NO) | , | اختياري |  |  |

## CustomerTransactionGps (ARS_CST_TRNS_GPS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(10, 0), | اختياري |  |  |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| NEWS_F_DSC | NEWS_F_DSC (NEWS_F_DSC) | VARCHAR2(1000), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## ARS_PARA_CSS (ARS_PARA_CSS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | اختياري |  | PK |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| CST_LMT_SO_UNPRCSSD | CST_LMT_SO_UNPRCSSD (CST_LMT_SO_UNPRCSSD) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## ARS_QUESTNNR_DTL (ARS_QUESTNNR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(250), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| INACTV | INACTV (INACTV) | NUMBER(1, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## AR_MSG_CSS (AR_MSG_CSS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MSG_SRC | MSG_SRC (MSG_SRC) | NUMBER(1, 0), | اختياري |  |  |
| MSG_READ_FLG | MSG_READ_FLG (MSG_READ_FLG) | NUMBER(1, 0), | اختياري |  |  |

## ASSEMBLE_KIT_ITEMS (ASSEMBLE_KIT_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_POST | DOC_POST (DOC_POST) | NUMBER(1, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## ASSEMBLE_KIT_ITEMS_DET (ASSEMBLE_KIT_ITEMS_DET)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| EXP_AMT | EXP_AMT (EXP_AMT) | NUMBER, | إجباري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER, | اختياري |  |  |

## AUD (AUD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |

## Backup (BACKUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BK_NO | BK_NO (BK_NO) | NUMBER(15, 0), | اختياري |  | PK |
| DOC_SRL | DOC_SRL (DOC_SRL) | NUMBER(38, 0), | إجباري |  | PK |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER(38, 0), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| APRV_DSC | APRV_DSC (APRV_DSC) | VARCHAR2(500), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(60), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## BIN_DETAILS (BIN_DETAILS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| B_CODE | B_CODE (B_CODE) | VARCHAR2(20), | اختياري |  | PK |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## CASH_AT_BANK (CASH_AT_BANK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | إجباري |  | PK |
| BANK_SR | BANK_SR (BANK_SR) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| B_BOX | B_BOX (B_BOX) | VARCHAR2(10), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| PYMNT_TYP_NO_DFLT | PYMNT_TYP_NO_DFLT (PYMNT_TYP_NO_DFLT) | NUMBER(2, 0), | اختياري |  |  |

## CASH_IN_HAND (CASH_IN_HAND)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CASH_NO | CASH_NO (CASH_NO) | NUMBER(10, 0), | إجباري |  | PK |
| POS_SYS | POS_SYS (POS_SYS) | NUMBER(1, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| RCPT_SRL_TYP | RCPT_SRL_TYP (RCPT_SRL_TYP) | NUMBER(2, 0), | اختياري |  |  |

## CC_GROUPING (CC_GROUPING)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(5, 0), | إجباري |  | PK |

## City (CITIES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CITY_NO | CITY_NO (CITY_NO) | NUMBER(10, 0), | إجباري |  | PK |
| CITY_SHRT | CITY_SHRT (CITY_SHRT) | VARCHAR2(10), | اختياري |  |  |
| NOT_ALLW_DEAL_WTH | NOT_ALLW_DEAL_WTH (NOT_ALLW_DEAL_WTH) | NUMBER(1, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## COLLERCTOR (COLLERCTOR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COL_SER | COL_SER (COL_SER) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## CompoundItem (COMPOUND_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  |  |
| DITM_UNT | DITM_UNT (DITM_UNT) | VARCHAR2(10), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## COSTING_TYPES (COSTING_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COSTING_TYPE_NO | COSTING_TYPE_NO (COSTING_TYPE_NO) | NUMBER(2, 0), | اختياري |  | PK |
| INV_AC | INV_AC (INV_AC) | VARCHAR2(30), | اختياري |  |  |
| AC3_NAME | AC3_NAME (AC3_NAME) | VARCHAR2(60), | اختياري |  |  |
| AC7_AC | AC7_AC (AC7_AC) | VARCHAR2(30), | اختياري |  |  |
| AC10_NAME | AC10_NAME (AC10_NAME) | VARCHAR2(60), | اختياري |  |  |
| AC17_NAME | AC17_NAME (AC17_NAME) | VARCHAR2(60), | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(60), | اختياري |  |  |
| FIELD9 | FIELD9 (FIELD9) | VARCHAR2(60), | اختياري |  |  |

## COST_CENTER_TYPES (COST_CENTER_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CC_TYPE | CC_TYPE (CC_TYPE) | NUMBER(5, 0), | إجباري |  | PK |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |

## COST_DETAIL (COST_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PI_NO | PI_NO (PI_NO) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| ACC_INV_CUR_AMT | ACC_INV_CUR_AMT (ACC_INV_CUR_AMT) | NUMBER, | اختياري |  |  |
| EX_RATE | EX_RATE (EX_RATE) | NUMBER, | إجباري |  |  |

## COST_MASTER (COST_MASTER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PI_NO | PI_NO (PI_NO) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| PI_COST_TYPE_NO | PI_COST_TYPE_NO (PI_COST_TYPE_NO) | NUMBER(2, 0), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| APPROVD_EX_RATE | APPROVD_EX_RATE (APPROVD_EX_RATE) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## CREDIT_CARD_TYPES (CREDIT_CARD_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CR_CARD_NO | CR_CARD_NO (CR_CARD_NO) | NUMBER(5, 0), | اختياري |  | PK |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## Customer (CUSTOMER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | إجباري |  | PK |
| C_E_NAME | C_E_NAME (C_E_NAME) | VARCHAR2(100), | إجباري |  |  |
| C_ADDRESS | C_ADDRESS (C_ADDRESS) | VARCHAR2(500), | اختياري |  |  |
| C_SINCE | C_SINCE (C_SINCE) | DATE, | اختياري |  |  |
| CONF_LAST_DATE | CONF_LAST_DATE (CONF_LAST_DATE) | DATE, | اختياري |  |  |
| G_NAME | G_NAME (G_NAME) | VARCHAR2(60), | اختياري |  |  |
| G_REG_TRADA | G_REG_TRADA (G_REG_TRADA) | VARCHAR2(30), | اختياري |  |  |
| CONN_BRN_NO | CONN_BRN_NO (CONN_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| LONGITUDE | LONGITUDE (LONGITUDE) | VARCHAR2(20), | اختياري |  |  |
| BLK_LST_DATE | BLK_LST_DATE (BLK_LST_DATE) | DATE, | اختياري |  |  |
| AGNT_FLG | AGNT_FLG (AGNT_FLG) | NUMBER(1, 0), | اختياري |  |  |
| EQ_CPTL | EQ_CPTL (EQ_CPTL) | VARCHAR2(60), | اختياري |  |  |
| CST_INV_LMT_LOCAL | CST_INV_LMT_LOCAL (CST_INV_LMT_LOCAL) | NUMBER, | اختياري |  |  |
| CRD_END_DATE_AH | CRD_END_DATE_AH (CRD_END_DATE_AH) | DATE, | اختياري |  |  |
| SRC_INC_RATE | SRC_INC_RATE (SRC_INC_RATE) | NUMBER, | اختياري |  |  |
| C_FINSCAN_STATUS | C_FINSCAN_STATUS (C_FINSCAN_STATUS) | NUMBER(1, 0), | اختياري |  |  |
| HOME_ADDRESS | HOME_ADDRESS (HOME_ADDRESS) | VARCHAR2(60), | اختياري |  |  |
| PASS_ISSUSE_PLAC | PASS_ISSUSE_PLAC (PASS_ISSUSE_PLAC) | VARCHAR2(60), | اختياري |  |  |
| NAME_IN_PASS | NAME_IN_PASS (NAME_IN_PASS) | VARCHAR2(150), | اختياري |  |  |
| CST_BNF_TYPE | CST_BNF_TYPE (CST_BNF_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DISC_PER_DFLT | DISC_PER_DFLT (DISC_PER_DFLT) | NUMBER, | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(1000), | اختياري |  |  |
| FIELD15 | FIELD15 (FIELD15) | VARCHAR2(60), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| WEB_SRVC_USE_AUTO_SYNC_CST | WEB_SRVC_USE_AUTO_SYNC_CST (WEB_SRVC_USE_AUTO_SYNC_CST) | NUMBER, | اختياري |  |  |
| WEB_SRVC_USR_NO | WEB_SRVC_USR_NO (WEB_SRVC_USR_NO) | VARCHAR2(30), | اختياري |  |  |
| AGENT_CST_NO_SER | AGENT_CST_NO_SER (AGENT_CST_NO_SER) | VARCHAR2(15), | اختياري |  |  |
| LMT_ITM_QTY_TYP | LMT_ITM_QTY_TYP (LMT_ITM_QTY_TYP) | NUMBER(1, 0), | اختياري |  |  |
| CMPNS_TYP | CMPNS_TYP (CMPNS_TYP) | NUMBER(5, 0), | اختياري |  |  |
| BUILDING_NO | BUILDING_NO (BUILDING_NO) | VARCHAR2(200), | اختياري |  |  |

## CustomerBankAccount (CUSTOMER_BNK_ACCNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| A_CY | A_CY (A_CY) | VARCHAR2(7), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## CustomerClass (CUSTOMER_CLASS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CLASS | C_CLASS (C_CLASS) | NUMBER(3, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## CUSTOMER_CURR_RQ (CUSTOMER_CURR_RQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## CustomerDegree (CUSTOMER_DEGREE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_BOX_CODE | C_BOX_CODE (C_BOX_CODE) | VARCHAR2(20), | اختياري |  |  |
| ROUTE_NO | ROUTE_NO (ROUTE_NO) | NUMBER(10, 0), | اختياري |  |  |
| C_E_MAIL | C_E_MAIL (C_E_MAIL) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| G_EXPIRE_DATE | G_EXPIRE_DATE (G_EXPIRE_DATE) | DATE, | اختياري |  |  |
| G_FIN_CENTER | G_FIN_CENTER (G_FIN_CENTER) | VARCHAR2(60), | اختياري |  |  |
| C_SALES_MAN | C_SALES_MAN (C_SALES_MAN) | NUMBER(1, 0), | اختياري |  |  |
| RESPONS_PERSON | RESPONS_PERSON (RESPONS_PERSON) | VARCHAR2(60), | اختياري |  |  |
| DRIVER_NO | DRIVER_NO (DRIVER_NO) | NUMBER(10, 0), | اختياري |  |  |
| CRD_END_DATE_AH | CRD_END_DATE_AH (CRD_END_DATE_AH) | DATE, | اختياري |  |  |
| SRC_INC_RATE | SRC_INC_RATE (SRC_INC_RATE) | NUMBER, | اختياري |  |  |
| C_FINSCAN_STATUS | C_FINSCAN_STATUS (C_FINSCAN_STATUS) | NUMBER(1, 0), | اختياري |  |  |
| HOME_ADDRESS | HOME_ADDRESS (HOME_ADDRESS) | VARCHAR2(60), | اختياري |  |  |
| PASS_ISSUSE_PLAC | PASS_ISSUSE_PLAC (PASS_ISSUSE_PLAC) | VARCHAR2(60), | اختياري |  |  |
| NAME_IN_PASS | NAME_IN_PASS (NAME_IN_PASS) | VARCHAR2(150), | اختياري |  |  |
| CST_BNF_TYPE | CST_BNF_TYPE (CST_BNF_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| CST_VAT_GRP_FLG | CST_VAT_GRP_FLG (CST_VAT_GRP_FLG) | NUMBER(1, 0), | إجباري |  |  |
| CST_EXCPT_QT_PRM_FLG | CST_EXCPT_QT_PRM_FLG (CST_EXCPT_QT_PRM_FLG) | NUMBER(1, 0), | إجباري |  |  |
| C_CLASS_TYP | C_CLASS_TYP (C_CLASS_TYP) | NUMBER(5, 0), | اختياري |  |  |
| C_PER_FEE | C_PER_FEE (C_PER_FEE) | NUMBER(3, 0), | إجباري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(60), | اختياري |  |  |
| FIELD14 | FIELD14 (FIELD14) | VARCHAR2(60), | اختياري |  |  |
| LATITUDE | LATITUDE (LATITUDE) | VARCHAR2(20), | اختياري |  |  |
| ALLOW_PRD_AFTR_DUE | ALLOW_PRD_AFTR_DUE (ALLOW_PRD_AFTR_DUE) | NUMBER(3, 0), | اختياري |  |  |
| CRD_ISSUSE_PLAC | CRD_ISSUSE_PLAC (CRD_ISSUSE_PLAC) | VARCHAR2(60), | اختياري |  |  |
| CR_NO | CR_NO (CR_NO) | VARCHAR2(60), | اختياري |  |  |
| C_ID_PLACE | C_ID_PLACE (C_ID_PLACE) | VARCHAR2(50), | اختياري |  |  |
| PLTCL_RLTN_FLG | PLTCL_RLTN_FLG (PLTCL_RLTN_FLG) | NUMBER(1, 0), | اختياري |  |  |

## DATE_LOCK (DATE_LOCK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| UFD | UFD (UFD) | DATE, | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| GR_ITEM_TYPE | GR_ITEM_TYPE (GR_ITEM_TYPE) | NUMBER, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| ATTCH_NO1 | ATTCH_NO1 (ATTCH_NO1) | NUMBER, | اختياري |  |  |
| ATTCH_NO5 | ATTCH_NO5 (ATTCH_NO5) | NUMBER, | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| PROCESSED_ADJ | PROCESSED_ADJ (PROCESSED_ADJ) | NUMBER(1, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |

## JournalDetail (DETAIL_JOURNAL_V)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| CSH_BNK_NO | CSH_BNK_NO (CSH_BNK_NO) | NUMBER(10, 0), | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| WO_SER | WO_SER (WO_SER) | NUMBER(38, 0), | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0), | اختياري |  |  |
| NOTE | NOTE (NOTE) | VARCHAR2(150), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| FLD1 | FLD1 (FLD1) | VARCHAR2(60), | اختياري |  |  |
| FLD5 | FLD5 (FLD5) | VARCHAR2(60))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 983040 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## JournalDetailBranch (DETAIL_JOURNAL_V_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| LC_NO | LC_NO (LC_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_JV_TYPE_REF | DOC_JV_TYPE_REF (DOC_JV_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_DUE_DATE | DOC_DUE_DATE (DOC_DUE_DATE) | DATE, | اختياري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| CNTRCT_BTCH | CNTRCT_BTCH (CNTRCT_BTCH) | NUMBER(6, 0), | اختياري |  |  |

## DETAIL_OUT_BILLS (DETAIL_OUT_BILLS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| OUT_TYPE | OUT_TYPE (OUT_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| I_NUMBER | I_NUMBER (I_NUMBER) | NUMBER, | اختياري |  |  |
| OTHR_AMT | OTHR_AMT (OTHR_AMT) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## DETAIL_OUT_BILLS_BR (DETAIL_OUT_BILLS_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | اختياري |  |  |
| I_HEIGHT | I_HEIGHT (I_HEIGHT) | NUMBER, | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## DISASSEMBLE_KIT_ITEMS (DISASSEMBLE_KIT_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | إجباري |  |  |

## DISASSEMBLE_KIT_ITEMS_DET (DISASSEMBLE_KIT_ITEMS_DET)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  | PK |
| KIT_ITEM_NO | KIT_ITEM_NO (KIT_ITEM_NO) | VARCHAR2(30), | اختياري |  | PK |
| F_W_CODE | F_W_CODE (F_W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| WT_AVG_BEFORE | WT_AVG_BEFORE (WT_AVG_BEFORE) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| KIT_ITEM_NO | KIT_ITEM_NO (KIT_ITEM_NO) | , | اختياري |  | PK |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | إجباري |  |  |
| CUR_NAME | CUR_NAME (CUR_NAME) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| CUR_RATE_POS | CUR_RATE_POS (CUR_RATE_POS) | NUMBER, | اختياري |  |  |
| MIN_CUR_RATE | MIN_CUR_RATE (MIN_CUR_RATE) | NUMBER(24, 9), | إجباري |  |  |

## FixedAsset (FAS_ASSETS_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AS_CODE | AS_CODE (AS_CODE) | VARCHAR2(30), | اختياري |  |  |
| AS_A_NAME | AS_A_NAME (AS_A_NAME) | VARCHAR2(100), | اختياري |  |  |

## FORM_DETAIL (FORM_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| F_SYS | F_SYS (F_SYS) | VARCHAR2(15), | اختياري |  |  |

## GLS_ACCNT_DTL (GLS_ACCNT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| AC_DTL_TYP_DTL | AC_DTL_TYP_DTL (AC_DTL_TYP_DTL) | NUMBER(5, 0), | اختياري |  |  |
| INACTV_RSON | INACTV_RSON (INACTV_RSON) | VARCHAR2(250), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(100), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## GLS_ACCNT_DTL_CURR (GLS_ACCNT_DTL_CURR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  | PK |
| CUR_CODE | CUR_CODE (CUR_CODE) | VARCHAR2(7), | اختياري |  | PK |
| INACTV_DATE | INACTV_DATE (INACTV_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## GLS_ACCNT_DTL_GRPS (GLS_ACCNT_DTL_GRPS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GRP_CODE | GRP_CODE (GRP_CODE) | NUMBER(10, 0), | اختياري |  | PK |
| GRP_F_NM | GRP_F_NM (GRP_F_NM) | VARCHAR2(100), | إجباري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(100), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(5, 0), | اختياري |  |  |

## GLS_AC_CODE_DTL_GRPS (GLS_AC_CODE_DTL_GRPS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GRP_CODE | GRP_CODE (GRP_CODE) | NUMBER(10, 0), | اختياري |  | PK |
| GRP_F_NM | GRP_F_NM (GRP_F_NM) | VARCHAR2(100), | إجباري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30), | اختياري |  | PK |

## GLS_ADVNC_EXPNS_RVNU_DTL (GLS_ADVNC_EXPNS_RVNU_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_D_DSC | DOC_D_DSC (DOC_D_DSC) | VARCHAR2(500), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## GLS_ADVNC_EXPNS_RVNU_MST (GLS_ADVNC_EXPNS_RVNU_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_ADVNC | AC_CODE_ADVNC (AC_CODE_ADVNC) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| AC_DTL_TYP_ADVNC | AC_DTL_TYP_ADVNC (AC_DTL_TYP_ADVNC) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| FIELD9 | FIELD9 (FIELD9) | VARCHAR2(60), | اختياري |  |  |
| POST_DATE | POST_DATE (POST_DATE) | DATE, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |

## GLS_BNK_CHQ_DTL (GLS_BNK_CHQ_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | اختياري |  |  |
| BOOK_NO | BOOK_NO (BOOK_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| DATE_CHQ_ST | DATE_CHQ_ST (DATE_CHQ_ST) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## GLS_BNK_CHQ_MST (GLS_BNK_CHQ_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | إجباري |  |  |
| CUR_CODE | CUR_CODE (CUR_CODE) | VARCHAR2(7), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| DOC_D_SQ | DOC_D_SQ (DOC_D_SQ) | NUMBER(38, 0), | اختياري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30 CHAR), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15 CHAR), | اختياري |  |  |
| DOC_SRL_REF | DOC_SRL_REF (DOC_SRL_REF) | NUMBER(38, 0), | اختياري |  |  |

## GLS_BNK_IDNTF_MST (GLS_BNK_IDNTF_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| T_DATE | T_DATE (T_DATE) | DATE, | إجباري |  |  |
| FLD3 | FLD3 (FLD3) | VARCHAR2(250 CHAR), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| APRV_U_ID | APRV_U_ID (APRV_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | إجباري |  |  |

## GLS_CRNCY_USR_LMT (GLS_CRNCY_USR_LMT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUR_CODE | CUR_CODE (CUR_CODE) | VARCHAR2(7), | اختياري |  | PK |
| MAX_CUR_RATE | MAX_CUR_RATE (MAX_CUR_RATE) | NUMBER, | اختياري |  |  |
| DOC_DESC | DOC_DESC (DOC_DESC) | VARCHAR2(250), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | إجباري |  |  |
| DOC_NOTE | DOC_NOTE (DOC_NOTE) | VARCHAR2(250), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## GLS_MOV_BDGT_DTL (GLS_MOV_BDGT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BDGT_TYPE | BDGT_TYPE (BDGT_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(38, 0), | اختياري |  |  |
| T_DATE | T_DATE (T_DATE) | DATE, | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | إجباري |  |  |
| BGT_MOV_TYP | BGT_MOV_TYP (BGT_MOV_TYP) | NUMBER(2, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## GLS_RQ_EXCH_CUR_DTL (GLS_RQ_EXCH_CUR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(20, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_DSC | DOC_DSC (DOC_DSC) | VARCHAR2(500), | إجباري |  |  |
| DOC_TYP_REF | DOC_TYP_REF (DOC_TYP_REF) | NUMBER(10, 0), | اختياري |  |  |
| DOC_SRL_REF | DOC_SRL_REF (DOC_SRL_REF) | NUMBER(38, 0), | إجباري |  |  |
| LC_NO | LC_NO (LC_NO) | VARCHAR2(15), | اختياري |  |  |

## GLS_RQ_EXCH_CUR_MST (GLS_RQ_EXCH_CUR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(20, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_AMT_F | DOC_AMT_F (DOC_AMT_F) | NUMBER, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| ATTACH_NO | ATTACH_NO (ATTACH_NO) | NUMBER(3, 0), | إجباري |  |  |
| MOVD_YR | MOVD_YR (MOVD_YR) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## GLS_RQ_VCHR_MST_ACCNT (GLS_RQ_VCHR_MST_ACCNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  | PK |
| AC_CODE_DTL_SUB | AC_CODE_DTL_SUB (AC_CODE_DTL_SUB) | VARCHAR2(30), | إجباري |  |  |
| DOC_DSC | DOC_DSC (DOC_DSC) | VARCHAR2(750), | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | إجباري |  |  |

## TaxAccount (GLS_TAX_ACC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL_SUB | AC_CODE_DTL_SUB (AC_CODE_DTL_SUB) | VARCHAR2(30), | إجباري |  |  |
| DOC_DSC | DOC_DSC (DOC_DSC) | VARCHAR2(750), | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | إجباري |  |  |

## JournalVoucherType (GLS_VCHR_TYP_ACNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_TYPE | V_TYPE (V_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30), | اختياري |  |  |

## JournalVoucherTypePrivilege (GLS_VCHR_TYP_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_TYP | V_TYP (V_TYP) | NUMBER(4, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## EmployeeAttendance (GNR_ATTNDNC_LOC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LOC_NO | LOC_NO (LOC_NO) | NUMBER(10, 0), | إجباري |  | PK |
| GPS_LNGITD_X | GPS_LNGITD_X (GPS_LNGITD_X) | VARCHAR2(100), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(150), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## GNR_RQ_TAX_ITM_MOVMNT (GNR_RQ_TAX_ITM_MOVMNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  | PK |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | إجباري |  |  |
| TAX_AMT | TAX_AMT (TAX_AMT) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## GNR_RQ_TAX_ITM_MOVMNT_BR (GNR_RQ_TAX_ITM_MOVMNT_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | إجباري |  |  |
| TAX_AMT | TAX_AMT (TAX_AMT) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## GNR_TAX_CODE_DTL (GNR_TAX_CODE_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TAX_NO | TAX_NO (TAX_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## GNR_TAX_INPT (GNR_TAX_INPT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INPT_TYP | INPT_TYP (INPT_TYP) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| TAX_NO | TAX_NO (TAX_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AGNCY_NO | AGNCY_NO (AGNCY_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| INPT_CODE | INPT_CODE (INPT_CODE) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| TAX_PRCNT | TAX_PRCNT (TAX_PRCNT) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |

## GNR_TAX_INPT_MOVMNT_BR (GNR_TAX_INPT_MOVMNT_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| TAX_NO | TAX_NO (TAX_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AGNCY_NO | AGNCY_NO (AGNCY_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| INPT_CODE | INPT_CODE (INPT_CODE) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| TAX_PRCNT | TAX_PRCNT (TAX_PRCNT) | NUMBER NOT NULL ENABLE, | إجباري |  |  |

## GNR_TAX_ITM (GNR_TAX_ITM)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(5, 0), | إجباري |  |  |
| DISC_AMT | DISC_AMT (DISC_AMT) | NUMBER, | إجباري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## GNR_TAX_ITM_MOVMNT_BR (GNR_TAX_ITM_MOVMNT_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  | PK |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | إجباري |  |  |
| TAX_AMT | TAX_AMT (TAX_AMT) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## TaxSlice (GNR_TAX_SLICE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SLICE_NO | SLICE_NO (SLICE_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  | PK |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## GNR_TAX_TYP_CLC_BRN (GNR_TAX_TYP_CLC_BRN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CLC_TYP_NO | CLC_TYP_NO (CLC_TYP_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |

## GNR_TAX_TYP_CLC_DTL (GNR_TAX_TYP_CLC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CLC_TYP_NO | CLC_TYP_NO (CLC_TYP_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  | PK |
| TAX_NO | TAX_NO (TAX_NO) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  | PK |
| CLC_TYP_L_NM | CLC_TYP_L_NM (CLC_TYP_L_NM) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |
| CLC_TYP_DFLT_FLG | CLC_TYP_DFLT_FLG (CLC_TYP_DFLT_FLG) | NUMBER, | اختياري |  |  |
| FAS_SYS_FLG | FAS_SYS_FLG (FAS_SYS_FLG) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## GNR_WEB_SRVC_CLMN (GNR_WEB_SRVC_CLMN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SRVC_NO | SRVC_NO (SRVC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  | PK |
| PR_REP | PR_REP (PR_REP) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| HTTP_SUCCES_RSPNS_CODE | HTTP_SUCCES_RSPNS_CODE (HTTP_SUCCES_RSPNS_CODE) | VARCHAR2(100), | اختياري |  |  |
| ROOT_OBJ_NAME | ROOT_OBJ_NAME (ROOT_OBJ_NAME) | VARCHAR2(100), | اختياري |  |  |

## GNR_WEB_SRVC_RQUST_BODY (GNR_WEB_SRVC_RQUST_BODY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SRVC_NO | SRVC_NO (SRVC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  | PK |
| QRY_ORDR | QRY_ORDR (QRY_ORDR) | VARCHAR2(4000), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## GPS_EVENT (GPS_EVENT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SMAN_TYP | SMAN_TYP (SMAN_TYP) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| SRL | SRL (SRL) | NUMBER, | اختياري |  |  |
| GPS_LAST_SRVR_DATE | GPS_LAST_SRVR_DATE (GPS_LAST_SRVR_DATE) | DATE, | اختياري |  |  |

## GRN_DETAIL (GRN_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_NO | GR_NO (GR_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| PO_SER | PO_SER (PO_SER) | NUMBER(38, 0), | إجباري |  |  |
| FREE_QTY | FREE_QTY (FREE_QTY) | NUMBER, | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | إجباري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0), | اختياري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | إجباري |  |  |
| FIELD_DTL1 | FIELD_DTL1 (FIELD_DTL1) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL4 | FIELD_DTL4 (FIELD_DTL4) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL7 | FIELD_DTL7 (FIELD_DTL7) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL10 | FIELD_DTL10 (FIELD_DTL10) | VARCHAR2(60))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## GRN_MASTER (GRN_MASTER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_NO | GR_NO (GR_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| GRN_TYPE | GRN_TYPE (GRN_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(250), | اختياري |  |  |
| BILL_DATE_V_CODE | BILL_DATE_V_CODE (BILL_DATE_V_CODE) | DATE, | اختياري |  |  |
| CNTRCT_SER | CNTRCT_SER (CNTRCT_SER) | VARCHAR2(60), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## GROUP_DETAILS (GROUP_DETAILS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| G_CODE | G_CODE (G_CODE) | VARCHAR2(10), | إجباري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## GR_DETAIL (GR_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PI_TYPE | PI_TYPE (PI_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| CP_QTY | CP_QTY (CP_QTY) | NUMBER, | اختياري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| REC_NO | REC_NO (REC_NO) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_ATTCH | USE_ATTCH (USE_ATTCH) | NUMBER(1, 0), | اختياري |  |  |
| BARCODE | BARCODE (BARCODE) | VARCHAR2(30), | اختياري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |
| DIS_AMT_NOT_EFFECT | DIS_AMT_NOT_EFFECT (DIS_AMT_NOT_EFFECT) | NUMBER, | اختياري |  |  |
| INV_WTAVG_FRC | INV_WTAVG_FRC (INV_WTAVG_FRC) | NUMBER, | اختياري |  |  |

## GR_DETAIL_BR (GR_DETAIL_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PI_TYPE | PI_TYPE (PI_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| PUR_TYPE | PUR_TYPE (PUR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| DOC_JV_TYPE_REF | DOC_JV_TYPE_REF (DOC_JV_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SEQUENCE_REF | DOC_SEQUENCE_REF (DOC_SEQUENCE_REF) | NUMBER(38, 0), | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |
| INV_CMLTV_DIFF_FLG | INV_CMLTV_DIFF_FLG (INV_CMLTV_DIFF_FLG) | NUMBER(1, 0), | اختياري |  |  |

## GR_NOTE (GR_NOTE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PI_TYPE | PI_TYPE (PI_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_CY | A_CY (A_CY) | VARCHAR2(7), | اختياري |  |  |
| C_FLAG | C_FLAG (C_FLAG) | NUMBER(1, 0), | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| OUT_DIFF_AMT | OUT_DIFF_AMT (OUT_DIFF_AMT) | NUMBER, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(250), | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## GR_NOTE_BR (GR_NOTE_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PI_TYPE | PI_TYPE (PI_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| C_FLAG | C_FLAG (C_FLAG) | NUMBER(1, 0), | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| OUT_DIFF_AMT | OUT_DIFF_AMT (OUT_DIFF_AMT) | NUMBER, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |
| AUDIT_REF | AUDIT_REF (AUDIT_REF) | NUMBER(1, 0), | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| VAT_AMT_OTHR | VAT_AMT_OTHR (VAT_AMT_OTHR) | NUMBER, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## GST_RPRT_DTL (GST_RPRT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| R1_C | R1_C (R1_C) | VARCHAR2(50), | اختياري |  |  |
| R12_N | R12_N (R12_N) | NUMBER, | اختياري |  |  |
| R24_C | R24_C (R24_C) | VARCHAR2(100), | اختياري |  |  |

## GST_RPRT_MST (GST_RPRT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C1 | C1 (C1) | VARCHAR2(10), | اختياري |  |  |
| C5 | C5 (C5) | NUMBER, | اختياري |  |  |

## GUARN_ACCOUNT (GUARN_ACCOUNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_TRNS_TYPE | GR_TRNS_TYPE (GR_TRNS_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| AC_CODE_DTL_SUB | AC_CODE_DTL_SUB (AC_CODE_DTL_SUB) | VARCHAR2(30))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## GUARN_INCR (GUARN_INCR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INCR_NO | INCR_NO (INCR_NO) | NUMBER(15, 0), | اختياري |  |  |
| END_DATE | END_DATE (END_DATE) | DATE, | اختياري |  |  |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER, | اختياري |  |  |
| GR_MARGIN_AMT | GR_MARGIN_AMT (GR_MARGIN_AMT) | NUMBER(24, 9), | اختياري |  |  |
| COMM_A_CY | COMM_A_CY (COMM_A_CY) | VARCHAR2(7), | اختياري |  |  |
| AC_DTL_TYP_GR_MARGIN | AC_DTL_TYP_GR_MARGIN (AC_DTL_TYP_GR_MARGIN) | NUMBER(2, 0), | اختياري |  |  |
| AC_CODE_DTL_SUB_GR_ISSUE | AC_CODE_DTL_SUB_GR_ISSUE (AC_CODE_DTL_SUB_GR_ISSUE) | VARCHAR2(30), | اختياري |  |  |

## GUARN_ISSUE (GUARN_ISSUE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_TYPE | GR_TYPE (GR_TYPE) | NUMBER(1, 0), | اختياري |  | PK |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| END_DATE | END_DATE (END_DATE) | DATE, | اختياري |  |  |
| COMM_RATE | COMM_RATE (COMM_RATE) | NUMBER, | اختياري |  |  |
| GR_MARGIN_AMT | GR_MARGIN_AMT (GR_MARGIN_AMT) | NUMBER(24, 9), | اختياري |  |  |
| BUILDING_TYPE | BUILDING_TYPE (BUILDING_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| BUILD_MATER_EST_VALUE | BUILD_MATER_EST_VALUE (BUILD_MATER_EST_VALUE) | NUMBER(24, 9), | اختياري |  |  |
| J_SER_CLS | J_SER_CLS (J_SER_CLS) | NUMBER(38, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## GUARN_TYPE (GUARN_TYPE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_TYPE_NO | GR_TYPE_NO (GR_TYPE_NO) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DCTR_GRP | DCTR_GRP (DCTR_GRP) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30), | اختياري |  |  |
| TEL_NO | TEL_NO (TEL_NO) | VARCHAR2(30), | اختياري |  |  |
| FIELD3 | FIELD3 (FIELD3) | VARCHAR2(100), | اختياري |  |  |
| FIELD10 | FIELD10 (FIELD10) | VARCHAR2(100), | اختياري |  |  |
| INACTV_DATE | INACTV_DATE (INACTV_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| RLGN_NO | RLGN_NO (RLGN_NO) | NUMBER(5, 0), | اختياري |  |  |

## HPS_DCTR_PRV (HPS_DCTR_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## HPS_PTNT (HPS_PTNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PTNT_NO | PTNT_NO (PTNT_NO) | VARCHAR2(15), | إجباري |  |  |
| SCND_F_NM | SCND_F_NM (SCND_F_NM) | VARCHAR2(50), | إجباري |  |  |
| GNDR | GNDR (GNDR) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| BLD_TYP | BLD_TYP (BLD_TYP) | VARCHAR2(5), | إجباري |  |  |
| TEL_NO | TEL_NO (TEL_NO) | VARCHAR2(60), | اختياري |  |  |
| JOB_NM | JOB_NM (JOB_NM) | VARCHAR2(200), | اختياري |  |  |
| CNTRY_NO | CNTRY_NO (CNTRY_NO) | NUMBER(4, 0), | اختياري |  |  |
| INSURNC_NO | INSURNC_NO (INSURNC_NO) | VARCHAR2(30), | إجباري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(100), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(100), | اختياري |  |  |
| INACTV_DATE | INACTV_DATE (INACTV_DATE) | DATE, | اختياري |  |  |

## HRS_ARTCL (HRS_ARTCL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ARTCL_NO | ARTCL_NO (ARTCL_NO) | NUMBER(5, 0), | إجباري |  | PK |
| ARTCL_STOP | ARTCL_STOP (ARTCL_STOP) | NUMBER(4, 0), | اختياري |  |  |
| DAY_HOUR_DPNDNT | DAY_HOUR_DPNDNT (DAY_HOUR_DPNDNT) | NUMBER(1, 0), | اختياري |  |  |
| CONN_ACCNT_MTHD | CONN_ACCNT_MTHD (CONN_ACCNT_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| ARTCL_FRMULA | ARTCL_FRMULA (ARTCL_FRMULA) | VARCHAR2(4000), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(3, 0), | اختياري |  |  |
| ARTCL_PRCNT_CALC | ARTCL_PRCNT_CALC (ARTCL_PRCNT_CALC) | NUMBER(4, 2), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## HRS_EMP_MOVMNT (HRS_EMP_MOVMNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1
 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS
 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |

## HRS_USR_TRNS_PRV (HRS_USR_TRNS_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| ALLOW_EXD_ARTCL_LMT | ALLOW_EXD_ARTCL_LMT (ALLOW_EXD_ARTCL_LMT) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_EXD_LOAN_LMT | ALLOW_EXD_LOAN_LMT (ALLOW_EXD_LOAN_LMT) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_RETRIVE_SIGN_EXTRNL_FILE | ALLOW_RETRIVE_SIGN_EXTRNL_FILE (ALLOW_RETRIVE_SIGN_EXTRNL_FILE) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_UPD_EMP_STRT_WRK | ALLOW_UPD_EMP_STRT_WRK (ALLOW_UPD_EMP_STRT_WRK) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_ACCNT_DTL_MSG (IAS_ACCNT_DTL_MSG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| E_MAIL | E_MAIL (E_MAIL) | VARCHAR2(100), | اختياري |  |  |
| INACTV_DATE | INACTV_DATE (INACTV_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_ACCNT_MSG (IAS_ACCNT_MSG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| PST_TYP | PST_TYP (PST_TYP) | NUMBER(1, 0), | اختياري |  |  |
| INACTV_USR_NO | INACTV_USR_NO (INACTV_USR_NO) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | إجباري |  |  |

## IAS_ACCOUNT_ACTV (IAS_ACCOUNT_ACTV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  | PK |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| MN_SUB | MN_SUB (MN_SUB) | NUMBER(1, 0), | اختياري |  |  |

## IAS_ACCOUNT_ANLSYS_EQ (IAS_ACCOUNT_ANLSYS_EQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EQ_NO | EQ_NO (EQ_NO) | NUMBER(10, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| A_REPORT | A_REPORT (A_REPORT) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_ACCOUNT_PJ (IAS_ACCOUNT_PJ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CLASS_NO | CLASS_NO (CLASS_NO) | NUMBER(5, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| ADVNC_EXPNS_RVNU_FLG | ADVNC_EXPNS_RVNU_FLG (ADVNC_EXPNS_RVNU_FLG) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 196608 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_ACTVTY (IAS_ACTVTY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  | PK |
| ACTV_A_NAME | ACTV_A_NAME (ACTV_A_NAME) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(60), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| SALES_PRICE | SALES_PRICE (SALES_PRICE) | NUMBER, | اختياري |  |  |

## IAS_ACTVTY_GROUP (IAS_ACTVTY_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(5, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER(38, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_ACTV_SERIALNO_MST (IAS_ACTV_SERIALNO_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ACTV_TREE | ACTV_TREE (ACTV_TREE) | VARCHAR2(15), | إجباري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_AC_CC_LMT (IAS_AC_CC_LMT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| MAX_LMT_PSBL | MAX_LMT_PSBL (MAX_LMT_PSBL) | NUMBER, | اختياري |  |  |
| FCLTY_AMT | FCLTY_AMT (FCLTY_AMT) | NUMBER, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| DALY_AMT | DALY_AMT (DALY_AMT) | NUMBER, | اختياري |  |  |

## IAS_AC_CNFRM_BLNC_DTL (IAS_AC_CNFRM_BLNC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | إجباري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| APRV_U_ID | APRV_U_ID (APRV_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_AC_EXPENSE_DIST (IAS_AC_EXPENSE_DIST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_NO | I_NO (I_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_ADJST_INSTALLMENT_AP_MST (IAS_ADJST_INSTALLMENT_AP_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_DATE_REF | DOC_DATE_REF (DOC_DATE_REF) | DATE NOT NULL ENABLE, | إجباري |  |  |

## IAS_ADJST_INSTALLMENT_DTL (IAS_ADJST_INSTALLMENT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_AMT | I_AMT (I_AMT) | NUMBER, | إجباري |  |  |

## IAS_ADJST_INSTALLMENT_MST (IAS_ADJST_INSTALLMENT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| SYNCHRNZ_TO_WEB_FLG | SYNCHRNZ_TO_WEB_FLG (SYNCHRNZ_TO_WEB_FLG) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_APS_QTN_CMPR_DTL (IAS_APS_QTN_CMPR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER, | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| DIS_AMT_MST | DIS_AMT_MST (DIS_AMT_MST) | NUMBER, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_APS_QTN_CMPR_FLTR_DTL (IAS_APS_QTN_CMPR_FLTR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | إجباري |  |  |
| DIS_PER | DIS_PER (DIS_PER) | NUMBER, | اختياري |  |  |
| CNFRM_DSC | CNFRM_DSC (CNFRM_DSC) | VARCHAR2(1000 CHAR), | اختياري |  |  |
| DOC_NO_REF_QTN | DOC_NO_REF_QTN (DOC_NO_REF_QTN) | NUMBER(30, 0), | اختياري |  |  |

## IAS_APS_QTN_CMPR_FLTR_MST (IAS_APS_QTN_CMPR_FLTR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TYP_NO | TYP_NO (TYP_NO) | NUMBER(10, 0), | اختياري |  |  |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(250), | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## IAS_APS_QTN_CMPR_MMBR (IAS_APS_QTN_CMPR_MMBR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE, | إجباري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_APS_QTN_CMPR_MST (IAS_APS_QTN_CMPR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_AP_BILL_TYPES (IAS_AP_BILL_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE_NO | BILL_TYPE_NO (BILL_TYPE_NO) | NUMBER(5, 0), | اختياري |  | PK |
| BILL_WITHOUT_OTHR_AMT | BILL_WITHOUT_OTHR_AMT (BILL_WITHOUT_OTHR_AMT) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_AP_CHARGES (IAS_AP_CHARGES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CHRG_NO | CHRG_NO (CHRG_NO) | NUMBER(3, 0), | اختياري |  | PK |
| AMT_TYPE | AMT_TYPE (AMT_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| PST_TO_VNDR_CSH_BNK | PST_TO_VNDR_CSH_BNK (PST_TO_VNDR_CSH_BNK) | NUMBER(1, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ADD_FRC_INVOICE_PI | ADD_FRC_INVOICE_PI (ADD_FRC_INVOICE_PI) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_AP_CHARGES_ITEMS (IAS_AP_CHARGES_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CHRG_NO | CHRG_NO (CHRG_NO) | NUMBER(3, 0), | اختياري |  | PK |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| BILL_TYPE_NO | BILL_TYPE_NO (BILL_TYPE_NO) | NUMBER(5, 0), | اختياري |  |  |
| SUBG_CODE | SUBG_CODE (SUBG_CODE) | VARCHAR2(10), | اختياري |  |  |
| DETAIL_NO | DETAIL_NO (DETAIL_NO) | VARCHAR2(10), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| F_AMT | F_AMT (F_AMT) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| CNTRCT_BTCH_DATE | CNTRCT_BTCH_DATE (CNTRCT_BTCH_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| CNTRCT_SER | CNTRCT_SER (CNTRCT_SER) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_AP_CNTRCT_DTL (IAS_AP_CNTRCT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| CNTRCT_SER | CNTRCT_SER (CNTRCT_SER) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| DIS_AMT | DIS_AMT (DIS_AMT) | NUMBER, | اختياري |  |  |

## IAS_AP_CNTRCT_MST (IAS_AP_CNTRCT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CNTRCT_NO | CNTRCT_NO (CNTRCT_NO) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| CNTRCT_T_DATE | CNTRCT_T_DATE (CNTRCT_T_DATE) | DATE, | اختياري |  |  |
| CNTRCT_DESC | CNTRCT_DESC (CNTRCT_DESC) | VARCHAR2(150), | اختياري |  |  |
| AMT_REM_NOTIFY | AMT_REM_NOTIFY (AMT_REM_NOTIFY) | NUMBER, | اختياري |  |  |
| PER_EXCD | PER_EXCD (PER_EXCD) | NUMBER, | اختياري |  |  |
| DISC_AMT_DTL | DISC_AMT_DTL (DISC_AMT_DTL) | NUMBER, | اختياري |  |  |
| CNTRCT_NO_RENEW | CNTRCT_NO_RENEW (CNTRCT_NO_RENEW) | VARCHAR2(60), | اختياري |  |  |
| USE_VAT | USE_VAT (USE_VAT) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_AP_CNTRCT_RENEW (IAS_AP_CNTRCT_RENEW)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| CNTRCT_NEW_DATE | CNTRCT_NEW_DATE (CNTRCT_NEW_DATE) | DATE, | اختياري |  |  |
| CNTRCT_AMT | CNTRCT_AMT (CNTRCT_AMT) | NUMBER, | اختياري |  |  |
| AMT3 | AMT3 (AMT3) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AMT3 | AMT3 (AMT3) | NUMBER, | اختياري |  |  |
| F_DATE | F_DATE (F_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_AP_KIMB_DTL (IAS_AP_KIMB_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_AMT | BILL_AMT (BILL_AMT) | NUMBER, | اختياري |  |  |

## IAS_AP_KIMB_MST (IAS_AP_KIMB_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0), | اختياري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| BK_EXP_A_CODE | BK_EXP_A_CODE (BK_EXP_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| MARGIN_A_CODE | MARGIN_A_CODE (MARGIN_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| MARGIN_RCVRED | MARGIN_RCVRED (MARGIN_RCVRED) | NUMBER(1, 0), | اختياري |  |  |
| BK_EXP_RATE | BK_EXP_RATE (BK_EXP_RATE) | NUMBER, | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_AP_OTHR_CHARGES (IAS_AP_OTHR_CHARGES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  | PK |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  | PK |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | إجباري |  |  |

## IAS_AP_OTHR_CHARGES_ITEMS (IAS_AP_OTHR_CHARGES_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |

## IAS_AP_TYPES (IAS_AP_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TYP_NO | TYP_NO (TYP_NO) | NUMBER(5, 0), | اختياري |  |  |
| TYP_F_NAME | TYP_F_NAME (TYP_F_NAME) | VARCHAR2(30), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_ARCHIVES_MST (IAS_ARCHIVES_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FILE_NO | FILE_NO (FILE_NO) | NUMBER(15, 0), | اختياري |  | PK |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| LOC_NO | LOC_NO (LOC_NO) | NUMBER(10, 0), | اختياري |  |  |
| CNTRCT_BTCH_DATE | CNTRCT_BTCH_DATE (CNTRCT_BTCH_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_AR_CNTRCT_DTL (IAS_AR_CNTRCT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| DIS_AMT_DTL_VAT | DIS_AMT_DTL_VAT (DIS_AMT_DTL_VAT) | NUMBER, | اختياري |  |  |
| DIS_AMT_MST_VAT | DIS_AMT_MST_VAT (DIS_AMT_MST_VAT) | NUMBER, | اختياري |  |  |
| WT_UNT | WT_UNT (WT_UNT) | VARCHAR2(10))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_AR_CNTRCT_MST (IAS_AR_CNTRCT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| CNTRCT_RATE | CNTRCT_RATE (CNTRCT_RATE) | NUMBER, | اختياري |  |  |
| CNTRCT_NOTE | CNTRCT_NOTE (CNTRCT_NOTE) | VARCHAR2(2000), | اختياري |  |  |
| DISC_AMT_MST | DISC_AMT_MST (DISC_AMT_MST) | NUMBER, | اختياري |  |  |
| CNTRCT_SER_RENEW | CNTRCT_SER_RENEW (CNTRCT_SER_RENEW) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| AD_DATE_CLK | AD_DATE_CLK (AD_DATE_CLK) | DATE, | اختياري |  |  |
| CNTRCT_TYP | CNTRCT_TYP (CNTRCT_TYP) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## ContractRenew (IAS_AR_CNTRCT_RENEW)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| CNTRCT_T_DATE | CNTRCT_T_DATE (CNTRCT_T_DATE) | DATE, | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(100))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| SALES_NET_QTY | SALES_NET_QTY (SALES_NET_QTY) | NUMBER, | اختياري |  |  |
| SLICE_SALES_AMT1 | SLICE_SALES_AMT1 (SLICE_SALES_AMT1) | NUMBER, | اختياري |  |  |
| SLICE_NET_SALES_QTY1 | SLICE_NET_SALES_QTY1 (SLICE_NET_SALES_QTY1) | NUMBER, | اختياري |  |  |
| SALES_DAY_AVG1 | SALES_DAY_AVG1 (SALES_DAY_AVG1) | NUMBER, | اختياري |  |  |
| SLICE_RT_SALES_STK_COST1 | SLICE_RT_SALES_STK_COST1 (SLICE_RT_SALES_STK_COST1) | NUMBER, | اختياري |  |  |
| SALES_GEN_AVG2 | SALES_GEN_AVG2 (SALES_GEN_AVG2) | NUMBER, | اختياري |  |  |
| SLICE_SALES_STK_COST3 | SLICE_SALES_STK_COST3 (SLICE_SALES_STK_COST3) | NUMBER, | اختياري |  |  |
| SLICE_RT_SALES_STK_COST4 | SLICE_RT_SALES_STK_COST4 (SLICE_RT_SALES_STK_COST4) | NUMBER, | اختياري |  |  |
| SALES_GEN_AVG5 | SALES_GEN_AVG5 (SALES_GEN_AVG5) | NUMBER, | اختياري |  |  |
| SALES_INC_PER4 | SALES_INC_PER4 (SALES_INC_PER4) | NUMBER, | اختياري |  |  |
| TR_QTY | TR_QTY (TR_QTY) | NUMBER, | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| TOT_AVL_QTY | TOT_AVL_QTY (TOT_AVL_QTY) | NUMBER, | اختياري |  |  |
| TOT_OPEN_BAL_AMT | TOT_OPEN_BAL_AMT (TOT_OPEN_BAL_AMT) | NUMBER, | اختياري |  |  |
| SMAN_COMM_AMT | SMAN_COMM_AMT (SMAN_COMM_AMT) | NUMBER, | اختياري |  |  |
| TOT_SALES_AMT | TOT_SALES_AMT (TOT_SALES_AMT) | NUMBER, | اختياري |  |  |
| TOT_SALES_NET_QTY | TOT_SALES_NET_QTY (TOT_SALES_NET_QTY) | NUMBER, | اختياري |  |  |
| TOT_SALES_STK_COST | TOT_SALES_STK_COST (TOT_SALES_STK_COST) | NUMBER, | اختياري |  |  |
| PL_AFTR_SMAN_COMM | PL_AFTR_SMAN_COMM (PL_AFTR_SMAN_COMM) | NUMBER, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| FLD_NAME | FLD_NAME (FLD_NAME) | VARCHAR2(100), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | , | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |

## IAS_AR_TYPS (IAS_AR_TYPS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AR_TYPE_NO | AR_TYPE_NO (AR_TYPE_NO) | NUMBER(5, 0), | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(100))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| ASS_F_NM | ASS_F_NM (ASS_F_NM) | VARCHAR2(100), | إجباري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |

## IAS_ASSCTN_TRNS (IAS_ASSCTN_TRNS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## IAS_ASSEMBLE_ITM_EXPND (IAS_ASSEMBLE_ITM_EXPND)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |

## IAS_ASSISTANT_GROUP (IAS_ASSISTANT_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| G_CODE | G_CODE (G_CODE) | VARCHAR2(10), | اختياري |  |  |
| SUBG_CODE | SUBG_CODE (SUBG_CODE) | VARCHAR2(10), | اختياري |  |  |

## IAS_ATTACH_DTL (IAS_ATTACH_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ATTCH_NO | ATTCH_NO (ATTCH_NO) | NUMBER(1, 0), | اختياري |  |  |
| ATTCH_DESC_A_NAME | ATTCH_DESC_A_NAME (ATTCH_DESC_A_NAME) | VARCHAR2(100), | اختياري |  |  |
| ATTCH_E_NAME | ATTCH_E_NAME (ATTCH_E_NAME) | VARCHAR2(30), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |

## IAS_AUDIT_DOC (IAS_AUDIT_DOC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| AMT_F | AMT_F (AMT_F) | NUMBER, | اختياري |  |  |
| PROCESSED | PROCESSED (PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(30), | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| AUD_U_ID | AUD_U_ID (AUD_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_AUD_ACC_DTL (IAS_AUD_ACC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(30, 0), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| AMT | AMT (AMT) | NUMBER, | اختياري |  |  |
| CHEQUE_NO | CHEQUE_NO (CHEQUE_NO) | NUMBER(20, 0), | اختياري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0), | اختياري |  |  |

## IAS_AUD_ACC_MST (IAS_AUD_ACC_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(30, 0), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| CASH_NO | CASH_NO (CASH_NO) | NUMBER(10, 0), | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_AUD_HIST (IAS_AUD_HIST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OPR_TYPE | OPR_TYPE (OPR_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(100), | إجباري |  |  |

## IAS_AUD_ITM_MST (IAS_AUD_ITM_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(30, 0), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(250), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_AUD_ITM_OTHR_DTL (IAS_AUD_ITM_OTHR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(30, 0), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| FLW_QTY | FLW_QTY (FLW_QTY) | NUMBER, | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| T_QTY | T_QTY (T_QTY) | NUMBER, | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(100), | إجباري |  |  |

## IAS_AUD_ITM_OTHR_MST (IAS_AUD_ITM_OTHR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(30, 0), | اختياري |  | PK |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| DOC_DESC | DOC_DESC (DOC_DESC) | VARCHAR2(250), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| APPRVD_DATE | APPRVD_DATE (APPRVD_DATE) | DATE, | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |

## IAS_AUD_LMT_EXD (IAS_AUD_LMT_EXD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(30, 0), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(250), | اختياري |  |  |
| AUD_U_ID | AUD_U_ID (AUD_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |

## IAS_AUD_PRNT_REP (IAS_AUD_PRNT_REP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FORM_NO | FORM_NO (FORM_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| REP_WHR | REP_WHR (REP_WHR) | VARCHAR2(4000), | اختياري |  |  |
| GROUP_TYPE | GROUP_TYPE (GROUP_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| CLMN_MST0 | CLMN_MST0 (CLMN_MST0) | VARCHAR2(200), | اختياري |  |  |
| CLMN_MST3 | CLMN_MST3 (CLMN_MST3) | VARCHAR2(500), | اختياري |  |  |
| CLMN_MST6 | CLMN_MST6 (CLMN_MST6) | VARCHAR2(500), | اختياري |  |  |
| CLMN_MST9 | CLMN_MST9 (CLMN_MST9) | VARCHAR2(500), | اختياري |  |  |
| P_GROUPBY | P_GROUPBY (P_GROUPBY) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL1 | CLMN_DTL1 (CLMN_DTL1) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL4 | CLMN_DTL4 (CLMN_DTL4) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL7 | CLMN_DTL7 (CLMN_DTL7) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL10 | CLMN_DTL10 (CLMN_DTL10) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL13 | CLMN_DTL13 (CLMN_DTL13) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL16 | CLMN_DTL16 (CLMN_DTL16) | VARCHAR2(500), | اختياري |  |  |
| CLMN_DTL19 | CLMN_DTL19 (CLMN_DTL19) | VARCHAR2(500), | اختياري |  |  |
| P_WHERE_DTL | P_WHERE_DTL (P_WHERE_DTL) | VARCHAR2(1200), | اختياري |  |  |
| REP_SLCT2 | REP_SLCT2 (REP_SLCT2) | VARCHAR2(4000), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_BANK_ADJUST_DTL (IAS_BANK_ADJUST_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| DOC_JV_TYP_REF | DOC_JV_TYP_REF (DOC_JV_TYP_REF) | NUMBER(10, 0), | اختياري |  |  |
| DOC_SQ_REF | DOC_SQ_REF (DOC_SQ_REF) | NUMBER(38, 0), | اختياري |  |  |

## IAS_BANK_ADJUST_MST (IAS_BANK_ADJUST_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| JV_DOC | JV_DOC (JV_DOC) | NUMBER(1, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ATTACH_NO | ATTACH_NO (ATTACH_NO) | NUMBER(3, 0), | اختياري |  |  |
| DOC_JV_TYP_REF | DOC_JV_TYP_REF (DOC_JV_TYP_REF) | NUMBER(10, 0), | اختياري |  |  |
| DOC_SQ_REF | DOC_SQ_REF (DOC_SQ_REF) | NUMBER(38, 0), | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_BANK_GROUP (IAS_BANK_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(10, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BATCH_DESC_NO | BATCH_DESC_NO (BATCH_DESC_NO) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| SPCL_COL_BY_ITM | SPCL_COL_BY_ITM (SPCL_COL_BY_ITM) | NUMBER(1, 0), | اختياري |  |  |

## IAS_BDGT_BLNC_CLMN_DTL (IAS_BDGT_BLNC_CLMN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(38, 0), | اختياري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| AMT_L7 | AMT_L7 (AMT_L7) | NUMBER(38, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | اختياري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(30, 0), | اختياري |  |  |
| AMT_L_ADD_MOV | AMT_L_ADD_MOV (AMT_L_ADD_MOV) | NUMBER(38, 0), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(38, 0), | إجباري |  |  |
| AMT_F_DISC | AMT_F_DISC (AMT_F_DISC) | NUMBER(38, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | إجباري |  |  |
| DOC_NOTE | DOC_NOTE (DOC_NOTE) | VARCHAR2(250), | اختياري |  |  |
| BDGT_TYPE | BDGT_TYPE (BDGT_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| DFLT | DFLT (DFLT) | NUMBER(1, 0), | إجباري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |

## IAS_BILL_CPN (IAS_BILL_CPN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CPN_DSC | CPN_DSC (CPN_DSC) | VARCHAR2(500), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | اختياري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| VAT_AMT_DIS_DTL_VAT | VAT_AMT_DIS_DTL_VAT (VAT_AMT_DIS_DTL_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_DIS_MST_VAT | VAT_AMT_DIS_MST_VAT (VAT_AMT_DIS_MST_VAT) | NUMBER, | اختياري |  |  |
| VAT_PER | VAT_PER (VAT_PER) | NUMBER, | اختياري |  |  |
| SERVICE_ITEM | SERVICE_ITEM (SERVICE_ITEM) | NUMBER(1, 0), | إجباري |  |  |
| BARCODE | BARCODE (BARCODE) | VARCHAR2(30), | اختياري |  |  |
| DIS_AMT_DTL2 | DIS_AMT_DTL2 (DIS_AMT_DTL2) | NUMBER, | اختياري |  |  |
| I_HEIGHT | I_HEIGHT (I_HEIGHT) | NUMBER, | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| QT_PRM_RCRD_NO | QT_PRM_RCRD_NO (QT_PRM_RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| INSRNCE_ADD_LMT | INSRNCE_ADD_LMT (INSRNCE_ADD_LMT) | NUMBER, | اختياري |  |  |
| I_PRICE_OUTGONG | I_PRICE_OUTGONG (I_PRICE_OUTGONG) | NUMBER, | اختياري |  |  |
| PKG_QTY | PKG_QTY (PKG_QTY) | NUMBER, | اختياري |  |  |
| PKG_SIZE | PKG_SIZE (PKG_SIZE) | NUMBER, | اختياري |  |  |
| CPN_QTY | CPN_QTY (CPN_QTY) | NUMBER, | اختياري |  |  |
| COMM_PER | COMM_PER (COMM_PER) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL_QT_PRM_VAT | DIS_AMT_DTL_QT_PRM_VAT (DIS_AMT_DTL_QT_PRM_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_DIS_DTL2_VAT | VAT_AMT_DIS_DTL2_VAT (VAT_AMT_DIS_DTL2_VAT) | NUMBER, | اختياري |  |  |
| FIELD_DTL5 | FIELD_DTL5 (FIELD_DTL5) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL8 | FIELD_DTL8 (FIELD_DTL8) | VARCHAR2(60), | اختياري |  |  |
| LEV_NO | LEV_NO (LEV_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_BILL_DTL_ADD_DISC (IAS_BILL_DTL_ADD_DISC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| ADD_DIS_PER | ADD_DIS_PER (ADD_DIS_PER) | NUMBER(20, 17), | اختياري |  |  |
| ADD_DIS_QTY | ADD_DIS_QTY (ADD_DIS_QTY) | NUMBER, | اختياري |  |  |
| ADD_VAT_AMT | ADD_VAT_AMT (ADD_VAT_AMT) | NUMBER, | إجباري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |

## IAS_BILL_DTL_ADD_DISC_RQ (IAS_BILL_DTL_ADD_DISC_RQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | إجباري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | إجباري |  |  |

## IAS_BILL_DTL_BKTMP (IAS_BILL_DTL_BKTMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_HEIGHT | I_HEIGHT (I_HEIGHT) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL | DIS_AMT_DTL (DIS_AMT_DTL) | NUMBER, | اختياري |  |  |
| FIELD_DTL3 | FIELD_DTL3 (FIELD_DTL3) | VARCHAR2(60), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |
| DOC_M_SQ | DOC_M_SQ (DOC_M_SQ) | NUMBER, | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | اختياري |  |  |
| OUT_FREE_QTY_YR | OUT_FREE_QTY_YR (OUT_FREE_QTY_YR) | NUMBER, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| DIS_PER | DIS_PER (DIS_PER) | NUMBER, | اختياري |  |  |
| DIS_AFTR_VAT_MST | DIS_AFTR_VAT_MST (DIS_AFTR_VAT_MST) | NUMBER, | اختياري |  |  |
| VAT_AMT_DIS_DTL_VAT | VAT_AMT_DIS_DTL_VAT (VAT_AMT_DIS_DTL_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_DIS_MST_VAT | VAT_AMT_DIS_MST_VAT (VAT_AMT_DIS_MST_VAT) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL_QT_PRM | DIS_AMT_DTL_QT_PRM (DIS_AMT_DTL_QT_PRM) | NUMBER, | اختياري |  |  |
| VAT_PER | VAT_PER (VAT_PER) | NUMBER, | اختياري |  |  |
| USE_SERIALNO | USE_SERIALNO (USE_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| SI_TYPE | SI_TYPE (SI_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| VAT_AMT_DIS_DTL2_VAT | VAT_AMT_DIS_DTL2_VAT (VAT_AMT_DIS_DTL2_VAT) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL3_VAT | DIS_AMT_DTL3_VAT (DIS_AMT_DTL3_VAT) | NUMBER, | اختياري |  |  |
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| I_HEIGHT | I_HEIGHT (I_HEIGHT) | NUMBER, | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| QT_PRM_RCRD_NO | QT_PRM_RCRD_NO (QT_PRM_RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| INSRNCE_ADD_LMT | INSRNCE_ADD_LMT (INSRNCE_ADD_LMT) | NUMBER, | اختياري |  |  |
| PKG_WIDTH | PKG_WIDTH (PKG_WIDTH) | NUMBER, | اختياري |  |  |
| FIELD_DTL1 | FIELD_DTL1 (FIELD_DTL1) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL4 | FIELD_DTL4 (FIELD_DTL4) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL7 | FIELD_DTL7 (FIELD_DTL7) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL10 | FIELD_DTL10 (FIELD_DTL10) | VARCHAR2(60), | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | اختياري |  |  |
| COMM_AMT_DTL | COMM_AMT_DTL (COMM_AMT_DTL) | NUMBER, | اختياري |  |  |

## IAS_BILL_EXPIRE_DTL (IAS_BILL_EXPIRE_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| I_NAME | I_NAME (I_NAME) | VARCHAR2(100), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | إجباري |  |  |
| BILL_DATE | BILL_DATE (BILL_DATE) | DATE, | اختياري |  |  |
| GATE_FLAG | GATE_FLAG (GATE_FLAG) | NUMBER(1, 0), | اختياري |  |  |
| APRV_U_ID | APRV_U_ID (APRV_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_BILL_MST (IAS_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| DISC_AMT | DISC_AMT (DISC_AMT) | NUMBER, | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| BILL_PY | BILL_PY (BILL_PY) | NUMBER(1, 0), | اختياري |  |  |
| LOAD_SER | LOAD_SER (LOAD_SER) | NUMBER(38, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BILL_SER_CONN | BILL_SER_CONN (BILL_SER_CONN) | NUMBER(38, 0), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| FIELD12 | FIELD12 (FIELD12) | VARCHAR2(250), | اختياري |  |  |
| PAID_AMT | PAID_AMT (PAID_AMT) | NUMBER, | اختياري |  |  |
| REC_INV_BILL | REC_INV_BILL (REC_INV_BILL) | NUMBER(1, 0), | اختياري |  |  |
| BILL_VALUED | BILL_VALUED (BILL_VALUED) | NUMBER(1, 0), | اختياري |  |  |
| CR_VALUED_SCND | CR_VALUED_SCND (CR_VALUED_SCND) | NUMBER(1, 0), | اختياري |  |  |
| CR_VALUE_DATE_SCND | CR_VALUE_DATE_SCND (CR_VALUE_DATE_SCND) | DATE, | اختياري |  |  |
| CR_CARD_COMM_PER_SCND | CR_CARD_COMM_PER_SCND (CR_CARD_COMM_PER_SCND) | NUMBER, | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| SEND_TEL_SUCCESS | SEND_TEL_SUCCESS (SEND_TEL_SUCCESS) | NUMBER, | اختياري |  |  |
| INSRNCE_CMP_NO | INSRNCE_CMP_NO (INSRNCE_CMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| INSRNCE_RLTN_TYP | INSRNCE_RLTN_TYP (INSRNCE_RLTN_TYP) | NUMBER(2, 0), | اختياري |  |  |
| INSRNCE_APPRVD_CODE | INSRNCE_APPRVD_CODE (INSRNCE_APPRVD_CODE) | VARCHAR2(60), | اختياري |  |  |
| CONN_SI_WITH_OUTGONG | CONN_SI_WITH_OUTGONG (CONN_SI_WITH_OUTGONG) | NUMBER(1, 0), | اختياري |  |  |
| CST_GCC | CST_GCC (CST_GCC) | NUMBER(1, 0), | اختياري |  |  |
| POINT_RPLC_AMT | POINT_RPLC_AMT (POINT_RPLC_AMT) | NUMBER, | اختياري |  |  |
| DOC_SRL_CNTRCT | DOC_SRL_CNTRCT (DOC_SRL_CNTRCT) | NUMBER(38, 0), | اختياري |  |  |
| POINT_RPLC_CNT | POINT_RPLC_CNT (POINT_RPLC_CNT) | NUMBER, | اختياري |  |  |
| CLC_INSRNCE_LOAD_AMT_MTHD | CLC_INSRNCE_LOAD_AMT_MTHD (CLC_INSRNCE_LOAD_AMT_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| SFDA_PRSPCT_DATE | SFDA_PRSPCT_DATE (SFDA_PRSPCT_DATE) | DATE, | اختياري |  |  |
| CR_CARD_MAX_COMM_AMT | CR_CARD_MAX_COMM_AMT (CR_CARD_MAX_COMM_AMT) | NUMBER, | اختياري |  |  |
| CR_CARD_MAX_COMM_AMT_THRD | CR_CARD_MAX_COMM_AMT_THRD (CR_CARD_MAX_COMM_AMT_THRD) | NUMBER, | اختياري |  |  |
| HRS_DOC_SER_REF | HRS_DOC_SER_REF (HRS_DOC_SER_REF) | NUMBER, | اختياري |  |  |
| ADVNC_PYMNT_PRCNT_CNTRCT | ADVNC_PYMNT_PRCNT_CNTRCT (ADVNC_PYMNT_PRCNT_CNTRCT) | NUMBER, | اختياري |  |  |
| CR_CARD_DOC_NO_REF_SCND | CR_CARD_DOC_NO_REF_SCND (CR_CARD_DOC_NO_REF_SCND) | NUMBER(15, 0), | اختياري |  |  |
| CR_CARD_DSC | CR_CARD_DSC (CR_CARD_DSC) | VARCHAR2(500), | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_BILL_MST_ADD_DISC (IAS_BILL_MST_ADD_DISC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ADD_DISC_TYPE | ADD_DISC_TYPE (ADD_DISC_TYPE) | NUMBER(1, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| RET_AMT | RET_AMT (RET_AMT) | NUMBER, | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(250), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(250), | اختياري |  |  |
| SI_ADD_DISC_TYPE | SI_ADD_DISC_TYPE (SI_ADD_DISC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | إجباري |  |  |
| CLC_TYP_NO_TAX | CLC_TYP_NO_TAX (CLC_TYP_NO_TAX) | NUMBER(5, 0), | اختياري |  |  |
| CLC_TAX_FREE_QTY_FLG | CLC_TAX_FREE_QTY_FLG (CLC_TAX_FREE_QTY_FLG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_BILL_MST_ADD_DISC_RQ (IAS_BILL_MST_ADD_DISC_RQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ADD_DISC_TYPE | ADD_DISC_TYPE (ADD_DISC_TYPE) | NUMBER(1, 0) NOT NULL ENABLE | إجباري |  |  |
| SI_ADD_DISC_TYPE | SI_ADD_DISC_TYPE (SI_ADD_DISC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | إجباري |  | PK |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_DESC | DOC_DESC (DOC_DESC) | VARCHAR2(250), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(250), | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | إجباري |  |  |
| CLC_TYP_NO_TAX | CLC_TYP_NO_TAX (CLC_TYP_NO_TAX) | NUMBER(5, 0), | اختياري |  |  |
| PTNT_NO | PTNT_NO (PTNT_NO) | VARCHAR2(15), | اختياري |  |  |

## IAS_BILL_MST_BR (IAS_BILL_MST_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| DISC_AMT | DISC_AMT (DISC_AMT) | NUMBER, | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| PROCESSED | PROCESSED (PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| DOC_SER_EXTRNL | DOC_SER_EXTRNL (DOC_SER_EXTRNL) | VARCHAR2(256), | اختياري |  |  |
| CLC_INSRNCE_LOAD_AMT_MTHD | CLC_INSRNCE_LOAD_AMT_MTHD (CLC_INSRNCE_LOAD_AMT_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(250), | اختياري |  |  |
| HRS_DOC_TYPE_REF | HRS_DOC_TYPE_REF (HRS_DOC_TYPE_REF) | NUMBER, | اختياري |  |  |
| CR_CARD_NO_THRD | CR_CARD_NO_THRD (CR_CARD_NO_THRD) | NUMBER(5, 0), | اختياري |  |  |
| ADD_DISC_AMT_MST | ADD_DISC_AMT_MST (ADD_DISC_AMT_MST) | NUMBER, | اختياري |  |  |
| CLC_TYP_NO_TAX | CLC_TYP_NO_TAX (CLC_TYP_NO_TAX) | NUMBER(5, 0), | اختياري |  |  |
| CR_VALUED | CR_VALUED (CR_VALUED) | NUMBER(1, 0), | اختياري |  |  |
| CR_DOC_NO_REF_SCND | CR_DOC_NO_REF_SCND (CR_DOC_NO_REF_SCND) | NUMBER(15, 0), | اختياري |  |  |
| CR_CARD_COMM_PER_SCND | CR_CARD_COMM_PER_SCND (CR_CARD_COMM_PER_SCND) | NUMBER, | اختياري |  |  |
| CR_CARD_CST_NO | CR_CARD_CST_NO (CR_CARD_CST_NO) | VARCHAR2(60), | اختياري |  |  |
| CR_CARD_DSC_SCND | CR_CARD_DSC_SCND (CR_CARD_DSC_SCND) | VARCHAR2(500), | اختياري |  |  |
| INSRNCE_RLTN_TYP | INSRNCE_RLTN_TYP (INSRNCE_RLTN_TYP) | NUMBER(2, 0), | اختياري |  |  |
| INSRNCE_APPRVD_CODE | INSRNCE_APPRVD_CODE (INSRNCE_APPRVD_CODE) | VARCHAR2(60), | اختياري |  |  |
| INSRNCE_LMT_AMT_LOC_DOC | INSRNCE_LMT_AMT_LOC_DOC (INSRNCE_LMT_AMT_LOC_DOC) | NUMBER, | اختياري |  |  |
| REC_NOTE | REC_NOTE (REC_NOTE) | VARCHAR2(500), | اختياري |  |  |
| VAT_AMT_OTHR | VAT_AMT_OTHR (VAT_AMT_OTHR) | NUMBER, | اختياري |  |  |
| POINT_CALC_TYP_NO | POINT_CALC_TYP_NO (POINT_CALC_TYP_NO) | NUMBER(1, 0), | اختياري |  |  |
| POINT_RPLC_CNT | POINT_RPLC_CNT (POINT_RPLC_CNT) | NUMBER, | اختياري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30), | اختياري |  |  |
| PYMNT_AC | PYMNT_AC (PYMNT_AC) | NUMBER, | اختياري |  |  |
| RMS_BILL_DOC_TYPE | RMS_BILL_DOC_TYPE (RMS_BILL_DOC_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_BNFCRS (IAS_BNFCRS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BNF_NO | BNF_NO (BNF_NO) | NUMBER(5, 0), | اختياري |  | PK |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_BRN_YEARS_TEMP (IAS_BRN_YEARS_TEMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| USERNAME | USERNAME (USERNAME) | VARCHAR2(15), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| PAY_AMT | PAY_AMT (PAY_AMT) | NUMBER, | اختياري |  |  |
| C_CLASS | C_CLASS (C_CLASS) | VARCHAR2(3), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_CARD_SAL (IAS_CARD_SAL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CRD_NO | CRD_NO (CRD_NO) | VARCHAR2(60), | اختياري |  | PK |
| USED_ONLY_ONCE | USED_ONLY_ONCE (USED_ONLY_ONCE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_CARD_SAL_DISC_TYP (IAS_CARD_SAL_DISC_TYP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CRD_TYP_DISC | CRD_TYP_DISC (CRD_TYP_DISC) | NUMBER(5, 0), | اختياري |  | PK |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| CUSTOMS_DESC_NO | CUSTOMS_DESC_NO (CUSTOMS_DESC_NO) | VARCHAR2(20), | اختياري |  |  |
| SERVICE_SERIAL | SERVICE_SERIAL (SERVICE_SERIAL) | NUMBER(15, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_CARGO_SERVICES_BR (IAS_CARGO_SERVICES_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0), | اختياري |  | PK |
| SERVICE_SERIAL | SERVICE_SERIAL (SERVICE_SERIAL) | NUMBER(15, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(2, 0), | اختياري |  |  |

## IAS_CASH_AT_BANK_BRN (IAS_CASH_AT_BANK_BRN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_BANK_NO | BRN_BANK_NO (BRN_BANK_NO) | NUMBER(3, 0), | اختياري |  | PK |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| CURR_BAL_L | CURR_BAL_L (CURR_BAL_L) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_CASH_AT_BANK_DTL (IAS_CASH_AT_BANK_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | اختياري |  |  |
| MIN_LMT_AMT | MIN_LMT_AMT (MIN_LMT_AMT) | NUMBER, | اختياري |  |  |
| MIN_LMT_TRNS_AMT | MIN_LMT_TRNS_AMT (MIN_LMT_TRNS_AMT) | NUMBER, | اختياري |  |  |

## IAS_CASH_CUSTMR (IAS_CASH_CUSTMR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUST_CODE | CUST_CODE (CUST_CODE) | VARCHAR2(15) NOT NULL ENABLE, | إجباري |  | PK |
| MOBILE_NO | MOBILE_NO (MOBILE_NO) | VARCHAR2(16) NOT NULL ENABLE, | إجباري |  |  |
| POINT_TYP_ACTV_DATE | POINT_TYP_ACTV_DATE (POINT_TYP_ACTV_DATE) | DATE, | اختياري |  |  |
| CITY_NO | CITY_NO (CITY_NO) | NUMBER(10, 0), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(60), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_CASH_CUSTMR_GRP (IAS_CASH_CUSTMR_GRP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUST_GRP_CODE | CUST_GRP_CODE (CUST_GRP_CODE) | NUMBER(5, 0), | اختياري |  | PK |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## IAS_CASH_CUSTMR_POINT_TRACE (IAS_CASH_CUSTMR_POINT_TRACE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUST_CODE | CUST_CODE (CUST_CODE) | VARCHAR2(15) NOT NULL ENABLE | إجباري |  |  |
| POINT_TYP_NO | POINT_TYP_NO (POINT_TYP_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| GROUP_E_NAME | GROUP_E_NAME (GROUP_E_NAME) | VARCHAR2(60), | اختياري |  |  |
| MAX_LMT_AMT | MAX_LMT_AMT (MAX_LMT_AMT) | NUMBER, | اختياري |  |  |

## IAS_CASH_MAN_DTL (IAS_CASH_MAN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CASH_NO | CASH_NO (CASH_NO) | , | اختياري |  |  |
| DIFF_AMT_LOC | DIFF_AMT_LOC (DIFF_AMT_LOC) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| C_LEVEL | C_LEVEL (C_LEVEL) | NUMBER(5, 0) CONSTRAINT | إجباري |  |  |
| C_GROUPING | C_GROUPING (C_GROUPING) | NUMBER(5, 0), | اختياري |  |  |

## IAS_CHECK_INCM_DTL (IAS_CHECK_INCM_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CHK_QTY | CHK_QTY (CHK_QTY) | NUMBER, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |
| DOC_SEQUENCE_REF | DOC_SEQUENCE_REF (DOC_SEQUENCE_REF) | NUMBER(38, 0), | اختياري |  |  |
| USE_SERIALNO | USE_SERIALNO (USE_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | إجباري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| CHECK_STATUS | CHECK_STATUS (CHECK_STATUS) | NUMBER(1, 0), | اختياري |  |  |
| CHK_PRV_FREE_QTY | CHK_PRV_FREE_QTY (CHK_PRV_FREE_QTY) | NUMBER, | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | اختياري |  |  |

## IAS_CHECK_INCM_MST (IAS_CHECK_INCM_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |

## ChequeTrace (IAS_CHEQ_TRACE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_TYPE | AUD_TYPE (AUD_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| VOUCHER_NO | VOUCHER_NO (VOUCHER_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| V_SER | V_SER (V_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| CHEQUE_VALUED | CHEQUE_VALUED (CHEQUE_VALUED) | NUMBER(1, 0), | اختياري |  |  |
| C_CODE_END | C_CODE_END (C_CODE_END) | VARCHAR2(15), | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0), | اختياري |  |  |
| POST_DATE | POST_DATE (POST_DATE) | DATE, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| ENDRSMNT_DATE | ENDRSMNT_DATE (ENDRSMNT_DATE) | DATE)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_CHK_DOC_INOUT_QTY_DTL (IAS_CHK_DOC_INOUT_QTY_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | إجباري |  |  |
| DOC_SEQ | DOC_SEQ (DOC_SEQ) | NUMBER, | اختياري |  |  |
| DMG_FLG | DMG_FLG (DMG_FLG) | NUMBER(1, 0), | اختياري |  |  |
| DOC_NO_PRPTN_REF | DOC_NO_PRPTN_REF (DOC_NO_PRPTN_REF) | NUMBER(15, 0), | اختياري |  |  |

## IAS_CHK_DOC_INOUT_QTY_MST (IAS_CHK_DOC_INOUT_QTY_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| AC_NM | AC_NM (AC_NM) | VARCHAR2(100), | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(250), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_CITY_DISTANCE (IAS_CITY_DISTANCE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| F_CITY_NO | F_CITY_NO (F_CITY_NO) | NUMBER(10, 0), | اختياري |  |  |
| DIST_DAY | DIST_DAY (DIST_DAY) | NUMBER(38, 0), | اختياري |  |  |

## IAS_CMPNS_QTY_CLC_DTL (IAS_CMPNS_QTY_CLC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_SRL | DOC_SRL (DOC_SRL) | NUMBER(38, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| CMPNS_DSC | CMPNS_DSC (CMPNS_DSC) | VARCHAR2(250), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| RQ_SRL | RQ_SRL (RQ_SRL) | NUMBER, | اختياري |  |  |
| STOCK_RATE | STOCK_RATE (STOCK_RATE) | NUMBER, | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_CMPNS_QTY_STP_DTL (IAS_CMPNS_QTY_STP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CMPNS_TYP | CMPNS_TYP (CMPNS_TYP) | NUMBER(5, 0), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| HI_LMT_PER | HI_LMT_PER (HI_LMT_PER) | NUMBER, | اختياري |  |  |
| CMPNS_SAL_TYP | CMPNS_SAL_TYP (CMPNS_SAL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_COLLECTION_PLAN (IAS_COLLECTION_PLAN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COL_NO | COL_NO (COL_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| COL_DATE | COL_DATE (COL_DATE) | , | اختياري |  |  |
| PLAN_NO | PLAN_NO (PLAN_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| T_DATE | T_DATE (T_DATE) | DATE, | اختياري |  |  |
| COL_NO | COL_NO (COL_NO) | NUMBER(10, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| PRCSSD_FLG | PRCSSD_FLG (PRCSSD_FLG) | NUMBER, | اختياري |  |  |
| APRV_DSC | APRV_DSC (APRV_DSC) | VARCHAR2(500), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  | PK |

## IAS_COL_COM_CALC_SUB_DTL (IAS_COL_COM_CALC_SUB_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_TYP | COMM_TYP (COMM_TYP) | NUMBER(5, 0), | اختياري |  |  |
| F_DATE | F_DATE (F_DATE) | DATE, | اختياري |  |  |
| R_CODE | R_CODE (R_CODE) | NUMBER(10, 0), | اختياري |  |  |
| C_GROUP_CODE | C_GROUP_CODE (C_GROUP_CODE) | NUMBER(10, 0), | اختياري |  |  |
| PAID_DSTR_TYP | PAID_DSTR_TYP (PAID_DSTR_TYP) | NUMBER(2, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_COL_IMP_EXL_TMPLT (IAS_COL_IMP_EXL_TMPLT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_COMM_CR_CARD_BANK (IAS_COMM_CR_CARD_BANK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | اختياري |  | PK |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| MAX_COMM_AMT | MAX_COMM_AMT (MAX_COMM_AMT) | NUMBER, | اختياري |  |  |

## IAS_COMP_TMP (IAS_COMP_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C1 | C1 (C1) | VARCHAR2(100), | اختياري |  |  |
| C4 | C4 (C4) | VARCHAR2(100), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| DSC_SI_A_CODE | DSC_SI_A_CODE (DSC_SI_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| CST_FREE_SR_A_CODE | CST_FREE_SR_A_CODE (CST_FREE_SR_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| DLY_CST_SI_A_CODE | DLY_CST_SI_A_CODE (DLY_CST_SI_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ADVNC_SR_A_CODE | ADVNC_SR_A_CODE (ADVNC_SR_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| MNG_CODE | MNG_CODE (MNG_CODE) | VARCHAR2(10), | اختياري |  |  |
| DETAIL_NO | DETAIL_NO (DETAIL_NO) | VARCHAR2(10), | اختياري |  |  |
| G_CODE | G_CODE (G_CODE) | , | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | اختياري |  |  |
| USE_FRACTION | USE_FRACTION (USE_FRACTION) | NUMBER(1, 0), | اختياري |  |  |

## IAS_CONN_WCODE_BY_ACTIVITY (IAS_CONN_WCODE_BY_ACTIVITY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| ACTIVITY_NO | ACTIVITY_NO (ACTIVITY_NO) | , | اختياري |  |  |
| CON_E_NAME | CON_E_NAME (CON_E_NAME) | VARCHAR2(60), | اختياري |  |  |
| CON_ADDRESS | CON_ADDRESS (CON_ADDRESS) | VARCHAR2(60), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_CPN_DTL (IAS_CPN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER, | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| SAL_FLG | SAL_FLG (SAL_FLG) | NUMBER(1, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_CPN_MST (IAS_CPN_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE, | إجباري |  | PK |
| DOC_DSC | DOC_DSC (DOC_DSC) | VARCHAR2(500), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(60), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_CPN_TYP_DTL (IAS_CPN_TYP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CPN_TYP_NO | CPN_TYP_NO (CPN_TYP_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| CPN_TYP_L_NM | CPN_TYP_L_NM (CPN_TYP_L_NM) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |
| CPN_RPLC_MTHD | CPN_RPLC_MTHD (CPN_RPLC_MTHD) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| BOOK_SRL_INCLD_CTGRY | BOOK_SRL_INCLD_CTGRY (BOOK_SRL_INCLD_CTGRY) | NUMBER(1, 0), | اختياري |  |  |
| BOOK_UPD_DFLT_PRICE | BOOK_UPD_DFLT_PRICE (BOOK_UPD_DFLT_PRICE) | NUMBER(1, 0), | اختياري |  |  |
| A_CODE_DSCNT | A_CODE_DSCNT (A_CODE_DSCNT) | VARCHAR2(30), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(60), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_CRLIMIT_TMP (IAS_CRLIMIT_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_CR_CARD_GROUP (IAS_CR_CARD_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(5, 0), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_CR_CARD_TYPES (IAS_CR_CARD_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CR_CARD_TYPE | CR_CARD_TYPE (CR_CARD_TYPE) | NUMBER(2, 0), | اختياري |  | PK |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| CSTMR_BUILD_NO | CSTMR_BUILD_NO (CSTMR_BUILD_NO) | VARCHAR2(20), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| LONGITUDE | LONGITUDE (LONGITUDE) | VARCHAR2(20))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| CSTMR_RGN_NO | CSTMR_RGN_NO (CSTMR_RGN_NO) | , | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |

## IAS_CST_CLAIM_DTL (IAS_CST_CLAIM_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_TYP | BILL_TYP (BILL_TYP) | NUMBER(1, 0), | اختياري |  |  |
| INSRNCE_CARD_NO | INSRNCE_CARD_NO (INSRNCE_CARD_NO) | VARCHAR2(60), | اختياري |  |  |
| INSRNCE_ADD_LMT | INSRNCE_ADD_LMT (INSRNCE_ADD_LMT) | NUMBER, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_CST_CLAIM_VST (IAS_CST_CLAIM_VST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| COL_NO | COL_NO (COL_NO) | NUMBER(10, 0), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| BILL_DOC_TYP | BILL_DOC_TYP (BILL_DOC_TYP) | NUMBER(2, 0), | اختياري |  |  |
| NET_SALES_AMT | NET_SALES_AMT (NET_SALES_AMT) | NUMBER, | اختياري |  |  |
| PAY_AMT | PAY_AMT (PAY_AMT) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER, | اختياري |  |  |
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER, | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | إجباري |  |  |

## IAS_CST_COM_STP_DTL (IAS_CST_COM_STP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_TYP | COMM_TYP (COMM_TYP) | NUMBER(5, 0), | اختياري |  |  |
| C_GROUP_CODE | C_GROUP_CODE (C_GROUP_CODE) | NUMBER(10, 0), | اختياري |  |  |
| BILL_DOC_TYP | BILL_DOC_TYP (BILL_DOC_TYP) | NUMBER(2, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| F_PAY_PRCNT | F_PAY_PRCNT (F_PAY_PRCNT) | NUMBER, | اختياري |  |  |
| C_CLASS_TYP | C_CLASS_TYP (C_CLASS_TYP) | NUMBER(5, 0), | اختياري |  |  |
| SEPARATE_TRGT_ADDTRGT | SEPARATE_TRGT_ADDTRGT (SEPARATE_TRGT_ADDTRGT) | NUMBER(1, 0), | اختياري |  |  |
| COMM_CALC_ADD_TRGT_MTHD | COMM_CALC_ADD_TRGT_MTHD (COMM_CALC_ADD_TRGT_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| COMM_AMT_QTY | COMM_AMT_QTY (COMM_AMT_QTY) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_CST_DVCS (IAS_CST_DVCS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |

## IAS_CST_FINES (IAS_CST_FINES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FNS_NO | FNS_NO (FNS_NO) | NUMBER(5, 0), | إجباري |  | PK |
| TYP_CLC | TYP_CLC (TYP_CLC) | NUMBER(1, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| ACTIVITY_NO | ACTIVITY_NO (ACTIVITY_NO) | NUMBER(6, 0), | اختياري |  |  |

## IAS_CST_ITM_LMT_SAL (IAS_CST_ITM_LMT_SAL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  | PK |
| RPT_QTY_CNT | RPT_QTY_CNT (RPT_QTY_CNT) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| PROFIT_MARGIN_PER | PROFIT_MARGIN_PER (PROFIT_MARGIN_PER) | NUMBER(38, 0), | اختياري |  |  |
| MANTHLY_SALES_RATE | MANTHLY_SALES_RATE (MANTHLY_SALES_RATE) | NUMBER(38, 0), | اختياري |  |  |
| INDEBTEDNESS_RECEIVE_PER | INDEBTEDNESS_RECEIVE_PER (INDEBTEDNESS_RECEIVE_PER) | NUMBER(38, 0), | اختياري |  |  |
| NET_SALES_QTY_DEG | NET_SALES_QTY_DEG (NET_SALES_QTY_DEG) | NUMBER(3, 0), | اختياري |  |  |
| DAILY_SALES_RATE_DEG | DAILY_SALES_RATE_DEG (DAILY_SALES_RATE_DEG) | NUMBER(3, 0), | اختياري |  |  |
| INDEBTEDNESS_RATE_DEG | INDEBTEDNESS_RATE_DEG (INDEBTEDNESS_RATE_DEG) | NUMBER(3, 0), | اختياري |  |  |
| SALES_RT_PER_DEG | SALES_RT_PER_DEG (SALES_RT_PER_DEG) | NUMBER(3, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_CST_SMAN (IAS_CST_SMAN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(30), | اختياري |  |  |
| FLD_DAY5 | FLD_DAY5 (FLD_DAY5) | NUMBER(1, 0), | اختياري |  |  |

## IAS_CST_VND_TMP (IAS_CST_VND_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15) NOT NULL ENABLE, | إجباري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| CR_AMTF | CR_AMTF (CR_AMTF) | NUMBER, | اختياري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |

## IAS_CURRENCY_VALUE (IAS_CURRENCY_VALUE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CST_LMT_TYP | CST_LMT_TYP (CST_LMT_TYP) | NUMBER(1, 0), | اختياري |  |  |

## IAS_CUSTOMER_CC_LMT_RQ (IAS_CUSTOMER_CC_LMT_RQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  | PK |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  | PK |
| CST_LMT_PER | CST_LMT_PER (CST_LMT_PER) | NUMBER, | اختياري |  |  |

## IAS_CUSTOMER_MEASURE (IAS_CUSTOMER_MEASURE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_DEGREE | C_DEGREE (C_DEGREE) | NUMBER(3, 0), | اختياري |  | PK |
| FLG_CODE | FLG_CODE (FLG_CODE) | VARCHAR2(30), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| SIGN_IMG_NM | SIGN_IMG_NM (SIGN_IMG_NM) | VARCHAR2(100), | اختياري |  |  |
| BNF_NAME | BNF_NAME (BNF_NAME) | VARCHAR2(200))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_DATE_LOCK_USER (IAS_DATE_LOCK_USER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| SUBG_CODE | SUBG_CODE (SUBG_CODE) | VARCHAR2(10), | اختياري |  |  |
| DETAIL_A_NAME | DETAIL_A_NAME (DETAIL_A_NAME) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_DEVICE_TYPES (IAS_DEVICE_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DV_TYPE_NO | DV_TYPE_NO (DV_TYPE_NO) | NUMBER(3, 0), | اختياري |  | PK |
| SO_TYPE | SO_TYPE (SO_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |

## IAS_DFLT_PRICE_LVL (IAS_DFLT_PRICE_LVL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LEV_NO | LEV_NO (LEV_NO) | NUMBER(3, 0), | اختياري |  | PK |
| FLD_CODE | FLD_CODE (FLD_CODE) | NUMBER(5, 0), | اختياري |  | PK |

## IAS_DOC_DEL (IAS_DOC_DEL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FORM_NO | FORM_NO (FORM_NO) | NUMBER(5, 0), | اختياري |  |  |
| DOC_JV_TYPE | DOC_JV_TYPE (DOC_JV_TYPE) | NUMBER(10, 0), | إجباري |  |  |
| CASH_NO | CASH_NO (CASH_NO) | NUMBER(10, 0), | اختياري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_DOC_PST_UNPST_TMP (IAS_DOC_PST_UNPST_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| POST_DATE | POST_DATE (POST_DATE) | DATE, | اختياري |  |  |

## IAS_DRIVERS (IAS_DRIVERS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DRIVER_NO | DRIVER_NO (DRIVER_NO) | NUMBER(10, 0), | اختياري |  | PK |
| DRIVER_TEL | DRIVER_TEL (DRIVER_TEL) | VARCHAR2(30), | اختياري |  |  |
| DRIVER_E_MAIL | DRIVER_E_MAIL (DRIVER_E_MAIL) | VARCHAR2(60), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| STNDR_WGHT | STNDR_WGHT (STNDR_WGHT) | NUMBER, | اختياري |  |  |

## IAS_DRIVERS_ID (IAS_DRIVERS_ID)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ID_SEQ | ID_SEQ (ID_SEQ) | NUMBER, | اختياري |  |  |
| IMG_PATH | IMG_PATH (IMG_PATH) | VARCHAR2(400), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_DR_CST_DTL (IAS_DR_CST_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DR_NO | DR_NO (DR_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_DOC_DATE | I_DOC_DATE (I_DOC_DATE) | DATE, | اختياري |  |  |
| I_AMT_LOC | I_AMT_LOC (I_AMT_LOC) | NUMBER, | اختياري |  |  |
| PAID_DATE | PAID_DATE (PAID_DATE) | DATE, | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER, | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_DSTR_CPN_DTL (IAS_DSTR_CPN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| CPN_DSC_DOC | CPN_DSC_DOC (CPN_DSC_DOC) | VARCHAR2(1000), | اختياري |  |  |
| DOC_SEQ | DOC_SEQ (DOC_SEQ) | NUMBER(38, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_DSTR_CPN_MST (IAS_DSTR_CPN_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(60), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_DUE_CREDIT_CARD (IAS_DUE_CREDIT_CARD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  | PK |
| VALUE_DATE | VALUE_DATE (VALUE_DATE) | DATE, | إجباري |  |  |
| CR_CARD_COMM_PER | CR_CARD_COMM_PER (CR_CARD_COMM_PER) | NUMBER, | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_EMP_COM_CALC_DTL (IAS_EMP_COM_CALC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| COMM_AMT | COMM_AMT (COMM_AMT) | NUMBER, | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_EMP_COM_STP_DTL (IAS_EMP_COM_STP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_TYP | COMM_TYP (COMM_TYP) | NUMBER(5, 0), | اختياري |  |  |
| C_CLASS | C_CLASS (C_CLASS) | NUMBER(4, 0), | اختياري |  |  |
| COMM_AMT_TYP | COMM_AMT_TYP (COMM_AMT_TYP) | NUMBER(2, 0), | اختياري |  |  |
| COMM_SLICE_NO | COMM_SLICE_NO (COMM_SLICE_NO) | NUMBER(5, 0), | اختياري |  |  |
| COMM_AMT_QTY | COMM_AMT_QTY (COMM_AMT_QTY) | NUMBER(1, 0), | اختياري |  |  |
| SEPARATE_TRGT_ADDTRGT | SEPARATE_TRGT_ADDTRGT (SEPARATE_TRGT_ADDTRGT) | NUMBER(1, 0), | اختياري |  |  |
| COMM_CALC_ADD_TRGT_MTHD | COMM_CALC_ADD_TRGT_MTHD (COMM_CALC_ADD_TRGT_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_EXCH_CUR_DTL (IAS_EXCH_CUR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(20, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(30), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_EXCH_CUR_MST (IAS_EXCH_CUR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(20, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_AMT_L | DOC_AMT_L (DOC_AMT_L) | NUMBER, | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(60), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| POST_DATE | POST_DATE (POST_DATE) | DATE, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | إجباري |  |  |

## IAS_EXTRNL_SYS_OVR_WEB_API (IAS_EXTRNL_SYS_OVR_WEB_API)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| E_SYS_NO | E_SYS_NO (E_SYS_NO) | NUMBER, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| PROXY_SRVC_URL | PROXY_SRVC_URL (PROXY_SRVC_URL) | VARCHAR2(1000))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_EXTRNL_SYS_SYNC_LOG (IAS_EXTRNL_SYS_SYNC_LOG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SEQ_NO | SEQ_NO (SEQ_NO) | NUMBER, | اختياري |  |  |
| HTTP_CODE | HTTP_CODE (HTTP_CODE) | NUMBER, | اختياري |  |  |

## IAS_EX_RATE_TRACE (IAS_EX_RATE_TRACE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUR_NO | CUR_NO (CUR_NO) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_FAVORITE_SCR (IAS_FAVORITE_SCR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| FREE_QTY | FREE_QTY (FREE_QTY) | NUMBER, | اختياري |  |  |

## IAS_FREIGHT_MST (IAS_FREIGHT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FREIGHT_NO | FREIGHT_NO (FREIGHT_NO) | VARCHAR2(30), | اختياري |  |  |
| PO_NO | PO_NO (PO_NO) | NUMBER(15, 0), | اختياري |  |  |
| FREIGHT_DATE | FREIGHT_DATE (FREIGHT_DATE) | DATE, | اختياري |  |  |
| FREIGHT_METHOD | FREIGHT_METHOD (FREIGHT_METHOD) | NUMBER(1, 0), | اختياري |  |  |
| FREIGHT_UNIT | FREIGHT_UNIT (FREIGHT_UNIT) | NUMBER(2, 0), | اختياري |  |  |
| FREIGHT_AMT | FREIGHT_AMT (FREIGHT_AMT) | NUMBER(24, 9), | اختياري |  |  |
| COMMITMENT_DATE | COMMITMENT_DATE (COMMITMENT_DATE) | DATE, | اختياري |  |  |
| FREIGHT_SER | FREIGHT_SER (FREIGHT_SER) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  | PK |
| DOC_DESC | DOC_DESC (DOC_DESC) | VARCHAR2(250), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| PO_COMP | PO_COMP (PO_COMP) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_FRM_FLD (IAS_FRM_FLD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|

## IAS_GLRQ_TYPES (IAS_GLRQ_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RQ_DOC_TYPE | RQ_DOC_TYPE (RQ_DOC_TYPE) | NUMBER(4, 0), | اختياري |  | PK |
| RQ_NAME | RQ_NAME (RQ_NAME) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |

## IAS_GLRQ_TYPES_PRIV (IAS_GLRQ_TYPES_PRIV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RQ_DOC_TYPE | RQ_DOC_TYPE (RQ_DOC_TYPE) | NUMBER(4, 0), | اختياري |  | PK |
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_GL_CSHFLW_AC (IAS_GL_CSHFLW_AC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT 1048576
 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| RCRD_NM | RCRD_NM (RCRD_NM) | VARCHAR2(250), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## IAS_GL_CSHFLW_FLD (IAS_GL_CSHFLW_FLD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| RCRD_NO_AC | RCRD_NO_AC (RCRD_NO_AC) | NUMBER(10, 0), | اختياري |  |  |
| RCRD_NO_DTL | RCRD_NO_DTL (RCRD_NO_DTL) | NUMBER(10, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| RCRD_NO_AC | RCRD_NO_AC (RCRD_NO_AC) | NUMBER(10, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | إجباري |  |  |
| CR_AMT_F | CR_AMT_F (CR_AMT_F) | NUMBER, | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |

## IAS_GL_REQ_MST (IAS_GL_REQ_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_RATE | DOC_RATE (DOC_RATE) | NUMBER, | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_AMT_F | DOC_AMT_F (DOC_AMT_F) | NUMBER, | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |

## IAS_GNR_CODE_DTL (IAS_GNR_CODE_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | إجباري |  |  |
| SUBNO_D_TYPE | SUBNO_D_TYPE (SUBNO_D_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| JOB_TYP | JOB_TYP (JOB_TYP) | NUMBER(1, 0), | اختياري |  |  |
| TOP_RGHT_CRNR | TOP_RGHT_CRNR (TOP_RGHT_CRNR) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_GNR_CODE_MST (IAS_GNR_CODE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MAIN_CODE | MAIN_CODE (MAIN_CODE) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  | PK |
| CODE_TYP | CODE_TYP (CODE_TYP) | NUMBER(1, 0), | اختياري |  |  |

## IAS_GNR_CODE_PRV (IAS_GNR_CODE_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_GNR_CRD_IDNTTY (IAS_GNR_CRD_IDNTTY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TYP_CODE | TYP_CODE (TYP_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  | PK |
| ISSUE_DATE_AH | ISSUE_DATE_AH (ISSUE_DATE_AH) | DATE, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| GR_AC_TYP | GR_AC_TYP (GR_AC_TYP) | NUMBER(2, 0), | إجباري |  |  |
| LC_NO | LC_NO (LC_NO) | VARCHAR2(15), | اختياري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0), | اختياري |  |  |

## IAS_GRNT_INCR_MST (IAS_GRNT_INCR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_TYPE | GR_TYPE (GR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER, | إجباري |  |  |
| END_DATE | END_DATE (END_DATE) | DATE, | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(60), | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_GRNT_MST (IAS_GRNT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GR_TYPE | GR_TYPE (GR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER, | إجباري |  |  |
| END_DATE | END_DATE (END_DATE) | DATE, | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(60), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_POST | DOC_POST (DOC_POST) | NUMBER(1, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| AD_DATE_REF | AD_DATE_REF (AD_DATE_REF) | DATE, | اختياري |  |  |

## IAS_GRN_TYPES (IAS_GRN_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GRN_TYPE | GRN_TYPE (GRN_TYPE) | NUMBER(5, 0), | إجباري |  | PK |
| AFFECTED_BY_TRANS | AFFECTED_BY_TRANS (AFFECTED_BY_TRANS) | NUMBER(1, 0), | اختياري |  |  |
| DFLT_PRC_PRCNT_FROM_PRIM_COST | DFLT_PRC_PRCNT_FROM_PRIM_COST (DFLT_PRC_PRCNT_FROM_PRIM_COST) | NUMBER, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_GRP_ITM_LVL_TREE (IAS_GRP_ITM_LVL_TREE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GRP_CODE | GRP_CODE (GRP_CODE) | VARCHAR2(20), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| INC_SER | INC_SER (INC_SER) | NUMBER(38, 0), | إجباري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | اختياري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_GR_INCOMING_MST (IAS_GR_INCOMING_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INCOM_TYPE | INCOM_TYPE (INCOM_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| INC_SER | INC_SER (INC_SER) | NUMBER(38, 0), | اختياري |  | PK |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(250), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| MRP_MT_SQ | MRP_MT_SQ (MRP_MT_SQ) | NUMBER(15, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_INCOUT_DTL (IAS_INCOUT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| ALLOW_FREE_QTY | ALLOW_FREE_QTY (ALLOW_FREE_QTY) | NUMBER(1, 0), | اختياري |  |  |
| OUT_FREE_QTY | OUT_FREE_QTY (OUT_FREE_QTY) | NUMBER, | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## IAS_INCOUT_MST (IAS_INCOUT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| STOCK_RATE | STOCK_RATE (STOCK_RATE) | NUMBER, | اختياري |  |  |
| DOC_AMT | DOC_AMT (DOC_AMT) | NUMBER, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_INSRNCE_CARD (IAS_INSRNCE_CARD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INS_CMP_NO | INS_CMP_NO (INS_CMP_NO) | NUMBER(10, 0), | اختياري |  | PK |
| PRSON_NO | PRSON_NO (PRSON_NO) | NUMBER(15, 0), | اختياري |  |  |
| PRSON_F_NM | PRSON_F_NM (PRSON_F_NM) | VARCHAR2(100), | اختياري |  |  |
| CARD_EXPIRE_DATE | CARD_EXPIRE_DATE (CARD_EXPIRE_DATE) | DATE, | اختياري |  |  |
| INS_CARD_IMG | INS_CARD_IMG (INS_CARD_IMG) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_INSRNCE_CARD_CHRONIC (IAS_INSRNCE_CARD_CHRONIC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INS_CMP_NO | INS_CMP_NO (INS_CMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| I_QTY_DAY | I_QTY_DAY (I_QTY_DAY) | NUMBER, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  |  |
| BILL_AMT | BILL_AMT (BILL_AMT) | NUMBER, | اختياري |  |  |
| INSRNCE_APPRVD_CODE | INSRNCE_APPRVD_CODE (INSRNCE_APPRVD_CODE) | VARCHAR2(60), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |

## IAS_INSRNCE_CLAIM_VST (IAS_INSRNCE_CLAIM_VST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(3, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  |  |
| OUT_TYP_CHRONIC | OUT_TYP_CHRONIC (OUT_TYP_CHRONIC) | NUMBER(2, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| LMT_AMT_OUT_NET_LOC | LMT_AMT_OUT_NET_LOC (LMT_AMT_OUT_NET_LOC) | NUMBER, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| LOAD_AMT_LOC_LMT | LOAD_AMT_LOC_LMT (LOAD_AMT_LOC_LMT) | NUMBER, | اختياري |  |  |
| LMT_AMT_NET_LOC | LMT_AMT_NET_LOC (LMT_AMT_NET_LOC) | NUMBER, | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_INSRNCE_CMP (IAS_INSRNCE_CMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INS_CMP_NO | INS_CMP_NO (INS_CMP_NO) | NUMBER(10, 0), | اختياري |  | PK |
| INS_CMP_F_NM | INS_CMP_F_NM (INS_CMP_F_NM) | VARCHAR2(100), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| CLC_TAX_INSRNC_CMPNY_FLG | CLC_TAX_INSRNC_CMPNY_FLG (CLC_TAX_INSRNC_CMPNY_FLG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_INSRNCE_CMP_CLSS (IAS_INSRNCE_CMP_CLSS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INS_CMP_NO | INS_CMP_NO (INS_CMP_NO) | NUMBER(10, 0), | اختياري |  | PK |
| CLSS_L_NM | CLSS_L_NM (CLSS_L_NM) | VARCHAR2(100), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CNTRCT_T_DATE | CNTRCT_T_DATE (CNTRCT_T_DATE) | DATE, | اختياري |  |  |

## IAS_INSRNCE_CNTRCT_CNDTN (IAS_INSRNCE_CNTRCT_CNDTN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INS_CMP_NO | INS_CMP_NO (INS_CMP_NO) | NUMBER(10, 0) NOT NULL ENABLE | إجباري |  | PK |
| CNDTN_NO | CNDTN_NO (CNDTN_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  | PK |

## IAS_INSRNCE_CNTRCT_CNDTN_BILL (IAS_INSRNCE_CNTRCT_CNDTN_BILL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |

## IAS_INSRNCE_ITM_GRP_DTL (IAS_INSRNCE_ITM_GRP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0) NOT NULL ENABLE | إجباري |  |  |
| INS_GRP_NO | INS_GRP_NO (INS_GRP_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| INS_GRP_L_NM | INS_GRP_L_NM (INS_GRP_L_NM) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |
| I_DATE | I_DATE (I_DATE) | DATE, | اختياري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_INV_BARCODE_CONFG (IAS_INV_BARCODE_CONFG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | اختياري |  | PK |
| PRFX_BRCODE | PRFX_BRCODE (PRFX_BRCODE) | VARCHAR2(2), | اختياري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| ATTCH_NO1 | ATTCH_NO1 (ATTCH_NO1) | NUMBER, | اختياري |  |  |
| ATTCH_NO5 | ATTCH_NO5 (ATTCH_NO5) | NUMBER, | اختياري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| KIT_ITM | KIT_ITM (KIT_ITM) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_INV_MACHINE_MST (IAS_INV_MACHINE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INV_NO | INV_NO (INV_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(2, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_INV_MACHINE_SUB_DTL (IAS_INV_MACHINE_SUB_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INV_NO | INV_NO (INV_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| INV_TYPE | INV_TYPE (INV_TYPE) | NUMBER(6, 0), | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | إجباري |  |  |
| ATTCH_DESC_NO5 | ATTCH_DESC_NO5 (ATTCH_DESC_NO5) | NUMBER, | اختياري |  |  |
| I_HEIGHT | I_HEIGHT (I_HEIGHT) | NUMBER, | إجباري |  |  |
| WT_QTY | WT_QTY (WT_QTY) | NUMBER, | اختياري |  |  |

## IAS_INV_MANAGEMENT (IAS_INV_MANAGEMENT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(38, 0), | اختياري |  |  |
| ITM_SALE_AGE | ITM_SALE_AGE (ITM_SALE_AGE) | NUMBER, | اختياري |  |  |
| ITM_SALE_RATIO | ITM_SALE_RATIO (ITM_SALE_RATIO) | NUMBER, | اختياري |  |  |
| GRP_CLASS_CODE | GRP_CLASS_CODE (GRP_CLASS_CODE) | VARCHAR2(20), | اختياري |  |  |
| ASSISTANT_NO | ASSISTANT_NO (ASSISTANT_NO) | VARCHAR2(10), | اختياري |  |  |
| INCOME_DATE | INCOME_DATE (INCOME_DATE) | DATE, | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_INV_MANAGEMENT_TMP (IAS_INV_MANAGEMENT_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| NET_SALE | NET_SALE (NET_SALE) | NUMBER, | اختياري |  |  |
| PER_SALE_QTY | PER_SALE_QTY (PER_SALE_QTY) | NUMBER, | اختياري |  |  |
| SUM_INC_QTY | SUM_INC_QTY (SUM_INC_QTY) | NUMBER(38, 0), | اختياري |  |  |
| AVG_QTY_PRD | AVG_QTY_PRD (AVG_QTY_PRD) | NUMBER(38, 0), | اختياري |  |  |
| MNG_CODE | MNG_CODE (MNG_CODE) | VARCHAR2(10), | اختياري |  |  |
| DETAIL_NO | DETAIL_NO (DETAIL_NO) | VARCHAR2(10), | اختياري |  |  |
| PRD_DAY | PRD_DAY (PRD_DAY) | NUMBER(6, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_INV_TYPES (IAS_INV_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INV_TYPE | INV_TYPE (INV_TYPE) | NUMBER(5, 0), | إجباري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_ITEMS_ACTIVITY (IAS_ITEMS_ACTIVITY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ACTIVITY_NO | ACTIVITY_NO (ACTIVITY_NO) | NUMBER(5, 0), | اختياري |  | PK |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_ITEMS_COLLECT_TMP (IAS_ITEMS_COLLECT_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(38, 0), | اختياري |  |  |
| INCOME_DATE | INCOME_DATE (INCOME_DATE) | DATE, | اختياري |  |  |

## IAS_ITEMS_NOT_STORE_TMP (IAS_ITEMS_NOT_STORE_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(38, 0), | اختياري |  |  |
| INCOME_DATE | INCOME_DATE (INCOME_DATE) | DATE, | اختياري |  |  |

## IAS_ITEMS_STORE_TMP (IAS_ITEMS_STORE_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(38, 0), | اختياري |  |  |
| INCOME_DATE | INCOME_DATE (INCOME_DATE) | DATE, | اختياري |  |  |

## IAS_ITEM_LEVELS (IAS_ITEM_LEVELS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ILEV_NO | ILEV_NO (ILEV_NO) | NUMBER(3, 0), | اختياري |  | PK |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| MIN_ITM_PRICE | MIN_ITM_PRICE (MIN_ITM_PRICE) | NUMBER, | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | إجباري |  |  |

## IAS_ITEM_PRICE_HISTORY (IAS_ITEM_PRICE_HISTORY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| AUD_NO | AUD_NO (AUD_NO) | NUMBER(38, 0), | اختياري |  | PK |
| LEV_NO | LEV_NO (LEV_NO) | NUMBER(3, 0), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| PREV_MIN_ITM_PRICE | PREV_MIN_ITM_PRICE (PREV_MIN_ITM_PRICE) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_ITEM_REQUIREMENTS (IAS_ITEM_REQUIREMENTS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| REQ_ITEM_NO | REQ_ITEM_NO (REQ_ITEM_NO) | VARCHAR2(30), | اختياري |  | PK |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| P_QTY | P_QTY (P_QTY) | NUMBER, | اختياري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(6, 0), | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE, | اختياري |  |  |
| ACTIVE_NOTE | ACTIVE_NOTE (ACTIVE_NOTE) | VARCHAR2(250), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_ITEM_SERIALNO_BR (IAS_ITEM_SERIALNO_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE, | اختياري |  |  |
| RCRD_NO_DOC | RCRD_NO_DOC (RCRD_NO_DOC) | NUMBER(10, 0), | اختياري |  |  |
| ACTIVE_DATE | ACTIVE_DATE (ACTIVE_DATE) | DATE, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_ITEM_SERIALNO_GRN (IAS_ITEM_SERIALNO_GRN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(6, 0), | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  | PK |
| SERIALNO | SERIALNO (SERIALNO) | VARCHAR2(30), | إجباري |  | PK |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_ITEM_SERIALNO_OTHRS (IAS_ITEM_SERIALNO_OTHRS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | إجباري |  |  |
| DESC_NO | DESC_NO (DESC_NO) | NUMBER(5, 0), | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| OUT_GR_SER | OUT_GR_SER (OUT_GR_SER) | NUMBER(38, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |

## IAS_ITEM_SERIAL_DESC (IAS_ITEM_SERIAL_DESC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DESC_NO | DESC_NO (DESC_NO) | NUMBER(5, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| T_W_CODE | T_W_CODE (T_W_CODE) | NUMBER(10, 0), | إجباري |  |  |
| DIST_DAY | DIST_DAY (DIST_DAY) | NUMBER, | اختياري |  |  |

## IAS_ITM_ALTRNTV (IAS_ITM_ALTRNTV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  |  |
| EQTN_VAL | EQTN_VAL (EQTN_VAL) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ATTCH_DESC_NO1 | ATTCH_DESC_NO1 (ATTCH_DESC_NO1) | NUMBER, | اختياري |  |  |
| ATTCH_NO2 | ATTCH_NO2 (ATTCH_NO2) | NUMBER(1, 0), | اختياري |  |  |
| ATTCH_DESC_NO3 | ATTCH_DESC_NO3 (ATTCH_DESC_NO3) | NUMBER, | اختياري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| OUT_GR_SER | OUT_GR_SER (OUT_GR_SER) | NUMBER(38, 0), | اختياري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_ITM_ATTACH_MOVEMENT_BR (IAS_ITM_ATTACH_MOVEMENT_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | اختياري |  |  |
| ATTCH_NO4 | ATTCH_NO4 (ATTCH_NO4) | NUMBER(1, 0), | اختياري |  |  |
| ATTCH_DESC_NO5 | ATTCH_DESC_NO5 (ATTCH_DESC_NO5) | NUMBER, | اختياري |  |  |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| P_QTY | P_QTY (P_QTY) | NUMBER, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| OTHR_AMT | OTHR_AMT (OTHR_AMT) | NUMBER, | اختياري |  |  |

## IAS_ITM_ATTACH_OTHRS (IAS_ITM_ATTACH_OTHRS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| ATTCH_NO2 | ATTCH_NO2 (ATTCH_NO2) | NUMBER(1, 0), | اختياري |  |  |
| ATTCH_DESC_NO3 | ATTCH_DESC_NO3 (ATTCH_DESC_NO3) | NUMBER, | اختياري |  |  |
| PF_QTY | PF_QTY (PF_QTY) | NUMBER, | اختياري |  |  |
| PREPARE_DATE | PREPARE_DATE (PREPARE_DATE) | DATE, | اختياري |  |  |
| RESERVED | RESERVED (RESERVED) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## ItemBatch (IAS_ITM_BATCH)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| BATCH_DESC_NO1 | BATCH_DESC_NO1 (BATCH_DESC_NO1) | VARCHAR2(15), | اختياري |  |  |
| COL_NO3 | COL_NO3 (COL_NO3) | NUMBER(1, 0), | اختياري |  |  |
| BATCH_DESC_NO4 | BATCH_DESC_NO4 (BATCH_DESC_NO4) | VARCHAR2(15), | اختياري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| PUR_UNIT | PUR_UNIT (PUR_UNIT) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | إجباري |  |  |
| QR_CODE_MTHD_NO | QR_CODE_MTHD_NO (QR_CODE_MTHD_NO) | NUMBER(1, 0), | اختياري |  |  |
| ITM_UNT_L_DSC | ITM_UNT_L_DSC (ITM_UNT_L_DSC) | VARCHAR2(250), | اختياري |  |  |
| WEIGHT_UNIT | WEIGHT_UNIT (WEIGHT_UNIT) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_ITM_GRANT_CARD (IAS_ITM_GRANT_CARD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | اختياري |  |  |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | إجباري |  |  |
| RT_BILL_SER | RT_BILL_SER (RT_BILL_SER) | NUMBER, | اختياري |  |  |
| GRANT_START_DATE | GRANT_START_DATE (GRANT_START_DATE) | DATE, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | إجباري |  |  |

## IAS_ITM_LVL_MEASURE (IAS_ITM_LVL_MEASURE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ILEV_NO | ILEV_NO (ILEV_NO) | NUMBER(3, 0), | اختياري |  | PK |
| FLG_CODE | FLG_CODE (FLG_CODE) | VARCHAR2(30), | اختياري |  | PK |
| ITM_RATIO_DEG | ITM_RATIO_DEG (ITM_RATIO_DEG) | NUMBER(4, 0), | اختياري |  |  |
| GEN_SALES_RATE | GEN_SALES_RATE (GEN_SALES_RATE) | NUMBER, | اختياري |  |  |
| NET_SALES_QTY_DEG | NET_SALES_QTY_DEG (NET_SALES_QTY_DEG) | NUMBER(4, 0), | اختياري |  |  |
| ITEM_TYPE | ITEM_TYPE (ITEM_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| NO_RETURN_SALE | NO_RETURN_SALE (NO_RETURN_SALE) | NUMBER(1, 0), | اختياري |  |  |
| USE_EXP_DATE | USE_EXP_DATE (USE_EXP_DATE) | NUMBER(1, 0), | اختياري |  |  |
| USE_ATTCH | USE_ATTCH (USE_ATTCH) | NUMBER(1, 0), | اختياري |  |  |
| MIN_LMT_COST_PER | MIN_LMT_COST_PER (MIN_LMT_COST_PER) | NUMBER(3, 0), | اختياري |  |  |
| WEIGHT_ITM | WEIGHT_ITM (WEIGHT_ITM) | NUMBER, | اختياري |  |  |
| HAS_COMM | HAS_COMM (HAS_COMM) | NUMBER(1, 0), | اختياري |  |  |
| VNDR_I_CODE | VNDR_I_CODE (VNDR_I_CODE) | VARCHAR2(30), | اختياري |  |  |
| LOW_LMT_PRNT_SCND | LOW_LMT_PRNT_SCND (LOW_LMT_PRNT_SCND) | NUMBER(5, 0), | اختياري |  |  |
| LOW_LMT_NOT_APP_REQ_ATTCH | LOW_LMT_NOT_APP_REQ_ATTCH (LOW_LMT_NOT_APP_REQ_ATTCH) | NUMBER(5, 0), | اختياري |  |  |
| CONN_ITM_SO_INC | CONN_ITM_SO_INC (CONN_ITM_SO_INC) | NUMBER(1, 0), | اختياري |  |  |
| USE_EMP_FLG | USE_EMP_FLG (USE_EMP_FLG) | NUMBER(1, 0), | اختياري |  |  |
| REST_ITM_COMBO | REST_ITM_COMBO (REST_ITM_COMBO) | NUMBER(1, 0), | اختياري |  |  |
| MRP_ITM_CLSS | MRP_ITM_CLSS (MRP_ITM_CLSS) | NUMBER(2, 0), | اختياري |  |  |
| CHK_AVL_QTY_IN_RES | CHK_AVL_QTY_IN_RES (CHK_AVL_QTY_IN_RES) | NUMBER(1, 0), | اختياري |  |  |
| USE_AUTO_PST_RMS_DATA_TO_INV | USE_AUTO_PST_RMS_DATA_TO_INV (USE_AUTO_PST_RMS_DATA_TO_INV) | NUMBER(1, 0), | اختياري |  |  |
| CST_LAST_PROD | CST_LAST_PROD (CST_LAST_PROD) | NUMBER, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| SHRT_ITM_F_NM | SHRT_ITM_F_NM (SHRT_ITM_F_NM) | VARCHAR2(100), | اختياري |  |  |
| SUB_FOOD_GRP_NO | SUB_FOOD_GRP_NO (SUB_FOOD_GRP_NO) | VARCHAR2(7), | اختياري |  |  |
| PST_WITH_ADMT | PST_WITH_ADMT (PST_WITH_ADMT) | NUMBER(1, 0), | اختياري |  |  |
| BRTH_SRVC | BRTH_SRVC (BRTH_SRVC) | NUMBER(1, 0), | اختياري |  |  |
| SRVC_SORT | SRVC_SORT (SRVC_SORT) | NUMBER, | اختياري |  |  |
| USE_PRICE_EXPIRE_DATE_OPTIONAL | USE_PRICE_EXPIRE_DATE_OPTIONAL (USE_PRICE_EXPIRE_DATE_OPTIONAL) | NUMBER(1, 0), | اختياري |  |  |
| USE_QR_CODE_TYPE | USE_QR_CODE_TYPE (USE_QR_CODE_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| USE_BATCH_NO_AUTO_SQ_FLG | USE_BATCH_NO_AUTO_SQ_FLG (USE_BATCH_NO_AUTO_SQ_FLG) | NUMBER(1, 0), | اختياري |  |  |
| KIT_ITM_CLSSFCTN_TYP | KIT_ITM_CLSSFCTN_TYP (KIT_ITM_CLSSFCTN_TYP) | NUMBER(1, 0), | اختياري |  |  |
| GET_AVL_QTY_FROM_CMPNNT_FLG | GET_AVL_QTY_FROM_CMPNNT_FLG (GET_AVL_QTY_FROM_CMPNNT_FLG) | NUMBER(1, 0), | اختياري |  |  |
| INIT_PRIMARY_COST | INIT_PRIMARY_COST (INIT_PRIMARY_COST) | NUMBER, | اختياري |  |  |

## IAS_ITM_ONLINE (IAS_ITM_ONLINE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| SHO_SYS_TYP | SHO_SYS_TYP (SHO_SYS_TYP) | NUMBER(2, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_ITM_ONLINE_IMG (IAS_ITM_ONLINE_IMG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  | PK |
| IMG_NM | IMG_NM (IMG_NM) | VARCHAR2(250), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_ITM_PERIODIC_COST (IAS_ITM_PERIODIC_COST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_NO | PRD_NO (PRD_NO) | NUMBER, | اختياري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_ITM_SALES_AGE (IAS_ITM_SALES_AGE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  | PK |
| FIRST_INC_DATE | FIRST_INC_DATE (FIRST_INC_DATE) | DATE, | اختياري |  |  |
| DOC_SER_OUT | DOC_SER_OUT (DOC_SER_OUT) | NUMBER(38, 0), | اختياري |  |  |
| DOC_SEQ_SALE | DOC_SEQ_SALE (DOC_SEQ_SALE) | NUMBER(38, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| FLEX_NO | FLEX_NO (FLEX_NO) | NUMBER, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| BARCODE_L_DSC | BARCODE_L_DSC (BARCODE_L_DSC) | VARCHAR2(250), | اختياري |  |  |

## IAS_ITM_USD_MCHN (IAS_ITM_USD_MCHN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  | PK |
| I_F_DESC | I_F_DESC (I_F_DESC) | VARCHAR2(500), | اختياري |  |  |
| ASSISTANT_NO | ASSISTANT_NO (ASSISTANT_NO) | VARCHAR2(10), | اختياري |  |  |

## IAS_ITM_USD_MCHN_IMG (IAS_ITM_USD_MCHN_IMG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  | PK |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_ITM_WCODE (IAS_ITM_WCODE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |

## IAS_ITM_WTAVG_TMP (IAS_ITM_WTAVG_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  | PK |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| CR_SMBL | CR_SMBL (CR_SMBL) | VARCHAR2(2), | اختياري |  |  |
| K_NO | K_NO (K_NO) | NUMBER(15, 0), | اختياري |  |  |
| ADJ_SER | ADJ_SER (ADJ_SER) | NUMBER(38, 0), | اختياري |  | PK |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| KIT_ITEM_NO | KIT_ITEM_NO (KIT_ITEM_NO) | VARCHAR2(30), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| BANK_AC | BANK_AC (BANK_AC) | VARCHAR2(30), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_MAINSUB_GRP_DTL (IAS_MAINSUB_GRP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| G_CODE | G_CODE (G_CODE) | VARCHAR2(10), | اختياري |  |  |
| MNG_A_NAME | MNG_A_NAME (MNG_A_NAME) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_MEASUR_DSC_ITM_DTL (IAS_MEASUR_DSC_ITM_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| MEASUR_L_NM | MEASUR_L_NM (MEASUR_L_NM) | VARCHAR2(100), | اختياري |  |  |
| MEASUR_NO_REF | MEASUR_NO_REF (MEASUR_NO_REF) | NUMBER(5, 0), | اختياري |  |  |
| MEASUR_L_NM | MEASUR_L_NM (MEASUR_L_NM) | VARCHAR2(100), | اختياري |  |  |
| MEASUR_DSC | MEASUR_DSC (MEASUR_DSC) | VARCHAR2(250), | اختياري |  |  |

## IAS_MEASUR_DSC_ITM_TRNS (IAS_MEASUR_DSC_ITM_TRNS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_SEQ | DOC_SEQ (DOC_SEQ) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| C_NAME | C_NAME (C_NAME) | VARCHAR2(100), | اختياري |  |  |
| MDCL_F_NM | MDCL_F_NM (MDCL_F_NM) | VARCHAR2(100), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |

## IAS_MISSING_DOC_TMP (IAS_MISSING_DOC_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| CASH_NO | CASH_NO (CASH_NO) | NUMBER(10, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |
| P_QTY | P_QTY (P_QTY) | NUMBER, | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_MIS_EQ_MST_TMP (IAS_MIS_EQ_MST_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  |  |

## IAS_MNDTRY_SCR (IAS_MNDTRY_SCR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FORM_NO | FORM_NO (FORM_NO) | NUMBER(5, 0), | اختياري |  | PK |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| HND_DVS_SRL | HND_DVS_SRL (HND_DVS_SRL) | VARCHAR2(60))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_MSG_SMS (IAS_MSG_SMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MSG_NO | MSG_NO (MSG_NO) | NUMBER(15, 0), | اختياري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_MSG_SMS_DTL (IAS_MSG_SMS_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | اختياري |  |  |
| SOURCE_DATA_TYP | SOURCE_DATA_TYP (SOURCE_DATA_TYP) | NUMBER(2, 0), | اختياري |  |  |
| T_GROUP_USR | T_GROUP_USR (T_GROUP_USR) | NUMBER(5, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_MSG_USER_DTL (IAS_MSG_USER_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MSG_NO | MSG_NO (MSG_NO) | NUMBER(15, 0), | اختياري |  |  |
| FROM_USR | FROM_USR (FROM_USR) | NUMBER(5, 0), | اختياري |  |  |

## IAS_NOTES_USER (IAS_NOTES_USER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| NOTE_NO | NOTE_NO (NOTE_NO) | NUMBER(15, 0), | اختياري |  | PK |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_NOTE_TYPES (IAS_NOTE_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| NOTE_TYPE | NOTE_TYPE (NOTE_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  | PK |
| PROV_NO | PROV_NO (PROV_NO) | NUMBER(10, 0), | اختياري |  |  |
| CNTRY_NO | CNTRY_NO (CNTRY_NO) | , | اختياري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | اختياري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| MOV_PY_FLG | MOV_PY_FLG (MOV_PY_FLG) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_OUTGOING_DTL (IAS_OUTGOING_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| G_SER | G_SER (G_SER) | NUMBER(38, 0), | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | إجباري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_OUTGOING_DTL_BR (IAS_OUTGOING_DTL_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | إجباري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER(24, 9), | إجباري |  |  |
| DOC_JV_TYPE_REF | DOC_JV_TYPE_REF (DOC_JV_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SEQUENCE_REF | DOC_SEQUENCE_REF (DOC_SEQUENCE_REF) | NUMBER(38, 0), | اختياري |  |  |
| USE_ATTCH | USE_ATTCH (USE_ATTCH) | NUMBER(1, 0), | اختياري |  |  |
| BARCODE | BARCODE (BARCODE) | VARCHAR2(30), | اختياري |  |  |
| I_NUMBER | I_NUMBER (I_NUMBER) | NUMBER, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_OUTGOING_MST (IAS_OUTGOING_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| STOCK_RATE | STOCK_RATE (STOCK_RATE) | NUMBER, | اختياري |  |  |
| OUT_POST | OUT_POST (OUT_POST) | NUMBER(1, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| ORD_HOTEL_NO | ORD_HOTEL_NO (ORD_HOTEL_NO) | NUMBER(10, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| USE_VAT | USE_VAT (USE_VAT) | NUMBER(1, 0), | اختياري |  |  |
| PRCSSD_FLG | PRCSSD_FLG (PRCSSD_FLG) | NUMBER(1, 0), | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| PRM_CODE | PRM_CODE (PRM_CODE) | VARCHAR2(15))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_OUTGOING_MST_BR (IAS_OUTGOING_MST_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| STOCK_RATE | STOCK_RATE (STOCK_RATE) | NUMBER, | اختياري |  |  |
| OUT_POST | OUT_POST (OUT_POST) | NUMBER(1, 0), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(250), | اختياري |  |  |
| EXP_RATE | EXP_RATE (EXP_RATE) | NUMBER, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(1000), | اختياري |  |  |

## IAS_OUTGOING_PLAN_DTL (IAS_OUTGOING_PLAN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER(38, 0), | اختياري |  |  |
| PLAN_TYPE | PLAN_TYPE (PLAN_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | اختياري |  |  |
| PLAN_DESC | PLAN_DESC (PLAN_DESC) | VARCHAR2(100), | إجباري |  |  |
| PLAN_TYPE | PLAN_TYPE (PLAN_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| PLAN_DESC | PLAN_DESC (PLAN_DESC) | VARCHAR2(250), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| ITEM_DESC | ITEM_DESC (ITEM_DESC) | VARCHAR2(1000), | اختياري |  |  |
| RESERVED | RESERVED (RESERVED) | NUMBER(1, 0), | اختياري |  |  |
| WT_UNT | WT_UNT (WT_UNT) | VARCHAR2(10), | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | إجباري |  |  |

## IAS_OUT_REQUEST_MST (IAS_OUT_REQUEST_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_REQ_TYPE | OUT_REQ_TYPE (OUT_REQ_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_PARA_AP (IAS_PARA_AP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | إجباري |  | PK |
| SHOW_DISC_PER_ITEMS_AP | SHOW_DISC_PER_ITEMS_AP (SHOW_DISC_PER_ITEMS_AP) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| AP_PREQ_SERIAL | AP_PREQ_SERIAL (AP_PREQ_SERIAL) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| INSRT_VNDR_ITM | INSRT_VNDR_ITM (INSRT_VNDR_ITM) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| DISC2_NOT_EFFECT_VND_TRNS | DISC2_NOT_EFFECT_VND_TRNS (DISC2_NOT_EFFECT_VND_TRNS) | NUMBER(1, 0), | اختياري |  |  |
| AP_DISC_TYPE | AP_DISC_TYPE (AP_DISC_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_DUPL_ITM | ALLOW_DUPL_ITM (ALLOW_DUPL_ITM) | NUMBER(1, 0), | اختياري |  |  |
| USE_AP_CHECK_QTY | USE_AP_CHECK_QTY (USE_AP_CHECK_QTY) | NUMBER(1, 0), | اختياري |  |  |
| ADD_ITM_PRICE_FROM_BILL | ADD_ITM_PRICE_FROM_BILL (ADD_ITM_PRICE_FROM_BILL) | NUMBER(1, 0), | اختياري |  |  |
| PO_CHK_MAX_LMT_COST | PO_CHK_MAX_LMT_COST (PO_CHK_MAX_LMT_COST) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_ITM_BARCODE_AP | SHOW_ITM_BARCODE_AP (SHOW_ITM_BARCODE_AP) | NUMBER(1, 0), | اختياري |  |  |
| SHW_ADD_FLD_DTL_CNT | SHW_ADD_FLD_DTL_CNT (SHW_ADD_FLD_DTL_CNT) | NUMBER(2, 0), | اختياري |  |  |
| USE_RT_BILL_RQST | USE_RT_BILL_RQST (USE_RT_BILL_RQST) | NUMBER(1, 0), | اختياري |  |  |
| REQUEST_VNDR_BILL_NO | REQUEST_VNDR_BILL_NO (REQUEST_VNDR_BILL_NO) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_FREE_QTY_PROFT | SHOW_FREE_QTY_PROFT (SHOW_FREE_QTY_PROFT) | NUMBER(1, 0), | اختياري |  |  |
| SHW_TOT_ITM_PRICE_BY_NET | SHW_TOT_ITM_PRICE_BY_NET (SHW_TOT_ITM_PRICE_BY_NET) | NUMBER(1, 0), | اختياري |  |  |
| NOT_CHK_LC_BLNC_IN_BILL_CST | NOT_CHK_LC_BLNC_IN_BILL_CST (NOT_CHK_LC_BLNC_IN_BILL_CST) | NUMBER(1, 0), | اختياري |  |  |
| USE_VNDR_VAT_TYPE | USE_VNDR_VAT_TYPE (USE_VNDR_VAT_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_UPDT_VNDR_INBILL | ALLW_UPDT_VNDR_INBILL (ALLW_UPDT_VNDR_INBILL) | NUMBER, | اختياري |  |  |
| USE_RET_WITHOUT_PI_BILLNO | USE_RET_WITHOUT_PI_BILLNO (USE_RET_WITHOUT_PI_BILLNO) | NUMBER(1, 0), | اختياري |  |  |
| AP_ITEM_CHRG_WCODE_TYPE | AP_ITEM_CHRG_WCODE_TYPE (AP_ITEM_CHRG_WCODE_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| ALLWD_RE_PUR_SERIALNO | ALLWD_RE_PUR_SERIALNO (ALLWD_RE_PUR_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UPDATE_QT_PRM_SAL | UPDATE_QT_PRM_SAL (UPDATE_QT_PRM_SAL) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| SHW_ITEM_SIZE | SHW_ITEM_SIZE (SHW_ITEM_SIZE) | NUMBER, | اختياري |  |  |
| USE_ARBIC_SRCH_ICODE | USE_ARBIC_SRCH_ICODE (USE_ARBIC_SRCH_ICODE) | NUMBER(1, 0), | اختياري |  |  |
| LVL_NO_PRICE | LVL_NO_PRICE (LVL_NO_PRICE) | NUMBER(3, 0), | اختياري |  |  |

## IAS_PARA_AR (IAS_PARA_AR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | إجباري |  | PK |
| INVOICING_SERIALS | INVOICING_SERIALS (INVOICING_SERIALS) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| MUST_RET_SAME_WCODE | MUST_RET_SAME_WCODE (MUST_RET_SAME_WCODE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| FILL_SO_WITHOUT_PRICE | FILL_SO_WITHOUT_PRICE (FILL_SO_WITHOUT_PRICE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_SHPNG_LST_AR | USE_SHPNG_LST_AR (USE_SHPNG_LST_AR) | NUMBER, | اختياري |  |  |
| POST_OUT_BILLS_TYPE | POST_OUT_BILLS_TYPE (POST_OUT_BILLS_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| SALES_DISC_PERIODIC | SALES_DISC_PERIODIC (SALES_DISC_PERIODIC) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| SHOW_I_DESC_AR | SHOW_I_DESC_AR (SHOW_I_DESC_AR) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| SI_REPCODE_MANDTRY | SI_REPCODE_MANDTRY (SI_REPCODE_MANDTRY) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_BILLNO_RTSALE_PY | USE_BILLNO_RTSALE_PY (USE_BILLNO_RTSALE_PY) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| LGHT_POST_TYPE | LGHT_POST_TYPE (LGHT_POST_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| USE_SALE_INVOICE_AS_POS | USE_SALE_INVOICE_AS_POS (USE_SALE_INVOICE_AS_POS) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| USE_LGHT_WITHOUT_STORE | USE_LGHT_WITHOUT_STORE (USE_LGHT_WITHOUT_STORE) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_GRP_CR_CARD_AMT | ALLOW_GRP_CR_CARD_AMT (ALLOW_GRP_CR_CARD_AMT) | NUMBER(1, 0), | اختياري |  |  |
| POST_ADD_DISC_ITM_TYPE | POST_ADD_DISC_ITM_TYPE (POST_ADD_DISC_ITM_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| SR_RT_REASON_MANDTRY | SR_RT_REASON_MANDTRY (SR_RT_REASON_MANDTRY) | NUMBER(1, 0), | اختياري |  |  |
| SI_CHK_AVLQTY_SORDER | SI_CHK_AVLQTY_SORDER (SI_CHK_AVLQTY_SORDER) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_SO_WITHOUT_STORE | ALLOW_SO_WITHOUT_STORE (ALLOW_SO_WITHOUT_STORE) | NUMBER(1, 0), | اختياري |  |  |
| SO_EXP_DATE_MANDTRY | SO_EXP_DATE_MANDTRY (SO_EXP_DATE_MANDTRY) | NUMBER(1, 0), | اختياري |  |  |
| CHK_LMT_QUOT_PRM_SI | CHK_LMT_QUOT_PRM_SI (CHK_LMT_QUOT_PRM_SI) | NUMBER, | اختياري |  |  |
| CHK_LMT_PRICE_MINUS_DISC_SI | CHK_LMT_PRICE_MINUS_DISC_SI (CHK_LMT_PRICE_MINUS_DISC_SI) | NUMBER, | اختياري |  |  |
| CNCL_RSRVD_SO_TRNS_BRN_LGHT | CNCL_RSRVD_SO_TRNS_BRN_LGHT (CNCL_RSRVD_SO_TRNS_BRN_LGHT) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_PAID_SCR | SHOW_PAID_SCR (SHOW_PAID_SCR) | NUMBER, | اختياري |  |  |
| SHOW_SMAN_COMM_SI | SHOW_SMAN_COMM_SI (SHOW_SMAN_COMM_SI) | NUMBER, | اختياري |  |  |
| ALLOW_MOD_PAY_TYPE_SO_SI | ALLOW_MOD_PAY_TYPE_SO_SI (ALLOW_MOD_PAY_TYPE_SO_SI) | NUMBER, | اختياري |  |  |
| USE_SMAN_SLICES_COMM_AUTO_SI | USE_SMAN_SLICES_COMM_AUTO_SI (USE_SMAN_SLICES_COMM_AUTO_SI) | NUMBER(1, 0), | اختياري |  |  |
| CONN_SMAN_WC_CSH_CC | CONN_SMAN_WC_CSH_CC (CONN_SMAN_WC_CSH_CC) | NUMBER(1, 0), | اختياري |  |  |
| SHW_ITM_AVLQTY_ONLY | SHW_ITM_AVLQTY_ONLY (SHW_ITM_AVLQTY_ONLY) | NUMBER(1, 0), | اختياري |  |  |
| COPY_PRICE_FROM_PREV_BILL | COPY_PRICE_FROM_PREV_BILL (COPY_PRICE_FROM_PREV_BILL) | NUMBER(1, 0), | اختياري |  |  |
| QUOT_EXP_DATE_MANDTRY | QUOT_EXP_DATE_MANDTRY (QUOT_EXP_DATE_MANDTRY) | NUMBER(1, 0), | اختياري |  |  |
| SI_PAY_CSH_CST_MANDTRY | SI_PAY_CSH_CST_MANDTRY (SI_PAY_CSH_CST_MANDTRY) | NUMBER(1, 0), | اختياري |  |  |
| MNDTRY_CONN_CST_COL | MNDTRY_CONN_CST_COL (MNDTRY_CONN_CST_COL) | NUMBER(1, 0), | اختياري |  |  |
| USE_APPRV_SLS_MNG_SO | USE_APPRV_SLS_MNG_SO (USE_APPRV_SLS_MNG_SO) | NUMBER(1, 0), | اختياري |  |  |
| MNDTRY_REQ_IN_ADD_DISC | MNDTRY_REQ_IN_ADD_DISC (MNDTRY_REQ_IN_ADD_DISC) | NUMBER(1, 0), | اختياري |  |  |
| AR_RQ_ADD_DISC_SERIAL | AR_RQ_ADD_DISC_SERIAL (AR_RQ_ADD_DISC_SERIAL) | NUMBER(1, 0), | اختياري |  |  |
| SI_CST_TEL_MANDTRY | SI_CST_TEL_MANDTRY (SI_CST_TEL_MANDTRY) | NUMBER(1, 0), | اختياري |  |  |
| USE_SUB_CUSTOMER | USE_SUB_CUSTOMER (USE_SUB_CUSTOMER) | NUMBER(1, 0), | اختياري |  |  |
| CALC_MEASUR_PRICE | CALC_MEASUR_PRICE (CALC_MEASUR_PRICE) | NUMBER(1, 0), | اختياري |  |  |
| ADD_DSCNT_ITM_QT_PRM_DSCNT | ADD_DSCNT_ITM_QT_PRM_DSCNT (ADD_DSCNT_ITM_QT_PRM_DSCNT) | NUMBER(1, 0), | اختياري |  |  |
| USE_DISC_CARD_SAL | USE_DISC_CARD_SAL (USE_DISC_CARD_SAL) | NUMBER(1, 0), | اختياري |  |  |
| LNGTH_CSH_CSTMR_CODE | LNGTH_CSH_CSTMR_CODE (LNGTH_CSH_CSTMR_CODE) | NUMBER(2, 0), | اختياري |  |  |
| POINT_CALC_TYP | POINT_CALC_TYP (POINT_CALC_TYP) | NUMBER(1, 0), | اختياري |  |  |
| POINT_AGE_EXPIRED_TYP | POINT_AGE_EXPIRED_TYP (POINT_AGE_EXPIRED_TYP) | NUMBER(2, 0), | اختياري |  |  |
| CUST_NOTE_JOIN_POINT | CUST_NOTE_JOIN_POINT (CUST_NOTE_JOIN_POINT) | VARCHAR2(500), | اختياري |  |  |
| SEND_MSG_TYP | SEND_MSG_TYP (SEND_MSG_TYP) | NUMBER(1, 0), | اختياري |  |  |
| MSG_TXT_CST_WELCOME | MSG_TXT_CST_WELCOME (MSG_TXT_CST_WELCOME) | VARCHAR2(1000), | اختياري |  |  |
| USE_SO_RSRVD_TIME | USE_SO_RSRVD_TIME (USE_SO_RSRVD_TIME) | NUMBER, | اختياري |  |  |
| ALLW_DUP_REF_NO | ALLW_DUP_REF_NO (ALLW_DUP_REF_NO) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_NET_PRICE_TRNS | SHOW_NET_PRICE_TRNS (SHOW_NET_PRICE_TRNS) | NUMBER(1, 0), | اختياري |  |  |
| USE_INTRFC_SAL_RVNU | USE_INTRFC_SAL_RVNU (USE_INTRFC_SAL_RVNU) | NUMBER(1, 0), | اختياري |  |  |
| AR_QT_WC_TYP | AR_QT_WC_TYP (AR_QT_WC_TYP) | NUMBER(1, 0), | اختياري |  |  |
| USE_CSTMR_CLIM | USE_CSTMR_CLIM (USE_CSTMR_CLIM) | NUMBER(1, 0), | اختياري |  |  |
| APPRVD_FREEQTY_DSCNT_RTRN_SI | APPRVD_FREEQTY_DSCNT_RTRN_SI (APPRVD_FREEQTY_DSCNT_RTRN_SI) | NUMBER(1, 0), | اختياري |  |  |
| USE_RQ_ITM_CSTMR | USE_RQ_ITM_CSTMR (USE_RQ_ITM_CSTMR) | NUMBER(1, 0), | اختياري |  |  |
| CHK_PRICE_COST_LMT_SO_SI | CHK_PRICE_COST_LMT_SO_SI (CHK_PRICE_COST_LMT_SO_SI) | NUMBER(1, 0), | اختياري |  |  |
| USE_SP_SMAN | USE_SP_SMAN (USE_SP_SMAN) | NUMBER(1, 0), | اختياري |  |  |
| GRNT_CST_PRIV_BY_BRN | GRNT_CST_PRIV_BY_BRN (GRNT_CST_PRIV_BY_BRN) | NUMBER(1, 0), | اختياري |  |  |
| SI_CSH_CST_MANDTRY | SI_CSH_CST_MANDTRY (SI_CSH_CST_MANDTRY) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL KEEP) TABLESPACE | اختياري |  |  |

## IAS_PARA_GEN (IAS_PARA_GEN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | إجباري |  | PK |
| USE_INDV_INV_SYSTEM | USE_INDV_INV_SYSTEM (USE_INDV_INV_SYSTEM) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| SHOW_PARAMTR_REP | SHOW_PARAMTR_REP (SHOW_PARAMTR_REP) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| MIN_PROFIT_AMT | MIN_PROFIT_AMT (MIN_PROFIT_AMT) | NUMBER, | اختياري |  |  |
| LAST_DATE_LGN | LAST_DATE_LGN (LAST_DATE_LGN) | DATE, | اختياري |  |  |
| MOB_FILE_PATH | MOB_FILE_PATH (MOB_FILE_PATH) | VARCHAR2(250), | اختياري |  |  |
| NOT_ALLW_MORE_BRN_USR_LGHT_PRV | NOT_ALLW_MORE_BRN_USR_LGHT_PRV (NOT_ALLW_MORE_BRN_USR_LGHT_PRV) | NUMBER(1, 0), | اختياري |  |  |
| NO_CHK_F_CC_CODE | NO_CHK_F_CC_CODE (NO_CHK_F_CC_CODE) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| STRT_CRT_VIEW_YEAR_INV | STRT_CRT_VIEW_YEAR_INV (STRT_CRT_VIEW_YEAR_INV) | NUMBER(4, 0), | اختياري |  |  |
| DFLT_EXP_DIR_PATH | DFLT_EXP_DIR_PATH (DFLT_EXP_DIR_PATH) | VARCHAR2(255), | اختياري |  |  |
| MIN_USR_PWD_LOWER | MIN_USR_PWD_LOWER (MIN_USR_PWD_LOWER) | NUMBER(2, 0), | اختياري |  |  |
| MIN_USR_PWD_SPECIAL | MIN_USR_PWD_SPECIAL (MIN_USR_PWD_SPECIAL) | NUMBER(2, 0), | اختياري |  |  |

## IAS_PARA_GL (IAS_PARA_GL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | إجباري |  | PK |
| CASH_RESERVE | CASH_RESERVE (CASH_RESERVE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_BANK_MDTR_IN_JV | USE_BANK_MDTR_IN_JV (USE_BANK_MDTR_IN_JV) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_PARENT_NOT_INCLUDE_AC | A_PARENT_NOT_INCLUDE_AC (A_PARENT_NOT_INCLUDE_AC) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_CHEQ_JV | USE_CHEQ_JV (USE_CHEQ_JV) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| DIFF_CUR_CLS_TYPE | DIFF_CUR_CLS_TYPE (DIFF_CUR_CLS_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_RCV_VCHR_MST_AC_PRV | USE_RCV_VCHR_MST_AC_PRV (USE_RCV_VCHR_MST_AC_PRV) | NUMBER(1, 0), | اختياري |  |  |
| REQUEST_V_TYP_NO_VCHR | REQUEST_V_TYP_NO_VCHR (REQUEST_V_TYP_NO_VCHR) | NUMBER(1, 0), | اختياري |  |  |
| CONN_RCPT_REQUST | CONN_RCPT_REQUST (CONN_RCPT_REQUST) | NUMBER(1, 0), | اختياري |  |  |
| SUB_AC_LVL | SUB_AC_LVL (SUB_AC_LVL) | NUMBER(2, 0), | اختياري |  |  |
| FILL_HRS_JRNLFORM_MTHD | FILL_HRS_JRNLFORM_MTHD (FILL_HRS_JRNLFORM_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| DFLT_POST_DSPLY_IN_ASTMT | DFLT_POST_DSPLY_IN_ASTMT (DFLT_POST_DSPLY_IN_ASTMT) | NUMBER(1, 0), | اختياري |  |  |
| DESC_INCLUDE_PJ_NAME | DESC_INCLUDE_PJ_NAME (DESC_INCLUDE_PJ_NAME) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_DIFF_RATE_MST_DTL | ALLW_DIFF_RATE_MST_DTL (ALLW_DIFF_RATE_MST_DTL) | NUMBER(1, 0), | اختياري |  |  |
| USE_MULTI_RQ_IN_JV | USE_MULTI_RQ_IN_JV (USE_MULTI_RQ_IN_JV) | NUMBER(1, 0), | اختياري |  |  |
| CALL_CST_REPCODE | CALL_CST_REPCODE (CALL_CST_REPCODE) | NUMBER(1, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| USE_EXPNS_TAX | USE_EXPNS_TAX (USE_EXPNS_TAX) | NUMBER(1, 0), | اختياري |  |  |
| USE_MULTI_RQ_IN_RCPT | USE_MULTI_RQ_IN_RCPT (USE_MULTI_RQ_IN_RCPT) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PARA_INV (IAS_PARA_INV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | إجباري |  | PK |
| USE_MULTI_WC | USE_MULTI_WC (USE_MULTI_WC) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| STK_ADJUST_CS_TYPE | STK_ADJUST_CS_TYPE (STK_ADJUST_CS_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| NO_OF_DECIMAL_INV | NO_OF_DECIMAL_INV (NO_OF_DECIMAL_INV) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| TRANSFER_SERIAL | TRANSFER_SERIAL (TRANSFER_SERIAL) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_STANDARD_ITEM_COST | USE_STANDARD_ITEM_COST (USE_STANDARD_ITEM_COST) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_DEL_INV | USE_DEL_INV (USE_DEL_INV) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| PRICE_TYPE | PRICE_TYPE (PRICE_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_MIN_UNIT_PRICE | USE_MIN_UNIT_PRICE (USE_MIN_UNIT_PRICE) | NUMBER(1, 0), | إجباري |  |  |
| CONN_GRPS | CONN_GRPS (CONN_GRPS) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_TRNSFER_EXPENSE | USE_TRNSFER_EXPENSE (USE_TRNSFER_EXPENSE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| CONN_REQ_OUTGOING | CONN_REQ_OUTGOING (CONN_REQ_OUTGOING) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| MIN_LMT_PRICE_PER | MIN_LMT_PRICE_PER (MIN_LMT_PRICE_PER) | NUMBER(3, 0), | اختياري |  |  |
| CONN_ITEM_BY_ATTACH_AUTO | CONN_ITEM_BY_ATTACH_AUTO (CONN_ITEM_BY_ATTACH_AUTO) | NUMBER(1, 0), | اختياري |  |  |
| DEALING_UNDER_SELLING | DEALING_UNDER_SELLING (DEALING_UNDER_SELLING) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_EXCEED_TR_QTY | ALLOW_EXCEED_TR_QTY (ALLOW_EXCEED_TR_QTY) | NUMBER(1, 0), | اختياري |  |  |
| USE_GOOD_ON_CONSIGNMENT | USE_GOOD_ON_CONSIGNMENT (USE_GOOD_ON_CONSIGNMENT) | NUMBER(1, 0), | اختياري |  |  |
| MAN_INV_SERAIL | MAN_INV_SERAIL (MAN_INV_SERAIL) | NUMBER(1, 0), | اختياري |  |  |
| INV_SYS_TYPE | INV_SYS_TYPE (INV_SYS_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| APPRVD_BRACODE_SAME_SERIALNO | APPRVD_BRACODE_SAME_SERIALNO (APPRVD_BRACODE_SAME_SERIALNO) | NUMBER, | اختياري |  |  |
| CONN_ACTIVITY_BY_WCODE_CC_CODE | CONN_ACTIVITY_BY_WCODE_CC_CODE (CONN_ACTIVITY_BY_WCODE_CC_CODE) | NUMBER(1, 0), | اختياري |  |  |
| BATCH_NM_COL5 | BATCH_NM_COL5 (BATCH_NM_COL5) | VARCHAR2(60), | اختياري |  |  |
| SHOW_BAT_COL2_IN_SCREEN | SHOW_BAT_COL2_IN_SCREEN (SHOW_BAT_COL2_IN_SCREEN) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_BAT_COL4_IN_SCREEN | SHOW_BAT_COL4_IN_SCREEN (SHOW_BAT_COL4_IN_SCREEN) | NUMBER(1, 0), | اختياري |  |  |
| ACTIVE_SERIALNO | ACTIVE_SERIALNO (ACTIVE_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| USE_PER_COST_KIT_ITM | USE_PER_COST_KIT_ITM (USE_PER_COST_KIT_ITM) | NUMBER(1, 0), | اختياري |  |  |
| SIZE_COL1 | SIZE_COL1 (SIZE_COL1) | NUMBER(2, 0), | اختياري |  |  |
| SIZE_COL4 | SIZE_COL4 (SIZE_COL4) | NUMBER(2, 0), | اختياري |  |  |
| ITEM_NO_COL2 | ITEM_NO_COL2 (ITEM_NO_COL2) | NUMBER(1, 0), | اختياري |  |  |
| ITEM_NO_COL5 | ITEM_NO_COL5 (ITEM_NO_COL5) | NUMBER(1, 0), | اختياري |  |  |
| BARCODE_FIRST_LENGTH | BARCODE_FIRST_LENGTH (BARCODE_FIRST_LENGTH) | NUMBER(2, 0), | اختياري |  |  |
| BARCODE_THIRD_LENGTH | BARCODE_THIRD_LENGTH (BARCODE_THIRD_LENGTH) | NUMBER(2, 0), | اختياري |  |  |
| BARCODE_FIFTH_LENGTH | BARCODE_FIFTH_LENGTH (BARCODE_FIFTH_LENGTH) | NUMBER(2, 0), | اختياري |  |  |
| BARCODE_FIRST_DIR | BARCODE_FIRST_DIR (BARCODE_FIRST_DIR) | NUMBER(1, 0), | اختياري |  |  |
| BARCODE_SIXTH_DIR | BARCODE_SIXTH_DIR (BARCODE_SIXTH_DIR) | NUMBER(1, 0), | اختياري |  |  |
| MAN_INV_BY_ONE | MAN_INV_BY_ONE (MAN_INV_BY_ONE) | NUMBER(1, 0), | اختياري |  |  |
| INCLUDE_G_CODE_IN_ITM_CODE | INCLUDE_G_CODE_IN_ITM_CODE (INCLUDE_G_CODE_IN_ITM_CODE) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_NOTE_EXCEED_QTY_IN_WHTRNS | SHOW_NOTE_EXCEED_QTY_IN_WHTRNS (SHOW_NOTE_EXCEED_QTY_IN_WHTRNS) | NUMBER(1, 0), | اختياري |  |  |
| DUP_ITM_IN_OUTGOING | DUP_ITM_IN_OUTGOING (DUP_ITM_IN_OUTGOING) | NUMBER(1, 0), | اختياري |  |  |
| CHK_WCODE_REQ_IN_WHTRNS | CHK_WCODE_REQ_IN_WHTRNS (CHK_WCODE_REQ_IN_WHTRNS) | NUMBER(1, 0), | اختياري |  |  |
| INPT_UNT_FACTOR_WT | INPT_UNT_FACTOR_WT (INPT_UNT_FACTOR_WT) | NUMBER, | اختياري |  |  |
| APPRV_ITMNO_BATCHNO_IN_BARCODE | APPRV_ITMNO_BATCHNO_IN_BARCODE (APPRV_ITMNO_BATCHNO_IN_BARCODE) | NUMBER(1, 0), | اختياري |  |  |
| USE_INV_REEVALUATE | USE_INV_REEVALUATE (USE_INV_REEVALUATE) | NUMBER(1, 0), | اختياري |  |  |
| DEAL_WITH_ITEM_USED | DEAL_WITH_ITEM_USED (DEAL_WITH_ITEM_USED) | NUMBER(1, 0), | اختياري |  |  |
| CNCT_ITM_BY_BTCH | CNCT_ITM_BY_BTCH (CNCT_ITM_BY_BTCH) | NUMBER, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| APPRVD_KIT_ITM_PRICE_ASSMBLE | APPRVD_KIT_ITM_PRICE_ASSMBLE (APPRVD_KIT_ITM_PRICE_ASSMBLE) | NUMBER(1, 0), | اختياري |  |  |
| APPRVD_BTCHNO_ITMCODE_SQ | APPRVD_BTCHNO_ITMCODE_SQ (APPRVD_BTCHNO_ITMCODE_SQ) | NUMBER(1, 0), | إجباري |  |  |
| STK_ADJSTMNT_SRL | STK_ADJSTMNT_SRL (STK_ADJSTMNT_SRL) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| USE_ITM_PRICE_BY_EXPIRE_DATE | USE_ITM_PRICE_BY_EXPIRE_DATE (USE_ITM_PRICE_BY_EXPIRE_DATE) | NUMBER(1, 0), | اختياري |  |  |
| WGHT_PRFX | WGHT_PRFX (WGHT_PRFX) | VARCHAR2(3), | اختياري |  |  |
| REMOVE_WGHT_DGT | REMOVE_WGHT_DGT (REMOVE_WGHT_DGT) | NUMBER(1, 0), | اختياري |  |  |
| QR_GTIN_LNGTH | QR_GTIN_LNGTH (QR_GTIN_LNGTH) | NUMBER(3, 0), | اختياري |  |  |
| QR_CODE_MTHD_TYP | QR_CODE_MTHD_TYP (QR_CODE_MTHD_TYP) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_ENTR_PART_QTY_SERIALNO | ALLW_ENTR_PART_QTY_SERIALNO (ALLW_ENTR_PART_QTY_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| USE_KIT_ITM_CLSSFCTN | USE_KIT_ITM_CLSSFCTN (USE_KIT_ITM_CLSSFCTN) | NUMBER(1, 0), | اختياري |  |  |
| MNDTRY_ENTR_PART_ITM_CODE_SRCH | MNDTRY_ENTR_PART_ITM_CODE_SRCH (MNDTRY_ENTR_PART_ITM_CODE_SRCH) | NUMBER(1, 0), | اختياري |  |  |
| PRICE_INCLD_VAT_SRVC_ITM | PRICE_INCLD_VAT_SRVC_ITM (PRICE_INCLD_VAT_SRVC_ITM) | NUMBER(1, 0), | اختياري |  |  |
| USE_SO_MNDTRY_IN_OUTGOIN | USE_SO_MNDTRY_IN_OUTGOIN (USE_SO_MNDTRY_IN_OUTGOIN) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_DUP_ITM_UNT_SIZE | ALLW_DUP_ITM_UNT_SIZE (ALLW_DUP_ITM_UNT_SIZE) | NUMBER(1, 0), | اختياري |  |  |
| CONN_ACTV_AC_ITM_ACTVTY | CONN_ACTV_AC_ITM_ACTVTY (CONN_ACTV_AC_ITM_ACTVTY) | NUMBER(1, 0), | اختياري |  |  |
| DUP_ITM_IN_OPEN_STOCK | DUP_ITM_IN_OPEN_STOCK (DUP_ITM_IN_OPEN_STOCK) | NUMBER(1, 0), | اختياري |  |  |
| WGHT_CLC_QTY_BY_INCLD_PRICE | WGHT_CLC_QTY_BY_INCLD_PRICE (WGHT_CLC_QTY_BY_INCLD_PRICE) | NUMBER(1, 0), | اختياري |  |  |
| NOT_ALLW_PRNT_ITM_WITHOT_BARC | NOT_ALLW_PRNT_ITM_WITHOT_BARC (NOT_ALLW_PRNT_ITM_WITHOT_BARC) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS
 255 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL KEEP) TABLESPACE | اختياري |  |  |

## IAS_PARA_MOB_INV (IAS_PARA_MOB_INV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER, | اختياري |  | PK |
| USE_PRICE_MOB_INV | USE_PRICE_MOB_INV (USE_PRICE_MOB_INV) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PARA_ONLINE (IAS_PARA_ONLINE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| AUTO_APPROVD | AUTO_APPROVD (AUTO_APPROVD) | NUMBER(1, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_PARA_REP_DTL (IAS_PARA_REP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER, | اختياري |  |  |
| VAL2 | VAL2 (VAL2) | VARCHAR2(60), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(250), | اختياري |  |  |
| PARA_ALLOW_CLMN | PARA_ALLOW_CLMN (PARA_ALLOW_CLMN) | VARCHAR2(500), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_PAY_TRUST_DTL (IAS_PAY_TRUST_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PAY_TRUST_NO | PAY_TRUST_NO (PAY_TRUST_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| PAY_TRUST_SER | PAY_TRUST_SER (PAY_TRUST_SER) | NUMBER(38, 0), | اختياري |  |  |
| PAY_TRUST_SER | PAY_TRUST_SER (PAY_TRUST_SER) | NUMBER(38, 0), | اختياري |  |  |
| TRUST_SER | TRUST_SER (TRUST_SER) | NUMBER(38, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_PERIOD_EX_RATE (IAS_PERIOD_EX_RATE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_NO | PRD_NO (PRD_NO) | NUMBER(3, 0), | اختياري |  |  |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER, | إجباري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| DIS_PER | DIS_PER (DIS_PER) | NUMBER(20, 17), | اختياري |  |  |
| DIS_AMT_DTL2 | DIS_AMT_DTL2 (DIS_AMT_DTL2) | NUMBER, | اختياري |  |  |
| USE_SERIALNO | USE_SERIALNO (USE_SERIALNO) | NUMBER(1, 0), | إجباري |  |  |
| GRN_NO | GRN_NO (GRN_NO) | NUMBER(15, 0), | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| PO_ORDER_SER | PO_ORDER_SER (PO_ORDER_SER) | VARCHAR2(60), | اختياري |  |  |
| CNTNR_NO | CNTNR_NO (CNTNR_NO) | VARCHAR2(30), | اختياري |  |  |
| FREIGHT_NO | FREIGHT_NO (FREIGHT_NO) | VARCHAR2(30), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| PKG_LENGTH | PKG_LENGTH (PKG_LENGTH) | NUMBER, | اختياري |  |  |
| PKG_WEIGHT | PKG_WEIGHT (PKG_WEIGHT) | NUMBER, | اختياري |  |  |

## IAS_PI_BILL_DTL_ADD_DISC (IAS_PI_BILL_DTL_ADD_DISC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| ADD_DIS_PER | ADD_DIS_PER (ADD_DIS_PER) | NUMBER(20, 17), | اختياري |  |  |
| ADD_DIS_QTY | ADD_DIS_QTY (ADD_DIS_QTY) | NUMBER, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |

## IAS_PI_BILL_EXPND (IAS_PI_BILL_EXPND)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| VAT_PER | VAT_PER (VAT_PER) | NUMBER, | إجباري |  |  |

## IAS_PI_BILL_JRNL (IAS_PI_BILL_JRNL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | إجباري |  |  |
| AMT_TYPE | AMT_TYPE (AMT_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(5, 0), | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_PI_BILL_MST (IAS_PI_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PUR_TYPE | PUR_TYPE (PUR_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| BILL_POST | BILL_POST (BILL_POST) | NUMBER(1, 0), | اختياري |  |  |
| DISC_AMT_MST | DISC_AMT_MST (DISC_AMT_MST) | NUMBER, | اختياري |  |  |
| OTHR_AMT | OTHR_AMT (OTHR_AMT) | NUMBER, | اختياري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| DRIVER_NAME | DRIVER_NAME (DRIVER_NAME) | VARCHAR2(60), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| EXP_AMT | EXP_AMT (EXP_AMT) | NUMBER, | اختياري |  |  |
| ADD_AMT_TYPE | ADD_AMT_TYPE (ADD_AMT_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| ADD_DISC_AMT_DTL | ADD_DISC_AMT_DTL (ADD_DISC_AMT_DTL) | NUMBER, | اختياري |  |  |
| BILL_SER_REF | BILL_SER_REF (BILL_SER_REF) | NUMBER, | اختياري |  |  |
| BILL_NO_CONN | BILL_NO_CONN (BILL_NO_CONN) | NUMBER(15, 0), | اختياري |  |  |
| V_ADDRESS | V_ADDRESS (V_ADDRESS) | VARCHAR2(100), | اختياري |  |  |
| OTHR_AMT_DISC | OTHR_AMT_DISC (OTHR_AMT_DISC) | NUMBER, | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | إجباري |  |  |
| CLC_TAX_FREE_QTY_FLG | CLC_TAX_FREE_QTY_FLG (CLC_TAX_FREE_QTY_FLG) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_PI_BILL_MST_ADD_DISC (IAS_PI_BILL_MST_ADD_DISC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ADD_DISC_TYPE | ADD_DISC_TYPE (ADD_DISC_TYPE) | NUMBER(1, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| DOC_POST | DOC_POST (DOC_POST) | NUMBER(1, 0), | إجباري |  |  |
| DOC_DISC_TYPE | DOC_DISC_TYPE (DOC_DISC_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| A_CODE_INTRM_DISC_PI | A_CODE_INTRM_DISC_PI (A_CODE_INTRM_DISC_PI) | VARCHAR2(30), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_PI_ITM_EXPNS (IAS_PI_ITM_EXPNS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  | PK |
| ITM_EXPNS_AMT | ITM_EXPNS_AMT (ITM_EXPNS_AMT) | NUMBER, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| PJ_PARENT | PJ_PARENT (PJ_PARENT) | VARCHAR2(15), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_PL_CLOSING_TMP (IAS_PL_CLOSING_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| CSH_BNK_NO | CSH_BNK_NO (CSH_BNK_NO) | NUMBER(10, 0), | اختياري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER, | اختياري |  |  |
| TRNS_TYPE | TRNS_TYPE (TRNS_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE, | اختياري |  |  |

## IAS_POINT_CALC_TRNS_BR (IAS_POINT_CALC_TRNS_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TRNS_NO | TRNS_NO (TRNS_NO) | NUMBER, | اختياري |  | PK |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER, | اختياري |  |  |
| TRNS_TYPE | TRNS_TYPE (TRNS_TYPE) | NUMBER(1, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE, | اختياري |  |  |

## IAS_POINT_TYP_CALC_DTL (IAS_POINT_TYP_CALC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| POINT_TYP_NO | POINT_TYP_NO (POINT_TYP_NO) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| AMT_4POINT | AMT_4POINT (AMT_4POINT) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_POINT_TYP_RPLC_DTL (IAS_POINT_TYP_RPLC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| POINT_TYP_NO | POINT_TYP_NO (POINT_TYP_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| A_CY | A_CY (A_CY) | VARCHAR2(7) NOT NULL ENABLE, | إجباري |  |  |
| CR_AMT_F | CR_AMT_F (CR_AMT_F) | NUMBER, | إجباري |  |  |
| DOC_DUE_DATE | DOC_DUE_DATE (DOC_DUE_DATE) | DATE, | إجباري |  |  |
| D_YEAR | D_YEAR (D_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| CR_CARD_TYPE | CR_CARD_TYPE (CR_CARD_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| INSRNCE_BNF_NO | INSRNCE_BNF_NO (INSRNCE_BNF_NO) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| CNFRM | CNFRM (CNFRM) | NUMBER(1, 0), | اختياري |  |  |
| CNFRM_DATE | CNFRM_DATE (CNFRM_DATE) | DATE, | اختياري |  |  |
| CRD_CARD_NO | CRD_CARD_NO (CRD_CARD_NO) | NUMBER(5, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| DOC_NO_MNL | DOC_NO_MNL (DOC_NO_MNL) | VARCHAR2(30), | اختياري |  |  |

## IAS_POST_MST (IAS_POST_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| F_BRN_NO | F_BRN_NO (F_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| POST_DATE | POST_DATE (POST_DATE) | DATE, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_PRD_CURR_DIFF (IAS_PRD_CURR_DIFF)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_NO | PRD_NO (PRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| LEV_HIGH | LEV_HIGH (LEV_HIGH) | NUMBER(1, 0), | اختياري |  |  |
| PRCNT_PRICE_FROM_COST | PRCNT_PRICE_FROM_COST (PRCNT_PRICE_FROM_COST) | NUMBER, | اختياري |  |  |
| CST_PRCNT | CST_PRCNT (CST_PRCNT) | NUMBER, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_PRINT_BARCODE_TMP (IAS_PRINT_BARCODE_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| ITM_DISC_AMT | ITM_DISC_AMT (ITM_DISC_AMT) | NUMBER, | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_PRIV_AP (IAS_PRIV_AP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_PRIV_AR (IAS_PRIV_AR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_PRIV_COLLECTORS (IAS_PRIV_COLLECTORS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PRIV_CUSTOMER (IAS_PRIV_CUSTOMER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_PRIV_INV_TYPE (IAS_PRIV_INV_TYPE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PRIV_NOTE_TYPES (IAS_PRIV_NOTE_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PRIV_PMAN (IAS_PRIV_PMAN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_PRIV_PRICE (IAS_PRIV_PRICE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_PRIV_PROJECTS (IAS_PRIV_PROJECTS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_PRIV_SMAN (IAS_PRIV_SMAN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_PRIV_STK_ADJST_TYPES (IAS_PRIV_STK_ADJST_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PRIV_VENDOR (IAS_PRIV_VENDOR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_PRM_COM_CALC_DTL (IAS_PRM_COM_CALC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_SRL | DOC_SRL (DOC_SRL) | NUMBER(38, 0), | اختياري |  |  |
| PRM_CODE | PRM_CODE (PRM_CODE) | VARCHAR2(15), | اختياري |  |  |
| COMM_AMT | COMM_AMT (COMM_AMT) | NUMBER, | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_PRM_COM_STP_DTL (IAS_PRM_COM_STP_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_TYP | COMM_TYP (COMM_TYP) | NUMBER(5, 0), | اختياري |  |  |
| C_CLASS | C_CLASS (C_CLASS) | NUMBER(4, 0), | اختياري |  |  |
| COMM_AMT_TYP | COMM_AMT_TYP (COMM_AMT_TYP) | NUMBER(2, 0), | اختياري |  |  |
| COMM_SLICE_NO | COMM_SLICE_NO (COMM_SLICE_NO) | NUMBER(5, 0), | اختياري |  |  |
| SEPARATE_TRGT_ADDTRGT | SEPARATE_TRGT_ADDTRGT (SEPARATE_TRGT_ADDTRGT) | NUMBER(1, 0), | اختياري |  |  |
| COMM_CALC_ADD_TRGT_MTHD | COMM_CALC_ADD_TRGT_MTHD (COMM_CALC_ADD_TRGT_MTHD) | NUMBER(1, 0), | اختياري |  |  |
| COMM_AMT_QTY | COMM_AMT_QTY (COMM_AMT_QTY) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| COMM_DSC | COMM_DSC (COMM_DSC) | VARCHAR2(250), | اختياري |  |  |

## IAS_PRM_CST (IAS_PRM_CST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(30), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |
| END_DATE | END_DATE (END_DATE) | DATE, | اختياري |  |  |
| EX_RATE | EX_RATE (EX_RATE) | NUMBER, | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(60), | اختياري |  |  |
| FIELD21 | FIELD21 (FIELD21) | DATE, | اختياري |  |  |
| FIELD26 | FIELD26 (FIELD26) | DATE, | اختياري |  |  |
| FIELD31 | FIELD31 (FIELD31) | NUMBER, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## ProjectGroup (IAS_PROJECTS_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(5, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| PRM_F_NM | PRM_F_NM (PRM_F_NM) | VARCHAR2(100), | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(60), | اختياري |  |  |
| SECRET_KEY | SECRET_KEY (SECRET_KEY) | VARCHAR2(30), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_PROVINCES (IAS_PROVINCES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PROV_NO | PROV_NO (PROV_NO) | NUMBER(10, 0), | اختياري |  | PK |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| KIT_ITEM_NO | KIT_ITEM_NO (KIT_ITEM_NO) | VARCHAR2(30), | اختياري |  |  |
| KIT_OUT_QTY | KIT_OUT_QTY (KIT_OUT_QTY) | NUMBER, | اختياري |  |  |
| REQ_NO | REQ_NO (REQ_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| I_ROL | I_ROL (I_ROL) | NUMBER, | اختياري |  |  |
| LAST_INCOME_QTY | LAST_INCOME_QTY (LAST_INCOME_QTY) | NUMBER, | اختياري |  |  |

## IAS_PRQST_AUTO_MST (IAS_PRQST_AUTO_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MTHD_TYPE | MTHD_TYPE (MTHD_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| APRV_DSC | APRV_DSC (APRV_DSC) | VARCHAR2(500), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| CALC_QTY_STOCK_AGE | CALC_QTY_STOCK_AGE (CALC_QTY_STOCK_AGE) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PR_BILL_DTL (IAS_PR_BILL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| DIS_AMT_DTL3 | DIS_AMT_DTL3 (DIS_AMT_DTL3) | NUMBER, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| DOC_SEQUENCE_REF | DOC_SEQUENCE_REF (DOC_SEQUENCE_REF) | NUMBER(38, 0), | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | اختياري |  |  |
| FIELD_DTL3 | FIELD_DTL3 (FIELD_DTL3) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL6 | FIELD_DTL6 (FIELD_DTL6) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL9 | FIELD_DTL9 (FIELD_DTL9) | VARCHAR2(60), | اختياري |  |  |

## IAS_PR_BILL_MST (IAS_PR_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_YEAR | P_YEAR (P_YEAR) | NUMBER, | إجباري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| DISC_AMT_MST | DISC_AMT_MST (DISC_AMT_MST) | NUMBER, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| CASH_NO_FCC | CASH_NO_FCC (CASH_NO_FCC) | NUMBER(10, 0), | اختياري |  |  |
| HUNG | HUNG (HUNG) | NUMBER(1, 0), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(250), | اختياري |  |  |
| ADD_DISC_AMT_DTL | ADD_DISC_AMT_DTL (ADD_DISC_AMT_DTL) | NUMBER, | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| CLC_TYP_NO_TAX | CLC_TYP_NO_TAX (CLC_TYP_NO_TAX) | NUMBER(5, 0), | اختياري |  |  |
| POST_TAX_DUE_AC_CODE | POST_TAX_DUE_AC_CODE (POST_TAX_DUE_AC_CODE) | NUMBER(1, 0), | اختياري |  |  |

## IAS_PR_REQ_BILL_DTL (IAS_PR_REQ_BILL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_REQ_DOC_TYPE | RT_REQ_DOC_TYPE (RT_REQ_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_REQ_NO | RT_REQ_NO (RT_REQ_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| DIS_PER3 | DIS_PER3 (DIS_PER3) | NUMBER(20, 17), | اختياري |  |  |
| DOC_SEQUENCE_PI | DOC_SEQUENCE_PI (DOC_SEQUENCE_PI) | NUMBER(38, 0), | اختياري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |
| FIELD_DTL1 | FIELD_DTL1 (FIELD_DTL1) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL4 | FIELD_DTL4 (FIELD_DTL4) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL7 | FIELD_DTL7 (FIELD_DTL7) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL10 | FIELD_DTL10 (FIELD_DTL10) | VARCHAR2(60))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_PR_REQ_BILL_MST (IAS_PR_REQ_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_REQ_DOC_TYPE | RT_REQ_DOC_TYPE (RT_REQ_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_REQ_NO | RT_REQ_NO (RT_REQ_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_YEAR | P_YEAR (P_YEAR) | NUMBER, | إجباري |  |  |
| CHEQUE_AMT | CHEQUE_AMT (CHEQUE_AMT) | NUMBER, | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(250), | اختياري |  |  |
| PMAN_CODE | PMAN_CODE (PMAN_CODE) | VARCHAR2(15), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| APRV_U_ID | APRV_U_ID (APRV_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| SRVC_BILL | SRVC_BILL (SRVC_BILL) | NUMBER(1, 0), | اختياري |  |  |
| CLC_TYP_NO_TAX | CLC_TYP_NO_TAX (CLC_TYP_NO_TAX) | NUMBER(5, 0), | اختياري |  |  |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30), | اختياري |  |  |

## IAS_PURCHS_MAN (IAS_PURCHS_MAN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PMAN_CODE | PMAN_CODE (PMAN_CODE) | VARCHAR2(15), | اختياري |  | PK |
| PMAN_E_NAME | PMAN_E_NAME (PMAN_E_NAME) | VARCHAR2(60), | اختياري |  |  |
| CITY_NO | CITY_NO (CITY_NO) | NUMBER(10, 0), | اختياري |  |  |
| G_DOC_DATE | G_DOC_DATE (G_DOC_DATE) | DATE, | اختياري |  |  |
| G_FILE_TRADA | G_FILE_TRADA (G_FILE_TRADA) | VARCHAR2(30), | اختياري |  |  |
| PMAN_CODE_PARENT | PMAN_CODE_PARENT (PMAN_CODE_PARENT) | VARCHAR2(15), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |

## IAS_PUR_PLAN_DTL (IAS_PUR_PLAN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER, | اختياري |  | PK |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | اختياري |  |  |
| F_DATE | F_DATE (F_DATE) | DATE, | اختياري |  |  |
| LOW_LMT | LOW_LMT (LOW_LMT) | NUMBER, | اختياري |  |  |
| PLAN_DSTR_TYPE | PLAN_DSTR_TYPE (PLAN_DSTR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| PLAN_DESC | PLAN_DESC (PLAN_DESC) | VARCHAR2(250), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_QUOT_TYPES (IAS_QUOT_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| QT_TYPE | QT_TYPE (QT_TYPE) | NUMBER(2, 0), | إجباري |  | PK |
| F_QTY | F_QTY (F_QTY) | NUMBER, | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| COMP_QTY | COMP_QTY (COMP_QTY) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## IAS_QUT_PRM_GRP_MST (IAS_QUT_PRM_GRP_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRM_GRP_NO | PRM_GRP_NO (PRM_GRP_NO) | NUMBER(5, 0), | اختياري |  | PK |
| GRNT_FREE_QTY_TYP | GRNT_FREE_QTY_TYP (GRNT_FREE_QTY_TYP) | NUMBER(2, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_QUT_PRM_MST (IAS_QUT_PRM_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| QUOT_NO | QUOT_NO (QUOT_NO) | NUMBER(15, 0), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| FLD_DAY2 | FLD_DAY2 (FLD_DAY2) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(250), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_QUT_PRM_SUB_DTL (IAS_QUT_PRM_SUB_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  | PK |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| C_NAME | C_NAME (C_NAME) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| C_PROBLEM | C_PROBLEM (C_PROBLEM) | VARCHAR2(500), | اختياري |  |  |
| RETURN_TO_CSTMR | RETURN_TO_CSTMR (RETURN_TO_CSTMR) | NUMBER(1, 0), | اختياري |  |  |
| DFLT_DLVRY_TIME | DFLT_DLVRY_TIME (DFLT_DLVRY_TIME) | VARCHAR2(15), | اختياري |  |  |
| GRANT_PERIOD | GRANT_PERIOD (GRANT_PERIOD) | NUMBER(3, 0), | اختياري |  |  |
| AGREE_DATE | AGREE_DATE (AGREE_DATE) | DATE, | اختياري |  |  |
| MAINTEN_END_DATE | MAINTEN_END_DATE (MAINTEN_END_DATE) | DATE, | اختياري |  |  |
| ISSUE_DESC | ISSUE_DESC (ISSUE_DESC) | VARCHAR2(500), | اختياري |  |  |
| APPRV_REC_DATE | APPRV_REC_DATE (APPRV_REC_DATE) | DATE, | اختياري |  |  |
| APPRV_CHK_DATE | APPRV_CHK_DATE (APPRV_CHK_DATE) | DATE, | اختياري |  |  |
| APPRV_MNTN_DATE | APPRV_MNTN_DATE (APPRV_MNTN_DATE) | DATE, | اختياري |  |  |
| APPRV_AGREE_DATE | APPRV_AGREE_DATE (APPRV_AGREE_DATE) | DATE, | اختياري |  |  |
| PROCESSED | PROCESSED (PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| FELD4 | FELD4 (FELD4) | VARCHAR2(100), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_RECEIPT_WATCHES (IAS_RECEIPT_WATCHES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(15, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| WHG_CODE | WHG_CODE (WHG_CODE) | NUMBER, | اختياري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | اختياري |  |  |
| PSUM_QTY | PSUM_QTY (PSUM_QTY) | NUMBER, | اختياري |  |  |
| AVL_QTY_BFR | AVL_QTY_BFR (AVL_QTY_BFR) | NUMBER, | اختياري |  |  |
| DOC_TYPE_DTL | DOC_TYPE_DTL (DOC_TYPE_DTL) | NUMBER, | اختياري |  |  |
| PROCESSED | PROCESSED (PROCESSED) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| T_NAME | T_NAME (T_NAME) | VARCHAR2(40), | اختياري |  |  |
| LAST_UPDATE_DATE | LAST_UPDATE_DATE (LAST_UPDATE_DATE) | DATE, | اختياري |  |  |
| REFRESH_TYPE | REFRESH_TYPE (REFRESH_TYPE) | VARCHAR2(20), | اختياري |  |  |

## IAS_REPLICA_TABLE_MST (IAS_REPLICA_TABLE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TRANS_CODE | TRANS_CODE (TRANS_CODE) | NUMBER(5, 0), | اختياري |  | PK |
| REPLICA_AUTO_TYP | REPLICA_AUTO_TYP (REPLICA_AUTO_TYP) | NUMBER(2, 0), | اختياري |  |  |
| REP_SMPLE_NO | REP_SMPLE_NO (REP_SMPLE_NO) | NUMBER(10, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_REQUEST_MATERIALS (IAS_REQUEST_MATERIALS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  | PK |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER(24, 9), | اختياري |  |  |
| FROM_QTY | FROM_QTY (FROM_QTY) | NUMBER(15, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_REQ_MOD_PRICE_MST (IAS_REQ_MOD_PRICE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| REQ_NO | REQ_NO (REQ_NO) | NUMBER, | اختياري |  |  |
| REQ_DESC | REQ_DESC (REQ_DESC) | VARCHAR2(250), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |

## IAS_RESERVE_DTL (IAS_RESERVE_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| CP_QTY | CP_QTY (CP_QTY) | NUMBER, | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| UNBLK_DATE | UNBLK_DATE (UNBLK_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## IAS_RESERVE_MST (IAS_RESERVE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  | PK |

## IAS_RET_BILL_DTL (IAS_RET_BILL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RET_NO | RET_NO (RET_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| DOC_SEQUENCE_SI | DOC_SEQUENCE_SI (DOC_SEQUENCE_SI) | NUMBER(38, 0), | اختياري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_RET_BILL_DTL_BR (IAS_RET_BILL_DTL_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RET_NO | RET_NO (RET_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| DOC_SEQUENCE_SI | DOC_SEQUENCE_SI (DOC_SEQUENCE_SI) | NUMBER(38, 0), | اختياري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | اختياري |  |  |
| I_NUMBER | I_NUMBER (I_NUMBER) | NUMBER, | اختياري |  |  |
| ITEM_DESC | ITEM_DESC (ITEM_DESC) | VARCHAR2(1000), | اختياري |  |  |

## IAS_RET_BILL_MST (IAS_RET_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RET_NO | RET_NO (RET_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CASH_NO | CASH_NO (CASH_NO) | NUMBER(10, 0), | اختياري |  |  |
| R_CODE | R_CODE (R_CODE) | NUMBER(10, 0), | اختياري |  |  |
| RET_AMT | RET_AMT (RET_AMT) | NUMBER, | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(250), | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_RET_BILL_MST_BR (IAS_RET_BILL_MST_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RET_NO | RET_NO (RET_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CASH_NO | CASH_NO (CASH_NO) | NUMBER(10, 0), | اختياري |  |  |
| R_CODE | R_CODE (R_CODE) | NUMBER(6, 0), | اختياري |  |  |
| RET_AMT | RET_AMT (RET_AMT) | NUMBER, | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_RGN_SMAN (IAS_RGN_SMAN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| R_CODE | R_CODE (R_CODE) | NUMBER(10, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| CMPNS_DSC | CMPNS_DSC (CMPNS_DSC) | VARCHAR2(250), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| F_DOC_NO | F_DOC_NO (F_DOC_NO) | NUMBER, | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_RQ_ITM_CSTMR (IAS_RQ_ITM_CSTMR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| CNCL_FLG | CNCL_FLG (CNCL_FLG) | NUMBER, | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_RQ_JRNL_DTL (IAS_RQ_JRNL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0), | إجباري |  |  |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER, | اختياري |  |  |
| COL_NO | COL_NO (COL_NO) | NUMBER(10, 0), | اختياري |  |  |
| WO_NO | WO_NO (WO_NO) | NUMBER(15, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| FLD1 | FLD1 (FLD1) | VARCHAR2(60), | اختياري |  |  |
| FLD5 | FLD5 (FLD5) | VARCHAR2(60))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_RQ_JRNL_MST (IAS_RQ_JRNL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0), | إجباري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| CASH_RESERVE | CASH_RESERVE (CASH_RESERVE) | NUMBER(1, 0), | اختياري |  |  |
| ATTACH_NO | ATTACH_NO (ATTACH_NO) | NUMBER(3, 0), | اختياري |  |  |
| PROCESED | PROCESED (PROCESED) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |
| MOVD_YR | MOVD_YR (MOVD_YR) | NUMBER(1, 0), | اختياري |  |  |

## IAS_RQ_VCHR_DTL (IAS_RQ_VCHR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| VOUCHER_TYPE | VOUCHER_TYPE (VOUCHER_TYPE) | NUMBER(1, 0) CONSTRAINT | اختياري |  |  |
| A_CY | A_CY (A_CY) | VARCHAR2(7) NOT NULL ENABLE, | إجباري |  |  |
| CHEQUE_VALUED | CHEQUE_VALUED (CHEQUE_VALUED) | NUMBER(1, 0), | اختياري |  |  |
| K_NO | K_NO (K_NO) | NUMBER(15, 0), | اختياري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| BLMNT_DATE | BLMNT_DATE (BLMNT_DATE) | DATE, | اختياري |  |  |
| CRD_COMM_AC | CRD_COMM_AC (CRD_COMM_AC) | VARCHAR2(30), | اختياري |  |  |
| CRD_VAT_COMM_PER | CRD_VAT_COMM_PER (CRD_VAT_COMM_PER) | NUMBER, | اختياري |  |  |
| CRD_COMM_AMT_L | CRD_COMM_AMT_L (CRD_COMM_AMT_L) | NUMBER, | اختياري |  |  |
| CRD_COMM_AMT | CRD_COMM_AMT (CRD_COMM_AMT) | NUMBER, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_RQ_VCHR_MST (IAS_RQ_VCHR_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| VOUCHER_TYPE | VOUCHER_TYPE (VOUCHER_TYPE) | NUMBER(1, 0) NOT NULL ENABLE | إجباري |  |  |
| VOUCHER_PAY_TYPE | VOUCHER_PAY_TYPE (VOUCHER_PAY_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| EX_RATE | EX_RATE (EX_RATE) | NUMBER, | اختياري |  |  |
| COMM_PER | COMM_PER (COMM_PER) | NUMBER(7, 4), | اختياري |  |  |
| MOVE_CHEQ_PY | MOVE_CHEQ_PY (MOVE_CHEQ_PY) | NUMBER(1, 0), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(60), | اختياري |  |  |
| FIELD9 | FIELD9 (FIELD9) | VARCHAR2(60), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_RT_BILL_DTL (IAS_RT_BILL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| DIS_AMT_MST | DIS_AMT_MST (DIS_AMT_MST) | NUMBER, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| USE_SERIALNO | USE_SERIALNO (USE_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| DIS_AMT_DTL2 | DIS_AMT_DTL2 (DIS_AMT_DTL2) | NUMBER, | اختياري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| FIELD_DTL2 | FIELD_DTL2 (FIELD_DTL2) | VARCHAR2(60), | اختياري |  |  |
| INSRNCE_LOAD_AMT | INSRNCE_LOAD_AMT (INSRNCE_LOAD_AMT) | NUMBER, | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| SUB_C_CODE | SUB_C_CODE (SUB_C_CODE) | VARCHAR2(15), | اختياري |  |  |
| USED_ITM | USED_ITM (USED_ITM) | NUMBER(1, 0), | اختياري |  |  |
| ADD_DIS_AMT_DTL | ADD_DIS_AMT_DTL (ADD_DIS_AMT_DTL) | NUMBER, | اختياري |  |  |
| QT_PRM_SER | QT_PRM_SER (QT_PRM_SER) | NUMBER(38, 0), | اختياري |  |  |

## IAS_RT_BILL_DTL_BR (IAS_RT_BILL_DTL_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| DIS_AMT | DIS_AMT (DIS_AMT) | NUMBER, | اختياري |  |  |
| DIS_AMT_MST_VAT | DIS_AMT_MST_VAT (DIS_AMT_MST_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_BFR_DIS | VAT_AMT_BFR_DIS (VAT_AMT_BFR_DIS) | NUMBER, | اختياري |  |  |
| PRCNT_PRICE | PRCNT_PRICE (PRCNT_PRICE) | NUMBER, | اختياري |  |  |
| RET_QTY | RET_QTY (RET_QTY) | NUMBER, | اختياري |  |  |
| USE_SERIALNO | USE_SERIALNO (USE_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | اختياري |  |  |
| DIS_AMT_DTL3 | DIS_AMT_DTL3 (DIS_AMT_DTL3) | NUMBER, | اختياري |  |  |
| I_NUMBER | I_NUMBER (I_NUMBER) | NUMBER, | اختياري |  |  |
| LEV_NO | LEV_NO (LEV_NO) | NUMBER(3, 0), | اختياري |  |  |
| INSRNCE_ADD_LMT | INSRNCE_ADD_LMT (INSRNCE_ADD_LMT) | NUMBER, | اختياري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |
| FIELD_DTL3 | FIELD_DTL3 (FIELD_DTL3) | VARCHAR2(60), | اختياري |  |  |
| ADD_DIS_AMT_DTL | ADD_DIS_AMT_DTL (ADD_DIS_AMT_DTL) | NUMBER, | اختياري |  |  |
| QT_PRM_SER | QT_PRM_SER (QT_PRM_SER) | NUMBER(38, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_RT_BILL_DTL_RQ (IAS_RT_BILL_DTL_RQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| DIS_PER | DIS_PER (DIS_PER) | NUMBER(20, 17), | اختياري |  |  |
| VAT_PER | VAT_PER (VAT_PER) | NUMBER(7, 4), | اختياري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| INSRNCE_LOAD_PER | INSRNCE_LOAD_PER (INSRNCE_LOAD_PER) | NUMBER, | اختياري |  |  |
| I_PRICE_VAT | I_PRICE_VAT (I_PRICE_VAT) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL3_VAT | DIS_AMT_DTL3_VAT (DIS_AMT_DTL3_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_DIS_DTL2_VAT | VAT_AMT_DIS_DTL2_VAT (VAT_AMT_DIS_DTL2_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_BFR_DIS | VAT_AMT_BFR_DIS (VAT_AMT_BFR_DIS) | NUMBER, | اختياري |  |  |
| LEV_NO | LEV_NO (LEV_NO) | NUMBER(3, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |

## IAS_RT_BILL_DTL_RQ_BR (IAS_RT_BILL_DTL_RQ_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| SERVICE_ITEM | SERVICE_ITEM (SERVICE_ITEM) | NUMBER(1, 0), | اختياري |  |  |
| DIS_PER3 | DIS_PER3 (DIS_PER3) | NUMBER, | اختياري |  |  |
| POST_CODE | POST_CODE (POST_CODE) | VARCHAR2(10), | اختياري |  |  |
| FIELD_DTL3 | FIELD_DTL3 (FIELD_DTL3) | VARCHAR2(60), | اختياري |  |  |
| INSRNCE_LOAD_PER | INSRNCE_LOAD_PER (INSRNCE_LOAD_PER) | NUMBER, | اختياري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |

## IAS_RT_BILL_MST (IAS_RT_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_YEAR | P_YEAR (P_YEAR) | NUMBER, | إجباري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| VAT_AMT_DISC_MST | VAT_AMT_DISC_MST (VAT_AMT_DISC_MST) | NUMBER, | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| CASH_NO_FCC | CASH_NO_FCC (CASH_NO_FCC) | NUMBER(10, 0), | اختياري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| CLASSIFY_SER | CLASSIFY_SER (CLASSIFY_SER) | NUMBER(38, 0), | اختياري |  |  |
| DISC_AMT_AFTR_VAT | DISC_AMT_AFTR_VAT (DISC_AMT_AFTR_VAT) | NUMBER, | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CC_CODE_BILL | CC_CODE_BILL (CC_CODE_BILL) | VARCHAR2(30), | اختياري |  |  |
| PAID_RT_BILL | PAID_RT_BILL (PAID_RT_BILL) | NUMBER(1, 0), | اختياري |  |  |
| REC_INV_RT_BILL | REC_INV_RT_BILL (REC_INV_RT_BILL) | NUMBER(1, 0), | اختياري |  |  |
| STAND_BY | STAND_BY (STAND_BY) | NUMBER(1, 0), | اختياري |  |  |
| INSRNCE_CARD_NO_FMLY | INSRNCE_CARD_NO_FMLY (INSRNCE_CARD_NO_FMLY) | VARCHAR2(60), | اختياري |  |  |
| EXPORT | EXPORT (EXPORT) | NUMBER(1, 0), | اختياري |  |  |
| ADD_DISC_AMT_DTL | ADD_DISC_AMT_DTL (ADD_DISC_AMT_DTL) | NUMBER, | اختياري |  |  |
| RT_VAT_PRD_TYP | RT_VAT_PRD_TYP (RT_VAT_PRD_TYP) | NUMBER(1, 0), | اختياري |  |  |
| POINT_RPLC_AMT | POINT_RPLC_AMT (POINT_RPLC_AMT) | NUMBER, | اختياري |  |  |
| POINT_RPLC_CNT | POINT_RPLC_CNT (POINT_RPLC_CNT) | NUMBER(5, 0), | اختياري |  |  |
| CR_CARD_AMT | CR_CARD_AMT (CR_CARD_AMT) | NUMBER, | اختياري |  |  |
| CR_CARD_AMT_SCND | CR_CARD_AMT_SCND (CR_CARD_AMT_SCND) | NUMBER, | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(250), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| DCTR_NO | DCTR_NO (DCTR_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_SRL_ADMSON | DOC_SRL_ADMSON (DOC_SRL_ADMSON) | NUMBER(38, 0), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | اختياري |  |  |
| DOC_SER_EXTRNL | DOC_SER_EXTRNL (DOC_SER_EXTRNL) | VARCHAR2(256), | اختياري |  |  |
| RT_BILL_TYP | RT_BILL_TYP (RT_BILL_TYP) | NUMBER(1, 0), | اختياري |  |  |
| INSRNCE_LMT_AMT_LOC_DOC | INSRNCE_LMT_AMT_LOC_DOC (INSRNCE_LMT_AMT_LOC_DOC) | NUMBER, | اختياري |  |  |
| CR_CARD_CST_NO_SCND | CR_CARD_CST_NO_SCND (CR_CARD_CST_NO_SCND) | VARCHAR2(60), | اختياري |  |  |
| CR_CARD_DOC_NO_REF_SCND | CR_CARD_DOC_NO_REF_SCND (CR_CARD_DOC_NO_REF_SCND) | NUMBER(15, 0), | اختياري |  |  |
| CR_CARD_DOC_NO_REF_THRD | CR_CARD_DOC_NO_REF_THRD (CR_CARD_DOC_NO_REF_THRD) | NUMBER(15, 0), | اختياري |  |  |
| CR_CARD_MAX_COMM_AMT_SCND | CR_CARD_MAX_COMM_AMT_SCND (CR_CARD_MAX_COMM_AMT_SCND) | NUMBER, | اختياري |  |  |

## IAS_RT_BILL_MST_BR (IAS_RT_BILL_MST_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_YEAR | P_YEAR (P_YEAR) | NUMBER, | إجباري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| VAT_AMT_DISC_MST | VAT_AMT_DISC_MST (VAT_AMT_DISC_MST) | NUMBER, | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(6, 0), | اختياري |  |  |
| CASH_NO_FCC | CASH_NO_FCC (CASH_NO_FCC) | NUMBER(10, 0), | اختياري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |
| CLASSIFY_SER | CLASSIFY_SER (CLASSIFY_SER) | NUMBER(38, 0), | اختياري |  |  |
| DOC_SER_EXTRNL | DOC_SER_EXTRNL (DOC_SER_EXTRNL) | VARCHAR2(256), | اختياري |  |  |
| DISC_AMT_AFTR_VAT | DISC_AMT_AFTR_VAT (DISC_AMT_AFTR_VAT) | NUMBER, | اختياري |  |  |
| REP_CODE_BILL | REP_CODE_BILL (REP_CODE_BILL) | VARCHAR2(15), | اختياري |  |  |
| PAID_RT_BILL | PAID_RT_BILL (PAID_RT_BILL) | NUMBER(1, 0), | اختياري |  |  |
| REC_INV_RT_BILL | REC_INV_RT_BILL (REC_INV_RT_BILL) | NUMBER(1, 0), | اختياري |  |  |
| NOTE_NO | NOTE_NO (NOTE_NO) | VARCHAR2(30), | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| HRS_DOC_TYPE_REF | HRS_DOC_TYPE_REF (HRS_DOC_TYPE_REF) | NUMBER, | اختياري |  |  |
| DOC_NO_ADMSON | DOC_NO_ADMSON (DOC_NO_ADMSON) | NUMBER(15, 0), | اختياري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| INSRNCE_BNF_NO | INSRNCE_BNF_NO (INSRNCE_BNF_NO) | NUMBER(5, 0), | اختياري |  |  |
| INSRNCE_CLSS_NO | INSRNCE_CLSS_NO (INSRNCE_CLSS_NO) | VARCHAR2(10), | اختياري |  |  |
| INSRNCE_ADD_LMT_DOC | INSRNCE_ADD_LMT_DOC (INSRNCE_ADD_LMT_DOC) | NUMBER, | اختياري |  |  |
| ADD_DISC_AMT_MST | ADD_DISC_AMT_MST (ADD_DISC_AMT_MST) | NUMBER, | اختياري |  |  |
| WITHOUT_VAT | WITHOUT_VAT (WITHOUT_VAT) | NUMBER(1, 0), | اختياري |  |  |
| CR_CARD_AMT_THRD | CR_CARD_AMT_THRD (CR_CARD_AMT_THRD) | NUMBER, | اختياري |  |  |
| CR_CARD_DSC_SCND | CR_CARD_DSC_SCND (CR_CARD_DSC_SCND) | VARCHAR2(500), | اختياري |  |  |
| CR_CARD_CST_NO_THRD | CR_CARD_CST_NO_THRD (CR_CARD_CST_NO_THRD) | VARCHAR2(60), | اختياري |  |  |
| CR_CARD_MAX_COMM_AMT_SCND | CR_CARD_MAX_COMM_AMT_SCND (CR_CARD_MAX_COMM_AMT_SCND) | NUMBER, | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | اختياري |  |  |
| CLC_TAX_FREE_QTY_FLG | CLC_TAX_FREE_QTY_FLG (CLC_TAX_FREE_QTY_FLG) | NUMBER(1, 0), | اختياري |  |  |
| POST_DATE | POST_DATE (POST_DATE) | DATE, | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(3, 0), | اختياري |  |  |

## IAS_RT_BILL_MST_RQ (IAS_RT_BILL_MST_RQ)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_YEAR | P_YEAR (P_YEAR) | NUMBER, | إجباري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| CASH_NO_FCC | CASH_NO_FCC (CASH_NO_FCC) | NUMBER(10, 0), | اختياري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |
| CLASSIFY_SER | CLASSIFY_SER (CLASSIFY_SER) | NUMBER(38, 0), | اختياري |  |  |
| DISC_AMT_AFTR_VAT | DISC_AMT_AFTR_VAT (DISC_AMT_AFTR_VAT) | NUMBER, | اختياري |  |  |
| REP_CODE_BILL | REP_CODE_BILL (REP_CODE_BILL) | VARCHAR2(15), | اختياري |  |  |
| NOTE_NO | NOTE_NO (NOTE_NO) | VARCHAR2(30), | اختياري |  |  |
| INSRNCE_PRSON_NM | INSRNCE_PRSON_NM (INSRNCE_PRSON_NM) | VARCHAR2(60), | اختياري |  |  |
| INSRNCE_CSH_AMT | INSRNCE_CSH_AMT (INSRNCE_CSH_AMT) | NUMBER, | اختياري |  |  |
| FIELD5 | FIELD5 (FIELD5) | VARCHAR2(250), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| DOC_SER_EXTRNL | DOC_SER_EXTRNL (DOC_SER_EXTRNL) | VARCHAR2(256), | اختياري |  |  |
| CLC_VAT_PRICE_TYP | CLC_VAT_PRICE_TYP (CLC_VAT_PRICE_TYP) | NUMBER(1, 0), | اختياري |  |  |
| INSRNCE_ADD_LMT_MST | INSRNCE_ADD_LMT_MST (INSRNCE_ADD_LMT_MST) | NUMBER, | اختياري |  |  |

## IAS_RT_BILL_MST_RQ_BR (IAS_RT_BILL_MST_RQ_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RT_BILL_DOC_TYPE | RT_BILL_DOC_TYPE (RT_BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| RT_BILL_NO | RT_BILL_NO (RT_BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_YEAR | P_YEAR (P_YEAR) | NUMBER, | إجباري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(3, 0), | اختياري |  |  |
| CASH_NO_FCC | CASH_NO_FCC (CASH_NO_FCC) | NUMBER(10, 0), | اختياري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(6, 0), | اختياري |  |  |
| CLASSIFY_SER | CLASSIFY_SER (CLASSIFY_SER) | NUMBER(38, 0), | اختياري |  |  |
| DISC_AMT_AFTR_VAT | DISC_AMT_AFTR_VAT (DISC_AMT_AFTR_VAT) | NUMBER, | اختياري |  |  |
| REP_CODE_BILL | REP_CODE_BILL (REP_CODE_BILL) | VARCHAR2(15), | اختياري |  |  |
| INSRNCE_LOAD_PER | INSRNCE_LOAD_PER (INSRNCE_LOAD_PER) | NUMBER, | اختياري |  |  |
| NOTE_NO | NOTE_NO (NOTE_NO) | VARCHAR2(30), | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(250), | اختياري |  |  |
| PRM_CODE | PRM_CODE (PRM_CODE) | VARCHAR2(15), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| INSRNCE_CMP_NO | INSRNCE_CMP_NO (INSRNCE_CMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| INSRNCE_RLTN_TYP | INSRNCE_RLTN_TYP (INSRNCE_RLTN_TYP) | NUMBER(2, 0), | اختياري |  |  |
| CLC_VAT_PRICE_TYP | CLC_VAT_PRICE_TYP (CLC_VAT_PRICE_TYP) | NUMBER(1, 0), | اختياري |  |  |
| INSRNCE_LMT_AMT_LOC_DOC | INSRNCE_LMT_AMT_LOC_DOC (INSRNCE_LMT_AMT_LOC_DOC) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_RT_SALES_REASON (IAS_RT_SALES_REASON)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RES_TYP | RES_TYP (RES_TYP) | NUMBER(5, 0), | اختياري |  | PK |
| RES_F_NM | RES_F_NM (RES_F_NM) | VARCHAR2(250), | اختياري |  |  |

## IAS_RT_SALES_TYPES (IAS_RT_SALES_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SR_TYPE | SR_TYPE (SR_TYPE) | NUMBER(5, 0), | اختياري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## IAS_SALES_COMMISSION (IAS_SALES_COMMISSION)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| G_CODE | G_CODE (G_CODE) | VARCHAR2(10), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | اختياري |  |  |
| PER_QTY | PER_QTY (PER_QTY) | NUMBER, | اختياري |  |  |
| PLAN_TYPE | PLAN_TYPE (PLAN_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| R_CODE | R_CODE (R_CODE) | NUMBER(10, 0), | اختياري |  |  |
| DETAIL_NO | DETAIL_NO (DETAIL_NO) | VARCHAR2(10))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| PLAN_DSTR_TYPE | PLAN_DSTR_TYPE (PLAN_DSTR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| PLAN_DESC | PLAN_DESC (PLAN_DESC) | VARCHAR2(250), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_SALES_TYPES (IAS_SALES_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SI_TYPE | SI_TYPE (SI_TYPE) | NUMBER(5, 0), | اختياري |  | PK |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| DOC_SEQ | DOC_SEQ (DOC_SEQ) | NUMBER, | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_SAL_CPN_MST (IAS_SAL_CPN_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| CHEQUE_DUE_DATE | CHEQUE_DUE_DATE (CHEQUE_DUE_DATE) | DATE, | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(60), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |

## IAS_SCAL_MOVMNT (IAS_SCAL_MOVMNT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(1000), | اختياري |  |  |
| DRVR_NM | DRVR_NM (DRVR_NM) | VARCHAR2(100), | اختياري |  |  |

## IAS_SHW_DOC_PRIV (IAS_SHW_DOC_PRIV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_SIGNATURE (IAS_SIGNATURE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| A_CY | A_CY (A_CY) | VARCHAR2(7) NOT NULL ENABLE, | إجباري |  |  |
| DOC_JV_TYPE | DOC_JV_TYPE (DOC_JV_TYPE) | NUMBER(9, 0), | اختياري |  |  |
| BILL_RATE | BILL_RATE (BILL_RATE) | NUMBER, | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| PAID_DOC_TYPE | PAID_DOC_TYPE (PAID_DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| BILL_DATE | BILL_DATE (BILL_DATE) | DATE) ON COMMIT DELETE ROWS | اختياري |  |  |

## IAS_SMAN_CALC_COMM_DTL (IAS_SMAN_CALC_COMM_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_NO | COMM_NO (COMM_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| COMM_TYPE | COMM_TYPE (COMM_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| F_DATE | F_DATE (F_DATE) | DATE, | اختياري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_SMAN_COL_CNDTN_DTL (IAS_SMAN_COL_CNDTN_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_TYP | COMM_TYP (COMM_TYP) | NUMBER(5, 0), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| CNTRY_NO | CNTRY_NO (CNTRY_NO) | NUMBER(4, 0), | اختياري |  |  |
| COMM_AMT | COMM_AMT (COMM_AMT) | NUMBER, | اختياري |  |  |
| SMAN_RGN_COMM_TYP | SMAN_RGN_COMM_TYP (SMAN_RGN_COMM_TYP) | NUMBER(2, 0), | اختياري |  |  |
| COL_DSTR_TYP | COL_DSTR_TYP (COL_DSTR_TYP) | NUMBER(2, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_SMAN_COMM_DTL (IAS_SMAN_COMM_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  | PK |
| R_CODE | R_CODE (R_CODE) | VARCHAR2(10), | اختياري |  |  |
| COMM_AMT_TYPE | COMM_AMT_TYPE (COMM_AMT_TYPE) | NUMBER(4, 0), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_SMAN_COM_CALC_DTL (IAS_SMAN_COM_CALC_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_SRL | DOC_SRL (DOC_SRL) | NUMBER(38, 0), | اختياري |  |  |
| DOC_SEQ | DOC_SEQ (DOC_SEQ) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| NET_SALES_QTY | NET_SALES_QTY (NET_SALES_QTY) | NUMBER, | اختياري |  |  |
| C_CLASS | C_CLASS (C_CLASS) | NUMBER(3, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | إجباري |  |  |
| PLAN_SER | PLAN_SER (PLAN_SER) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_SMAN_COM_CALC_SUB_DTL (IAS_SMAN_COM_CALC_SUB_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| C_GROUP_CODE | C_GROUP_CODE (C_GROUP_CODE) | NUMBER(10, 0), | اختياري |  |  |
| CITY_NO | CITY_NO (CITY_NO) | NUMBER(10, 0), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |
| BILL_DOC_TYP | BILL_DOC_TYP (BILL_DOC_TYP) | NUMBER(2, 0), | اختياري |  |  |
| T_VALUE | T_VALUE (T_VALUE) | NUMBER, | اختياري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | اختياري |  |  |
| CALC_COMM_ITM_TYP | CALC_COMM_ITM_TYP (CALC_COMM_ITM_TYP) | NUMBER(2, 0), | اختياري |  |  |
| USE_CALC_COMM_PAY_TYP | USE_CALC_COMM_PAY_TYP (USE_CALC_COMM_PAY_TYP) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| SMAN_RGN_COMM_TYP | SMAN_RGN_COMM_TYP (SMAN_RGN_COMM_TYP) | NUMBER(2, 0), | اختياري |  |  |
| CONN_CNDTN_COMM_TYP | CONN_CNDTN_COMM_TYP (CONN_CNDTN_COMM_TYP) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| CALC_COMM_PRNT_SMAN | CALC_COMM_PRNT_SMAN (CALC_COMM_PRNT_SMAN) | NUMBER(1, 0), | اختياري |  |  |

## IAS_SMAN_DOC_SYNC_DTS (IAS_SMAN_DOC_SYNC_DTS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  | PK |

## IAS_SMAN_EMP_CALC_COMM (IAS_SMAN_EMP_CALC_COMM)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| COMM_NO | COMM_NO (COMM_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15) NOT NULL ENABLE, | إجباري |  | PK |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER, | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_SUB_CST_MEASUR_DTL (IAS_SUB_CST_MEASUR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MEASUR_NO | MEASUR_NO (MEASUR_NO) | VARCHAR2(15), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| SUBG_CODE | SUBG_CODE (SUBG_CODE) | VARCHAR2(10), | إجباري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_TENDER_DTL (IAS_TENDER_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TD_TYPE | TD_TYPE (TD_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | إجباري |  |  |
| P_QTY | P_QTY (P_QTY) | NUMBER, | اختياري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER(24, 9), | اختياري |  |  |

## IAS_TENDER_MST (IAS_TENDER_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TD_TYPE | TD_TYPE (TD_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| TD_DESC | TD_DESC (TD_DESC) | VARCHAR2(250), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_TENDER_TYPES (IAS_TENDER_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TD_TYPE | TD_TYPE (TD_TYPE) | NUMBER(2, 0), | اختياري |  | PK |
| A_NAME | A_NAME (A_NAME) | VARCHAR2(100), | اختياري |  |  |
| NT_DIS_U_ID | NT_DIS_U_ID (NT_DIS_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(100), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_TRANSFER_IN_BR_TMP (IAS_TRANSFER_IN_BR_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TR_SER | TR_SER (TR_SER) | NUMBER, | اختياري |  |  |
| PR_ORDR | PR_ORDR (PR_ORDR) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | إجباري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | اختياري |  |  |
| F_W_CODE | F_W_CODE (F_W_CODE) | NUMBER(10, 0), | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_TRNSFR_QTY_APPROVED_TMP (IAS_TRNSFR_QTY_APPROVED_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | اختياري |  |  |
| F_W_CODE | F_W_CODE (F_W_CODE) | NUMBER(10, 0), | إجباري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  |  |

## IAS_TRUST_DTL (IAS_TRUST_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TRUST_NO | TRUST_NO (TRUST_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## UnitConversion (IAS_UNTS_CONV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MSUR_MAN_NO | MSUR_MAN_NO (MSUR_MAN_NO) | NUMBER(15, 0), | اختياري |  |  |
| MSUR_OBS_CODE | MSUR_OBS_CODE (MSUR_OBS_CODE) | VARCHAR2(10), | اختياري |  | PK |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## UserTerminal (IAS_USER_HEAD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| BRN_ATELE | BRN_ATELE (BRN_ATELE) | VARCHAR2(40), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_USR_COPY_AUD (IAS_USR_COPY_AUD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| F_U_ID | F_U_ID (F_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| APPL_NO | APPL_NO (APPL_NO) | NUMBER, | اختياري |  |  |
| VOUCHER_NO | VOUCHER_NO (VOUCHER_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | إجباري |  |  |
| CSH_BNK_NO | CSH_BNK_NO (CSH_BNK_NO) | NUMBER(10, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## SupplierBankAccount (IAS_VENDOR_BANK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| BANK_ACC | BANK_ACC (BANK_ACC) | VARCHAR2(30), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_VNDR_CLAIM_DTL (IAS_VNDR_CLAIM_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  |  |
| F_DATE | F_DATE (F_DATE) | DATE, | اختياري |  |  |
| PROCESSED | PROCESSED (PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## IAS_VNDR_CRAGE_TMP (IAS_VNDR_CRAGE_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15) NOT NULL ENABLE, | إجباري |  |  |
| DOC_JV_TYPE | DOC_JV_TYPE (DOC_JV_TYPE) | NUMBER(9, 0), | اختياري |  |  |
| CR_AMTF | CR_AMTF (CR_AMTF) | NUMBER, | اختياري |  |  |
| TRMNL_NAME | TRMNL_NAME (TRMNL_NAME) | VARCHAR2(100), | اختياري |  |  |

## SupplierItem (IAS_VNDR_ITM)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ITM_MIN_QTY | ITM_MIN_QTY (ITM_MIN_QTY) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## IAS_VNDR_LMT_PUR (IAS_VNDR_LMT_PUR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| I_CODE_VNDR | I_CODE_VNDR (I_CODE_VNDR) | VARCHAR2(30), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ITEM_DESC | ITEM_DESC (ITEM_DESC) | VARCHAR2(1000), | اختياري |  |  |
| FIELD_DTL2 | FIELD_DTL2 (FIELD_DTL2) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL5 | FIELD_DTL5 (FIELD_DTL5) | VARCHAR2(60), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| FIELD_DTL7 | FIELD_DTL7 (FIELD_DTL7) | VARCHAR2(60), | اختياري |  |  |
| FIELD_DTL10 | FIELD_DTL10 (FIELD_DTL10) | VARCHAR2(60))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_VND_QUOT_MST (IAS_VND_QUOT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| QT_NO | QT_NO (QT_NO) | NUMBER(15, 0), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| REF_DATE | REF_DATE (REF_DATE) | DATE, | اختياري |  |  |
| FIELD10 | FIELD10 (FIELD10) | VARCHAR2(250), | اختياري |  |  |
| USE_VAT | USE_VAT (USE_VAT) | NUMBER(1, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| QUOT_EXPIRE_DATE | QUOT_EXPIRE_DATE (QUOT_EXPIRE_DATE) | DATE, | اختياري |  |  |

## IAS_VND_TRANS_TMP (IAS_VND_TRANS_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| IN_OUT | IN_OUT (IN_OUT) | NUMBER(1, 0), | إجباري |  |  |
| I_NAME | I_NAME (I_NAME) | VARCHAR2(100), | إجباري |  |  |
| P_QTY | P_QTY (P_QTY) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL 65536
 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| V_TYPE_A_NAME | V_TYPE_A_NAME (V_TYPE_A_NAME) | VARCHAR2(60) NOT NULL ENABLE, | إجباري |  |  |
| CONN_VCHR_REQ | CONN_VCHR_REQ (CONN_VCHR_REQ) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## IAS_WEEK_REP_TMP (IAS_WEEK_REP_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| F_DATE | F_DATE (F_DATE) | DATE, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | إجباري |  |  |
| F_TR_SER | F_TR_SER (F_TR_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| F_AVL_QTY | F_AVL_QTY (F_AVL_QTY) | NUMBER, | اختياري |  |  |
| DOC_SEQUENCE_REF_DTL | DOC_SEQUENCE_REF_DTL (DOC_SEQUENCE_REF_DTL) | NUMBER(38, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_WHTRNS_DTL_BR (IAS_WHTRNS_DTL_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TR_INOUT_TYPE | TR_INOUT_TYPE (TR_INOUT_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| OUT_REQ_TYPE | OUT_REQ_TYPE (OUT_REQ_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | إجباري |  |  |
| F_TR_SER | F_TR_SER (F_TR_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| F_AVL_QTY | F_AVL_QTY (F_AVL_QTY) | NUMBER, | اختياري |  |  |
| WEB_SRVC_TRNSFR_DATA_FLG | WEB_SRVC_TRNSFR_DATA_FLG (WEB_SRVC_TRNSFR_DATA_FLG) | NUMBER(1, 0), | إجباري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | اختياري |  |  |

## IAS_WHTRNS_DTL_EXP_BCK (IAS_WHTRNS_DTL_EXP_BCK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TR_INOUT_TYPE | TR_INOUT_TYPE (TR_INOUT_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| TR_TYPE | TR_TYPE (TR_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| F_W_CODE | F_W_CODE (F_W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | إجباري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| EXP_AMT7 | EXP_AMT7 (EXP_AMT7) | NUMBER(24, 9), | اختياري |  |  |
| EXP_AMT10 | EXP_AMT10 (EXP_AMT10) | NUMBER(24, 9), | اختياري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| T_W_CODE | T_W_CODE (T_W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| TR_POST | TR_POST (TR_POST) | NUMBER(1, 0), | اختياري |  |  |
| STK_PROCESSED | STK_PROCESSED (STK_PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| T_TR_TYPE | T_TR_TYPE (T_TR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| DIFF_A_CY | DIFF_A_CY (DIFF_A_CY) | VARCHAR2(7), | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(1000), | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | إجباري |  |  |

## IAS_WHTRNS_MST_BR (IAS_WHTRNS_MST_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TR_INOUT_TYPE | TR_INOUT_TYPE (TR_INOUT_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| T_W_CODE | T_W_CODE (T_W_CODE) | NUMBER(3, 0), | اختياري |  |  |
| STK_RATE | STK_RATE (STK_RATE) | NUMBER, | اختياري |  |  |
| LOAD_NO | LOAD_NO (LOAD_NO) | NUMBER(10, 0), | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(3, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| F_TR_NO | F_TR_NO (F_TR_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BOE_NO | BOE_NO (BOE_NO) | VARCHAR2(30), | اختياري |  |  |
| DIFF_A_CY | DIFF_A_CY (DIFF_A_CY) | VARCHAR2(7), | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(1000), | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | اختياري |  |  |

## IAS_WHTRNS_MST_EXP_BCK (IAS_WHTRNS_MST_EXP_BCK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TR_INOUT_TYPE | TR_INOUT_TYPE (TR_INOUT_TYPE) | NUMBER(2, 0) NOT NULL ENABLE | إجباري |  |  |
| TR_TYPE | TR_TYPE (TR_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| TR_POST | TR_POST (TR_POST) | NUMBER(1, 0), | اختياري |  |  |
| STK_PROCESSED | STK_PROCESSED (STK_PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| T_TR_TYPE | T_TR_TYPE (T_TR_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| EXP_A_CODE2 | EXP_A_CODE2 (EXP_A_CODE2) | VARCHAR2(30), | اختياري |  |  |
| EXP_A_CODE5 | EXP_A_CODE5 (EXP_A_CODE5) | VARCHAR2(30), | اختياري |  |  |
| EXP_A_CODE8 | EXP_A_CODE8 (EXP_A_CODE8) | VARCHAR2(30), | اختياري |  |  |
| EXP_AMT | EXP_AMT (EXP_AMT) | NUMBER(24, 9), | اختياري |  |  |
| EXP_AMT10 | EXP_AMT10 (EXP_AMT10) | NUMBER(24, 9), | اختياري |  |  |
| EXP_DESC3 | EXP_DESC3 (EXP_DESC3) | VARCHAR2(250), | اختياري |  |  |
| EXP_DESC6 | EXP_DESC6 (EXP_DESC6) | VARCHAR2(250), | اختياري |  |  |
| EXP_DESC9 | EXP_DESC9 (EXP_DESC9) | VARCHAR2(250), | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| F_TR_NO | F_TR_NO (F_TR_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BOE_NO | BOE_NO (BOE_NO) | VARCHAR2(30), | اختياري |  |  |
| DIFF_A_CY | DIFF_A_CY (DIFF_A_CY) | VARCHAR2(7), | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(1000), | اختياري |  |  |
| UNPOST_DATE | UNPOST_DATE (UNPOST_DATE) | DATE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| USE_ATTCH | USE_ATTCH (USE_ATTCH) | NUMBER(1, 0), | اختياري |  |  |
| BARCODE | BARCODE (BARCODE) | VARCHAR2(30), | اختياري |  |  |
| I_HEIGHT | I_HEIGHT (I_HEIGHT) | NUMBER, | اختياري |  |  |
| WT_UNT | WT_UNT (WT_UNT) | VARCHAR2(10), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |

## IAS_WHTRNS_MULTI_MST (IAS_WHTRNS_MULTI_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TR_TYPE | TR_TYPE (TR_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| DRIVER_NO | DRIVER_NO (DRIVER_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## IAS_WORK_ORDER_DTL (IAS_WORK_ORDER_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| WO_NO | WO_NO (WO_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## IAS_WORK_ORDER_MST (IAS_WORK_ORDER_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| WO_NO | WO_NO (WO_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| C_NAME | C_NAME (C_NAME) | VARCHAR2(100), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(250), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(250), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## IAS_WORK_ORDER_TYPES (IAS_WORK_ORDER_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| WO_TYPE_NO | WO_TYPE_NO (WO_TYPE_NO) | NUMBER(3, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| YEAR | YEAR (YEAR) | NUMBER(4, 0), | اختياري |  |  |
| MNG_CODE | MNG_CODE (MNG_CODE) | VARCHAR2(10), | اختياري |  |  |

## INSTALLMENT (INSTALLMENT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_DATE | I_DATE (I_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| PAID_AMT | PAID_AMT (PAID_AMT) | NUMBER, | اختياري |  |  |

## INSTALLMENT_BR (INSTALLMENT_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_DATE | I_DATE (I_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| PAID_AMT | PAID_AMT (PAID_AMT) | NUMBER, | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(3, 0), | اختياري |  |  |

## INTERFACE_ACC (INTERFACE_ACC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  | PK |
| CURR_DIFF | CURR_DIFF (CURR_DIFF) | VARCHAR2(30), | اختياري |  |  |
| REC_LETTER | REC_LETTER (REC_LETTER) | VARCHAR2(30), | اختياري |  |  |
| VAT_PROFIT_DEBT | VAT_PROFIT_DEBT (VAT_PROFIT_DEBT) | VARCHAR2(30), | اختياري |  |  |
| DIFF_PUR_STK_A_CODE | DIFF_PUR_STK_A_CODE (DIFF_PUR_STK_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| DIFF_OUTGOING_A_CODE | DIFF_OUTGOING_A_CODE (DIFF_OUTGOING_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| FAS_DECR_A_CODE | FAS_DECR_A_CODE (FAS_DECR_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| COUPON_A_CODE | COUPON_A_CODE (COUPON_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| REM_A_CODE_DISCOUNT | REM_A_CODE_DISCOUNT (REM_A_CODE_DISCOUNT) | VARCHAR2(30), | اختياري |  |  |
| RMS_AC_CODE_INSURANCE | RMS_AC_CODE_INSURANCE (RMS_AC_CODE_INSURANCE) | VARCHAR2(30), | اختياري |  |  |
| RMS_AC_CODE_ITM_DAMAGED | RMS_AC_CODE_ITM_DAMAGED (RMS_AC_CODE_ITM_DAMAGED) | VARCHAR2(30), | اختياري |  |  |
| RMS_AC_CODE_RNT | RMS_AC_CODE_RNT (RMS_AC_CODE_RNT) | VARCHAR2(30), | اختياري |  |  |
| SHP_SLS_AC | SHP_SLS_AC (SHP_SLS_AC) | VARCHAR2(30), | اختياري |  |  |
| DLY_SALES_AC | DLY_SALES_AC (DLY_SALES_AC) | VARCHAR2(30), | اختياري |  |  |
| POINT_RPLC_A_CODE | POINT_RPLC_A_CODE (POINT_RPLC_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| HPS_ADMT_A_CODE_DTL | HPS_ADMT_A_CODE_DTL (HPS_ADMT_A_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| HPS_ADMT_DISC_A_CODE | HPS_ADMT_DISC_A_CODE (HPS_ADMT_DISC_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| PUR_INCM_A_CODE | PUR_INCM_A_CODE (PUR_INCM_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| RMS_AC_CODE_HOSPITALITY | RMS_AC_CODE_HOSPITALITY (RMS_AC_CODE_HOSPITALITY) | VARCHAR2(30), | اختياري |  |  |
| HRS_MDCL_CARE_TAX_ACC | HRS_MDCL_CARE_TAX_ACC (HRS_MDCL_CARE_TAX_ACC) | VARCHAR2(30), | اختياري |  |  |
| FMS_A_CODE_COMM | FMS_A_CODE_COMM (FMS_A_CODE_COMM) | VARCHAR2(30), | اختياري |  |  |
| AMS_PRT_EXPNS_AC | AMS_PRT_EXPNS_AC (AMS_PRT_EXPNS_AC) | VARCHAR2(30), | اختياري |  |  |
| FMS_A_CODE_INTRNL_TRNSPRT | FMS_A_CODE_INTRNL_TRNSPRT (FMS_A_CODE_INTRNL_TRNSPRT) | VARCHAR2(30), | اختياري |  |  |
| FLD_FRMT | FLD_FRMT (FLD_FRMT) | VARCHAR2(60), | اختياري |  |  |
| MTHD_L_NM | MTHD_L_NM (MTHD_L_NM) | VARCHAR2(1000), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| PRC_TYP | PRC_TYP (PRC_TYP) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| MOV_TYPE | MOV_TYPE (MOV_TYPE) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## INV_ITM_CST_ORDR (INV_ITM_CST_ORDR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CST_CODE | CST_CODE (CST_CODE) | NUMBER(1, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| EXCD_PER | EXCD_PER (EXCD_PER) | NUMBER(10, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |
| QR_CODE | QR_CODE (QR_CODE) | VARCHAR2(2048), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  | PK |
| ACTV_NO | ACTV_NO (ACTV_NO) | VARCHAR2(15), | اختياري |  |  |

## INV_PRPRTN_STP (INV_PRPRTN_STP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| ORDR_NO | ORDR_NO (ORDR_NO) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| ALLOW_PRPRTION_PARTLY | ALLOW_PRPRTION_PARTLY (ALLOW_PRPRTION_PARTLY) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## INV_PRV_ASSMBL_TYP (INV_PRV_ASSMBL_TYP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## INV_QR_CODE_MTHD_DTL (INV_QR_CODE_MTHD_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | إجباري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | اختياري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(2, 0), | اختياري |  |  |
| AVL_QTY | AVL_QTY (AVL_QTY) | NUMBER, | اختياري |  |  |

## INV_RQ_ASSMBL_MST (INV_RQ_ASSMBL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TYP_NO | TYP_NO (TYP_NO) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0), | اختياري |  | PK |
| PRCSS_FLG | PRCSS_FLG (PRCSS_FLG) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## INV_WRHS_TRNSFR_EXPNS (INV_WRHS_TRNSFR_EXPNS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | إجباري |  |  |

## INV_WRHS_TRNSFR_EXPNS_BR (INV_WRHS_TRNSFR_EXPNS_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE | إجباري |  |  |
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_DESC | DOC_DESC (DOC_DESC) | VARCHAR2(500), | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | إجباري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |

## ITEMS_COSTING (ITEMS_COSTING)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  |  |
| I_E_NAME | I_E_NAME (I_E_NAME) | VARCHAR2(100), | إجباري |  |  |
| ITEM_TYPE | ITEM_TYPE (ITEM_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| I_IMG | I_IMG (I_IMG) | VARCHAR2(30), | اختياري |  |  |
| C_ADDRESS | C_ADDRESS (C_ADDRESS) | VARCHAR2(150), | اختياري |  |  |
| DETAIL_NO | DETAIL_NO (DETAIL_NO) | VARCHAR2(10), | اختياري |  |  |

## ITEMS_ORDER_IMG (ITEMS_ORDER_IMG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## ITEM_BIN (ITEM_BIN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30), | اختياري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## ItemMovement (ITEM_MOVEMENT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYPE | DOC_TYPE (DOC_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| EXPIRE_DATE | EXPIRE_DATE (EXPIRE_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| WT_UNT | WT_UNT (WT_UNT) | VARCHAR2(10), | اختياري |  |  |
| I_PRICE_VAT | I_PRICE_VAT (I_PRICE_VAT) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL3_VAT | DIS_AMT_DTL3_VAT (DIS_AMT_DTL3_VAT) | NUMBER, | اختياري |  |  |
| DIS_AMT_MST | DIS_AMT_MST (DIS_AMT_MST) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## ITEM_TYPES (ITEM_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TYPE_OF_ITEM | TYPE_OF_ITEM (TYPE_OF_ITEM) | NUMBER(5, 0), | اختياري |  | PK |
| AC_CODE | AC_CODE (AC_CODE) | VARCHAR2(30), | اختياري |  |  |
| AC_CODE_ST | AC_CODE_ST (AC_CODE_ST) | NUMBER(1, 0), | اختياري |  |  |
| USE_INTMDT_DB | USE_INTMDT_DB (USE_INTMDT_DB) | NUMBER(1, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## JV_TYPES (JV_TYPES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0), | إجباري |  | PK |
| JV_E_NAME | JV_E_NAME (JV_E_NAME) | VARCHAR2(60), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## JV_TYPES_DETAIL (JV_TYPES_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## KIT_ITEMS (KIT_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| KIT_ITEM_NO | KIT_ITEM_NO (KIT_ITEM_NO) | VARCHAR2(30), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| USE_RMS_SLS_TYP | USE_RMS_SLS_TYP (USE_RMS_SLS_TYP) | VARCHAR2(10), | اختياري |  |  |

## KIT_ITEMS_DETAIL (KIT_ITEMS_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| STNDRD_QTY | STNDRD_QTY (STNDRD_QTY) | NUMBER, | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| SUM_QTY | SUM_QTY (SUM_QTY) | NUMBER, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| I_CODE | I_CODE (I_CODE) | , | اختياري |  |  |
| DOC_SEQUENCE_M | DOC_SEQUENCE_M (DOC_SEQUENCE_M) | )  PCTFREE 10 INITRANS 2 MAXTRANS 255 STORAGE(INITIAL 65536 NEXT
 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | إجباري |  |  |

## LC_DETAIL (LC_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LC_NO | LC_NO (LC_NO) | VARCHAR2(15) NOT NULL ENABLE, | إجباري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0), | إجباري |  |  |
| LC_EXP_AMTF | LC_EXP_AMTF (LC_EXP_AMTF) | NUMBER, | اختياري |  |  |

## LC_MASTER (LC_MASTER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LC_NO | LC_NO (LC_NO) | VARCHAR2(15), | إجباري |  | PK |
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | اختياري |  |  |
| LC_AC | LC_AC (LC_AC) | VARCHAR2(30), | اختياري |  |  |
| LC_OPEN_DATE | LC_OPEN_DATE (LC_OPEN_DATE) | DATE, | اختياري |  |  |
| PORT_OF_ARR | PORT_OF_ARR (PORT_OF_ARR) | VARCHAR2(100), | اختياري |  |  |
| INS_COMP | INS_COMP (INS_COMP) | VARCHAR2(100), | اختياري |  |  |
| JV_PROCESSED | JV_PROCESSED (JV_PROCESSED) | NUMBER(1, 0), | اختياري |  |  |
| LC_DUE_DATE | LC_DUE_DATE (LC_DUE_DATE) | DATE, | اختياري |  |  |
| PO_TYPE | PO_TYPE (PO_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| CUSTOM_STATEMENT_NO | CUSTOM_STATEMENT_NO (CUSTOM_STATEMENT_NO) | VARCHAR2(15), | اختياري |  |  |
| COMMITMENT_DATE | COMMITMENT_DATE (COMMITMENT_DATE) | DATE, | اختياري |  |  |
| TRNSFR_A_CY | TRNSFR_A_CY (TRNSFR_A_CY) | VARCHAR2(9), | اختياري |  |  |
| INS_CONDTION | INS_CONDTION (INS_CONDTION) | VARCHAR2(150), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## MASTER_GATE_GR (MASTER_GATE_GR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| DOC_POST | DOC_POST (DOC_POST) | NUMBER(1, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | إجباري |  |  |

## MASTER_INV (MASTER_INV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| INV_NO | INV_NO (INV_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| REF_NO | REF_NO (REF_NO) | VARCHAR2(15), | اختياري |  |  |
| INV_NO_REF | INV_NO_REF (INV_NO_REF) | NUMBER(10, 0), | اختياري |  |  |
| MACHINE_NO | MACHINE_NO (MACHINE_NO) | NUMBER(5, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## MasterJournal (MASTER_JOURNAL_V)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## MasterJournalBranch (MASTER_JOURNAL_V_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |

## MASTER_OUT_BILLS (MASTER_OUT_BILLS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_CURRENCY | BILL_CURRENCY (BILL_CURRENCY) | VARCHAR2(7) NOT NULL ENABLE, | إجباري |  |  |
| STOCK_RATE | STOCK_RATE (STOCK_RATE) | NUMBER, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |
| ATTACH_CNT | ATTACH_CNT (ATTACH_CNT) | NUMBER(3, 0), | اختياري |  |  |
| SUB_C_CODE | SUB_C_CODE (SUB_C_CODE) | VARCHAR2(15), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(250), | اختياري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## MASTER_OUT_BILLS_BR (MASTER_OUT_BILLS_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_NO | OUT_NO (OUT_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_CURRENCY | BILL_CURRENCY (BILL_CURRENCY) | VARCHAR2(7) NOT NULL ENABLE, | إجباري |  |  |
| STOCK_RATE | STOCK_RATE (STOCK_RATE) | NUMBER, | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |
| OUT_BILL_TYP | OUT_BILL_TYP (OUT_BILL_TYP) | NUMBER(1, 0), | اختياري |  |  |
| R_CODE | R_CODE (R_CODE) | NUMBER(6, 0), | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(250), | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## MEASUREMENT (MEASUREMENT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| MEASURE_CODE | MEASURE_CODE (MEASURE_CODE) | VARCHAR2(10), | اختياري |  | PK |
| MEASURE_F_NM | MEASURE_F_NM (MEASURE_F_NM) | VARCHAR2(30), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## NOTE (NOTE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| NOTE_TYPE | NOTE_TYPE (NOTE_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30), | اختياري |  |  |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(100), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(100), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | إجباري |  |  |

## NOTE_DETAIL (NOTE_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| NOTE_TYPE | NOTE_TYPE (NOTE_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| NOTE_DESC | NOTE_DESC (NOTE_DESC) | VARCHAR2(250), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| LC_NO | LC_NO (LC_NO) | VARCHAR2(15), | اختياري |  |  |
| OB_PY | OB_PY (OB_PY) | NUMBER(1, 0), | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## ORDER_DETAIL (ORDER_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SO_TYPE | SO_TYPE (SO_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | إجباري |  |  |
| I_WIDTH | I_WIDTH (I_WIDTH) | NUMBER, | اختياري |  |  |
| DIS_PER2 | DIS_PER2 (DIS_PER2) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL_VAT | DIS_AMT_DTL_VAT (DIS_AMT_DTL_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_AFTR_DIS | VAT_AMT_AFTR_DIS (VAT_AMT_AFTR_DIS) | NUMBER, | اختياري |  |  |
| DOC_SEQ | DOC_SEQ (DOC_SEQ) | NUMBER, | اختياري |  |  |
| PKG_WIDTH | PKG_WIDTH (PKG_WIDTH) | NUMBER, | اختياري |  |  |
| SI_TYPE | SI_TYPE (SI_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SER_REF | DOC_SER_REF (DOC_SER_REF) | NUMBER(38, 0), | اختياري |  |  |
| STK_COST | STK_COST (STK_COST) | NUMBER, | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL_QT_PRM | DIS_AMT_DTL_QT_PRM (DIS_AMT_DTL_QT_PRM) | NUMBER, | اختياري |  |  |
| QT_PRM_SER | QT_PRM_SER (QT_PRM_SER) | NUMBER(38, 0), | اختياري |  |  |
| OTHR_AMT_ITM | OTHR_AMT_ITM (OTHR_AMT_ITM) | NUMBER, | اختياري |  |  |

## OTHER_CHARGES (OTHER_CHARGES)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| A_CODE | A_CODE (A_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| VAT_PER | VAT_PER (VAT_PER) | NUMBER, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## OTHER_CHARGES_BR (OTHER_CHARGES_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| SC_A_CY | SC_A_CY (SC_A_CY) | VARCHAR2(7), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## OTHER_CHARGES_ITEMS (OTHER_CHARGES_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| SC_NO | SC_NO (SC_NO) | NUMBER(3, 0), | اختياري |  | PK |
| I_CODE | I_CODE (I_CODE) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  | PK |

## OTHER_CHARGES_ITEMS_BR (OTHER_CHARGES_ITEMS_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| SC_NO | SC_NO (SC_NO) | NUMBER(3, 0), | اختياري |  | PK |
| BILL_PY | BILL_PY (BILL_PY) | NUMBER(1, 0), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |

## OTHER_CHARGES_ITEMS_OTHRS (OTHER_CHARGES_ITEMS_OTHRS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DOC_DATE | DOC_DATE (DOC_DATE) | DATE, | اختياري |  |  |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER, | اختياري |  |  |
| SI_TYPE | SI_TYPE (SI_TYPE) | NUMBER(5, 0), | إجباري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## OTHER_CHARGES_OTHRS (OTHER_CHARGES_OTHRS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  |  |
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| BILL_SER | BILL_SER (BILL_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  | PK |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER, | اختياري |  |  |
| SC_A_CY | SC_A_CY (SC_A_CY) | VARCHAR2(7))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## OUTGOING_ACCOUNTS (OUTGOING_ACCOUNTS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| OUT_TYPE | OUT_TYPE (OUT_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| WHG_CODE | WHG_CODE (WHG_CODE) | NUMBER(10, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| OUT_RES | OUT_RES (OUT_RES) | NUMBER(1, 0), | اختياري |  |  |

## PMS_COD_PROJECTS_ADD_FLDS (PMS_COD_PROJECTS_ADD_FLDS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GROUP_NO | GROUP_NO (GROUP_NO) | NUMBER(5, 0) NOT NULL ENABLE | إجباري |  | PK |
| FILED_NO | FILED_NO (FILED_NO) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  | PK |
| LANG_NO | LANG_NO (LANG_NO) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  | PK |
| TRNS_FLG | TRNS_FLG (TRNS_FLG) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | إجباري |  |  |

## PO_FUP (PO_FUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PO_NO | PO_NO (PO_NO) | NUMBER(15, 0), | اختياري |  |  |
| FUPDESC | FUPDESC (FUPDESC) | VARCHAR2(200), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| VIEW_FLAG | VIEW_FLAG (VIEW_FLAG) | NUMBER(1, 0), | اختياري |  |  |
| VRFY_FLAG | VRFY_FLAG (VRFY_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## PRIVILEGE_CC (PRIVILEGE_CC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## PRIVILEGE_FIXED (PRIVILEGE_FIXED)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| PMANUAL | PMANUAL (PMANUAL) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_AR_REP_DAY | SHOW_AR_REP_DAY (SHOW_AR_REP_DAY) | NUMBER(5, 0), | اختياري |  |  |
| ALLOW_ENTER_ZERO_COST | ALLOW_ENTER_ZERO_COST (ALLOW_ENTER_ZERO_COST) | NUMBER(1, 0), | اختياري |  |  |
| CHECK_CREDIT_PERIOD | CHECK_CREDIT_PERIOD (CHECK_CREDIT_PERIOD) | NUMBER(1, 0), | اختياري |  |  |
| PAY_VCHR_MST_AC_PRV | PAY_VCHR_MST_AC_PRV (PAY_VCHR_MST_AC_PRV) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_MOD_FLD_NAME | ALLOW_MOD_FLD_NAME (ALLOW_MOD_FLD_NAME) | NUMBER(1, 0), | اختياري |  |  |
| CHECK_RET_PER | CHECK_RET_PER (CHECK_RET_PER) | NUMBER(1, 0), | اختياري |  |  |
| CHK_PRIV_CCS_ASTMNT | CHK_PRIV_CCS_ASTMNT (CHK_PRIV_CCS_ASTMNT) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_PRNTDOC_BFR_AUDIT_REF | ALLOW_PRNTDOC_BFR_AUDIT_REF (ALLOW_PRNTDOC_BFR_AUDIT_REF) | NUMBER(1, 0), | اختياري |  |  |
| USE_INSTALL_JV | USE_INSTALL_JV (USE_INSTALL_JV) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_SHOW_JRNL | ALLOW_SHOW_JRNL (ALLOW_SHOW_JRNL) | NUMBER(1, 0), | اختياري |  |  |
| CHK_PRIV_ACTV_ASTMNT | CHK_PRIV_ACTV_ASTMNT (CHK_PRIV_ACTV_ASTMNT) | NUMBER(1, 0), | اختياري |  |  |
| EXCD_AMT_CNTRCT_IN_BILL | EXCD_AMT_CNTRCT_IN_BILL (EXCD_AMT_CNTRCT_IN_BILL) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_DEL_ITM_FROM_POS_BILL | ALLOW_DEL_ITM_FROM_POS_BILL (ALLOW_DEL_ITM_FROM_POS_BILL) | NUMBER(1, 0), | اختياري |  |  |
| AR_ALLOW_SALES_PRV_DR | AR_ALLOW_SALES_PRV_DR (AR_ALLOW_SALES_PRV_DR) | NUMBER(1, 0), | اختياري |  |  |
| USE_BALANCED_ACY_JV | USE_BALANCED_ACY_JV (USE_BALANCED_ACY_JV) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_CHANGE_POS_QTY | ALLOW_CHANGE_POS_QTY (ALLOW_CHANGE_POS_QTY) | NUMBER(1, 0), | اختياري |  |  |
| PLIMIT_PER | PLIMIT_PER (PLIMIT_PER) | NUMBER, | اختياري |  |  |
| USE_UNDO_CTRLU | USE_UNDO_CTRLU (USE_UNDO_CTRLU) | NUMBER(1, 0), | اختياري |  |  |
| NOT_ALLW_MOD_DTL_DOC_AFTR_SAVE | NOT_ALLW_MOD_DTL_DOC_AFTR_SAVE (NOT_ALLW_MOD_DTL_DOC_AFTR_SAVE) | NUMBER(1, 0), | اختياري |  |  |
| SHW_AMT_QTY_STATC_AR_REP | SHW_AMT_QTY_STATC_AR_REP (SHW_AMT_QTY_STATC_AR_REP) | NUMBER(1, 0), | اختياري |  |  |
| AR_ENTR_PRICE_MANUAL_SR | AR_ENTR_PRICE_MANUAL_SR (AR_ENTR_PRICE_MANUAL_SR) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_FILL_SERIALNO | ALLOW_FILL_SERIALNO (ALLOW_FILL_SERIALNO) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_MOD_PRCNT_PRICE_FROM_CST | ALLOW_MOD_PRCNT_PRICE_FROM_CST (ALLOW_MOD_PRCNT_PRICE_FROM_CST) | NUMBER(1, 0), | اختياري |  |  |
| AR_AUTO_PRNT_SI_AFTR_SAVE | AR_AUTO_PRNT_SI_AFTR_SAVE (AR_AUTO_PRNT_SI_AFTR_SAVE) | NUMBER(1, 0), | اختياري |  |  |
| USR_SHW_MSG_B4SAVE | USR_SHW_MSG_B4SAVE (USR_SHW_MSG_B4SAVE) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_UPD_STANDBY_SI_ONLY | ALLW_UPD_STANDBY_SI_ONLY (ALLW_UPD_STANDBY_SI_ONLY) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_UPD_CST_SEQ | ALLW_UPD_CST_SEQ (ALLW_UPD_CST_SEQ) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_UPD_VAT_PER | ALLOW_UPD_VAT_PER (ALLOW_UPD_VAT_PER) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_EXCD_VNDR_PRICE | ALLOW_EXCD_VNDR_PRICE (ALLOW_EXCD_VNDR_PRICE) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_CHNG_DLVRY_SRVC_AMT | ALLW_CHNG_DLVRY_SRVC_AMT (ALLW_CHNG_DLVRY_SRVC_AMT) | NUMBER, | اختياري |  |  |
| ALLW_CHNG_RNT_PRICE | ALLW_CHNG_RNT_PRICE (ALLW_CHNG_RNT_PRICE) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_OUT_PTNT_NO_ORDR_EXC | ALLOW_OUT_PTNT_NO_ORDR_EXC (ALLOW_OUT_PTNT_NO_ORDR_EXC) | NUMBER(1, 0), | اختياري |  |  |
| ALLOW_UPD_PYMNT_IN_ADMT | ALLOW_UPD_PYMNT_IN_ADMT (ALLOW_UPD_PYMNT_IN_ADMT) | NUMBER(1, 0), | اختياري |  |  |
| USE_STAFF_FEEDING_RMS_INVC | USE_STAFF_FEEDING_RMS_INVC (USE_STAFF_FEEDING_RMS_INVC) | NUMBER(1, 0), | اختياري |  |  |
| USE_HSPTLTY_RMS_INVC | USE_HSPTLTY_RMS_INVC (USE_HSPTLTY_RMS_INVC) | NUMBER(1, 0), | اختياري |  |  |
| NOT_ALLOW_UP_C_CODE_PTNT_BILLS | NOT_ALLOW_UP_C_CODE_PTNT_BILLS (NOT_ALLOW_UP_C_CODE_PTNT_BILLS) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_PRNT_LAST_BILL | ALLW_PRNT_LAST_BILL (ALLW_PRNT_LAST_BILL) | NUMBER, | اختياري |  |  |
| ALLOW_OUT_BILL_CST_LRGR_BLNC | ALLOW_OUT_BILL_CST_LRGR_BLNC (ALLOW_OUT_BILL_CST_LRGR_BLNC) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_DCTR_PRCNT_IN_BILL | SHOW_DCTR_PRCNT_IN_BILL (SHOW_DCTR_PRCNT_IN_BILL) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_UPD_STK_EX_RATE_IN_TRNS | ALLW_UPD_STK_EX_RATE_IN_TRNS (ALLW_UPD_STK_EX_RATE_IN_TRNS) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_PRICE_IN_OUTBILL | SHOW_PRICE_IN_OUTBILL (SHOW_PRICE_IN_OUTBILL) | NUMBER(1, 0), | اختياري |  |  |
| SHOW_AVL_QTY_IN_MAN_INV | SHOW_AVL_QTY_IN_MAN_INV (SHOW_AVL_QTY_IN_MAN_INV) | NUMBER(1, 0), | اختياري |  |  |
| CHK_BLNC_PTNT_ADMT_CSH_IN_BILL | CHK_BLNC_PTNT_ADMT_CSH_IN_BILL (CHK_BLNC_PTNT_ADMT_CSH_IN_BILL) | NUMBER(1, 0), | اختياري |  |  |
| REM_ALLW_UPDT_VCHR_DSC | REM_ALLW_UPDT_VCHR_DSC (REM_ALLW_UPDT_VCHR_DSC) | NUMBER(1, 0), | اختياري |  |  |
| GLS_SHW_BLNC_IN_TRNS | GLS_SHW_BLNC_IN_TRNS (GLS_SHW_BLNC_IN_TRNS) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_DEL_DOC_AFTR_PRNT | ALLW_DEL_DOC_AFTR_PRNT (ALLW_DEL_DOC_AFTR_PRNT) | NUMBER(1, 0), | اختياري |  |  |
| MRP_MPS_ISU_EXTRNL_WO | MRP_MPS_ISU_EXTRNL_WO (MRP_MPS_ISU_EXTRNL_WO) | NUMBER(1, 0), | اختياري |  |  |
| MRP_SFC_ISU_EXTRNL_TRN | MRP_SFC_ISU_EXTRNL_TRN (MRP_SFC_ISU_EXTRNL_TRN) | NUMBER(1, 0), | اختياري |  |  |
| MRP_SFC_PR_MRQ_APPROVE | MRP_SFC_PR_MRQ_APPROVE (MRP_SFC_PR_MRQ_APPROVE) | NUMBER(1, 0), | اختياري |  |  |
| MRP_SFC_PR_SFC_APPROVE | MRP_SFC_PR_SFC_APPROVE (MRP_SFC_PR_SFC_APPROVE) | NUMBER(1, 0), | اختياري |  |  |
| MRP_SFC_PR_MRT_APPROVE | MRP_SFC_PR_MRT_APPROVE (MRP_SFC_PR_MRT_APPROVE) | NUMBER(1, 0), | اختياري |  |  |
| RMS_ALLW_MINUS_CHF_QTY | RMS_ALLW_MINUS_CHF_QTY (RMS_ALLW_MINUS_CHF_QTY) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_UPDT_PO_TO_BILL_TYP | ALLW_UPDT_PO_TO_BILL_TYP (ALLW_UPDT_PO_TO_BILL_TYP) | NUMBER, | اختياري |  |  |
| PUR_BY_PUR_UNIT_ONLY | PUR_BY_PUR_UNIT_ONLY (PUR_BY_PUR_UNIT_ONLY) | NUMBER, | اختياري |  |  |
| ALLW_SAL_NEW_EXPDATE | ALLW_SAL_NEW_EXPDATE (ALLW_SAL_NEW_EXPDATE) | NUMBER(1, 0), | اختياري |  |  |
| SHW_STKCST_PRFT_MRGN_SAL | SHW_STKCST_PRFT_MRGN_SAL (SHW_STKCST_PRFT_MRGN_SAL) | NUMBER(1, 0), | اختياري |  |  |
| SRCH_ITM_CRTRIA | SRCH_ITM_CRTRIA (SRCH_ITM_CRTRIA) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_FILL_ALL_ITM_TO_RTBILL | ALLW_FILL_ALL_ITM_TO_RTBILL (ALLW_FILL_ALL_ITM_TO_RTBILL) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_EXCD_LMT_SAL_ITM | ALLW_EXCD_LMT_SAL_ITM (ALLW_EXCD_LMT_SAL_ITM) | NUMBER(1, 0), | اختياري |  |  |
| GLS_ALLW_UPDT_REPRS_COMM | GLS_ALLW_UPDT_REPRS_COMM (GLS_ALLW_UPDT_REPRS_COMM) | NUMBER(1, 0), | اختياري |  |  |
| MRP_VARY_PRDCT_CST_PRIV | MRP_VARY_PRDCT_CST_PRIV (MRP_VARY_PRDCT_CST_PRIV) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_PRNT_PRICE_WITH_TAX | ALLW_PRNT_PRICE_WITH_TAX (ALLW_PRNT_PRICE_WITH_TAX) | NUMBER(1, 0), | اختياري |  |  |
| ALLW_DECRS_QTY | ALLW_DECRS_QTY (ALLW_DECRS_QTY) | NUMBER, | اختياري |  |  |

## PRIVILEGE_GC (PRIVILEGE_GC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## PRIVILEGE_WH (PRIVILEGE_WH)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## PRIV_ACC (PRIV_ACC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## PRIV_CASH (PRIV_CASH)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## PRIV_INCOME_TYPE (PRIV_INCOME_TYPE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ADD_FLAG | ADD_FLAG (ADD_FLAG) | NUMBER(1, 0), | اختياري |  |  |

## PRIV_OUT_TYPE (PRIV_OUT_TYPE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## PRIV_REQ_TYPE (PRIV_REQ_TYPE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |

## PRIV_TRNSFR_TYPE (PRIV_TRNSFR_TYPE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## P_ORDER (P_ORDER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PO_TYPE | PO_TYPE (PO_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| PO_DESC | PO_DESC (PO_DESC) | VARCHAR2(250), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| PLACE_DELIVERY | PLACE_DELIVERY (PLACE_DELIVERY) | VARCHAR2(250), | اختياري |  |  |
| NEED_CHECK_QTY | NEED_CHECK_QTY (NEED_CHECK_QTY) | NUMBER(1, 0), | اختياري |  |  |
| PO_DOC_TYPE | PO_DOC_TYPE (PO_DOC_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| DISC_AMT_DTL | DISC_AMT_DTL (DISC_AMT_DTL) | NUMBER, | اختياري |  |  |
| BILL_NO_V_CODE | BILL_NO_V_CODE (BILL_NO_V_CODE) | VARCHAR2(20), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(1000), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## P_ORDER_DETAIL (P_ORDER_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PO_TYPE | PO_TYPE (PO_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_QTY | I_QTY (I_QTY) | NUMBER, | إجباري |  |  |
| LAST_INCOME_PRICE | LAST_INCOME_PRICE (LAST_INCOME_PRICE) | NUMBER, | اختياري |  |  |
| DIS_AMT | DIS_AMT (DIS_AMT) | NUMBER, | اختياري |  |  |
| DIS_PER2 | DIS_PER2 (DIS_PER2) | NUMBER(20, 17), | اختياري |  |  |
| DIS_AMT_DTL3 | DIS_AMT_DTL3 (DIS_AMT_DTL3) | NUMBER, | اختياري |  |  |
| BILL_PRV_QTY | BILL_PRV_QTY (BILL_PRV_QTY) | NUMBER, | اختياري |  |  |
| PJ_NO | PJ_NO (PJ_NO) | VARCHAR2(15), | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | إجباري |  |  |
| PKG_LENGTH | PKG_LENGTH (PKG_LENGTH) | NUMBER, | اختياري |  |  |
| PKG_WEIGHT | PKG_WEIGHT (PKG_WEIGHT) | NUMBER, | اختياري |  |  |
| DOC_SEQUENCE_REF | DOC_SEQUENCE_REF (DOC_SEQUENCE_REF) | NUMBER(38, 0), | اختياري |  |  |
| SALE_PRICE | SALE_PRICE (SALE_PRICE) | NUMBER, | اختياري |  |  |

## P_ORDER_DETAIL_BKTMP (P_ORDER_DETAIL_BKTMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PO_NO | PO_NO (PO_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(5, 0), | اختياري |  |  |
| ITEM_DESC | ITEM_DESC (ITEM_DESC) | VARCHAR2(1000), | اختياري |  |  |
| REC_ATTCH | REC_ATTCH (REC_ATTCH) | NUMBER(10, 0), | اختياري |  |  |
| DOC_SEQUENCE_PRQ | DOC_SEQUENCE_PRQ (DOC_SEQUENCE_PRQ) | NUMBER(38, 0), | اختياري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| I_NUMBER | I_NUMBER (I_NUMBER) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL | DIS_AMT_DTL (DIS_AMT_DTL) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL3 | DIS_AMT_DTL3 (DIS_AMT_DTL3) | NUMBER, | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| I_PRICE_VAT | I_PRICE_VAT (I_PRICE_VAT) | NUMBER, | اختياري |  |  |
| DLVRY_DATE | DLVRY_DATE (DLVRY_DATE) | DATE, | اختياري |  |  |
| PKG_WEIGHT | PKG_WEIGHT (PKG_WEIGHT) | NUMBER, | اختياري |  |  |
| DOC_SEQUENCE_REF | DOC_SEQUENCE_REF (DOC_SEQUENCE_REF) | NUMBER(38, 0), | اختياري |  |  |
| HRCHY_NO | HRCHY_NO (HRCHY_NO) | NUMBER(20, 0), | اختياري |  |  |
| REQ_AVL_DATE | REQ_AVL_DATE (REQ_AVL_DATE) | DATE, | اختياري |  |  |
| ASSGN_TO_U_ID | ASSGN_TO_U_ID (ASSGN_TO_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| OUT_REQ_TYPE | OUT_REQ_TYPE (OUT_REQ_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| USE_AUTO_SYNC_VNDR | USE_AUTO_SYNC_VNDR (USE_AUTO_SYNC_VNDR) | NUMBER(1, 0), | اختياري |  |  |

## P_REQUEST_DETAIL (P_REQUEST_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PR_TYPE | PR_TYPE (PR_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| AVL_QTY_ALL | AVL_QTY_ALL (AVL_QTY_ALL) | NUMBER, | اختياري |  |  |
| LAST_INCOME_PRICE | LAST_INCOME_PRICE (LAST_INCOME_PRICE) | NUMBER, | اختياري |  |  |
| OUT_REQ_SER | OUT_REQ_SER (OUT_REQ_SER) | NUMBER(38, 0), | اختياري |  |  |
| POQTY | POQTY (POQTY) | NUMBER, | اختياري |  |  |
| LAST_EXP_DATE | LAST_EXP_DATE (LAST_EXP_DATE) | DATE, | اختياري |  |  |
| ARGMNT_NO | ARGMNT_NO (ARGMNT_NO) | NUMBER, | اختياري |  |  |
| DOC_TYP_REF | DOC_TYP_REF (DOC_TYP_REF) | NUMBER(5, 0), | اختياري |  |  |

## QUOTATION (QUOTATION)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| QT_TYPE | QT_TYPE (QT_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| REF_DATE | REF_DATE (REF_DATE) | DATE, | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| SI_TYPE | SI_TYPE (SI_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| QUOT_EXPIRE_DATE | QUOT_EXPIRE_DATE (QUOT_EXPIRE_DATE) | DATE, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(250), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| DOC_SER_EXTRNL | DOC_SER_EXTRNL (DOC_SER_EXTRNL) | VARCHAR2(256), | اختياري |  |  |
| CNTRCT_NO | CNTRCT_NO (CNTRCT_NO) | VARCHAR2(30), | اختياري |  |  |

## QUOTATION_DETAIL (QUOTATION_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| QT_TYPE | QT_TYPE (QT_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| P_SIZE | P_SIZE (P_SIZE) | NUMBER NOT NULL ENABLE, | إجباري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL | DIS_AMT_DTL (DIS_AMT_DTL) | NUMBER, | اختياري |  |  |
| DIS_AMT_DTL3 | DIS_AMT_DTL3 (DIS_AMT_DTL3) | NUMBER, | اختياري |  |  |
| DIS_AMT_MST_VAT | DIS_AMT_MST_VAT (DIS_AMT_MST_VAT) | NUMBER, | اختياري |  |  |
| VAT_AMT_BFR_DIS | VAT_AMT_BFR_DIS (VAT_AMT_BFR_DIS) | NUMBER, | اختياري |  |  |
| FIELD_DTL3 | FIELD_DTL3 (FIELD_DTL3) | VARCHAR2(60), | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0), | إجباري |  |  |
| DOC_NO_REF | DOC_NO_REF (DOC_NO_REF) | NUMBER(15, 0), | اختياري |  |  |
| FREE_TYP | FREE_TYP (FREE_TYP) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## Region (REGIONS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| R_CODE | R_CODE (R_CODE) | NUMBER(10, 0), | إجباري |  | PK |
| R_E_NAME | R_E_NAME (R_E_NAME) | VARCHAR2(100), | اختياري |  |  |
| INV_ITEM | INV_ITEM (INV_ITEM) | NUMBER(1, 0), | اختياري |  |  |
| POSTED_TO_SALES | POSTED_TO_SALES (POSTED_TO_SALES) | NUMBER(1, 0), | اختياري |  |  |
| AMT_TYP_VAL | AMT_TYP_VAL (AMT_TYP_VAL) | NUMBER(1, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| SC_ADD_FRC_INVOICE | SC_ADD_FRC_INVOICE (SC_ADD_FRC_INVOICE) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## SALES_CHARGES_ITEMS (SALES_CHARGES_ITEMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SC_NO | SC_NO (SC_NO) | NUMBER(3, 0), | اختياري |  |  |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10), | اختياري |  | PK |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER, | اختياري |  |  |
| T_DATE | T_DATE (T_DATE) | DATE, | اختياري |  |  |
| T_QTY | T_QTY (T_QTY) | NUMBER, | اختياري |  |  |
| R_NOTE | R_NOTE (R_NOTE) | VARCHAR2(100), | اختياري |  |  |
| G_EXPIRE_DATE | G_EXPIRE_DATE (G_EXPIRE_DATE) | DATE, | اختياري |  |  |
| G_FIN_CENTER | G_FIN_CENTER (G_FIN_CENTER) | VARCHAR2(60), | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| ALLW_FILE_SHARE | ALLW_FILE_SHARE (ALLW_FILE_SHARE) | NUMBER(1, 0), | اختياري |  |  |
| NOT_ALLW_ENTR_RTRN_SAL | NOT_ALLW_ENTR_RTRN_SAL (NOT_ALLW_ENTR_RTRN_SAL) | NUMBER(1, 0), | اختياري |  |  |
| CASH_AMT_DAILY_LMT | CASH_AMT_DAILY_LMT (CASH_AMT_DAILY_LMT) | NUMBER, | اختياري |  |  |

## SALES_ORDER (SALES_ORDER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SO_TYPE | SO_TYPE (SO_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| QUOT_NO | QUOT_NO (QUOT_NO) | NUMBER(15, 0), | إجباري |  |  |
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | اختياري |  |  |
| DISC_AMT | DISC_AMT (DISC_AMT) | NUMBER, | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| DELIVERY_DATE | DELIVERY_DATE (DELIVERY_DATE) | DATE, | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| PAPER_NO | PAPER_NO (PAPER_NO) | NUMBER, | اختياري |  |  |
| PROCESS_INC_FLG | PROCESS_INC_FLG (PROCESS_INC_FLG) | NUMBER(1, 0), | اختياري |  |  |
| APPROVED_SALES_MNG | APPROVED_SALES_MNG (APPROVED_SALES_MNG) | NUMBER(1, 0), | اختياري |  |  |
| APRV_SALES_MNG_DATE | APRV_SALES_MNG_DATE (APRV_SALES_MNG_DATE) | DATE, | اختياري |  |  |
| VAT_AMT | VAT_AMT (VAT_AMT) | NUMBER, | اختياري |  |  |
| SI_TYPE | SI_TYPE (SI_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(250), | اختياري |  |  |
| INSRNCE_BNF_NO | INSRNCE_BNF_NO (INSRNCE_BNF_NO) | NUMBER(5, 0), | اختياري |  |  |
| INSRNCE_CLSS_NO | INSRNCE_CLSS_NO (INSRNCE_CLSS_NO) | VARCHAR2(5), | اختياري |  |  |
| INSRNCE_CSH_AMT | INSRNCE_CSH_AMT (INSRNCE_CSH_AMT) | NUMBER, | اختياري |  |  |
| C_MOBILE | C_MOBILE (C_MOBILE) | VARCHAR2(30), | اختياري |  |  |
| LONGITUDE | LONGITUDE (LONGITUDE) | VARCHAR2(20), | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| TARE_WGHT | TARE_WGHT (TARE_WGHT) | NUMBER, | اختياري |  |  |
| CLC_VAT_PRICE_TYP | CLC_VAT_PRICE_TYP (CLC_VAT_PRICE_TYP) | NUMBER(1, 0), | اختياري |  |  |
| MOBILE_NO | MOBILE_NO (MOBILE_NO) | NUMBER(20, 0), | اختياري |  |  |
| CST_SPCLST_NM | CST_SPCLST_NM (CST_SPCLST_NM) | VARCHAR2(200), | اختياري |  |  |
| DCTR_NO | DCTR_NO (DCTR_NO) | VARCHAR2(15), | اختياري |  |  |
| DOC_SRL_ADMSON | DOC_SRL_ADMSON (DOC_SRL_ADMSON) | NUMBER(38, 0), | اختياري |  |  |
| CST_ACCPT_U_ID | CST_ACCPT_U_ID (CST_ACCPT_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| PROCESS_REQ_AUTO | PROCESS_REQ_AUTO (PROCESS_REQ_AUTO) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## SALE_COST (SALE_COST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_TYPE | BILL_TYPE (BILL_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| ITM_UNT | ITM_UNT (ITM_UNT) | VARCHAR2(10) NOT NULL ENABLE, | إجباري |  |  |
| I_COST | I_COST (I_COST) | NUMBER, | اختياري |  |  |
| DOC_SEQUENCE_GR | DOC_SEQUENCE_GR (DOC_SEQUENCE_GR) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  |  |
| WHG_CODE | WHG_CODE (WHG_CODE) | NUMBER(10, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | إجباري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |

## STK_ADJUSTMENT (STK_ADJUSTMENT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| STK_TYPE | STK_TYPE (STK_TYPE) | NUMBER(5, 0), | اختياري |  |  |
| HUNG | HUNG (HUNG) | NUMBER(1, 0), | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| AC_DTL_TYP | AC_DTL_TYP (AC_DTL_TYP) | NUMBER(2, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## STK_ADJUSTMENT_DET (STK_ADJUSTMENT_DET)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ADJUST_TYPE | ADJUST_TYPE (ADJUST_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| DOC_TYPE_REF | DOC_TYPE_REF (DOC_TYPE_REF) | NUMBER(2, 0), | اختياري |  |  |
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | اختياري |  |  |
| I_LENGTH | I_LENGTH (I_LENGTH) | NUMBER, | اختياري |  |  |

## PosCoupon (STN_BILL_COUPON)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER, | اختياري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| CUNTR_NO | CUNTR_NO (CUNTR_NO) | NUMBER(10, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## STN_BILL_CRDT (STN_BILL_CRDT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER, | اختياري |  |  |
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## STN_BILL_DTL (STN_BILL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| DISC_AMT_MST | DISC_AMT_MST (DISC_AMT_MST) | NUMBER, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |

## STN_BILL_MST (STN_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| CUR_RATE | CUR_RATE (CUR_RATE) | NUMBER, | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(250), | اختياري |  |  |
| DEC_AMT | DEC_AMT (DEC_AMT) | NUMBER, | اختياري |  |  |
| DISC_AMT | DISC_AMT (DISC_AMT) | NUMBER, | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |

## STN_BILL_PAY_CSH (STN_BILL_PAY_CSH)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| ACY_CTGRY | ACY_CTGRY (ACY_CTGRY) | NUMBER, | اختياري |  |  |

## PosTerminal (STN_COUNTERS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUNTR_NO | CUNTR_NO (CUNTR_NO) | NUMBER(10, 0), | اختياري |  | PK |
| CUNTR_F_NM | CUNTR_F_NM (CUNTR_F_NM) | VARCHAR2(60), | اختياري |  |  |
| PRIMARY_READ | PRIMARY_READ (PRIMARY_READ) | NUMBER, | إجباري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## STN_COUNTERS_EMP (STN_COUNTERS_EMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CUNTR_NO | CUNTR_NO (CUNTR_NO) | NUMBER(10, 0), | اختياري |  | PK |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| CPN_NO_PY | CPN_NO_PY (CPN_NO_PY) | NUMBER(15, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## STN_CPN_SLS_DTL (STN_CPN_SLS_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| I_PRICE | I_PRICE (I_PRICE) | NUMBER, | اختياري |  |  |
| CPN_DSC | CPN_DSC (CPN_DSC) | VARCHAR2(500), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| CPN_NO | CPN_NO (CPN_NO) | NUMBER(20, 0) NOT NULL ENABLE, | إجباري |  |  |

## STN_CPN_SLS_MST (STN_CPN_SLS_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_DOC_TYPE | BILL_DOC_TYPE (BILL_DOC_TYPE) | NUMBER(2, 0) NOT NULL ENABLE, | إجباري |  |  |
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| STAND_BY | STAND_BY (STAND_BY) | NUMBER(1, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| FUEL_TYP_NO | FUEL_TYP_NO (FUEL_TYP_NO) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_DATE | AUDIT_REF_DATE (AUDIT_REF_DATE) | DATE, | اختياري |  |  |

## STN_CRDT_BILL_DTL (STN_CRDT_BILL_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| BILL_NO | BILL_NO (BILL_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| DOC_SER_PY | DOC_SER_PY (DOC_SER_PY) | NUMBER(38, 0), | إجباري |  |  |
| FUEL_TYP_NO | FUEL_TYP_NO (FUEL_TYP_NO) | NUMBER(5, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## STN_CRDT_BILL_MST (STN_CRDT_BILL_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_SER | DOC_SER (DOC_SER) | NUMBER(38, 0) NOT NULL ENABLE, | إجباري |  | PK |

## STN_FUEL_TYP (STN_FUEL_TYP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FUEL_TYP_NO | FUEL_TYP_NO (FUEL_TYP_NO) | NUMBER(5, 0), | اختياري |  | PK |
| FUEL_TYP_F_NM | FUEL_TYP_F_NM (FUEL_TYP_F_NM) | VARCHAR2(60), | اختياري |  |  |
| J_DOC_SER | J_DOC_SER (J_DOC_SER) | NUMBER, | إجباري |  |  |
| AC_CODE_DTL | AC_CODE_DTL (AC_CODE_DTL) | VARCHAR2(30), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | إجباري |  |  |

## STN_OUTGOING_DTL (STN_OUTGOING_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(15, 0), | اختياري |  |  |
| OUT_TYPE | OUT_TYPE (OUT_TYPE) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| CUNTR_NO | CUNTR_NO (CUNTR_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| PUR_TYPE | PUR_TYPE (PUR_TYPE) | NUMBER, | اختياري |  |  |

## STN_PRD (STN_PRD)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_NO | PRD_NO (PRD_NO) | NUMBER(5, 0), | اختياري |  | PK |
| TR_A_CODE | TR_A_CODE (TR_A_CODE) | VARCHAR2(30), | اختياري |  |  |
| BATCH_NO | BATCH_NO (BATCH_NO) | VARCHAR2(30), | اختياري |  |  |
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | إجباري |  |  |

## CustomerAddress (SUB_CUSTOMER)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(15), | اختياري |  |  |
| SUB_C_L_NM | SUB_C_L_NM (SUB_C_L_NM) | VARCHAR2(100), | اختياري |  |  |
| JOB_NAME | JOB_NAME (JOB_NAME) | VARCHAR2(100), | اختياري |  |  |
| CITY_NO | CITY_NO (CITY_NO) | NUMBER(10, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | اختياري |  |  |
| CARD_NO | CARD_NO (CARD_NO) | VARCHAR2(60), | اختياري |  |  |
| MEASUR_DATE | MEASUR_DATE (MEASUR_DATE) | DATE, | اختياري |  |  |

## S_ALRT_DATA_TMP (S_ALRT_DATA_TMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ALRT_NO | ALRT_NO (ALRT_NO) | NUMBER(15, 0), | اختياري |  |  |
| ALRT_SLCT_DTL | ALRT_SLCT_DTL (ALRT_SLCT_DTL) | VARCHAR2(4000), | اختياري |  |  |
| FLD_DIR | FLD_DIR (FLD_DIR) | VARCHAR2(250), | اختياري |  |  |
| ALRT_PRD_TYP | ALRT_PRD_TYP (ALRT_PRD_TYP) | NUMBER(1, 0), | اختياري |  |  |

## S_ALRT_SYS_DTL (S_ALRT_SYS_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ALRT_NO | ALRT_NO (ALRT_NO) | NUMBER(15, 0), | اختياري |  | PK |
| DECODE | DECODE (DECODE) | ( | اختياري |  |  |
| SYS_NO | SYS_NO (SYS_NO) | NUMBER(5, 0), | اختياري |  |  |
| ALRT_PRD_TYP | ALRT_PRD_TYP (ALRT_PRD_TYP) | NUMBER(1, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(6, 0), | اختياري |  |  |
| ALRT_ST | ALRT_ST (ALRT_ST) | NUMBER(1, 0), | اختياري |  |  |
| ALRT_HIDE_WHR | ALRT_HIDE_WHR (ALRT_HIDE_WHR) | VARCHAR2(4000), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## S_APPROVL_APP_DVC (S_APPROVL_APP_DVC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(30, 0) NOT NULL ENABLE, | إجباري |  | PK |
| APPROVED | APPROVED (APPROVED) | NUMBER(1, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## S_APPRVD_LVL (S_APPRVD_LVL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ORDR_NO | ORDR_NO (ORDR_NO) | NUMBER(4, 0), | إجباري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## S_APPRVD_SHW_DOC (S_APPRVD_SHW_DOC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0), | اختياري |  | PK |
| DOC_SLCT | DOC_SLCT (DOC_SLCT) | VARCHAR2(3000), | اختياري |  |  |
| DOC_SLCT_ORDR | DOC_SLCT_ORDR (DOC_SLCT_ORDR) | VARCHAR2(1000), | اختياري |  |  |
| DOC_SLCT | DOC_SLCT (DOC_SLCT) | VARCHAR2(3000), | اختياري |  |  |
| DOC_SLCT_ORDR | DOC_SLCT_ORDR (DOC_SLCT_ORDR) | VARCHAR2(1000), | اختياري |  |  |
| BRN_PARENT | BRN_PARENT (BRN_PARENT) | NUMBER(3, 0), | اختياري |  |  |
| CMP_FNAME | CMP_FNAME (CMP_FNAME) | VARCHAR2(100), | إجباري |  |  |
| IDNFNT_SCL_SCRTY_NO | IDNFNT_SCL_SCRTY_NO (IDNFNT_SCL_SCRTY_NO) | VARCHAR2(60), | اختياري |  |  |
| AGNCY_SCL_SCRTY_NM | AGNCY_SCL_SCRTY_NM (AGNCY_SCL_SCRTY_NM) | VARCHAR2(100), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| PL_CLS_DATE | PL_CLS_DATE (PL_CLS_DATE) | DATE, | اختياري |  |  |
| PL_CLS_AMT | PL_CLS_AMT (PL_CLS_AMT) | NUMBER, | اختياري |  |  |

## S_BRN_DOCS (S_BRN_DOCS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CODE_NO | CODE_NO (CODE_NO) | NUMBER(10, 0), | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(60), | اختياري |  |  |
| FIELD9 | FIELD9 (FIELD9) | VARCHAR2(60), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER, | اختياري |  |  |

## S_BRN_GRPS (S_BRN_GRPS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GRP_NO | GRP_NO (GRP_NO) | NUMBER(5, 0), | اختياري |  | PK |

## S_CMPNY (S_CMPNY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0), | إجباري |  | PK |
| CMP_FNAME | CMP_FNAME (CMP_FNAME) | VARCHAR2(40), | اختياري |  |  |
| WEB_CONN | WEB_CONN (WEB_CONN) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_CODE_SEND_MSG (S_CODE_SEND_MSG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| RCRD_NO | RCRD_NO (RCRD_NO) | NUMBER(10, 0), | اختياري |  | PK |
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| INACTV_RSON | INACTV_RSON (INACTV_RSON) | VARCHAR2(250), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## S_CONN_CNTCT (S_CONN_CNTCT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CONN_CNTCT_NO | CONN_CNTCT_NO (CONN_CNTCT_NO) | NUMBER(5, 0), | اختياري |  |  |
| PR_REP | PR_REP (PR_REP) | NUMBER(10, 0), | اختياري |  |  |

## S_CST_HND_DVC (S_CST_HND_DVC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| C_CODE | C_CODE (C_CODE) | VARCHAR2(30), | اختياري |  |  |
| HND_DVC_SRL | HND_DVC_SRL (HND_DVC_SRL) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## S_DDC_SCR_DTL (S_DDC_SCR_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FORM_NO | FORM_NO (FORM_NO) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| FLG_LST_WHR | FLG_LST_WHR (FLG_LST_WHR) | VARCHAR2(500), | اختياري |  |  |
| LST_COL_NM | LST_COL_NM (LST_COL_NM) | VARCHAR2(30), | اختياري |  |  |
| FLD_UPD | FLD_UPD (FLD_UPD) | NUMBER(1, 0), | اختياري |  |  |

## S_DIR_CONN (S_DIR_CONN)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| S_TYPE | S_TYPE (S_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| DIR_CODE_EXTRNL | DIR_CODE_EXTRNL (DIR_CODE_EXTRNL) | VARCHAR2(30), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_DOC_MSG_ALRT (S_DOC_MSG_ALRT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0), | اختياري |  | PK |
| ALRT_FLG | ALRT_FLG (ALRT_FLG) | NUMBER(2, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_DOC_TYP_AC_DTL_MSG (S_DOC_TYP_AC_DTL_MSG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0), | اختياري |  | PK |
| MSG_TXT | MSG_TXT (MSG_TXT) | VARCHAR2(4000), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| MSG_TXT_SPCL_FLG | MSG_TXT_SPCL_FLG (MSG_TXT_SPCL_FLG) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 917504 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_DOC_TYP_MSG (S_DOC_TYP_MSG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_TYP | DOC_TYP (DOC_TYP) | NUMBER(5, 0), | اختياري |  | PK |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## Employee (S_EMP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | إجباري |  | PK |
| EMP_F_NM | EMP_F_NM (EMP_F_NM) | VARCHAR2(60), | اختياري |  |  |
| FRST_L_NM | FRST_L_NM (FRST_L_NM) | VARCHAR2(50) NOT NULL ENABLE, | إجباري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| NTNLTY_NO | NTNLTY_NO (NTNLTY_NO) | NUMBER(10, 0), | اختياري |  |  |
| EMP_LANG_NO | EMP_LANG_NO (EMP_LANG_NO) | NUMBER(10, 0), | اختياري |  |  |
| BRTH_PLC | BRTH_PLC (BRTH_PLC) | VARCHAR2(60), | اختياري |  |  |
| RTRMNT_PYMNT_PAID | RTRMNT_PYMNT_PAID (RTRMNT_PYMNT_PAID) | NUMBER(1, 0), | اختياري |  |  |
| RLTV_L_NM | RLTV_L_NM (RLTV_L_NM) | VARCHAR2(100), | اختياري |  |  |
| CRD_EXP_DATE | CRD_EXP_DATE (CRD_EXP_DATE) | DATE, | اختياري |  |  |
| RTRMNT_DFRNT_SD_FLG | RTRMNT_DFRNT_SD_FLG (RTRMNT_DFRNT_SD_FLG) | NUMBER(1, 0), | اختياري |  |  |
| EMP_CRNT_ST | EMP_CRNT_ST (EMP_CRNT_ST) | NUMBER(1, 0), | اختياري |  |  |
| DY_WAGE | DY_WAGE (DY_WAGE) | NUMBER, | اختياري |  |  |
| TAX_FLG | TAX_FLG (TAX_FLG) | NUMBER(1, 0), | اختياري |  |  |
| PAY_MTHD | PAY_MTHD (PAY_MTHD) | NUMBER(10, 0), | اختياري |  |  |
| WRK_DY_YR | WRK_DY_YR (WRK_DY_YR) | NUMBER(5, 2), | اختياري |  |  |
| TEL_NO | TEL_NO (TEL_NO) | VARCHAR2(30), | اختياري |  |  |
| MDCL_INSRNCE_NO | MDCL_INSRNCE_NO (MDCL_INSRNCE_NO) | VARCHAR2(100), | اختياري |  |  |
| EMP_TCKTS_NO | EMP_TCKTS_NO (EMP_TCKTS_NO) | NUMBER(2, 0), | اختياري |  |  |
| EMP_TCKTS_RTIO | EMP_TCKTS_RTIO (EMP_TCKTS_RTIO) | NUMBER(3, 0), | اختياري |  |  |
| EMP_NO_LAST | EMP_NO_LAST (EMP_NO_LAST) | NUMBER(10, 0), | اختياري |  |  |
| RLTV_MOBILE_NO | RLTV_MOBILE_NO (RLTV_MOBILE_NO) | VARCHAR2(30), | اختياري |  |  |
| RTRMNT_WRK_YR | RTRMNT_WRK_YR (RTRMNT_WRK_YR) | NUMBER(3, 0), | اختياري |  |  |
| LST_ALNC_DATE | LST_ALNC_DATE (LST_ALNC_DATE) | DATE, | اختياري |  |  |
| PRBTNRY_PRD_END_DATE | PRBTNRY_PRD_END_DATE (PRBTNRY_PRD_END_DATE) | DATE, | اختياري |  |  |
| EMP_INSRNCE_RTO | EMP_INSRNCE_RTO (EMP_INSRNCE_RTO) | NUMBER, | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | اختياري |  |  |
| FIELD3 | FIELD3 (FIELD3) | VARCHAR2(500), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | إجباري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |
| REINSTTMNT_DATE | REINSTTMNT_DATE (REINSTTMNT_DATE) | DATE, | اختياري |  |  |
| EMP_CNTRCT_TYP | EMP_CNTRCT_TYP (EMP_CNTRCT_TYP) | NUMBER(1, 0), | اختياري |  |  |
| FEED_LMT_TYP | FEED_LMT_TYP (FEED_LMT_TYP) | NUMBER(1, 0), | اختياري |  |  |
| EMP_MDCL_END_DATE | EMP_MDCL_END_DATE (EMP_MDCL_END_DATE) | DATE, | اختياري |  |  |
| ATTNDNC_MOBILE_TYP | ATTNDNC_MOBILE_TYP (ATTNDNC_MOBILE_TYP) | NUMBER(1, 0), | اختياري |  |  |
| ATTNDNC_TIMEZONE | ATTNDNC_TIMEZONE (ATTNDNC_TIMEZONE) | VARCHAR2(20), | اختياري |  |  |
| FACEBOOK | FACEBOOK (FACEBOOK) | VARCHAR2(100), | اختياري |  |  |
| EMP_MDCL_AGE_LMT | EMP_MDCL_AGE_LMT (EMP_MDCL_AGE_LMT) | NUMBER)  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_EMP_ATTNDNC_LOC (S_EMP_ATTNDNC_LOC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LOC_NO | LOC_NO (LOC_NO) | NUMBER(10, 0), | إجباري |  | PK |
| AD_DATE | AD_DATE (AD_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |

## EmployeeBank (S_EMP_BNK)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |

## S_EMP_CODE_DTL (S_EMP_CODE_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CODE_TYP | CODE_TYP (CODE_TYP) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| SHW_EMP_IN_ESS | SHW_EMP_IN_ESS (SHW_EMP_IN_ESS) | NUMBER(2, 0), | إجباري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_EMP_CODE_MST (S_EMP_CODE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| CODE_TYP | CODE_TYP (CODE_TYP) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  | PK |
| FROM_TYP | FROM_TYP (FROM_TYP) | NUMBER(1, 0), | اختياري |  |  |
| EMP_FLG | EMP_FLG (EMP_FLG) | NUMBER(1, 0), | إجباري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## EmployeeFamily (S_EMP_FMLY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRSN_NO | PRSN_NO (PRSN_NO) | NUMBER(10, 0), | اختياري |  |  |
| PRSN_PRNT_F_NM | PRSN_PRNT_F_NM (PRSN_PRNT_F_NM) | VARCHAR2(60), | اختياري |  |  |
| RLTNSHP_NO | RLTNSHP_NO (RLTNSHP_NO) | NUMBER(1, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| PRSN_MDCL_STRT_DATE | PRSN_MDCL_STRT_DATE (PRSN_MDCL_STRT_DATE) | DATE, | اختياري |  |  |
| PRSN_MDCL_MEMBRSHP | PRSN_MDCL_MEMBRSHP (PRSN_MDCL_MEMBRSHP) | VARCHAR2(50), | اختياري |  |  |
| PRSN_IMG | PRSN_IMG (PRSN_IMG) | VARCHAR2(100), | اختياري |  |  |

## Department (S_EMP_GRNTR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |

## S_EMP_HLDY_BLNC (S_EMP_HLDY_BLNC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| HLDY_BLNC | HLDY_BLNC (HLDY_BLNC) | NUMBER, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## S_EMP_HND_DVC (S_EMP_HND_DVC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  |  |
| HND_DVC_SRL | HND_DVC_SRL (HND_DVC_SRL) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |

## S_EMP_IMG (S_EMP_IMG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_EMP_KNWLDG (S_EMP_KNWLDG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  | PK |
| T_YR_NO | T_YR_NO (T_YR_NO) | NUMBER(4, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |
| VIEW_FLAG | VIEW_FLAG (VIEW_FLAG) | NUMBER(1, 0), | إجباري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_EMP_RLTV_TCKTS (S_EMP_RLTV_TCKTS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| EMP_NO | EMP_NO (EMP_NO) | NUMBER(10, 0) NOT NULL ENABLE, | إجباري |  |  |
| CUR_CODE | CUR_CODE (CUR_CODE) | VARCHAR2(7), | اختياري |  |  |

## S_FLAGS (S_FLAGS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LANG_NO | LANG_NO (LANG_NO) | NUMBER(2, 0), | اختياري |  |  |
| FLG_PRIV | FLG_PRIV (FLG_PRIV) | NUMBER(1, 0), | اختياري |  |  |

## S_FLAGS_PRIV (S_FLAGS_PRIV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## S_GRNTR (S_GRNTR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| GRNTR_NO | GRNTR_NO (GRNTR_NO) | NUMBER(10, 0), | إجباري |  | PK |
| WEB_SITE | WEB_SITE (WEB_SITE) | VARCHAR2(60), | اختياري |  |  |
| FIELD2 | FIELD2 (FIELD2) | VARCHAR2(60), | اختياري |  |  |
| FIELD9 | FIELD9 (FIELD9) | VARCHAR2(60), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_HRCHY (S_HRCHY)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| HRCHY_NO | HRCHY_NO (HRCHY_NO) | NUMBER(20, 0), | إجباري |  | PK |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_DATE | INACTIVE_DATE (INACTIVE_DATE) | DATE, | إجباري |  |  |

## S_HRCHY_TYP (S_HRCHY_TYP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TYP_NO | TYP_NO (TYP_NO) | NUMBER(5, 0), | إجباري |  | PK |
| J_DOC_NO | J_DOC_NO (J_DOC_NO) | NUMBER(15, 0) NOT NULL ENABLE, | إجباري |  |  |
| AC_CODE_DTL_SUB | AC_CODE_DTL_SUB (AC_CODE_DTL_SUB) | VARCHAR2(30), | اختياري |  |  |
| AC_RATE | AC_RATE (AC_RATE) | NUMBER, | اختياري |  |  |
| COL_NO | COL_NO (COL_NO) | NUMBER(10, 0), | اختياري |  |  |
| I_NO | I_NO (I_NO) | NUMBER(15, 0), | اختياري |  |  |
| BRN_USR | BRN_USR (BRN_USR) | NUMBER(3, 0), | اختياري |  |  |

## S_JRNL_FILE_MST (S_JRNL_FILE_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FILE_TYPE | FILE_TYPE (FILE_TYPE) | NUMBER(2, 0), | اختياري |  |  |
| JV_TYPE | JV_TYPE (JV_TYPE) | NUMBER(4, 0), | إجباري |  |  |
| J_DATE | J_DATE (J_DATE) | DATE NOT NULL ENABLE, | إجباري |  |  |
| POST_U_ID | POST_U_ID (POST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| APRV_DATE | APRV_DATE (APRV_DATE) | DATE, | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(60), | اختياري |  |  |

## FileType (S_LIB_FILE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FILE_NAME | FILE_NAME (FILE_NAME) | VARCHAR2(100), | اختياري |  | PK |
| UP_DATE | UP_DATE (UP_DATE) | DATE, | اختياري |  |  |

## S_LOV_SLCT (S_LOV_SLCT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LOV_NO | LOV_NO (LOV_NO) | NUMBER(5, 0), | اختياري |  |  |
| RPRT_RET_COL | RPRT_RET_COL (RPRT_RET_COL) | VARCHAR2(1000), | اختياري |  |  |

## S_LST_SLCT (S_LST_SLCT)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SCR_PARENT_NO | SCR_PARENT_NO (SCR_PARENT_NO) | NUMBER(10, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## S_MOBILE_SCR_NM (S_MOBILE_SCR_NM)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|

## S_MOV_DATA_YR_ERR_LOG (S_MOV_DATA_YR_ERR_LOG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| TBL_NM | TBL_NM (TBL_NM) | VARCHAR2(100), | اختياري |  |  |
| SQL_SLCT | SQL_SLCT (SQL_SLCT) | VARCHAR2(4000), | اختياري |  |  |

## S_PRD_BRN_CLS (S_PRD_BRN_CLS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_TYP | PRD_TYP (PRD_TYP) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| PRD_UNCLS_U_ID | PRD_UNCLS_U_ID (PRD_UNCLS_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| PL_CLS | PL_CLS (PL_CLS) | NUMBER(1, 0), | اختياري |  |  |
| INV_CLS_U_ID | INV_CLS_U_ID (INV_CLS_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DEPR_UNCLS_DATE | DEPR_UNCLS_DATE (DEPR_UNCLS_DATE) | DATE, | اختياري |  |  |
| FAS_PRD | FAS_PRD (FAS_PRD) | NUMBER(3, 0), | اختياري |  |  |
| PL_AC_CODE_CLS | PL_AC_CODE_CLS (PL_AC_CODE_CLS) | VARCHAR2(30), | اختياري |  |  |
| RVRS_F_DATE_CLS | RVRS_F_DATE_CLS (RVRS_F_DATE_CLS) | DATE, | اختياري |  |  |
| CUR_DIFF_CLS_WTH_CC | CUR_DIFF_CLS_WTH_CC (CUR_DIFF_CLS_WTH_CC) | NUMBER(1, 0), | اختياري |  |  |
| CUR_DIFF_CLS_WTH_ACTV | CUR_DIFF_CLS_WTH_ACTV (CUR_DIFF_CLS_WTH_ACTV) | NUMBER(1, 0), | اختياري |  |  |
| CUR_RATE_TYP_FLG_CLS | CUR_RATE_TYP_FLG_CLS (CUR_RATE_TYP_FLG_CLS) | NUMBER(2, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_PRD_BRN_CUR_CLS (S_PRD_BRN_CUR_CLS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_NO | PRD_NO (PRD_NO) | NUMBER(3, 0), | اختياري |  | PK |
| CUR_CODE | CUR_CODE (CUR_CODE) | VARCHAR2(7), | اختياري |  | PK |
| PRD_DATE | PRD_DATE (PRD_DATE) | DATE, | إجباري |  |  |

## S_PRD_DTL (S_PRD_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_TYP | PRD_TYP (PRD_TYP) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| PRD_L_NM | PRD_L_NM (PRD_L_NM) | VARCHAR2(40) NOT NULL ENABLE, | إجباري |  |  |
| T_DATE | T_DATE (T_DATE) | DATE, | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_PRD_MST (S_PRD_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PRD_CNT | PRD_CNT (PRD_CNT) | NUMBER(4, 0) NOT NULL ENABLE, | إجباري |  |  |
| YR_CLS_U_ID | YR_CLS_U_ID (YR_CLS_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| INV_STRT_WRK_U_ID | INV_STRT_WRK_U_ID (INV_STRT_WRK_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_PRMTR_MSG (S_PRMTR_MSG)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| PARA_NO | PARA_NO (PARA_NO) | NUMBER(1, 0), | اختياري |  | PK |
| HOUR_SEND_CST_BLNC | HOUR_SEND_CST_BLNC (HOUR_SEND_CST_BLNC) | NUMBER(2, 0), | اختياري |  |  |
| PRD_SEND_CST_BLNC | PRD_SEND_CST_BLNC (PRD_SEND_CST_BLNC) | NUMBER(2, 0), | اختياري |  |  |
| PRD_ALRT_RCPT_DUE_CHQ | PRD_ALRT_RCPT_DUE_CHQ (PRD_ALRT_RCPT_DUE_CHQ) | NUMBER(2, 0), | اختياري |  |  |
| MINT_SEND_CHQ_ALRT | MINT_SEND_CHQ_ALRT (MINT_SEND_CHQ_ALRT) | NUMBER(2, 0), | اختياري |  |  |
| MINT_SEND_ACCNT_BLNC | MINT_SEND_ACCNT_BLNC (MINT_SEND_ACCNT_BLNC) | NUMBER(2, 0), | اختياري |  |  |
| MINT_SEND_CST_BLNC | MINT_SEND_CST_BLNC (MINT_SEND_CST_BLNC) | NUMBER(2, 0), | اختياري |  |  |

## S_RPRT_USR_TMPLT_DTL (S_RPRT_USR_TMPLT_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FORM_NO | FORM_NO (FORM_NO) | NUMBER(5, 0), | اختياري |  | PK |
| TMPLT_NO | TMPLT_NO (TMPLT_NO) | NUMBER(38, 0), | اختياري |  | PK |

## S_RPRT_USR_TMPLT_MST (S_RPRT_USR_TMPLT_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| FORM_NO | FORM_NO (FORM_NO) | NUMBER(5, 0), | اختياري |  | PK |
| TMPLT_NO | TMPLT_NO (TMPLT_NO) | NUMBER(38, 0), | إجباري |  | PK |

## S_RP_EXTRA_PRMTRS_DTL (S_RP_EXTRA_PRMTRS_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| DOC_NO | DOC_NO (DOC_NO) | NUMBER(20, 0) NOT NULL ENABLE, | إجباري |  |  |
| CLMN_NM | CLMN_NM (CLMN_NM) | VARCHAR2(60), | اختياري |  |  |
| AD_U_ID | AD_U_ID (AD_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## S_SCR_CSS (S_SCR_CSS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SYS_NO | SYS_NO (SYS_NO) | NUMBER(5, 0), | اختياري |  |  |

## S_SCR_CSS_PRV (S_SCR_CSS_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| SCR_NO | SCR_NO (SCR_NO) | NUMBER(5, 0), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_SCR_LBL (S_SCR_LBL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| LANG_NO | LANG_NO (LANG_NO) | NUMBER(2, 0), | اختياري |  |  |
| SMPL_L_NM | SMPL_L_NM (SMPL_L_NM) | VARCHAR2(100) NOT NULL ENABLE, | إجباري |  |  |

## S_SEQ_CTL (S_SEQ_CTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| S_TAB_NAME | S_TAB_NAME (S_TAB_NAME) | VARCHAR2(30) NOT NULL ENABLE, | إجباري |  |  |
| S_COL6 | S_COL6 (S_COL6) | VARCHAR2(30), | اختياري |  |  |
| S_SEQ_CONC | S_SEQ_CONC (S_SEQ_CONC) | VARCHAR2(300), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| S_VAL1 | S_VAL1 (S_VAL1) | NUMBER(20, 0), | اختياري |  |  |
| CMP_NO | CMP_NO (CMP_NO) | NUMBER(3, 0) NOT NULL ENABLE, | إجباري |  |  |
| S_VAL1 | S_VAL1 (S_VAL1) | , | اختياري |  |  |
| SOCIAL_INSUR_NO | SOCIAL_INSUR_NO (SOCIAL_INSUR_NO) | VARCHAR2(30), | اختياري |  |  |
| FIELD4 | FIELD4 (FIELD4) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| INACTIVE_RES | INACTIVE_RES (INACTIVE_RES) | VARCHAR2(250), | إجباري |  |  |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |

## S_THMS (S_THMS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| THM_NO | THM_NO (THM_NO) | NUMBER(3, 0), | اختياري |  | PK |
| THM_COLR_USR | THM_COLR_USR (THM_COLR_USR) | VARCHAR2(50), | اختياري |  |  |
| THM_TXT_BG_USR | THM_TXT_BG_USR (THM_TXT_BG_USR) | VARCHAR2(50), | اختياري |  |  |

## S_TP (S_TP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|

## S_USR_HND_DVC (S_USR_HND_DVC)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| HND_DVC_SRL | HND_DVC_SRL (HND_DVC_SRL) | VARCHAR2(60), | اختياري |  |  |
| INACTIVE_U_ID | INACTIVE_U_ID (INACTIVE_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## S_USR_TP_PRV (S_USR_TP_PRV)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0) NOT NULL ENABLE, | إجباري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_YR_RE_MOV_DATA_DTL (S_YR_RE_MOV_DATA_DTL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ORDER_NO | ORDER_NO (ORDER_NO) | NUMBER(4, 0), | اختياري |  |  |
| TABLE_NM_MST | TABLE_NM_MST (TABLE_NM_MST) | VARCHAR2(100), | اختياري |  | PK |
| RE_MOV_FLG | RE_MOV_FLG (RE_MOV_FLG) | NUMBER(1, 0), | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## S_YR_RE_MOV_DATA_MST (S_YR_RE_MOV_DATA_MST)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ORDER_NO | ORDER_NO (ORDER_NO) | NUMBER(4, 0), | اختياري |  |  |
| IAS_USER | IAS_USER (IAS_USER) | VARCHAR2(100), | اختياري |  |  |
| RE_MOV_U_ID | RE_MOV_U_ID (RE_MOV_U_ID) | NUMBER(5, 0), | اختياري |  |  |

## S_ZONE (S_ZONE)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| ZONE_NO | ZONE_NO (ZONE_NO) | NUMBER(4, 0), | اختياري |  | PK |
| CMPNY_F_NM | CMPNY_F_NM (CMPNY_F_NM) | VARCHAR2(60), | اختياري |  |  |
| UP_TRMNL_NM | UP_TRMNL_NM (UP_TRMNL_NM) | VARCHAR2(50))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255
 STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1
 BUFFER_POOL DEFAULT) TABLESPACE | اختياري |  |  |

## USER_FNGR (USER_FNGR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| U_ID | U_ID (U_ID) | NUMBER(5, 0), | اختياري |  |  |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| U_E_NAME | U_E_NAME (U_E_NAME) | VARCHAR2(100), | اختياري |  |  |
| S_STIME | S_STIME (S_STIME) | VARCHAR2(10), | اختياري |  |  |
| ADMIN_USER | ADMIN_USER (ADMIN_USER) | NUMBER(1, 0), | اختياري |  |  |
| PRINTER_BARCODE_DFLT_NM | PRINTER_BARCODE_DFLT_NM (PRINTER_BARCODE_DFLT_NM) | VARCHAR2(250), | اختياري |  |  |
| HRS_USER_WEB_SYSTEM | HRS_USER_WEB_SYSTEM (HRS_USER_WEB_SYSTEM) | NUMBER(1, 0), | اختياري |  |  |
| OCCUPATION | OCCUPATION (OCCUPATION) | VARCHAR2(30), | اختياري |  |  |
| INHRT_U_ID | INHRT_U_ID (INHRT_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| COL_NO | COL_NO (COL_NO) | NUMBER(10, 0), | اختياري |  |  |
| LOW_LVL_PRICE | LOW_LVL_PRICE (LOW_LVL_PRICE) | NUMBER(3, 0), | اختياري |  |  |
| MOBILE_NO | MOBILE_NO (MOBILE_NO) | VARCHAR2(30), | اختياري |  |  |
| EXCSS_A_CODE | EXCSS_A_CODE (EXCSS_A_CODE) | VARCHAR2(30), | اختياري |  |  |

## SupplierClass (VENDOR_CLASS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_CLASS | V_CLASS (V_CLASS) | NUMBER(3, 0), | إجباري |  | PK |
| CUR_DFLT | CUR_DFLT (CUR_DFLT) | NUMBER(1, 0))  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 STORAGE(INITIAL
 65536 NEXT 1048576 MINEXTENTS 1 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
 TABLESPACE | اختياري |  |  |

## SupplierGroup (VENDOR_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_GROUP_CODE | V_GROUP_CODE (V_GROUP_CODE) | NUMBER(10, 0), | اختياري |  | PK |
| UP_CNT | UP_CNT (UP_CNT) | NUMBER(10, 0), | اختياري |  |  |
| A_DESC | A_DESC (A_DESC) | VARCHAR2(1000), | اختياري |  |  |
| COMM_PER | COMM_PER (COMM_PER) | NUMBER(7, 4), | اختياري |  |  |
| MOVE_CHEQ_PY | MOVE_CHEQ_PY (MOVE_CHEQ_PY) | NUMBER(1, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| AUDIT_REF_U_ID | AUDIT_REF_U_ID (AUDIT_REF_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| FIELD6 | FIELD6 (FIELD6) | VARCHAR2(60), | اختياري |  |  |
| UNPOST_U_ID | UNPOST_U_ID (UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| DOC_BRN_NO | DOC_BRN_NO (DOC_BRN_NO) | NUMBER(6, 0), | اختياري |  |  |
| BRN_NO | BRN_NO (BRN_NO) | NUMBER(6, 0) NOT NULL ENABLE, | إجباري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |
| REP_CODE | REP_CODE (REP_CODE) | VARCHAR2(15), | اختياري |  |  |

## VoucherBranch (VOUCHERS_BR)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| VOUCHER_TYPE | VOUCHER_TYPE (VOUCHER_TYPE) | NUMBER(1, 0) NOT NULL ENABLE | إجباري |  |  |
| VOUCHER_PAY_TYPE | VOUCHER_PAY_TYPE (VOUCHER_PAY_TYPE) | NUMBER(1, 0) NOT NULL ENABLE, | إجباري |  |  |
| V_SER | V_SER (V_SER) | NUMBER(38, 0), | إجباري |  | PK |
| CASH_AMTF | CASH_AMTF (CASH_AMTF) | NUMBER, | اختياري |  |  |
| CC_CODE | CC_CODE (CC_CODE) | VARCHAR2(30), | اختياري |  |  |
| V_TYPE_NO | V_TYPE_NO (V_TYPE_NO) | NUMBER(2, 0), | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| FIELD1 | FIELD1 (FIELD1) | VARCHAR2(60), | اختياري |  |  |
| FIELD8 | FIELD8 (FIELD8) | VARCHAR2(60), | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| AD_TRMNL_NM | AD_TRMNL_NM (AD_TRMNL_NM) | VARCHAR2(50), | اختياري |  |  |

## VoucherDetail (VOUCHER_DETAIL)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| VOUCHER_TYPE | VOUCHER_TYPE (VOUCHER_TYPE) | NUMBER(1, 0) CONSTRAINT | اختياري |  |  |
| AC_CODE_DTL_SUB_DR_COMM | AC_CODE_DTL_SUB_DR_COMM (AC_CODE_DTL_SUB_DR_COMM) | VARCHAR2(30), | اختياري |  |  |
| CHEQUE_VALUED | CHEQUE_VALUED (CHEQUE_VALUED) | NUMBER(1, 0), | اختياري |  |  |
| HRS_PAY_NO | HRS_PAY_NO (HRS_PAY_NO) | NUMBER(15, 0), | اختياري |  |  |
| WO_SER | WO_SER (WO_SER) | NUMBER(38, 0), | اختياري |  |  |
| CONN_V_NO | CONN_V_NO (CONN_V_NO) | NUMBER(15, 0), | اختياري |  |  |
| EXTERNAL_POST | EXTERNAL_POST (EXTERNAL_POST) | NUMBER(5, 0), | اختياري |  |  |
| DOC_SEQUENCE | DOC_SEQUENCE (DOC_SEQUENCE) | NUMBER(38, 0), | اختياري |  |  |
| AC_CODE_DR_COMM | AC_CODE_DR_COMM (AC_CODE_DR_COMM) | VARCHAR2(30), | اختياري |  |  |
| AUDIT_REF_DESC | AUDIT_REF_DESC (AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| AC_DTL_TYP_END | AC_DTL_TYP_END (AC_DTL_TYP_END) | NUMBER(2, 0), | اختياري |  |  |
| F_CNTRCT_DATE_AH | F_CNTRCT_DATE_AH (F_CNTRCT_DATE_AH) | VARCHAR2(10), | اختياري |  |  |
| CRD_COMM_CALC_TYP | CRD_COMM_CALC_TYP (CRD_COMM_CALC_TYP) | NUMBER(1, 0), | اختياري |  |  |
| CRD_DUE_PRD | CRD_DUE_PRD (CRD_DUE_PRD) | NUMBER, | اختياري |  |  |
| BRN_YEAR | BRN_YEAR (BRN_YEAR) | NUMBER(4, 0), | اختياري |  |  |
| CRD_VAT_COMM_AMT_L | CRD_VAT_COMM_AMT_L (CRD_VAT_COMM_AMT_L) | NUMBER, | اختياري |  |  |
| ENDRSMNT_DATE | ENDRSMNT_DATE (ENDRSMNT_DATE) | DATE, | اختياري |  |  |
| ENDRSMNT_UNPOST_U_ID | ENDRSMNT_UNPOST_U_ID (ENDRSMNT_UNPOST_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| ENDRSMNT_AUDIT_REF_DESC | ENDRSMNT_AUDIT_REF_DESC (ENDRSMNT_AUDIT_REF_DESC) | VARCHAR2(500), | اختياري |  |  |
| ENDRSMNT_AUDIT_REF_DATE | ENDRSMNT_AUDIT_REF_DATE (ENDRSMNT_AUDIT_REF_DATE) | DATE, | اختياري |  |  |
| TAX_AMT | TAX_AMT (TAX_AMT) | NUMBER, | اختياري |  |  |

## V_DETAILS (V_DETAILS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| V_CODE | V_CODE (V_CODE) | VARCHAR2(15), | إجباري |  | PK |
| V_E_MAIL | V_E_MAIL (V_E_MAIL) | VARCHAR2(30), | اختياري |  |  |
| BLK_LST | BLK_LST (BLK_LST) | NUMBER(1, 0), | اختياري |  |  |
| AC_OP_NO | AC_OP_NO (AC_OP_NO) | NUMBER(15, 0), | اختياري |  |  |
| CLC_VAT_PRICE_TYP | CLC_VAT_PRICE_TYP (CLC_VAT_PRICE_TYP) | NUMBER, | اختياري |  |  |
| FIELD7 | FIELD7 (FIELD7) | VARCHAR2(1000), | اختياري |  |  |
| ACTVTY_NM | ACTVTY_NM (ACTVTY_NM) | VARCHAR2(100), | اختياري |  |  |
| AD_DATE | AD_DATE (AD_DATE) | DATE, | اختياري |  |  |
| USER_NO | USER_NO (USER_NO) | VARCHAR2(30), | اختياري |  |  |
| UNIT_SRVC_NO | UNIT_SRVC_NO (UNIT_SRVC_NO) | NUMBER(3, 0), | اختياري |  |  |

## Warehouse (WAREHOUSE_DETAILS)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| W_CODE | W_CODE (W_CODE) | NUMBER(10, 0), | إجباري |  | PK |
| INACTIVE | INACTIVE (INACTIVE) | NUMBER(1, 0), | اختياري |  |  |
| W_SER | W_SER (W_SER) | NUMBER(5, 0), | اختياري |  |  |
| MAIN_WCODE | MAIN_WCODE (MAIN_WCODE) | NUMBER, | اختياري |  |  |
| PRICE_LVL | PRICE_LVL (PRICE_LVL) | NUMBER(3, 0), | اختياري |  |  |
| LONGITUDE | LONGITUDE (LONGITUDE) | VARCHAR2(100), | اختياري |  |  |
| W_F_ADDRS | W_F_ADDRS (W_F_ADDRS) | VARCHAR2(1000), | اختياري |  |  |
| BANK_NO | BANK_NO (BANK_NO) | NUMBER(10, 0), | اختياري |  |  |

## WarehouseGroup (WAREHOUSE_GROUP)

| الحقل | الاسم الحديث | النوع | مفروض؟ | قيمة افتراضية | مفتاح أساسي |
|-------|--------------|-------|--------|--------------|-------------|
| WHG_CODE | WHG_CODE (WHG_CODE) | NUMBER(10, 0), | اختياري |  | PK |
| UP_U_ID | UP_U_ID (UP_U_ID) | NUMBER(5, 0), | اختياري |  |  |
| w_code | w_code (w_code) | From Ias_Itm_Wcode | اختياري |  |  |
