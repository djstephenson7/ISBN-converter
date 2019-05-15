# frozen_string_literal: true

class ISBNVerifier
  def valid?(isbn)
    x = format(isbn)
    x.each_char.with_index.sum do |_digit, index|
      p index == 9
      p x[index]
      index == 9 && x[index] == 'X' ? 10 : 5
    end
  end

  def format(isbn)
    formatted = isbn.tr('-', '')
    formatted.length != 10 ? false : formatted
  end
end
