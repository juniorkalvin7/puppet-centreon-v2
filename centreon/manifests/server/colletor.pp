class centreon::server::colletor {

	file { "/etc/centreon/hosts/":
		ensure  => directory,
		recurse => true,
		force   => true,
		path    => "/etc/centreon/hosts/"
		;

		"/etc/centreon/services/"
		ensure  => directory,
		recurse => true,
		force   => true,
		path    => "/etc/centreon/services/"
		;
	}

	File <<| tag == "host_clapi" |>> {
		notify => Service["centpollers"],
		}

	File <<| tag == "service_clapi" |>> {
		notify => Service["centpollers"],
		}


    	service { 'centpollers':
    		ensure   => 'running',
    		provider => base,
    		start    => '/etc/init.d/centpollers start',
    		restart  => '/etc/init.d/centpollers restart',
    		stop     => '/etc/init.d/centpollers stop',
    		status   => '/etc/init.d/centpollers status',
  }
 }

