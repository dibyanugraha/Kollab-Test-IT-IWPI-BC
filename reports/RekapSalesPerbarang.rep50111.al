report 50111 "Rekap. Penjualan Per Barang"
{
    Caption = 'Rekap. Penjualan Per Barang';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\reports\Rekap. Penjualan Per Barang.rdl';

    dataset
    {
        dataitem(DataItemName; Integer)
        {
            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
            column(postingDate; qry50100.Posting_Date)
            {

            }
            trigger OnPreDataItem()
            begin
                qry50100.SetRange(qry50100.Posting_Date_Filter, 0D, 0D);
                qry50100.Open();
                qry50101.SetRange(qry50101.Posting_Date_Filter, 0D, 0D);
                qry50101.Open();
            end;

            trigger OnPostDataItem()
            begin
                qry50100.Close();
                qry50101.Close();
            end;

            trigger OnAfterGetRecord()
            var
                qry50100isFinish: Boolean;
                qry50101isFinish: Boolean;
            begin
                postingDate := qry50100.Posting_Date;

                if not qry50100.Read() then
                    qry50100isFinish := true;

                if not qry50101.Read() then
                    qry50101isFinish := true;

                if qry50100isFinish and qry50101isFinish then
                    CurrReport.Break();
            end;
        }
    }

    var
        qry50100: Query "Rekap. Sales Cumul. Qty./Bulan";
        qry50101: Query "Rekap. Sales Cumul. Amt./Bulan";
        kodeBarang: Code[20];
        postingDate: Date;
        itemNo: Code[20];
        qtyCumulStartMonth: Decimal;
        qtyCumulEndMonth: Decimal;
        qtyTotalMonth: Decimal;
        priceCumulStartMonth: Decimal;
        priceCumulEndMonth: Decimal;
        priceTotalMonth: Decimal;
}