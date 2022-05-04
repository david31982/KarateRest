function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    myVarName: 'someValue',
    apiUrl: "https://gorest.co.in/public/v2/"
  }
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }

  var accessToken =
      "cb38137b888b5a2598884eb4477c469d2d9acd01ded00ae2c00a645f1f15f170";
    karate.configure("headers", {
      Authorization: "Bearer " + accessToken,
      Accept: "application/json;charset=utf-8",
    });

    karate.configure("logPrettyRequest", true);
    karate.configure("logPrettyResponse", true);

  return config;
}