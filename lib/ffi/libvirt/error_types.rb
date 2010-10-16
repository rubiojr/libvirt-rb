module FFI
  module Libvirt
    # The types for virterror, which is a separate header file than
    # libvirt.h, so we're separating it in the FFI code to make it
    # easier to maintain.

    # Pointers to various libvirt structs
    typedef :pointer, :virErrorPtr

    # Callbacks
    callback :virErrorFunc, [:void_pointer, :virErrorPtr], :void

    # Enums
    enum :virErrorLevel, [:none, :warning, :error]
    enum :virErrorNumber, [:ok,
                           :internal_error,
                           :no_memory,
                           :no_support,
                           :unknown_host,
                           :no_connect,
                           :invalid_conn,
                           :invalid_domain,
                           :invalid_arg,
                           :operation_failed,
                           :get_failed,
                           :post_failed,
                           :http_error,
                           :sexpr_serial,
                           :no_xen,
                           :xen_call,
                           :os_type,
                           :no_kernel,
                           :no_root,
                           :no_source,
                           :no_target,
                           :no_name,
                           :no_os,
                           :no_device,
                           :no_xenstore,
                           :driver_full,
                           :call_failed,
                           :xml_error,
                           :dom_exist,
                           :operation_denied,
                           :open_failed,
                           :read_failed,
                           :parse_failed,
                           :conf_syntax,
                           :write_failed,
                           :xml_detail,
                           :invalid_network,
                           :network_exist,
                           :system_error,
                           :rpc,
                           :gnutls_error,
                           :no_network,
                           :invalid_mac,
                           :auth_failed,
                           :invalid_storage_pool,
                           :invalid_storage_vol,
                           :no_storage,
                           :no_storage_pool,
                           :no_storage_vol,
                           :no_node,
                           :invalid_node_device,
                           :no_node_device,
                           :no_security_model,
                           :operation_invalid,
                           :no_interface,
                           :no_interface,
                           :invalid_interface,
                           :multiple_interfaces,
                           :no_nwfilter,
                           :invalid_nwfilter,
                           :no_nwfilter,
                           :build_firewall,
                           :no_secret,
                           :invalid_secret,
                           :no_secret,
                           :config_unsupported,
                           :operation_timeout,
                           :migrate_persist_failed,
                           :hook_script_failed,
                           :invalid_domain_snapshot,
                           :no_domain_snapshot]

  end
end
