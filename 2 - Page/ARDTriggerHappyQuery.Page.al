namespace AardvarkLabs.BCJourney;
using Microsoft.Sales.Customer;

page 50008 Ard_TriggerHappyQuery
{
    ApplicationArea = All;
    Caption = 'Trigger Happy Query';
    PageType = List;
    SourceTable = Customer;
    UsageCategory = None;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                }
            }
        }
    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        Message('Query: OnQueryClosePage: Rec: %1, XRec: %2, CloseAction: %3', Rec."No.", XRec."No.", CloseAction);
    end;
}
