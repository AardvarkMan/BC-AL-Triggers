table 50002 ARD_Settings
{
    Caption = 'Settings';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "ARD_No."; Code[1])
        {
            Caption = 'ARD_No.';
            DataClassification = CustomerContent;
        }
        field(2; ARD_ShowTerritory; Boolean)
        {
            Caption = 'ARD_ShowTerritory';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "ARD_No.")
        {
            Clustered = true;
        }
    }
}
