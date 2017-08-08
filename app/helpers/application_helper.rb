module ApplicationHelper

  def default_url(entity)
    return nil if entity.blank?
    @shop.store_url_for(entity)
  end
end
