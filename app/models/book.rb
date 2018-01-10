class Book < ActiveRecord::Base
  def self.search(term)
    if term
      where('name or author LIKE ?', "%#{term}%")
    else
      all
    end
  end
end
