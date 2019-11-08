public class BoxController {

    public String authCode;
    public String body{set;get;}
    
    public PageReference login(){
        return new PageReference('https://account.box.com/api/oauth2/authorize?response_type=code&client_id=f2vrhpa78pzeiv4kmi77pcl678phoz8k');
    }
    
    public void getAccessToken(){
        
        authCode = apexpages.currentpage().getparameters().get('code');
        
        Http http = new Http();
        
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.box.com/oauth2/token');
        req.setMethod('POST');
        req.setHeader('Accept', 'application/json');
        req.setBody('grant_type=authorization_code&code='+ authCode +'&client_id=f2vrhpa78pzeiv4kmi77pcl678phoz8k&client_secret=RkKPGP8B9Eu4vGFonVq1koFQZSnyfV0R');
        
        HttpResponse res = http.send(req);
        
        body = res.getBody();
        
        fromJSON d = (fromJSON)JSON.deserialize(body, fromJSON.class);
        
        System.debug(' 🚀 ' +d.access_token);
        
        body = getFolders(d.access_token);
         
         
        
    }
    
    public String getFolders(String access_token){
        Http http = new Http();
        HttpRequest reqNew = new HttpRequest();
         reqNew.setEndpoint('https://api.box.com/2.0/folders/52364966125/items');
         reqNew.setMethod('GET');
         reqNew.setHeader('Accept', 'application/json');
         reqNew.setHeader('Authorization', 'Bearer '+access_token);
         HttpResponse resNew = http.send(reqNew);
         
         
         return resNew.getBody();
    }
    
    public class fromJSON{
        public String access_token; //aJsDuwJmng2NWUawJweoVGD95ea4v5XM
        public Integer expires_in;  //4209
        public cls_restricted_to[] restricted_to;
        public String refresh_token;    //CjJmNlPPzN9xZiuaSz6yrIEEMiQc1wtYbD5YWKRNl9q7lEeoXh3osuaA2p1VVfOB
        public String token_type;   //bearer
    
    }
    class cls_restricted_to {
    }

}