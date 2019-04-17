json.extract! doc, :id, :name, :specialty, :zip, :review, :created_at, :updated_at
json.url doc_url(doc, format: :json)
json.favorited signed_in? ? current_user.favorited?(doc) : false
json.favorites_count doc.favorites_count || 0
