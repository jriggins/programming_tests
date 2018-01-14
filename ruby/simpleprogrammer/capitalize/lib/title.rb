# frozen_string_literal: true

require 'set'

# Title
module Title
  @badwords = Set.new(%w[
                        a
                        and
                      ])

  class << self
    private

    def capitalize(word)
      word[0] = word[0].upcase
      word
    end
  end

  def self.titleize(str)
    strs = str.split(' ').map do |word|
      word = word.downcase
      if @badwords.include? word
        word
      else
        capitalize(word)
      end
    end
    strs.join(' ')
  end
end
