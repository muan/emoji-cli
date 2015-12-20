BIN_PATH = File.join(File.dirname(__FILE__), "../mruby/bin/emoji-cli")

# Set up display for xclip
fork do
  `Xvfb :1 2>&1 >/dev/null`
end

assert('version') do
  output = `#{BIN_PATH} version`
  assert_include output, "v0.0.3"
end

assert('poop') do
  # Process hangs mysteriously, this is a workaround
  pid = fork do
    `echo && #{BIN_PATH} poop`
  end
  # Wait a tiny bit for things to be copied
  sleep 0.1

  assert_equal "💩", `xclip -o`.force_encoding("utf-8")
  Process.kill "TERM", pid
end
