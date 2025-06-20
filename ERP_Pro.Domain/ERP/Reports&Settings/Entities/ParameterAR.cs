public class ParameterAR
{
    public bool? ParaNo { get; private set; }
    public bool DocGenAr { get; private set; }
    public bool AllowDocDelNo { get; private set; }
    public bool? DateGenAr { get; private set; }
    public bool DateSettingAr { get; private set; }
    public short? CustLength { get; private set; }
    public bool CustDType { get; private set; }
    public bool ArAcLinkType { get; private set; }
    public bool ArUseFreeQty { get; private set; }
    public bool ArCsType { get; private set; }
    public bool ArPjType { get; private set; }
    public bool ArActvType { get; private set; }
    public bool ArWcType { get; private set; }
    public short InvoicingSerials { get; private set; }
    public short? InvoicingSerialsSr { get; private set; }
    public bool ArQuotSerial { get; private set; }
    public bool ArSorderSerial { get; private set; }
    public bool ShowDiscPerItemsAr { get; private set; }
    public bool MustRetSameWcode { get; private set; }
    public bool ArLinkInv { get; private set; }
    public short NoOfDecimalAr { get; private set; }
    public bool SalesDuplicateItem { get; private set; }
    public bool UseRetWithoutBillno { get; private set; }
    public bool FillSoWithoutPrice { get; private set; }
    public bool? UseCncrtSys { get; private set; }
    public int? UseShpngLstAr { get; private set; }
    public bool? PaidScrTyp { get; private set; }
    public short? ScItemType { get; private set; }
    public bool UseOutBills { get; private set; }
    public bool SalesPostFreeQty { get; private set; }
    public bool SalesPostDiscount { get; private set; }
    public bool PostOutBillsType { get; private set; }
    public bool? CustPriceFixed { get; private set; }
    public bool SiHideDiscPer { get; private set; }
    public bool SiHideFreePer { get; private set; }
    public bool SalesDiscWcode { get; private set; }
    public bool SalesDiscPeriodic { get; private set; }
    public short? SalesDiscType { get; private set; }
    public short SalesFreeQtyType { get; private set; }
    public bool SalesFreeQtyWcode { get; private set; }
    public bool SalesFreeQtyPeriodic { get; private set; }
    public bool ShowIDescAr { get; private set; }
    public bool ShowItemDesc { get; private set; }
    public bool PostRepComm { get; private set; }
    public bool? CreditLimitType { get; private set; }
    public bool ItmDiscType { get; private set; }
    public bool UseStandBy { get; private set; }
    public bool UseWorkOrder { get; private set; }
    public bool UseRecCheck { get; private set; }
    public bool ArWoSerial { get; private set; }
    public bool SiRepcodeMandtry { get; private set; }
    public bool? SiRcodeMandtry { get; private set; }
    public bool SiColMandtry { get; private set; }
    public bool SiDriverMandtry { get; private set; }
    public bool SiAddfieldsMandtry { get; private set; }
    public bool UseBillnoRtsalePy { get; private set; }
    public bool? PaidInstllmntMan { get; private set; }
    public bool UseDelAr { get; private set; }
    public bool? UseModAr { get; private set; }
    public bool RequestRefnoAr { get; private set; }
    public bool RequestDescAr { get; private set; }
    public bool UseBillnoConn { get; private set; }
    public bool? LghtPostType { get; private set; }
    public bool? ShowItmBarcodeAr { get; private set; }
    public bool? ChkAllwItmDscnt { get; private set; }
    public bool CheckLmtSorder { get; private set; }
    public bool CheckSorderQty { get; private set; }
    public int AddPorderQty { get; private set; }
    public int UseSaleInvoiceAsPos { get; private set; }
    public bool? ShowSizeItemInBills { get; private set; }
    public bool? ShowWeightItemInBills { get; private set; }
    public bool? ShowSumQtyInSales { get; private set; }
    public bool? UseLghtWithoutStore { get; private set; }
    public bool? UseMndataMstSrPy { get; private set; }
    public bool? DiscCount { get; private set; }
    public int? AddFrcIntoDiscInvoice { get; private set; }
    public bool? CalcVatAmtType { get; private set; }
    public bool? AllowGrpCrCardAmt { get; private set; }
    public bool? RetFreeQtyPer { get; private set; }
    public bool? PostAddDiscItmType { get; private set; }
    public bool? LghtShowQtyAllWcode { get; private set; }
    public bool? SrRtReasonMandtry { get; private set; }
    public bool? SiDueDateMandtry { get; private set; }
    public bool? SiChkAvlqtySorder { get; private set; }
    public bool? CstSeqType { get; private set; }
    public bool? AllowSoWithoutStore { get; private set; }
    public int? MaxReserveSoItmDay { get; private set; }
    public bool? SoExpDateMandtry { get; private set; }
    public int? MaxPrdExpDateSoDay { get; private set; }
    public int? ChkLmtQuotPrmSi { get; private set; }
    public int? ChkStkQuotPrmSi { get; private set; }
    public int? ChkLmtPriceMinusDiscSi { get; private set; }
    public int? LghtPostSalesAvlqty { get; private set; }
    public bool? CnclRsrvdSoTrnsBrnLght { get; private set; }
    public bool? ScWcodeType { get; private set; }
    public int? ShowPaidScr { get; private set; }
    public bool? ConnSoInc { get; private set; }
    public bool? UseScPrd { get; private set; }
    public int? ShowSmanCommSi { get; private set; }
    public int? MaxPrdReserveSoDay { get; private set; }
    public bool? ArRcptDocSerial { get; private set; }
    public bool? ArUsePaidRcpt { get; private set; }
    public int? AllowModWcodeSoSi { get; private set; }
    public int? AllowModPayTypeSoSi { get; private set; }
    public int? CalcSiDiscWithoutItmDisc { get; private set; }
    public bool? UseSmanSlicesCommAutoSi { get; private set; }
    public bool? ConnSmanItmActvty { get; private set; }
    public bool? ConnSmanWcCshCc { get; private set; }
    public bool? ConnCstMultiSman { get; private set; }
    public bool? ShwItmAvlqtyOnly { get; private set; }
    public short? ShwAddFldInDtl { get; private set; }
    public bool? CopyPriceFromPrevBill { get; private set; }
    public short? MaxPrdExpDateSlsQuotDay { get; private set; }
    public bool? QuotExpDateMandtry { get; private set; }
    public int? UseChrgInstantTelecom { get; private set; }
    public bool? SiPayCshCstMandtry { get; private set; }
    public bool? ConnCstMultiCol { get; private set; }
    public bool? MndtryConnCstCol { get; private set; }
    public bool? CnvrtSiIncdpstAuto { get; private set; }
    public bool? UseApprvSlsMngSo { get; private set; }
    public bool? UseInsrnceSys { get; private set; }
    public bool? MndtryReqInAddDisc { get; private set; }
    public bool? ArAddDiscSerial { get; private set; }
    public bool? ArRqAddDiscSerial { get; private set; }
    public bool? ConnOutBillInvRec { get; private set; }
    public bool? SiCstTelMandtry { get; private set; }
    public bool? ArEmpType { get; private set; }
    public bool? PstSmanCommVchrRcpt { get; private set; }
    public bool? UseMeasurDscItm { get; private set; }
    public bool? ArUseRtBillRqTyp { get; private set; }
    public bool? UseSubCustomer { get; private set; }
    public bool? SiCstNmMandtry { get; private set; }
    public bool? ShwItmCommPer { get; private set; }
    public bool? ShwAllItmUntTrns { get; private set; }
    public bool? UseSoPrprtonQty { get; private set; }
    public bool? CalcMeasurPrice { get; private set; }
    public bool? UseCstCrLmtLocal { get; private set; }
    public bool? AddDscntItmQtPrmDscnt { get; private set; }
    public int? BillLmtPrntSmplForm { get; private set; }
    public bool? UseDiscCardSal { get; private set; }
    public bool? UsePointSysSal { get; private set; }
    public short? LngthCshCstmrCode { get; private set; }
    public short? LngthCshCstmrMobilNo { get; private set; }
    public bool? PointCalcTyp { get; private set; }
    public short? PointAprvdByDay { get; private set; }
    public short? PointAgeExpiredTyp { get; private set; }
    public short? PointAgeExpiredPrd { get; private set; }
    public string? CustNoteJoinPoint { get; private set; }
    public string? CustNoteNotJoinPoint { get; private set; }
    public bool? SendMsgTyp { get; private set; }
    public bool? SendMsgCstTyp { get; private set; }
    public string? MsgTxtCstBill { get; private set; }
    public string? MsgTxtCstRtbill { get; private set; }
    public string? MsgTxtCstPoint { get; private set; }
    public string? MsgTxtCstWelcome { get; private set; }
    public bool? UseAssctnAccnt { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
    public int? UseSoRsrvdTime { get; private set; }
    public int? DscntAftrVatFrcCtgry { get; private set; }
    public bool? LnkWithScalSo { get; private set; }
    public int? PerDiffActulWghtQtySo { get; private set; }
    public int? ReturnPeriod { get; private set; }
    public bool? AllwDupRefNo { get; private set; }
    public bool? UseOutBillDirect { get; private set; }
    public bool? ShowNetPriceTrns { get; private set; }
    public bool? UseCndtnCntrct { get; private set; }
    public bool? UseIntrfcSalRvnu { get; private set; }
    public bool? UseSrchItmNmArabic { get; private set; }
    public bool? ArQtWcTyp { get; private set; }
    public bool? ClcTaxDscnt2 { get; private set; }
    public bool? ClcTaxDscnt3 { get; private set; }
    public bool? ShwLvlPriceInTrns { get; private set; }
    public bool? UseBillsFllwup { get; private set; }
    public bool? UseCstmrClim { get; private set; }
    public bool? UseClcTaxFreeQty { get; private set; }
    public bool? ApprvdFreeqtyDscntRtrnSi { get; private set; }
    public bool? UseAutoRsrvItmTrnsInpt { get; private set; }
    public bool? UseRqItmCstmr { get; private set; }
    public bool? ChkCrdBnkAmt { get; private set; }
    public short? TimeChkCrdBnkScnd { get; private set; }
    public bool? UseAdvncPymnt { get; private set; }
    public bool? ClcTaxAdvncPymnt { get; private set; }
    public bool? ChkPriceCostLmtSoSi { get; private set; }
    public bool? AllwUpdRtrnInsrnceSi { get; private set; }
    public bool? UseSpSman { get; private set; }
    public bool? UseScalMovmnt { get; private set; }
    public bool? LghtOutBillTyp { get; private set; }
    public bool? ApprvdSoNoBtchNoAuto { get; private set; }
    public bool? AllwEntrCstmrInLght { get; private set; }
    public bool? GrntCstPrivByBrn { get; private set; }
    public bool? ClcDscntAutoModItmTot { get; private set; }
    public bool? SiCshCstMandtry { get; private set; }
}