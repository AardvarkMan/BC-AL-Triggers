namespace AardvarkLabs.BCALTriggers;

using AardvarkLabs.BCJourney;

permissionset 50000 ARD_Permissions
{
    Assignable = true;
    Caption = 'Trigger Exploration Permission', MaxLength = 30;
    Permissions =
        table ARD_Settings = X,
        tabledata ARD_Settings = RMID,
        page ARD_Settings = X,
        page ARD_TriggerHappy = X,
        page ARD_TriggerHappyList = X,
        page Ard_TriggerHappyQuery = X;
}
