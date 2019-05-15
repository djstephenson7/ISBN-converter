# frozen_string_literal: true

# ISBN verifier class that deals with validation logic
class ISBNVerifier
  def valid?(isbn)
    x = format(isbn)
    (x.each_char.with_index.sum do |digit, index|
      index == 9 && digit == 'X' ? 10 : digit.to_i * (10 - index)
    end % 11).zero?
  end

  def format(isbn)
    formatted = isbn.tr('^0-9X', '')
    formatted.length != 10 ? false : formatted
  end
end
