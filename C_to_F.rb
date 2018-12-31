print "Please enter a temperature and scale (C or F): "
STDOUT.flush #makes cursor "hang" at the end of the line
str = gets
exit if str.nil? || str.empty? #checks str has value (non-nil) and is non-null (empty = null)
str.chomp!
temp, scale = str.split(" ")

abor "#{temp} is not a valid number." if temp !~ /-?\d+/
