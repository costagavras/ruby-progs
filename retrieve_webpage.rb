require 'open-uri'

# begin
#   uri = URI(https://andychef.ru/recipes/chucky)
#   res = Net::HTTP.get(uri)
# rescue => err
#   puts "Error: #{err.class}: #{err.message}"
#   exit
# end

site = open("https://andychef.ru/recipes/chucky")
data = site.read

puts data
