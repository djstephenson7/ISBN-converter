# frozen_string_literal: true

class ISBNVerifier
  def valid?(isbn)
    x = format(isbn)
    x.each_char.with_index do |digit, int|
      p digit.to_i
      p int
    end
  end

  def format(isbn)
    formatted = isbn.tr('-', '')
    formatted.length != 10 ? false : formatted
  end
end
