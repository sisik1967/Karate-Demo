function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    baseUrl: 'https://api.realworld.io/api/'
  }
  if (env == 'dev') {
    config.userEmail = "sabahattin67@gmail.com",
    config.userPassword = "qatester2022"
      } else if (env == 'e2e') {
    // customize
  }
  //var accessToken = karate.callSingle('classpath:features/conduit/postRequest5.feature@login', config).token;
  //karate.configure('headers', {Authorization: 'Token ' + accessToken,
  //                            'Content-Type': 'application/json'});
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  //  karate.configure('connectTimeout', 5000);
  //  karate.configure('readTimeout', 5000);
  return config;
}