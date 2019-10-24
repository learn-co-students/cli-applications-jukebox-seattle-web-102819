# Add your code here
require 'pry'

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |item, index|
    puts "#{index + 1}. #{item}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
  if user_input.to_i >= 1 && user_input.to_i <= songs.length 
    puts "Playing #{songs[user_input.to_i - 1 ]}"
  elsif songs.find {|song| song == user_input}
    puts "Playing #{user_input}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  
  loop do 
    puts "Please enter a command:"
    user_input = gets.strip
    if user_input == "help"
      help
    end
    if user_input == "list"
      list(songs)
    end
    if user_input == "play"
      play(songs)
    end
    if user_input == "exit"
      exit_jukebox
      break
    end
  end

end



=begin
  songs_only = []
  songs.each do |item|
    songs_only << (item.split(" - ")[1])
    songs_only.each_with_index do |song, index|
      
      if user_input == (index + 1).to_s
        puts "Playing #{song}"
      elsif user_input == song
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
      end
    end
  end
=end
