# frozen_string_literal: true

require 'isbnverifier'

describe ISBNVerifier do
  it 'Should remove dashes from the string' do
    expect(subject.valid?('1-')).to eq '1'
    expect(subject.valid?('3-598-21508-8'))
      .to eq '3598215088'
  end
end
