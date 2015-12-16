def __main__(argv)
  if argv[1] == "version"
    puts "v#{EmojiCli::VERSION}"
  else
    if argv[1] && result = EmojiCli::DATA[argv[1].downcase]
      emoji = if result.length > 1
        # if -r return a random emoji from result
        if argv.select{|arg| ["-r", "--random"].include? arg }.any?
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

      # copy emoji and notify
      copy emoji
      puts "Copied #{emoji} !"
    else
      puts "Emoji not found 😭"
    end
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
