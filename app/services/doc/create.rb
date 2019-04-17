#==================================================================================================#
# 
# DOC CREATION SERVICE
# 
#==================================================================================================#

class Doc::Create

  include DocsHelper

  #=== ATTRIBUTES ===#

  attr_accessor :doc_params, :doc

  #=== METHODS ===#

  def initialize(doc_params)
    @doc_params = doc_params
  end

  def perform
    @doc = Doc.new(@doc_params)
    @doc.save
    @doc
  end 
end