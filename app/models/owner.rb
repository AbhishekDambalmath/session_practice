class Owner < ApplicationRecord
    has_many :dogs, dependent: :delete_all
  
    def to_s
      "#{first_name} #{last_name}"
    end
  end