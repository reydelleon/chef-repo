name "dbserver-mongodb"
description "Database server powered by MongoDB"
run_list "recipe[mongodb::10gen_repo]", "recipe[mongodb::default]"
override_attributes({
  "company" => "Daida",
})