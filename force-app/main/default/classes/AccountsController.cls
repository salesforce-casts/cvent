public class AccountsController {
    
    @AuraEnabled
    public static List<Account> fetchAccounts(){
        return [SELECT Id, Name, Rating, Industry FROM Account];
    }
}