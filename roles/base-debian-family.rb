name "base-debian-family"
description "Base role for Debian family servers"
run_list "recipe[apt]", "recipe[mc]", "recipe[chef-client::cron]", "recipe[python]", "recipe[java]"
override_attributes({
  "company" => "Daida",
})