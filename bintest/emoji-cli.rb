require 'open3'

pid = fork do
    `Xvfb :1 2>&1 >/dev/null`
end

ENV['DISPLAY'] = ':1.0'

sleep 2
BIN_PATH = File.join(File.dirname(__FILE__), "../mruby/bin/emoji-cli")

assert('poop') do
  pid2 = fork do
      `#{BIN_PATH} poop`
  end
  sleep 2
  assert_equal "💩", `xclip -o`.force_encoding("utf-8")
  Process.kill "TERM", pid2
end

assert('version') do
  output = `#{BIN_PATH} version`
  assert_include output, "v0.0.3"
end

Process.kill "TERM", pid
