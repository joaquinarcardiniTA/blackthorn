@isTest
private class RegistrationControllerTest
{
    static testMethod void unitTest(){
        Event__c objEvent = TestDataFactory.getEvent();
        insert objEvent;
        
        System.assertEquals(objEvent.Name, 'Hudle Sports Fest');
        
        ApexPages.currentPage().getParameters().put('Id', objEvent.Id);
        RegistrationController objRegistrationController = new RegistrationController();
        objRegistrationController.firstName = 'test';
        objRegistrationController.lastName = 'test';
        objRegistrationController.emailAddress = 'test@test.com';
        objRegistrationController.mobilePhone = '1234567890';
        objRegistrationController.company = 'test';
        
        objRegistrationController.createLead();
    }
}