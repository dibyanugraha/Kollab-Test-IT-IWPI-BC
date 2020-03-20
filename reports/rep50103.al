report 50103 "Item Ledger Entry Rpt."
{
    Caption = 'Item Ledger Entry Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '.\reports\rep50103.rdl';
    WordLayout = '.\reports\rep50103.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(ILE; "Item Ledger Entry")
        {
            DataItemTableView =
                where(Open = const(true),
                    "Entry Type" = const("Sale"));

            column(Item_No_; "Item No.")
            {

            }
            column(Quantity; Quantity)
            {
            }
            column(QtyBase; QtyBase)
            {

            }
            column(UOM; "Unit of Measure Code")
            {

            }
            column(Open; Open)
            {

            }
            column(Entry_Type; "Entry Type")
            {

            }

            dataitem(Item; Item)
            {
                DataItemLinkReference = ILE;
                DataItemLink =
                    "No." = field("Item No.");

                column(Desc; Description)
                {

                }
                column(BOuM; "Base Unit of Measure")
                {

                }
            }

            trigger OnPreDataItem()
            begin
                SetAscending("Document No.", true);
            end;

            trigger OnAfterGetRecord()
            begin
                if Dibagidua then begin
                    ILE.Quantity := ILE.Quantity / 2;
                end;

            end;
        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    field(Dibagidua; Dibagidua)
                    {
                        Caption = 'Quantity Dibagi dua';
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    var
        QtyBase: Decimal;
        Dibagidua: Boolean;
}