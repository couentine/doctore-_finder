class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

         has_many :favorites, dependent: :destroy


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
