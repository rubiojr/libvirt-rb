require 'nokogiri'
require 'ffi/libvirt'

# This module is the namespace for the higher level library on top of
# libvirt, in typicaly Ruby library style. In contrast with {FFI::Libvirt}
# which is a direct layer on top of FFI, this namespace abstracts much of
# the manual work away (especially pointer handling) and exposes aspects
# of the API through nice Ruby objects.
#
# Due to the nature of this side of the project, there may be certain features
# not readily available which are supported by the API. If this is the case,
# you can use the {FFI::Libvirt} library alongside this side.
module Libvirt
  autoload :Connection, 'libvirt/connection'
  autoload :Domain, 'libvirt/domain'
  autoload :Error, 'libvirt/error'
  autoload :Exception, 'libvirt/exception'
  autoload :Spec, 'libvirt/spec'

  # Initializes the library by calling `virInitialize`. Most methods
  # in libvirt actually call this themselves, so its not strictly
  # necessary. However, it is good practice and is **highly** recommended
  # in a multithreaded environment.
  def self.initialize!
    FFI::Libvirt.virInitialize == 0
  end

  # Returns the version of `libvirt` on the client machine. **This is
  # not the version of the `libvirt` ruby library.** The result is
  # return as an array of `[major, minor, patch]`.
  #
  # @return [Array]
  def self.version
    FFI::Libvirt.version
  end
end

# Disable the stderr output which libvirt defaults to.
Libvirt::Error.on_error
