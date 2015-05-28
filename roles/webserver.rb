name "webserver"
description "Role of a Basic Webserver"

default_attributes(
	"nginx" => {
		"version" => "1.4.0",
		"activate" => "true"
		},
	"chkconfig" => "on"
)

#default_attributes(
#  "activemq" => {
#    "use_default_config" => true,
#    "version" => "5.10.0",
#    "queue" => {
#      "optimizedDispatch" => true,
#      "producerFlowControl" => false
#    },
#    "persistence" => {
#      "type" => "kahaDB"
#    },
#    "wrapper" => {
#        "min_memory" => '2G',
#        "max_memory" => '2G'
#    },
#    "broker" => {
#        "memoryUsage" => '70'
#    },
#    "mirror" => "http://download.cclnimbus.com/software"
#  }
#)



