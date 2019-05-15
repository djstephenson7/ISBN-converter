# frozen_string_literal: true

class ISBNVerifier
  def valid?(isbn)
    format = isbn.tr('-', '').sub('X', '10')
    format.length > 11 ? false : format
  end
end
