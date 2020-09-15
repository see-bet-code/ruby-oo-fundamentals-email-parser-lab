# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'csv'

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    addresses = []

    def parse
        @email_addresses.include?(",") ? parsed = @email_addresses.gsub(",", ""): \
            parsed = @email_addresses
        parsed.split(" ").uniq
     end

end