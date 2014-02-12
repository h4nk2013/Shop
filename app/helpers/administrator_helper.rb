module AdministratorHelper
  def find_item(user)
    Item.joins(:purchases).where(:purchases => {:user_id => user.id})
  end
  def find_categories(item)
    Category.joins(:item_categories).where(:item_categories => {:item_id => item.id})
  end
  def find_recommend(category)
    @recommend = []
    category.each do |i|
      @recommend = @recommend + Item.joins(:item_categories).where(:item_categories => {:category_id => i.id})
    end
    @recommend.uniq!
  end
end
