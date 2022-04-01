function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }

  
  var config = {
     apiUrl: 'https://gorest.co.in/public/v2/'
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {

    var accessToken = "ba0a65d7f94ef8e7e69080b8ea44dcec828b7cc654066751a0aa66af0689e1f4" 
    
    karate.configure('headers', {Authorization: 'Bearer '+ accesToken, Accept: 'application/json;charset=utf-8'})
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);
    
  }
  return config;
}