report 50100 "Cust Ledger E"
{
    Caption = 'Cust Ledger Entry';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '.\report\rep50100.rdl';
    WordLayout = '.\report\rep50100.docx';
    DefaultLayout = Word;
    dataset
    {
        dataitem(CLE; "Cust. Ledger Entry")
        {
            DataItemTableView =
                where(open = const(true));
            column(No; "Customer No.")
            {

            }
            column(Kode; "Currency Code")
            {

            }
            column(Remaining; "Remaining Amount")
            {

            }
            column(Remaining2; "Remaining Amt. (LCY)")
            {

            }

            dataitem(cust; "Customer")
            {
                DataItemLinkReference = CLE;
                DataItemLink =
                "No." = field("customer no.");

                column(Nama; "Name")
                {

                }
                column(Alamat; "Address")
                {

                }
                column(HP; "Phone No.")
                {

                }
                column(email; "E-Mail")
                {

                }

            }
        }
    }
}