name "webserver-nodejs"
description "Webservers for Node.JS apps"
run_list "recipe[nodejs::install_from_source]"
override_attributes({
  "company" => "Daida",
})