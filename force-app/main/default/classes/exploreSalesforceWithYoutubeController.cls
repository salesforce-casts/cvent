public class exploreSalesforceWithYoutubeController {
    
    
    
    public String endPoint;
    public String body{set; get;}
    public String searchText{set;get;}
    
    public superItemMapOne[] dataSetOne {get;set;}
    
    public PageReference fetchData() {
        
        searchText = searchText.replace(' ', '+');
        endPoint = 'https://www.googleapis.com/youtube/v3/search?part=snippet&q='+ searchText +'&key=AIzaSyCLODKJJmjtjB9zWYF_P8eoN_jvNNvZwwQ';
        
        dataSetOne = new superItemMapOne[]{};
        
        //1. Http Class instantitation 
        Http http = new Http();
        
        //2. Form a Request
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');        
        request.setEndpoint(endPoint);
        request.setHeader('content-type', 'application/json');
        
        //3. Send it, Get Response and parse it
        
        HttpResponse response = http.send(request);        
        body = response.getBody();
        
		fromJSON d = (fromJSON)JSON.deserialize(body,fromJSON.class);
        
        for(Integer i=0; i< d.items.size(); i++){    
			dataSetOne.add(new superItemMapOne(d.items[i].snippet.title, d.items[i].snippet.description, d.items[i].snippet.publishedAt, d.items[i].snippet.thumbnails.medium.url));            
        }    
        
        return null;
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

    public class fromJSON{
        public String kind;	//youtube#searchListResponse
        public String etag;	//"XpPGQXPnxQJhLgs6enD_n8JR4Qk/wcCCIq9cbibFenm2RhXZ0g3OIgY"
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
        public String etag;	//"XpPGQXPnxQJhLgs6enD_n8JR4Qk/gunwc0Me8ZtHj2VnV8LuUEIUP-4"
        public cls_id id;
        public cls_snippet snippet;
    }
    class cls_id {
        public String kind;	//youtube#channel
        public String channelId;	//UCUpquzY878NEaZm5bc7m2sQ
    }
    class cls_snippet {
        public String publishedAt;	//2006-08-03T21:52:39.000Z
        public String channelId;	//UCUpquzY878NEaZm5bc7m2sQ
        public String title;	//Salesforce
        public String description;	//Salesforce is the world's #1 customer relationship management (CRM) platform. Our cloud-based, CRM applications for sales, service, marketing, and more ...
        public cls_thumbnails thumbnails;
        public String channelTitle;	//Salesforce
        public String liveBroadcastContent;	//upcoming
    }
    class cls_thumbnails {
        public cls_default default_test;
        public cls_medium medium;
        public cls_high high;
    }
    class cls_default {
        public String url;	//https://yt3.ggpht.com/-zN5R10P8WEI/AAAAAAAAAAI/AAAAAAAAAAA/8M64YLk0HU0/s88-c-k-no-mo-rj-c0xffffff/photo.jpg
    }
    class cls_medium {
        public String url;	//https://yt3.ggpht.com/-zN5R10P8WEI/AAAAAAAAAAI/AAAAAAAAAAA/8M64YLk0HU0/s240-c-k-no-mo-rj-c0xffffff/photo.jpg
    }
    class cls_high {
        public String url;	//https://yt3.ggpht.com/-zN5R10P8WEI/AAAAAAAAAAI/AAAAAAAAAAA/8M64YLk0HU0/s800-c-k-no-mo-rj-c0xffffff/photo.jpg
    }
    
    
    
    
}