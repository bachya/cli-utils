module CLIUtils
  # The generic base class for a Pref
  # Validator.
  class PrefValidator
    include Messaging

    # Holds whether the validator returned
    # successful or not.
    # @return [Boolean]
    attr_accessor :is_valid

    # Holds the message to display to the
    # user when the Validator fails.
    # @return [String]
    attr_accessor :message

    # Validate the Validator!
    # @param [String] text
    # @raise [StandardError] if the subclass
    #   doesn't implement this method.
    # @return [void]
    def validate(text = nil)
      fail "`validate` method not implemented on caller: #{ self.class }"
    end
  end
end
