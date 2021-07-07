require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
 puts "I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_responce = gets.strip
      if songs.include?(user_responce)
        puts "Playing #{user_responce}"
      elsif songs.length >= user_responce.to_i && user_responce.to_i > 0
        puts "Playing #{songs[user_responce.to_i - 1]}"
      else
        puts "Invalid input, please try again"
   end
end



def list(songs)
  new_list = songs.each_with_index do
    |title, index| puts "#{index + 1}. #{title}"
  end
new_list
end



def exit_jukebox
puts "Goodbye"
end



def run(songs)
  input = ""
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    if input == "help"
      help
    elsif input == "list"
      list(songs)
    elsif input == "play"
      play(songs)
    elsif input == "exit"
        exit_jukebox
    else
      puts "invalid entry"
    end
  end
end
