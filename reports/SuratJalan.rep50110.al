report 50110 "iwpi_Surat Jalan"
{
    Caption = 'Surat Jalan';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = Word;
    WordLayout = '.\reports\SuratJalan.rep50110.docx';

    dataset
    {
        dataitem(SSH; "Sales Shipment Header")
        {
            column(No_; "No.")
            {

            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            column(Sell_to_Customer_Name_2; "Sell-to Customer Name 2")
            {

            }
            column(Sell_to_Address; "Ship-to Address")
            {

            }
            column(Sell_to_Address_2; "Ship-to Address 2")
            {

            }
            column(Ship_to_Address; "Ship-to Address")
            {

            }
            column(Ship_to_Address_2; "Ship-to Address 2")
            {

            }
            column(Sell_to_City; "Sell-to City")
            {

            }
            column(Sell_to_Post_Code; "Sell-to Post Code")
            {

            }
            column(Shipment_Date; "Shipment Date")
            {

            }
            column(Order_No_; "Order No.")
            {

            }
            column(External_Document_No_; "External Document No.")
            {

            }
            dataitem(SSL; "Sales Shipment Line")
            {
                DataItemLinkReference = SSH;
                DataItemLink =
                    "Document No." = field("No.");

                column(Description; Description)
                {

                }

                column(Description_2; "Description 2")
                {

                }
                column(Quantity__Base_; "Quantity (Base)")
                {

                }

                column(Quantity; Quantity)
                {

                }

                column(totalLines; totalLines)
                {

                }

                trigger OnAfterGetRecord()
                begin
                    totalLines := totalLines + 1;
                end;
            }
            trigger OnAfterGetRecord()
            begin
                totalLines := 0;
            end;
        }
    }

    var
        totalLines: Integer;
}