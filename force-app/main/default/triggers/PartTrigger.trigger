/*
  ** Author Name : ----
  ** Description : Write a Trigger when part is insert then automatically SF task will created
  ** Trigger name : PartTrigger this trigger controller is PartTriggerController and test class is PartTriggerControllerTest
*/

trigger PartTrigger on compliancequest__SQX_Part__c (after insert) 
{
    if(Trigger.isInsert && Trigger.isAfter)
    {
        PartTriggerController.CreateTaskRecord(Trigger.New);
    }

}