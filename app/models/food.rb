class Food < ApplicationRecord
	validates :name, :description, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01 }
	validates :name, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image'
	}

	before_destroy :ensure_not_referenced_by_any_line_item

	def self.by_letter(letter)
		where("name LIKE ?", "#{letter}%").order(:name)
	end

	has_many :line_items

	private
		def ensure_not_referenced_by_any_line_item
			unless line_items.empty?
				errors.add(:base, 'Line Items present')
				throw :abort
			end
		end
end
