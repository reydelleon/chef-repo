name "base-rhel-family"
description "Base role for RHEL family servers"
run_list "recipe[yum]", "recipe[mc]", "recipe[chef-client::cron]", "recipe[python]", "recipe[java]"
override_attributes({
  "company" => "Daida",
})