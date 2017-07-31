class Supplier < ApplicationRecord
	has_many :products, dependent: :destroy

  	validates :name, presence: true,
                    length: { minimum: 5 }
end
