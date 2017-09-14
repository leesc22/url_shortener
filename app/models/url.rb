class Url < ApplicationRecord
	validates :long_url, presence: true
	validates :long_url, format: { with: URI.regexp }, allow_blank: true
	validates :short_url, uniqueness: true

	def shorten
		self.short_url = rand(36**7).to_s(36)
	end
end
