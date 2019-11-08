global with sharing class AccountRemoter {

    public String accountName {set; get; }
    public static Account account{ set;get; }
    
    @RemoteAction
    global static Account getAccount(String accountName) {
        account = [SELECT Id, Name, Phone, Type, NumberOfEmployees FROM Account WHERE Name = :accountName];
        return account;
    }
}