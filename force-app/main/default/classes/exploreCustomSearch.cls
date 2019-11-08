public class exploreCustomSearch {
    
    @AuraEnabled
    public static List<Lead> customSearch(String searchText){
        List<Lead> leads = Database.query('SELECT Id, Name, MobilePhone, Email from Lead WHERE Name LIKE \'%' + searchText +'%\' ');
        //List<Lead> leads = [SELECT Id, Name FROM Lead];
        return leads;
    }
    
    
}