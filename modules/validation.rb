module Validation
  class WrongClassError < StandardError
    def chek_instance(object, klass)
      raise WrongClassError.new(object, klass), "Object not instance of of #{object}!" unless object.is_a? klass
    end
  end

  class StringError < StandardError
    def check_string(value)
      raise StringError.new(value), 'Not string' unless value.is_a? String
      raise StringError.new(value), 'String is empty' if value.empty?
    end
  end

  class IntegerError < StandardError
    def check_integer(value)
      raise IntegerError.new(value), 'Not integer' unless value.is_a? Integer
    end
  end
end
