require 'spec_helper'

describe Ocho do
  describe '::encoding' do
    it 'returns the encoding of a string' do
      Ocho.encoding('runaway').should == 'ascii'
    end
  end

  describe '::read' do
    it 'reads a file and converts the content to ascii' do
      text = Ocho.read fixture_file('EUC-KR.txt')
      Ocho.encoding(text).should == 'ascii'
    end
  end
end
