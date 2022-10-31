public class ContactTriggerHandler {
    public static void contactUpdateValidation1(list<contact> contTriggerNew, list<contact> contTriggerOld, map<id, contact> contTriggerNewMap, map<id, contact> contTriggerOldMap) {
        //prevent to update contact record if leadsource is parnerReferral
        for (contact eachCnt : contTriggerNew) {
            Contact oldContact = contTriggerOldMap.get(eachCnt.id);
            if (eachCnt.LeadSource == 'Partner Referral') {
                eachCnt.addError('Cannot update \'Partner Referral\' contact.');
            }
        }
    }
    public static void contactUpdateValidation2(list<contact> contTriggerNew, list<contact> contTriggerOld, map<id, contact> contTriggerNewMap, map<id, contact> contTriggerOldMap){
        for (contact eachContact : contTriggerNew) {
            if (eachContact.LeadSource != contTriggerOldMap.get(eachContact.id).LeadSource) {
                String customValidation = system.label.ContactValidation2;
                eachContact.LeadSource.addError(customValidation);
            }
        }
    }
    public static void updateAccNumberOfContacts(list<contact> contTriggerNew, list<contact> contTriggerOld) {
        Set<id> accountIds = new Set<id>();
        if (trigger.isinsert || trigger.isupdate || trigger.isundelete) {
            for (contact eachCont : contTriggerNew) {
                accountIds.add(eachCont.AccountId);
            }
        }
        if (trigger.isupdate || trigger.isdelete) {
            for (contact eachCont : contTriggerOld) {
                accountIds.add(eachCont.AccountId);
            }
        }
        if (!accountIds.isEmpty()) {
            //all account in accountsids, and all its contacts using inner query
            List<Account> listAcc = [select id, Number_of_Contacts__c, (select id from contacts) from account where id in :accountIds];

            list<account> updateAcc = new list<account>();
            for (account eachAcc : listAcc) {
                eachAcc.Number_of_Contacts__c = eachAcc.Contacts.size();
                updateAcc.add(eachAcc);
            }
            update updateAcc;
        }
    }
}
