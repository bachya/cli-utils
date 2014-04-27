require 'test_helper'

require File.join(File.dirname(__FILE__), '..', '..', 'test/test_files/test_validator_empty')

# Tests for the Configurator class
class TestPrefValidator < Test::Unit::TestCase
  def test_direct_call
    v = CLIUtils::TestValidatorEmpty.new
    m = '`validate` method not implemented on caller: CLIUtils::TestValidatorEmpty'
    assert_raise_with_message(RuntimeError, m) { v.validate(123.45) }
  end
end