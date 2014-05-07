require 'date'
require_relative 'data'

# write code that will return an array of employees who started before 2006
hired_before_2006 = []
EMPLOYEES.map do |employee|
  year = employee[:start_date].strftime('%Y').to_i
  hired_before_2006 << employee if year < 2006
end
print hired_before_2006
