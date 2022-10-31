trigger CaseTrigger on Case (before insert, before update) {
    
    if (trigger.isInsert) {
        System.debug('before insert case');
    }
    if (trigger.isUpdate) {
        CaseTriggerHandler.countTriggerExecution++;
        System.debug('case trigger execution count ==> ' + CaseTriggerHandler.countTriggerExecution);
        CaseTriggerHandler.countTriggerRecords += trigger.size;
        System.debug('case trigger record count ==> ' + CaseTriggerHandler.countTriggerRecords);
    }
}