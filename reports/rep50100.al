<<<<<<< HEAD
report 50100 "Cust Ledger Entry (dani)"
=======
report 50100 "Cust Ledger E"
>>>>>>> 6f4e9e4685a92d58c029e4c62edcc260a7f2fc0b
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