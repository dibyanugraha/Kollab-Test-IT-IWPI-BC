report 50104 "Cust Ledger Entry"
{
    Caption = 'Cust Ledger Entry Y';
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

            }
        }
    }
}