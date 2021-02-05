function fn(){
var config=
{
baseUrl: "https://reqres.in",
listUsers: "/api/users?page=2"
}
karate.log("From karate-config file");
karate.configure("ssl",false);
karate.configure("afterScenario",function(){karate.log('after scenario inside config');});
return config;
}