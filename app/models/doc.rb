class Doc < ApplicationRecord
    has_many :favorites, dependent: :destroy

    scope :favorited_by, -> (email) { joins(:favorites).where(favorites: { user: User.where(email: email) }) }


  def self.search(search)
    where("name ILIKE ? OR specialty ILIKE ?", "%#{search.downcase}%", "%#{search.downcase}%")
  end



end
