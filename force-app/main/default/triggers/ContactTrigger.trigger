trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {

    TriggerSwitch__c contactSwitch = TriggerSwitch__c.getInstance('contact');
    if (contactSwitch.switch__c == false) {
        return;
    }

    if (trigger.isBefore && trigger.isUpdate) {
        //call validation methods.
        ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
        ContactTriggerHandler.contactUpdateValidation2(trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if (trigger.isAfter) {
        //call handler method
        ContactTriggerHandler.updateAccNumberOfContacts(Trigger.New, Trigger.Old);
    }
}