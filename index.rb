require './app/main'

main(ARGV)
  post = {}
  puts "please type"
  post[:name]  = gets.chomp
