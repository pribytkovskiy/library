module Errors
  class WrongClassError < StandardError
    def initialize
      super("Wrong class! #{obj} class not #{klass}")
    end
  end

  class EmptyStringError < StandardError
    def initialize
      super('You try to send empty string!')
    end
  end
end