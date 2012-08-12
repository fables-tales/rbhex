class RbHex

    # Public: Creates a byte array from a hex string.
    # 
    # hex_string - the hex string to turn into a byte array
    #
    # Examples
    #
    #   RbHex::byte_array_from_hex_string("10")
    #   # => [16]
    #
    # Returns a byte array with one value per hex pair in the string
    def self.byte_array_from_hex_string(hex_string)

        # Make sure that it's length 2
        while hex_string.length % 2 != 0
            hex_string = "0" + hex_string
        end

        # Turn the string into a sequence of pairs of characters
        pairs = hex_string.scan /../ 

        # Map base16 conversion of the pairs
        return pairs.map{ |b| b.to_i(16) }
    end

    # Public: Creates a hex string from a byte array.
    #
    # byte_array - the byte array to turn into a hex string
    #
    # Examples
    #
    #   RbHex::byte_array_to_hex_string([16])
    #   # => "10"
    #
    # Returns a hex string with one hex pair per value in the array
    def self.byte_array_to_hex_string(byte_array)
        byte_array.map { |b| sprintf("%02x", b) }.join
    end

    # Public: Creates a string from a hex string.
    #
    # hex_string - the hex string to turn back into a normal string
    #
    # Examples
    #
    #  RbHex::string_from_hex_string("616263")
    #  # => "abc"
    #
    # Returns a string represented by the bytes of the hex string in ascii
    def self.string_from_hex_string(hex_string)
        ba = RbHex::byte_array_from_hex_string(hex_string) 
        return ba.pack("c*")
    end

    # Public: Creates a hex string from a string.
    #
    # string - the string to convert into a hex string
    #
    # Examples
    #
    #   RbHex::string_to_hex_string("abc")
    #   # => "616263"
    #
    # Returns a hex string which is the bytes of the original string
    def self.string_to_hex_string(string)
        bytes = string.bytes
        return RbHex::byte_array_to_hex_string(bytes)
    end
end

