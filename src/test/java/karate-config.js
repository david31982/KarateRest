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
  } else if (env == 'e2e')
  {
 
  }
  var accessToken = "515affa5e7a547730508144f734fd2bbee8110efa67fb4afbcc1701e59ba3dec"     
  karate.configure('headers', {Authorization: 'Bearer '+ accessToken, Accept: 'application/json;charset=utf-8'})
  karate.configure('logPrettyRequest', true)
  karate.configure('logPrettyResponse', true)
  return config;
}