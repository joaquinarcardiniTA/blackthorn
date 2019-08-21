public class EventHandler
{
    //This method is called on before insert event.
    public void onBeforeInsert(List<Event__c> lstEvent){
        populateSiteURL(lstEvent);
    }
    //This method is used to populate the site URL.
    private void populateSiteURL(List<Event__c> lstEvent){
        Site objSite = [SELECT GuestUserId, Name, Subdomain, UrlPathPrefix FROM Site WHERE Name = 'Event_Registration_App'];
        Organization org = [SELECT InstanceName, IsSandbox, OrganizationType FROM Organization];
        String siteFullUrl = 'https://' + objSite.Subdomain + '.';
        siteFullUrl += (org.IsSandbox || org.OrganizationType == 'Developer Edition' ? (org.InstanceName.toLowerCase() + '.') : '') + 'force.com';
        if(String.isNotBlank(objSite.UrlPathPrefix))
            siteFullUrl += '/' + objSite.UrlPathPrefix;
        for(Event__c objEvent : lstEvent){
            objEvent.Registration_Link__c = siteFullUrl;
        }
    }
}