public class LandingPageController
{
    public List<Event__c> lstEvent{get; set;} 
    /********************Constructor********************/
    public LandingPageController(){
        lstEvent = [select Id, Name, Event_Start_Date__c, Event_End_Date__c from Event__c where Event_Start_Date__c > TODAY];
    }
}