Puppet::Type.newtype(:centreon_service) do
    @doc = "Centreon Service - Puppet Management Interface with Centreon CLAPI"

    ensurable

    newparam(:name) do
      desc "Name of the service"
    end

    newparam(:active_checks_enabled) do
      desc "active_checks_enabled"
    end

    newparam(:check_period) do
      desc "check_period"
    end

    newparam(:service_notification_options) do
      desc "service_notification_options"
    end

    newparam(:notifications_enabled) do
      desc "notifications_enabled"
    end

    newparam(:hostname) do
      desc "Hostname"
    end

    newparam(:description) do
      desc "Description of the service"
    end

    newproperty(:check_command) do
      desc "Name of the check command"
    end

    newproperty(:check_command_arguments) do
      desc "Name of the check command arguments"
    end

    newparam(:template) do
      desc "Service Template to use"
    end

end
