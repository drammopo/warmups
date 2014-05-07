require 'date'
require_relative 'data'

# write code that will return an array of strings in the format "First Last (Title) - started m/d/yyyy"
formatted_info = []
EMPLOYEES.map do |employee|
  formatted_info << "#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) - started #{employee[:start_date].strftime('%m/%d/%Y')}"
end
print formatted_info
