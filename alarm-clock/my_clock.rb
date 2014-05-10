length_of_time = ARGV[0].to_i
unit = ARGV[1]

converted_unit = case
when unit.match(/hours/) then 3600
when unit.match(/minute/) then 60
when unit.match(/seconds/) then 1
else 10
end

start_time = Time.now
end_time = start_time + (length_of_time * converted_unit)

puts "This script will stop around #{end_time}"

while true
  if Time.now == end_time
    system("say \"Time\'s up\!\"")
    exit
  end
end
