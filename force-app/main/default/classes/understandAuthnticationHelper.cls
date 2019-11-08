public class understandAuthnticationHelper {
	public static void foo(){
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        HttpResponse res = new HttpResponse();
        res = http.send(req);
        res.getBody(); 
        
    }
}