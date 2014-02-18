name "webserver-apache"
description "Webservers powered by apache2"
run_list "recipe[apache2]"
override_attributes({
  "company" => "Daida",
})