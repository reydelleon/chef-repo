name "webserver-nginx"
description "Webservers powered by nginx"
run_list "recipe[nginx]"
override_attributes({
  "company" => "Daida",
})