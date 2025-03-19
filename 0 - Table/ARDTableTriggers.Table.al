namespace AardvarkLabs.BCJourney;

using Microsoft.Sales.Customer;

table 50001 ARD_TableTriggers
{
    Caption = 'Table Triggers';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "ARD_No."; Integer)
        {
            Caption = 'ARD_No.';
            ToolTip = 'ARD_No.';
            DataClassification = CustomerContent;
        }
        field(2; ARD_Name; Text[50])
        {
            Caption = 'ARD_Name';
            ToolTip = 'ARD_Name';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Message('Record: OnValidate at Rec: %1 XRec: %2', Rec."ARD_Name", XRec.ARD_Name);
            end;
        }
        field(3; ARD_LookupToCustomer; Code[20])
        {
            Caption = 'ARD_LookupToCustomer';
            ToolTip = 'ARD_LookupToCustomer';
            DataClassification = CustomerContent;
            TableRelation = Customer;

            Trigger OnLookup()
            var
                Customer: Record Customer;
            begin
                Message('Record: OnLookup at Rec: %1 XRec: %2', Rec."ARD_LookupToCustomer", XRec.ARD_LookupToCustomer);

                //Set the filter to only show customers that are not blocked
                Customer.SetFilter(Blocked, '%1', Customer.Blocked::" ");

                //Open the Customer Lookup page and set the filter to the selected customer
                if page.RunModal(page::"Customer Lookup", Customer) <> Action::LookupOK then exit;

                //Set the CustomerNo. field to the selected customer
                Rec.ARD_LookupToCustomer := Customer."No.";
            end;
        }
    }
    keys
    {
        key(PK; "ARD_No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Message('Record: OnInsert Rec: %1', Rec."ARD_No.");
    end;

    trigger OnModify()
    begin
        Message('Record: OnModify at Rec: %1 XRec: %2', Rec."ARD_Name", XRec.ARD_Name);
    end;

    trigger OnDelete()
    begin
        Message('Record: OnDelete Rec: %1', Rec."ARD_No.");
    end;

    trigger OnRename()
    begin
        Message('Record: Onrename at Rec: %1 XRec: %2', Rec."Ard_No.", XRec."ARD_No.");
    end;
}
