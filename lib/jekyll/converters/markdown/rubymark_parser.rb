module Jekyll
  module Converters
    class Markdown
      class RubyMarkParser
        def initialize(config)
          require 'rubymark'
          @config = config
        rescue LoadError
          STDERR.puts 'You are missing a library required for Markdown. Please run:'
          STDERR.puts '  $ [sudo] gem install rubymark'
          raise FatalException.new("Missing dependency: rubymark")
        end

        def convert(content)
          rm = RubyMark.new(content)
          html = rm.to_html
          html
        end
      end
    end
  end
end
