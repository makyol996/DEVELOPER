public class AccountTriggerHandler {
    public static void updateDescription(List<account> accTriggerNew, 
    List<account> accTriggerOld,
    Map<id, account> accTriggerNewMap,
    Map<id, account> accTriggerOldMap) {

        for (account eachAcc : accTriggerNew) {
            boolean updateDesc = false;
            if (accTriggerOldMap == null && eachAcc.Active__c == 'Yes') {
                updateDesc = true;
            }
            if (accTriggerOldMap != null) {
                if (eachAcc.Active__c == 'Yes' 
                && accTriggerOldMap.get(eachAcc.Id).Active__c != accTriggerNewMap.get(eachAcc.Id).Active__c) {
                    updateDesc = true;
                }
            }
            if (updateDesc) {
                eachAcc.Description = 'Account is now Active. ENJOY!';
            }
        }
    }
    public static void updateVIPforAllContacts(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap) {

        //prepare set of account ids whose VIP field is changed
        set<id> accountIds = new set<id>();
        for (account eachAcc : accTriggerNew) {
               if (eachAcc.vip__c != accTriggerOldMap.get(eachAcc.id).VIP__c) {
                    accountIds.add(eachAcc.Id);
               } 
        }
        List<contact> listContacts = [select id, accountid, vip__c from contact WHERE AccountId in :accountIds];
        for (contact eachContact : listContacts) {
            account contAccount = accTriggerNewMap.get(eachContact.AccountId);
            Boolean accVIP = contAccount.vip__c;
            eachContact.vip__c = accVIP;
        }
        update listContacts;
    }
}