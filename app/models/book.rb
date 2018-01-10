class Book < ActiveRecord::Base
  def self.search(term)
    if term
      where('name LIKE :search or author LIKE :search', search: "%#{term}%")
    else
      all
    end
  end
end
