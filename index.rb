require './app/main'

main(ARGV)
  post ={}
  puts "plese type name"
  post[:name] = get.chomp
  puts "Hello #{post[:name]}!"
