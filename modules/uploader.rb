module Uploader
  PATH = './data/'.freeze
  WHITE_LIST = [Book, Reader, Author, Order, Date].freeze

  def load(file_name)
    YAML.safe_load(File.read("#{PATH}#{file_name}.yml"), WHITE_LIST, [], [], true)
  end

  def save(file_name, obj)
    File.open("#{PATH}#{file_name}.yml", 'w') { |f| f.write obj.to_yaml }
  end
end
