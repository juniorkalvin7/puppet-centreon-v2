class centreon (
 $cdirh = "/etc/centreon/hosts",
 $cdirs = "/etc/centreon/services"
){
 include centreon::client::host
 include centreon::server::colletor
}
