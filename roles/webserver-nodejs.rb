name "webserver-nodejs"
description "Webservers for Node.JS apps"
run_list "recipe[nodejs::install_from_source]", "recipe[pm2]"
override_attributes({
  "company" => "Daida",
})