module Validation

  class MyCustomError < StandardError
    attr_reader :object

    def initialize(object)
      @object = object
    end
  end

  class << self
    def chek_instance(object, klass)
      begin
        raise MyCustomError.new(object) unless object.is_a? klass
      rescue MyCustomError => e
        puts e.message => "Object not instance of #{object}"
      end
    end

    def check_string(value)
      begin
        raise MyCustomError.new(value) unless value.is_a? String
      rescue MyCustomError => e
        puts e.message => "Not string"
      end
    end

    def check_integer(value)
      begin
        raise MyCustomError.new(value) unless value.is_a? Integer
      rescue MyCustomError => e
        puts e.message => "Not integer"
      end
    end
  end
end
