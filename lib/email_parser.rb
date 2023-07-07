# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize(emails)
      @emails = emails
    end
  
    def parse
      unique_emails = emails.split(/[,\s]+/).uniq
      unique_emails.reject { |email| email.empty? }
    end
  
    private
  
    attr_reader :emails
  end
  
