length_of_time = ARGV[0].to_i
unit = ARGV[1]

HOURS = 3600
MINUTES = 60
SECONDS = 1

voice_names = ["Agnes", "Albert", "Alex", "Bad News", "Bahh", "Bells", "Boing", "Bruce","Bubbles", "Cellos", "Deranged", "Fred", "Good News", "Hysterical", "Ioana", "Junior", "Kathy", "Pipe Organ", "Princess", "Ralph", "Trinoids", "Vicki", "Victoria", "Whisper", "Xander", "Yelda", "Zosia", "Zuzana"]

def end_time(start_time, n, unit)
  start_time + (n * unit)
end

def convert_unit_of_measure(str)
  converted_unit = case
  when str.match(/hours/) then HOURS
  when str.match(/minute/) then MINUTES
  when str.match(/seconds/) then SECONDS
  else 10
  end
end

end_time = end_time(Time.now, length_of_time, convert_unit_of_measure(unit))

while true
  if Time.now >= end_time
    system("say -v \"#{voice_names.sample}\" \"Time\'s up\!\"")
    exit
  end
end
