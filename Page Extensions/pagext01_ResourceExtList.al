pageextension 50101 ResourceListExt extends "Resource List"
//CSD Test fra Dan
{
    layout
    {
        modify(Type)
        {
            Visible = Showtype;
        }
        addafter(Type)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }
            field("CSD Maximum Participants"; "CSD Maximum Participants")
            {
                Visible = ShowMaxField;
            }
        }
    }

    actions
    {

    }
    trigger OnOpenPage()
    begin
        Showtype := (GetFilter(type) = '');
        ShowMaxField := (GetFilter(Type)) = format(type::Machine);
    end;

    var
        [InDataSet]
        ShowMaxField: Boolean;
        [InDataSet]
        Showtype: Boolean;
}