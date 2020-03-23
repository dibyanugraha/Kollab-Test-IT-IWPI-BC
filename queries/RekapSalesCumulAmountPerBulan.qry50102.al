query 50102 "Rekap. Sales Cumul. Amt./Bulan"
{
    QueryType = Normal;

    elements
    {
        dataitem(SIL01; "Sales Invoice Line")
        {
            column(Posting_Date; "Posting Date")
            {

            }
            column(No_; "No.")
            {

            }
            column(Line_Amount; "Line Amount")
            {
                Method = Sum;
            }
            filter(Posting_Date_Filter; "Posting Date")
            {

            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}