class FeedsController < ApplicationController
  
  before_action :set_credentials, only: [:feed_output]
  
  def index
    # Just render the form
  end

  def feed_output
    # Set current shop by connecting to Shopify account
    set_current_shop

    begin
      @products = ShopifyAPI::Product.all
    rescue Exception => e
      flash[:danger] = e
      redirect_to root_path
    end
  end

  private

  def set_credentials
    # Prepare credentials for Shopify connection
    @api_key = params[:api_key]
    @api_password = params[:api_password]
    @store = params[:store_name]
  end

  def set_current_shop
    begin
      shop_url  = "https://#{@api_key}:#{@api_password}@#{@store}.myshopify.com/admin";
      ShopifyAPI::Base.site = shop_url
      @shop = ShopifyAPI::Shop.current
    rescue Exception => e
      flash[:danger] = e
      redirect_to root_path
    end
    
  end

end
