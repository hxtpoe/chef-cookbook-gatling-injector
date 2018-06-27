# Gatling injector
This chef cookbook automates preparing new Gatling injector

# How to run 

All you need is to add injector recipe to specific node run list.

    knife node run_list add [NODE_NAME] 'recipe[injector]'


# DIR structure

    .
    ├── cookbooks
    │   └── chef-cookbook-gatling-injector
    │       ├── Berksfile
    │       ├── metadata.rb
    │       ├── recipes
    │       │   ├── default.rb
    │       │   ├── java.rb
    │       │   ├── limits.rb
    │       │   ├── sbt.rb
    │       │   └── users.rb
    └── data_bags
        └── users
            └── injector.json


#  Data bag

Create injector.json file with user data, for example:

    {
      "id"       : "injector",
      "comment"  : "gatling injector",
      "home"     : "/home/injector",
      "password"  : "$1$RCJcI/fw$4mRELkyZ.6b6MP7xFgoiO.",
      "shell": "\/bin\/bash",
      "groups"   : ["gatling"],
      "ssh_keys" : []
    }


create data bag

    knife data_bag create users


For more information about creating users, visit [Users Cookbook](https://supermarket.chef.io/cookbooks/users)