# frozen_string_literal: true

class ISBNVerifier
  def valid?(isbn)
    x = isbn.tr('-', '').sub('X', '10')
    if x.length > 11
      false
    else
      x
    end
  end
end
