require 'json'
require 'yaml'

data = JSON.parse `curl https://raw.githubusercontent.com/muan/emojilib/master/emojis.json`
new_data = {}
data.delete('keys')
data.each do |key, val|
  words = val["keywords"]
  emoji = val["char"]
  break if emoji.nil?
  (words << key).each do |word|
    word = word.downcase
    if !new_data[word].nil?
      if word == key
        new_data[word].unshift emoji
      else
        new_data[word] << emoji
      end
    else
      new_data[word] = [emoji]
    end
  end
end

file = File.new "mrblib/emoji-cli/data.rb", "w:UTF-8"
file.write """# Generate/update with `ruby emojilib.rb`
module EmojiCli
  DATA = #{new_data.to_s}
end
"""
