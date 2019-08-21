@isTest
private class AttendeeInformationLtngTest
{
    static testMethod void unitTest(){
        Event__c objEvent = TestDataFactory.getEvent();
        insert objEvent;
        Lead objLead = TestDataFactory.getLead();
        objLead.Event__c = objEvent.Id;
        insert objLead;
        
        System.assertEquals(objLead.FirstName, 'test');
        
        AttendeeInformationLtng.getAttendeeInformation();
    }
}