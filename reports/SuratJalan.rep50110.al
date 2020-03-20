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
            column(fullSellToAddress; fullSellToAddress)
            {

            }
            column(fullShipToAddress; fullShipToAddress)
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

            column(sumQuantity; sumQuantity)
            {

            }

            column(sumQuantityBase; sumQuantityBase)
            {

            }
            dataitem(SSL; "Sales Shipment Line")
            {
                DataItemLinkReference = SSH;
                DataItemLink =
                    "Document No." = field("No.");

                column(fullItemDescription; fullItemDescription)
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
                    totalLines += 1;
                    fullItemDescription := Description + "Description 2";
                    sumQuantity := sumQuantity + "Quantity";
                    sumQuantityBase := sumQuantityBase + "Quantity (Base)";
                end;
            }
            trigger OnAfterGetRecord()
            begin
                totalLines := 0;
                sumQuantity := 0;
                sumQuantityBase := 0;
                fullSellToAddress := "Sell-to Address" + "Sell-to Address 2";
                fullShipToAddress := "Ship-to Address" + "Ship-to Address 2";
            end;
        }
    }

    var
        totalLines: Integer;
        fullItemDescription: Text;
        fullSellToAddress: Text;
        fullShipToAddress: Text;
        sumQuantity: Decimal;
        sumQuantityBase: Decimal;
}