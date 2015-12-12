def __main__(argv)
  if argv[1] == "version"
    puts "v#{EmojiCli::VERSION}"
  else
    puts data[argv[1]] || "emoji not found. 😭"
  end
end

def data
  {
    "sad": ["😢", "😿", "💔", "😞", "😭"]
  }
end
