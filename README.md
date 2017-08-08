# README

- This application is a simple demo rails application to show about how we can retrieve products data from a Shopify Store

- To run this application you would just need to do:
   - bundle install
   - rails server
   - Open http://localhost:3000/

- The first screen will show a form and will ask to enter:
   - API Key # This is api key of shopify private app
   - API Password # This is api password of shopify private app
   - Store Name # This is name of store on shopify
   * Please try below credentials:
      api_key   = '60238a1c055aa68d88accd7c4cc28ac5'
      api_pass  = 'b52b64670f06933928e45870972a9fb3'
      shop = 'vj-test-temp'
- After submitting the form. The app fetches products from provided store and show the XML with products information (on screen itself)

- 