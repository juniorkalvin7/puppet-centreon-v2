Puppet::Type.newtype(:centreon_host) do
    @doc = "Centreon Host - Puppet Management Interface with Centreon CLAPI"

    ensurable

    newparam(:name) do
      desc "Name of the host"
    end

    newparam(:icon_image) do
      desc "Path of the CLAPI binaries."
      defaultto "logos/centos.png"
    end

    newparam(:username) do
      desc "The CLAPI username."
    end

    newparam(:password) do
      desc "The CLAPI username password."
    end

    newparam(:statusmap_image) do
      desc "The CLAPI export file location."
      defaultto "logos/centos.png"
    end
    
    newparam(:poller_name) do
      desc "Poller name"
      defaultto "Central"
    end

    newparam(:alias) do
      desc "Hostname"
    end

    newparam(:address) do
      desc "IP Address"
    end

    newparam(:template) do
      desc "template"
      defaultto "generic-host"
    end

    newparam(:check_command) do
      desc "Host Check Command"
    end

    newparam(:check_command_arguments) do
      desc "Host Command Args"
    end

    newparam(:snmp_community) do
      desc "snmp_community"
      defaultto "public"
    end

    newparam(:snmp_version) do
      desc "Host snmp_version"
     defaulto "1"
    end

end
