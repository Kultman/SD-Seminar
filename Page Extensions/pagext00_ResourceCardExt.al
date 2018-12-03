pageextension 50100 "CSD ResourceCardExt" extends "Resource Card"
//CSD Dan's nyeste card ext
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowMaxField;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }

    }

    actions
    {
        // Add changes to page actions here
    }

    trigger OnAfterGetRecord()
    begin
        ShowMaxField := (Type = type::Machine);
        CurrPage.Update((false));
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;


}