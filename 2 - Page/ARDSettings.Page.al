namespace AardvarkLabs.BCJourney;

page 50007 ARD_Settings
{
    ApplicationArea = All;
    Caption = 'ARD Example Settings';
    PageType = Card;
    SourceTable = ARD_Settings;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(ARD_ShowTerritory; Rec.ARD_ShowTerritory)
                {
                }
            }
        }
    }
}
