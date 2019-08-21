trigger EventTrigger on Event__c (before insert) {
    EventHandler objHandler = new EventHandler();
    if(trigger.isBefore && trigger.isInsert)    
        objHandler.onBeforeInsert(trigger.new);
}