namespace AardvarkLabs.BCJourney;

using Microsoft.Sales.Customer;

page 50006 ARD_TriggerHappyList
{
    ApplicationArea = All;
    Caption = 'Trigger Happy List';
    PageType = List;
    SourceTable = Customer;
    CardPageId = ARD_TriggerHappy;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                }
                field(Name; Rec.Name)
                {
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Message('List: OnAfterGetRecord: Rec: %1, XRec: %2', Rec."No.", XRec."No.");
    end;

    trigger OnAfterGetCurrRecord()
    begin
        Message('List: OnAfterGetCurrRecord: Rec: %1, XRec: %2', Rec."No.", XRec."No.");
    end;
}
