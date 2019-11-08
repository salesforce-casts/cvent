public class LCBindedController {

	@AuraEnabled
    public static String getAllAccounts(String msg){
        return msg;
    }
}