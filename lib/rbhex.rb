class RbHex

    def self.byte_array_from_hex_string(hex_string)
        while hex_string.length % 2 != 0
            hex_string = "0" + hex_string
        end

        pairs = hex_string.scan /../ 
        return pairs.map{ |b| b.to_i(16) }

    end

    def self.byte_array_to_hex_string(byte_array)
        byte_array.map { |b| sprintf("%02x", b) }.join
    end

    def self.string_from_hex_string(hex_string)
        ba = RbHex::byte_array_from_hex_string(hex_string) 
        return ba.pack("c*")
    end

    def self.string_to_hex_string(string)
        bytes = string.bytes
        return RbHex::byte_array_to_hex_string(bytes)
    end
end

