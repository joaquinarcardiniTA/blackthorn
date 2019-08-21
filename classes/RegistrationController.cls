public class RegistrationController
{
    public String firstName{get; set;}
    public String lastName{get; set;}
    public String emailAddress{get; set;}
    public String mobilePhone{get; set;}
    public String company{get; set;}
    String eventId;
    /*************************Construtor*************************/
    public RegistrationController(){
        eventId = ApexPages.currentPage().getParameters().get('Id');
    }
    
    public void createLead(){
        Lead objLead = new Lead();
        objLead.FirstName = firstName;
        objLead.LastName = lastName;
        objLead.Email = emailAddress;
        objLead.MobilePhone = mobilePhone;
        objLead.Event__c = eventId;
        objLead.Company = company;
        try{
            insert objLead;
        }catch(dmlException e){
            ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,e.getDMLMessage(0)));
        }
    }
}