class MenuSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :description
  has_many :menu_tags

  def category
  	object.category.name rescue nil
  end
  	
end


