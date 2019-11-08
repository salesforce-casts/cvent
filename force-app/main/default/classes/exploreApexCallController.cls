public class exploreApexCallController {
    
    
    @AuraEnabled
    public static String fetchRecords(String firstname, String lastname){
        return firstname + lastname;
    }
    
    
    @AuraEnabled
    public static String fetchAllRecords(String firstname, String lastname){
        return firstname + lastname;
    }
}