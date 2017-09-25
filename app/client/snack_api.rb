class SnackAPI
  include HTTParty
  base_uri 'https://api-snacks.nerderylabs.com/v1/'
  SNACK_ACCESS = "/snacks?ApiKey=#{ENV['SNACK_API_KEY']}"

  def initalize
    @all_snacks = []
  end

  def get_snacks
    response = self.class.get(SNACK_ACCESS)

    @all_snacks = JSON.parse(response.body)
  end

  def where(optional: true)
    @all_snacks.select do |snack|
      snack["optional"] == optional
    end
  end


  # def post_snacks(snacks)
  # snacks.each do |snack|
  #   options = {
  #     body: {
  #       name: snack.name,
  #       location: snack.purchase_location,
  #       lastPurchaseDate: snack.last_purchased
  #     }.to_json,
  #     headers: {
  #       'Content-Type' => 'application/json'
  #     }
  #   }
  #   end
  #   response = self.class.post(SNACK_ACCESS, options)
  #
  # end
end
