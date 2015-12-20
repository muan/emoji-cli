def __main__(argv)
  if argv[1] == "version"
    puts "v#{EmojiCli::VERSION}"
  else
    if result = search(argv[1])
      # copy emoji and notify
      emoji = choose(result, argv.select{|arg| ["-r", "--random"].include? arg }.any?)
      copy emoji
      puts "Copied #{emoji} !"
    else
      puts "Emoji not found 😭"
    end
  end
end

def search keyword
  EmojiCli::DATA[keyword.downcase]
end

def choose result, random
  if result.length > 1
    # if -r return a random emoji from result
    if random
      result[rand(result.length)]
    # else print result and get user input
    else
      i = 0
      puts "#{result.map{|m| (i = i + 1).to_s + ". " + m}.join("\n")}"
      print "Choose [1~#{result.length}] "
      input = gets.strip
      (input.length > 0 && result[input.to_i - 1]) || result[0]
    end
  else
    result[0]
  end
end

def copy emoji
  os = `uname`.strip
  cmd = if os == "Darwin"
    "echo '#{emoji}' | tr -d '\n' | pbcopy"
  else
    "echo '#{emoji}' | tr -d '\n' | xclip -i"
  end
  `#{cmd}`
end
