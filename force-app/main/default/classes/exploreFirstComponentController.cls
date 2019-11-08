public class exploreFirstComponentController {
    
    
    @AuraEnabled
    public static List<Account> fetchRecords(String message){
		return [SELECT Id, Name, Rating FROM Account WHERE Name =: message];
    }
    
}