# frozen_string_literal: true

class ISBNVerifier
  def valid?(isbn)
    isbn.gsub('-', '')
  end
end
