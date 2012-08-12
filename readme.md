#RbHex

this is a simple gem for doing hex and binary conversion in ruby
because the built in stuff seems to suck.

Example usage here:
    >> require "rbhex"
    => true
    >> RbHex::byte_array_from_hex_string("10")
    => [16]
    >> RbHex::byte_array_to_hex_string([100])
    => "64"
    >> RbHex::string_from_hex_string("64")
    => "d"
    >> RbHex::string_to_hex_string("c")
    => "63"

## Installation instructions
build the gem, and install it

    gem build rbhex.gemspec
    gem install rbhex-0.0.0.gem
