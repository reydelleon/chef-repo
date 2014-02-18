name "base-debian-family"
description "Base role for Debian family servers"
run_list "recipe[apt]", "recipe[chef-client::cron]", "recipe[python]"
override_attributes({
  "company" => "Daida",
})