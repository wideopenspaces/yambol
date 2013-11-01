require 'spec_helper'

describe Yambol do
  context 'when loading a file' do
    subject { Yambol.load_file('./spec/yambol_test.yml') }

    it 'has a key called :test' do
      subject.has_key?(:test).must_equal true
    end

    it 'does not have a key called "test"' do
      subject.has_key?('test').wont_equal true
    end

    it 'correctly loads list items' do
      subject[:test][:one][:items].must_equal %w(first second third)
    end

    it 'correctly loads numeric items' do
      subject[:test][:one][:number].must_equal 1
    end

    it 'does not modify pre-existing symbols' do
      subject[:test][:two][:symbol].must_equal 'cymbal'
    end

    it 'does not modify values that are symbols' do
      subject[:test][:two][:cymbal].must_equal :symbol
    end
  end
end