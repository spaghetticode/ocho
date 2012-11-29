require 'spec_helper'

module Ocho
  describe Converter do
    let(:converter) {Converter.new('beechwood park') }

    it 'has a very permissive default strategy' do
      Converter.new('').strategy.should == '//TRANSLIT//IGNORE'
    end

    it 'has a setter for the strategy' do
      strategy = 'lucy in the sky with diamonds'
      expect do
        converter.strategy = strategy
      end.to change(converter, :strategy).to(strategy)
    end

    it 'correctly detects EUC-KR charset' do
      text = File.read fixture_file('EUC-KR.txt')
      Converter.new(text).encoding.should == 'EUC-KR'
    end

    it 'correctly convert to UTF-8' do
      text = File.read fixture_file('EUC-KR.txt')
      Converter.new(text).to_utf8.should == "Armani; Kurf\"Yrstendamm, Berlin Germany"
    end

    it 'correctly save the converted version to a file' do
      text = File.read fixture_file('EUC-KR.txt')
      File.open fixture_file('test.txt'), 'w' do |f|
        f.write Converter.new(text).to_utf8
      end
    end
  end
end
