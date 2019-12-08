def run(songs)
  prompt_user("Welcome to the Jukebox")
  
end

def prompt_user(message)
  puts message
end

def play(songs)
  prompt_user("Please enter a song name or number:")
  user_input = get_user_input
  
  if(songs.include?(user_input))
    puts user_input
  elsif((user_input.to_i != nil)&&(user_input.to_i >= 1 && user_input.to_i <= songs.length))
    idx = user_input.to_i - 1
    puts songs[idx]
  else
    puts "Invalid input, please try again"
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.length.times do |idx|
    puts "#{(idx+1)}. #{songs[idx]}"
  end
end

def get_user_input
  gets.chomp
end

def exit_jukebox
  puts "Goodbye"
end
