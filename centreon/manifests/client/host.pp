class centreon::client::host (
	$enabled = true,
	$poller_name = "Central",
	$alias = $::hostname,
	$template = generic-host,
	$address = $::ipaddress,
	$check_command = undef,
	$check_command_arguments = undef,
	$check_period = 24x7,
	$icon_image = "logos/centos.png",
	$statusmap_image = "logos/centos.png",
        $username = admin,
	$password = centreon,
	$snmp_community = 'public',
	$snmp_version = "1",
	$addhostgroup = "SERVIDORES-LINUX"
	){

	@@file { $::hostname:
	ensure  => present,
	path    => "$centreon::cdir/$::hostname",
	content => template("centreon/host/clapi.conf.erb"),
	mode    => 775,
	tag     => "host_clapi",
	}
}
