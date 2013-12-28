require 'helper'

class TestRubyMark < Test::Unit::TestCase

  context "rubymark" do
    setup do
      config = {
        'markdown' => 'rubymark',
        'rubmark' => { 'extensions' => [] }
      }
      @markdown = Converters::Markdown.new config
    end

    should "convert header correctly" do
      assert_equal "<h1>Some Header</h1>", @markdown.convert('# Some Header #').strip
    end
  end
end
