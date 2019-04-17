class Doc < ApplicationRecord
    has_many :favorites, dependent: :destroy

    scope :favorited_by, -> (email) { joins(:favorites).where(favorites: { user: User.where(email: email) }) }


  def self.search(search)
    where("name ILIKE ? OR specialty ILIKE ?", "%#{search.downcase}%", "%#{search.downcase}%")
  end

def favorite(doc)
   favorites.find_or_create_by(doc: doc)
 end
 
 def unfavorite(article)
   favorites.where(doc: doc).destroy_all

   doc.reload
 end

   def favorited?(article)
    favorites.find_by(article_id: article.id).present?
  end

end
