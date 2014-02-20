name "webserver-tomcat"
description "Webservers for web apps using Tomcat"
run_list "recipe[tomcat]"
override_attributes({
  "company" => "Daida",
})