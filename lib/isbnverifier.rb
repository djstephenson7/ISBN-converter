# frozen_string_literal: true

class ISBNVerifier
  def valid?(isbn)
    format(isbn)
  end

  def format(isbn)
    formatted = isbn.tr('-', '').sub('X', '10')
    formatted.length > 11 ? false : formatted
  end
end
