module ShopifyAPI
  class Shop
    def store_url_for(entity)
      return "http://#{self.domain}/#{entity.class.element_name}/#{entity.handle}"
    end
  end
end