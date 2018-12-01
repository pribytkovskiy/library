module Validation
  include Errors

  def check_string_for_empty(string)
    raise EmptyStringError if string.empty?
  end

  def check_class(obj, klass)
    raise WrongClassError(obj, klass) unless obj.is_a? klass
  end
end
