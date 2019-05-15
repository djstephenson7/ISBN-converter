# frozen_string_literal: true

require 'isbnverifier'

describe ISBNVerifier do
  it 'Should remove dashes from the string' do
    expect(subject.format('3-598-21508-8')).to eq '3598215088'
  end

  it 'Should return false if string length is not 10' do
    expect(subject.format('3-598-21508-346X')).to eq false
    expect(subject.format('1-')).to eq false
  end

  it 'Should return false if invalid characters in isbn' do
    expect(subject.format('3-598-21507-A')).to eq false
    expect(subject.format('!-@£$-%^&*()-}')).to eq false
  end

  it 'Should return true when a valid ISBN is given' do
    expect(subject.valid?('3-598-21507-X')).to eq true
    expect(subject.valid?('3-598-21508-8')).to eq true
  end

  it 'Should return true when a valid ISBN is given without dashes' do
    expect(subject.valid?('359821507X')).to eq true
    expect(subject.valid?('3598215088')).to eq true
  end

  it 'Should return false if an invalid ISBN is given' do
    expect(subject.valid?('3-588-21507-X')).to eq false
    expect(subject.valid?('2-598-21508-9')).to eq false
  end
end
