print "Please enter a temperature and scale (C or F): "
STDOUT.flush #makes cursor "hang" at the end of the line
str = gets
exit if str.nil? || str.empty? #checks str has value (non-nil) and is non-null (empty = null)
str.chomp! #removes the trailing newline and changes the value
temp, scale = str.split(" ") #splits the string into an array by delimiter "space"

abort "#{temp} is not a valid number." if temp !~ /-?\d+/ #validation of temp

temp = temp.to_f #temp to float
case scale
  when "C", "c"
    f = 1.8*temp + 32
  when "F", "f"
    c = (5.0/9.0)*(temp - 32)
else
    abort "Must specify C or F."
end

if f.nil?
  puts "#{c} degrees C"
else
  puts "#{f} degrees F"
end
