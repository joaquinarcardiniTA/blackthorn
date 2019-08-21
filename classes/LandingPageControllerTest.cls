@isTest
private class LandingPageControllerTest
{
    static testMethod void unitTest(){
        Event__c objEvent = TestDataFactory.getEvent();
        insert objEvent;
        
        System.assertEquals(objEvent.Name, 'Hudle Sports Fest');
        
        LandingPageController objLandingPageController = new LandingPageController();
    }
}