public class IasNotesUser
{
    public long? NoteNo { get; private set; }
    public DateTime? NoteDate { get; private set; }
    public string? NoteDesc { get; private set; }
    public bool? AlertNote { get; private set; }
    public DateTime? AlertDate { get; private set; }
    public bool? NoteRead { get; private set; }
    public int? AdUId { get; private set; }
    public DateTime? AdDate { get; private set; }
    public int? UpUId { get; private set; }
    public DateTime? UpDate { get; private set; }
    public short CmpNo { get; private set; }
    public int BrnNo { get; private set; }
    public short? BrnYear { get; private set; }
    public short? BrnUsr { get; private set; }
    public long? UpCnt { get; private set; }
    public long? PrRep { get; private set; }
    public string? AdTrmnlNm { get; private set; }
    public string? UpTrmnlNm { get; private set; }
}