@isTest
public class TestDataFactory
{
    public static Event__c getEvent(){
        Event__c objEvent = new Event__c();
        objEvent.Name = 'Hudle Sports Fest';
        objEvent.Event_Start_Date__c = Date.today().addDays(5);
        objEvent.Event_End_Date__c = Date.today().addDays(6);
        
        return objEvent;
    }
    
    public static Lead getLead(){
        Lead objLead = new Lead();
        objLead.FirstName = 'test';
        objLead.LastName = 'test';
        objLead.Email = 'test@test.com';
        objLead.MobilePhone = '1122334455';
        objLead.Company = 'test';
        
        return objLead;
    }
}