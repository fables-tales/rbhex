require "rbhex"

describe "RbHex, #byte_array_from_hex_string" do
    it "returns the correct byte array 1" do
        result = RbHex::byte_array_from_hex_string("64")
        result.should == [0x64]
    end

    it "returns the correct byte array 2" do
        result = RbHex::byte_array_from_hex_string("646568")
        result.should == [0x64, 0x65, 0x68]
    end

end

describe "RbHex, #byte_array_to_hex_string" do
    it "returns the correct hex string 1" do
        result = RbHex::byte_array_to_hex_string([0x64])
        result.should == "64"
    end

    it "returns the correct hex string 2" do
        result = RbHex::byte_array_to_hex_string([0x40, 0x20, 0x13])
        result.should == "402013"
    end
end


describe "RbHex, #string_from_hex_string" do
    it "returns the correct string 1" do
        result = RbHex::string_from_hex_string("64")
        result.should == "d"
    end
    
    it "returns the correct string 2" do
        result = RbHex::string_from_hex_string("646568")
        result.should == "deh"
    end
end

describe "RbHex, #string_to_hex_string" do
    it "returns the correct hex string 1" do
        result = RbHex::string_to_hex_string("d")
        result.should == "64"
    end

    it "returns the correct hex string 2" do
        result = RbHex::string_to_hex_string("deh")
        result.should == "646568"
    end
end
