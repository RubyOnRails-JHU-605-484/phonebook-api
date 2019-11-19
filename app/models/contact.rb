class Contact < ApplicationRecord
  scope :nameMatches, 
    ->(search) { 
      where('last_name LIKE :search or first_name LIKE :search', 
        search: "%#{search}%")}
end
