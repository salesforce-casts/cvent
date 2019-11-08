public class YoutubeController{
    
    public String searchQuery {set;get;}
    public String santizedSearchQuery {set;get;}
    public String endPoint;
    public String body{set;get;}
    
    public superItemMapOne[] dataSet {get;set;}
    //public List<String> dataSet {set;get;}
    
    public YoutubeController(){
        
    }
    
    public void search(){
        
        santizedSearchQuery = searchQuery.replaceAll(' ', '+');
        
        dataSet = new superItemMapOne[]{};
        //dataSet = new List<String>();
        endPoint = 'https://www.googleapis.com/youtube/v3/search?part=snippet&q='+ santizedSearchQuery + '&key=AIzaSyDkdowcU-eCfGdLc3NG22V9vFPiYlgS9M4';
       
        
        //1. Instantaite HTTP Class
        Http http = new Http();
        
        //2. Instantiate HTTPRequest Class
        HTTPRequest req = new HTTPRequest();
        req.setHeader('Accept', 'application/json');                  
        req.setEndpoint(endPoint);
        req.setMethod('GET');
        
        //3. Instantiate Response Class
        HTTPResponse response = http.send(req);
        body = response.getBody();
        
        //4. Parse the response
        
		YoutubeVideoDetails d = (YoutubeVideoDetails)JSON.deserialize(body, YoutubeVideoDetails.class);
        
        System.debug(' 🚀 ' +d.kind);
        System.debug(' 🐍 ' +d.pageInfo.totalResults);
        System.debug(' 🐟 ' +d.items[0].snippet.thumbnails.medium.url);
        
        
        for(Integer i=0; i< d.items.size(); i++){
			dataSet.add(new superItemMapOne(d.items[i].snippet.title,d.items[i].snippet.description,d.items[i].snippet.publishedAt,d.items[i].snippet.thumbnails.medium.url));            
        }
                
    }
    
    
    public class superItemMapOne{
        public String f1 {get;set;}
        public String f2 {get;set;}
        public String f3 {get;set;}
        public String f4 {get;set;}
       
        public superItemMapOne(String fc1, String fc2, String fc3, String fc4) {
            f1 = fc1;
            f2 = fc2;
            f3 = fc3;
            f4 = fc4;
        }

    }
    
    public class YoutubeVideoDetails{
        public String kind;	//youtube#searchListResponse
        public String etag;	//"XpPGQXPnxQJhLgs6enD_n8JR4Qk/jQdGM8UnFNsgTss83a7ZRsIsVEw"
        public String nextPageToken;	//CAUQAA
        public String regionCode;	//US
        public cls_pageInfo pageInfo;
        public cls_items[] items;
        
    }
    
    class cls_pageInfo {
        public Integer totalResults;	//1000000
        public Integer resultsPerPage;	//5
    }
    class cls_items {
        public String kind;	//youtube#searchResult
        public String etag;	//"XpPGQXPnxQJhLgs6enD_n8JR4Qk/V9igWZf99d9EpyJXEpFWf75AC4Q"
        public cls_id id;
        public cls_snippet snippet;
    }
    class cls_id {
        public String kind;	//youtube#video
        public String videoId;	//YYUiGs1dFno
    }
    class cls_snippet {
        public String publishedAt;	//2018-06-06T20:09:20.000Z
        public String channelId;	//UC1WYtW_z8Ib49-up6_ltsYA
        public String title;	//Salesforce training video for beginners
        public String description;	//Salesforce for beginners Salesforce Cloud Salesforce Sales Cloud Salesforce Service Cloud.
        public cls_thumbnails thumbnails;
        public String channelTitle;	//myTech-school
        public String liveBroadcastContent;	//none
    }
    class cls_thumbnails {
        public cls_default de;
        public cls_medium medium;
        public cls_high high;
    }
    class cls_default {
        public String url;	//https://i.ytimg.com/vi/YYUiGs1dFno/default.jpg
        public Integer width;	//120
        public Integer height;	//90
    }
    class cls_medium {
        public String url;	//https://i.ytimg.com/vi/YYUiGs1dFno/mqdefault.jpg
        public Integer width;	//320
        public Integer height;	//180
    }
    class cls_high {
        public String url;	//https://i.ytimg.com/vi/YYUiGs1dFno/hqdefault.jpg
        public Integer width;	//480
        public Integer height;	//360
    }
    
}