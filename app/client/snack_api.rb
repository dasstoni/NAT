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

  def where(optional: )
    @all_snacks.select do |snack|
      snack["optional"] == optional
    end
  end


  def post_snacks(params)
    options = {
      body: {
        name: params['name'],
        location: params['purchase_location'],
        optional: true
      }.to_json,
      headers: {
        'Content-Type' => 'application/json'
      }
    }
    response = self.class.post(SNACK_ACCESS, options)
  end
end
