# frozen_string_literal: true

require 'isbnverifier'

describe ISBNVerifier do
  it 'Should remove dashes from the string' do
    expect(subject.valid?('1-')).to eq '1'
    expect(subject.valid?('3-598-21508-8')).to eq '3598215088'
  end

  it 'Should replace X in string with 10' do
    expect(subject.valid?('3-598-21508-X')).to eq '35982150810'
  end

  it 'Should return false if string length is too long' do
    expect(subject.valid?('3-598-21508-346X')).to eq false
  end

  it 'Should return true when a valid ISBN is given' do
    expect(subject.valid?('3-598-21507-X')).to eq true
    expect(subject.valid?('3-598-21508-8')).to eq true
  end
end
