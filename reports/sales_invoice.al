report 50112 "sales_invoice"
{
    Caption = 'sales invoice';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    rdlcLayout = '.\reports\sales_invoice.rep50112.rdl';

    dataset
    {
        dataitem(SIL; "Sales Invoice Line")
        {
            column(Posting_Date; "Posting Date")
            { }
            column(Bill_to_Customer_No_; "Bill-to Customer No.")
            { }
            column(Document_No_; "Document No.")
            { }
            column(Quantity__Base_; "Quantity (Base)")
            { }
            dataitem(SIH; "Sales Invoice Header")
            {
                DataItemLinkReference = SIL;
                DataItemLink =
                    "No." = field("Document No.");
                column(Amount; Amount)
                { }
                column(PPN; ("Amount Including VAT" - Amount))
                { }
                column(Amount_Including_VAT; "Amount Including VAT")
                { }
                column(Currency_Factor; "Currency Factor")
                { }
                column(Amount_Including_VAT_2; "Amount Including VAT")
                { }
                trigger OnAfterGetRecord()
                begin
                    PPN := "Amount Including VAT" - Amount;
                end;
            }
        }
    }
    var
        PPN: Decimal;
}