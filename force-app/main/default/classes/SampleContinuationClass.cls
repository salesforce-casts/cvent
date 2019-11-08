public with sharing class SampleContinuationClass {
    // Callout endpoint as a named credential URL
    // or, as shown here, as the long-running service URL
    private static final String LONG_RUNNING_SERVICE_URL = 'https://www.googleapis.com/youtube/v3/search?part=snippet&q=salesforce&key=AIzaSyDkdowcU-eCfGdLc3NG22V9vFPiYlgS9M4';
    
    // Action method
    @AuraEnabled(continuation=true cacheable=true)
    public static Object startRequest() {

      Continuation con = new Continuation(40);

      con.continuationMethod='processResponse';

      con.state='Hello, World!';

      HttpRequest req = new HttpRequest();
      req.setMethod('GET');
      req.setEndpoint(LONG_RUNNING_SERVICE_URL);

      con.addHttpRequest(req);

      return con;
    }
    
    // Callback method
    @AuraEnabled(cacheable=true)
    public static Object processResponse(List<String> labels, Object state) {
		System.debug(' 🚀 ' +state);
      HttpResponse response = Continuation.getResponse(labels[0]);

      String result = response.getBody();
        System.debug(' 🚀 ' +result);
      return result;
    }
}