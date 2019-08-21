public class AttendeeInformationLtng
{
    @AuraEnabled
    public static List<AttendeeInformationWrapper> getAttendeeInformation(){
        List<AttendeeInformationWrapper> lstAttendeeInformationWrapper = new List<AttendeeInformationWrapper>();
        for(Event__c objEvent : [select Id, Name, Event_Start_Date__c,Event_End_Date__c, (select Id, FirstName, LastName, Email, MobilePhone, Company from Leads__r) from Event__c]){
            if(objEvent.Leads__r.size() > 0){
                lstAttendeeInformationWrapper.add(new AttendeeInformationWrapper(objEvent, objEvent.Leads__r));
            }
        }
        
        return lstAttendeeInformationWrapper;
    }
    
    /************************Wrapper Class***********************/
    public class AttendeeInformationWrapper{
        @AuraEnabled
        public Event__c objEvent;
        @AuraEnabled
        public List<Lead> lstAttendee;
        
        public AttendeeInformationWrapper(Event__c objEvent, List<Lead> lstAttendee){
            this.objEvent = objEvent;
            this.lstAttendee = lstAttendee;
        }
    }
}