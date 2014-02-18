name "base-rhel-family"
description "Base role for RHEL family servers"
run_list "recipe[yum]", "recipe[chef-client::cron]", "recipe[python]"
override_attributes({
  "company" => "Daida",
})