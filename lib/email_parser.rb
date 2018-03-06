# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

attr_accessor :emails

def initialize(email_list)
  @emails = email_list
end

def parse
  split_list = @emails.split(/[,\s]/)
  parsed_emails = split_list.reject(&:empty?)
  no_duplicates = parsed_emails.uniq
  no_duplicates
end

end
