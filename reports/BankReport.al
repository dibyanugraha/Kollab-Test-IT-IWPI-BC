report 50101 BankReport
{
    Caption = 'Bank Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '.\reports\BankReport.rdl';
    WordLayout = '.\reports\BankReport.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(BALE; "Bank Account Ledger Entry")
        {
            DataItemTableView =
                where(Open = const(false));
            column(BAN; "Bank Account No.")
            {

            }
            column(CC; "Currency Code")
            {

            }
            column(Amount; "Amount")
            {

            }
            column(Amount02; "Amount (LCY)")
            {

            }
            column(Buka; "Open")
            {

            }



            dataitem(BA; "Bank Account")
            {
                DataItemLinkReference = BALE;
                DataItemLink =
                "No." = field("Bank Account No.");
                column(NO; "No.")
                {

                }
                column(BAN2; "Bank Account No.")
                {

                }
                column(Nama; "Name")
                {

                }
                column(Alamat; "Address")
                {

                }
                column(Tlp; "Phone No.")
                {

                }
            }
        }
    }
}