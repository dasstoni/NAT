# class SnackAPI
#   include HTTParty
#   base_uri 'https://api-snacks.nerderylabs.com/v1/'
#   format :json
#
#
#   def initialize(*opts)
#     @options = opts.reverse_merge({
#       ApiKey: ENV['SNACK_API_KEY']
#       })
#   end
#
#   def get_snacks
#     response = self.class.get('/snacks', @options)
#   end
# end
class SnackAPI
  include HTTParty
  base uri 'https://api-snacks.nerderylabs.com/v1/'
  SNACK_ACCESS = "/snacks?ApiKey=#{ENV['SNACK_API_KEY']}"

  def get_snacks
    response = self.class.get(SNACK_ACCESS)
    JSON.parse(response.body)
  end

  def post_snacks(snacks)
  snacks.each do |snack|
    options = {
      body: {
        name: snack.name,
        location: snack.purchase_location,
        lastPurchaseDate: snack.last_purchased
      }.to_json,
      headers: {
        'Content-Type' => 'application/json'
      }
    }

    response = self.class.post(SNACK_ACCESS, options)

  end
end
