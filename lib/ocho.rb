require 'ocho/version'

module Ocho
  autoload :Converter, 'ocho/converter'
  extend self

  def encoding(text)
    Converter.new(text).encoding
  end

  def read(filename)
    content = File.read(filename)
    Converter.new(content).to_utf8
  end
end
