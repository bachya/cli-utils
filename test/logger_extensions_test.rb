require 'test/unit'

require File.join(File.dirname(__FILE__), '..', 'lib/cliutils/ext/Logger+Extensions')

class TestLoggerExtensions < Test::Unit::TestCase
  def test_custom_level
    l = Logger.new(STDOUT)
    l.formatter = proc do |severity, datetime, progname, msg|
      puts "#{ severity }: #{ msg }"
    end
    
    assert_output("PROMPT: test\n")  { l.prompt('test')  }
    assert_output("SECTION: test\n") { l.section('test') }
    assert_output("SUCCESS: test\n") { l.success('test') }
  end
end