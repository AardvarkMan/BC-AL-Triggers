namespace AardvarkLabs.BCJourney;

page 50001 ARD_TableTriggers
{
    ApplicationArea = All;
    Caption = 'Table Triggers';
    PageType = List;
    SourceTable = ARD_TableTriggers;
    UsageCategory = Lists;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("ARD_No."; Rec."ARD_No.")
                {
                }
                field(ARD_Name; Rec.ARD_Name)
                {
                }
                field(ARD_LookupToCustomer; Rec.ARD_LookupToCustomer)
                {
                }
            }
        }
    }
}
