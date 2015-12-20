class TestEmojiCli < MTest::Unit::TestCase
  def test_search
    assert_equal search("poop"), ["💩"]
  end

  def test_which_emoji
    assert_equal choose(["💩"], false), "💩"
    assert_block "when random is on just return a random one" do
      ["💩", "🎉"].include? choose(["💩", "🎉"], true)
    end
  end
end

MTest::Unit.new.run
