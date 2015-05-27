# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "saiteja"
client_key               "#{current_dir}/saiteja.pem"
validation_client_name   "learningchef-validator"
validation_key           "#{current_dir}/learningchef-validator.pem"
chef_server_url          "https://above-ThinkPad-Edge-E440/organizations/learningchef"
cookbook_path            ["#{current_dir}/../cookbooks"]
