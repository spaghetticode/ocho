require 'iconv'
require 'rchardet'
require 'active_support/core_ext/class/attribute'

module Ocho
  class Converter
    class_attribute :strategy

    class << self
      def strategy
        '//TRANSLIT//IGNORE'
      end
    end

    attr_reader :text
    attr_writer :strategy

    def initialize(text)
      @text = text
    end

    def encoding
      CharDet.detect(text)['encoding']
    end

    def to_utf8
      Iconv.conv("#{encoding}#{strategy}", 'utf-8', text)
    end
  end
end
