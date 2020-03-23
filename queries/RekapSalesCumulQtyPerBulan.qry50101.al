query 50101 "Rekap. Sales Cumul. Qty./Bulan"
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
            column(Quantity__Base_; "Quantity (Base)")
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